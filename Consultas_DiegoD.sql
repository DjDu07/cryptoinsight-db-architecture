-- CONSULTAS PARA LA BASE DE DATOS CRYPTOINSIGHT
use CryptoInsight
-- Obtener alertas activas para usuarios pertenecientes a un país específico
-- Se muestran la alerta, tipo de alerta, el token, el usuario al que pertenece y país

CREATE FUNCTION fn_obtener_alertas_usuario(@pais VARCHAR(250))
RETURNS TABLE
AS
RETURN
(
    SELECT 
        a.id_alerta,
		a.tipo,
        t.nombre AS token,
        u.id_usuario,
		u.pais
    FROM alerta a
    INNER JOIN token t ON a.id_token = t.id_token
	JOIN usuario u ON a.id_usuario = u.id_usuario
    WHERE u.pais = @pais AND a.estado = 'activa'
);

select * from dbo.fn_obtener_alertas_usuario('Perú')

-- Obtener el total en USD de todos los tokens que posee un usuario específico
-- Se muestra el total como un escalar

CREATE FUNCTION fn_total_valor_tokens_usuario(@id INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @total FLOAT;
    SELECT @total = SUM(valor_total_usd)
    FROM usuario_token
    WHERE id_usuario = @id;

    RETURN ISNULL(@total, 0);
END;

print dbo.fn_total_valor_tokens_usuario(3)

-- Insertar una nueva transaccion para un usuario específico
-- Se utiliza transaction para manejar el error en el procedure
-- Se modifican las tablas de transaccion y usuario_transaccion

CREATE PROCEDURE usp_insertar_transaccion_con_usuario
    @id_usuario INT,
    @id_exchange_wallet INT,
    @id_token INT,
    @tipo VARCHAR(250),
    @cantidad_token INT,
    @valor_usd FLOAT,
    @fecha_generacion DATE,
    @tasa_comision FLOAT,
    @tasa_cambio_usd FLOAT,
    @observacion VARCHAR(250),
    @rol_usuario VARCHAR(250)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        -- Insertar en tabla transacción
        INSERT INTO transaccion (id_transaccion, id_exchange_wallet, id_token, tipo, cantidad_token, valor_usd, 
                                 fecha_generacion, tasa_comision, tasa_cambio_usd, observacion)
        VALUES (
            (SELECT ISNULL(MAX(id_transaccion), 0) + 1 FROM transaccion),
            @id_exchange_wallet,
            @id_token,
            @tipo,
            @cantidad_token,
            @valor_usd,
            @fecha_generacion,
            @tasa_comision,
            @tasa_cambio_usd,
            @observacion
        );

        DECLARE @new_id_transaccion INT = (SELECT MAX(id_transaccion) FROM transaccion);

        -- Insertar en tabla usuario_transaccion
        INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol)
        VALUES (@id_usuario, @new_id_transaccion, @rol_usuario);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW; -- Opcional: puedes personalizar el error si gustas
    END CATCH
END;

EXECUTE usp_insertar_transaccion_con_usuario 3, 3, 3, 'compra', 25, 250.5, '2024-05-04', 0.25, 1.0, NULL, 'comprador'

select * from transaccion
select * from usuario_transaccion

-- Obtener las transacciones realizadas por un usuario específico sobre un token específico, 
-- Muestra transaccion, token, tipo, cantidad, valor en USD, fecha y observación

CREATE FUNCTION fn_obtener_transacciones_usuario_token (@id_usuario INT, @id_token INT)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        t.id_transaccion,
        tok.nombre AS token,
        t.tipo,
        t.cantidad_token,
        t.valor_usd,
        t.fecha_generacion,
        t.observacion
    FROM transaccion t
    INNER JOIN token tok ON t.id_token = tok.id_token
    INNER JOIN usuario_transaccion ut ON ut.id_transaccion = t.id_transaccion
    WHERE ut.id_usuario = @id_usuario AND t.id_token = @id_token
);

SELECT * FROM dbo.fn_obtener_transacciones_usuario_token(1, 1)

-- Devuelve las configuraciones de preferencia de usuarios según el idioma y el tema visual que usan.

CREATE FUNCTION fn_configuracion_por_idioma_y_tema (
    @idioma VARCHAR(250),
    @tema_visual VARCHAR(250)
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        cp.id_configuracion_preferencias,
        u.nombre_completo,
        cp.idioma,
        cp.tema_visual,
        cp.frecuencia_alertas,
        cp.metricas_visibles
    FROM configuracion_preferencias cp
    INNER JOIN usuario u ON cp.id_usuario = u.id_usuario
    WHERE cp.idioma = @idioma AND cp.tema_visual = @tema_visual
);

SELECT * FROM dbo.fn_configuracion_por_idioma_y_tema('es-ES', 'oscuro');

-- Actualiza el estado de las alertas de un usuario para un token específico
-- Solo se actualizan si las alertas están activas o recurrentes

CREATE PROCEDURE sp_actualizar_estado_alerta_por_token_y_usuario
    @id_usuario INT,
    @id_token INT,
    @nuevo_estado VARCHAR(250)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE alerta
        SET estado = @nuevo_estado
        WHERE id_usuario = @id_usuario
          AND id_token = @id_token
          AND (estado = 'activa' OR frecuencia = 'recurrente');

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;

EXEC sp_actualizar_estado_alerta_por_token_y_usuario @id_usuario = 1, @id_token = 1, @nuevo_estado = 'desactivada'
select id_alerta, id_token, id_usuario, estado from alerta

