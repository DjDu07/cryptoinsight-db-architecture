--Creación de estructuras
CREATE TABLE alerta
(
  id_alerta         INT          NOT NULL,
  id_token          INT          NOT NULL,
  id_usuario        INT          NOT NULL,
  tipo              VARCHAR(250) NOT NULL,
  valor_preferencia FLOAT        NOT NULL,
  frecuencia        VARCHAR(250) NOT NULL,
  canal_notficacion VARCHAR(250) NOT NULL,
  estado            VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_alerta)
);

CREATE TABLE carrito_compras
(
  id_carrito_compras INT          NOT NULL,
  id_usuario         INT          NOT NULL,
  id_token           INT          NOT NULL,
  cantidad_destacado FLOAT        NOT NULL,
  valor_estimado     FLOAT        NOT NULL,
  estado             VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_carrito_compras)
);

CREATE TABLE configuracion_preferencias
(
  id_configuracion_preferencias INT          NOT NULL,
  id_usuario                    INT          NOT NULL,
  tema_visual                   VARCHAR(250) NOT NULL,
  tipo_vista_preferencia        VARCHAR(250) NOT NULL,
  tokens_destacados             VARCHAR(250) NOT NULL,
  frecuencia _alertas           VARCHAR(250) NOT NULL,
  metricas_visibles             VARCHAR(250) NOT NULL,
  idioma                        VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_configuracion_preferencias)
);

CREATE TABLE exchange_wallet
(
  id_usuario         INT          NOT NULL,
  id_exchange_wallet INT          NOT NULL,
  tipo               VARCHAR(250) NOT NULL,
  api_key_usuario    VARCHAR(250) NOT NULL,
  integracion_activa INT          NOT NULL,
  PRIMARY KEY (id_exchange_wallet)
);

CREATE TABLE reporte_financiero
(
  id_reporte_financiero INT          NOT NULL,
  id_usuario            INT          NOT NULL,
  titulo                VARCHAR(250) NOT NULL,
  descripcion           VARCHAR(250) NOT NULL,
  fecha_generacion      DATE         NOT NULL,
  periodo_inicio        DATE         NOT NULL,
  periodo_fin           DATE         NOT NULL,
  tipo                  VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_reporte_financiero)
);

CREATE TABLE reporte_financiero_transaccion
(
  id_reporte_financiero INT   NOT NULL,
  id_transaccion        INT   NOT NULL,
  ganancia              FLOAT NOT NULL,
  perdida               FLOAT NOT NULL,
  PRIMARY KEY (id_reporte_financiero, id_transaccion)
);

CREATE TABLE reporte_fiscal
(
  id_usuario          INT          NOT NULL,
  id_reporte_fiscal   INT          NOT NULL,
  año_fiscal          DATE         NOT NULL,
  ganancias_totales   FLOAT        NOT NULL,
  perdidas_totales    FLOAT        NOT NULL,
  total_operacion     FLOAT        NOT NULL,
  pais_fiscal         VARCHAR(250) NOT NULL,
  formato_exportacion VARCHAR(250) NOT NULL,
  fecha_generacion    DATE         NOT NULL,
  PRIMARY KEY (id_reporte_fiscal)
);

CREATE TABLE tickets_soporte
(
  id_usuario         INT          NOT NULL,
  id_tickets_soporte INT          NOT NULL,
  asunto             VARCHAR(250) NOT NULL,
  descripcion        VARCHAR(250) NOT NULL,
  categoria          VARCHAR(250) NOT NULL,
  fecha_creacion     DATE         NOT NULL,
  fecha_respuesta    DATE         NOT NULL,
  agente_asignado    VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_tickets_soporte)
);

CREATE TABLE token
(
  id_token        INT          NOT NULL,
  nombre          VARCHAR(250) NOT NULL,
  simbolo         VARCHAR(250) NOT NULL,
  red_blockchain  VARCHAR(250) NOT NULL,
  precio_actual   FLOAT        NOT NULL,
  volatilidad_24h FLOAT        NOT NULL,
  ROI_historico   FLOAT        NOT NULL,
  PRIMARY KEY (id_token)
);

CREATE TABLE token_exchange_wallet
(
  id_token           INT NOT NULL,
  id_exchange_wallet INT NOT NULL,
  PRIMARY KEY (id_token, id_exchange_wallet)
);

CREATE TABLE transaccion
(
  id_transaccion     INT          NOT NULL,
  id_exchange_wallet INT          NOT NULL,
  id_token           INT          NOT NULL,
  tipo               VARCHAR(250) NOT NULL,
  cantidad_token     INT          NOT NULL,
  valor_usd          FLOAT        NOT NULL,
  fecha_generacion   DATE         NOT NULL,
  tasa_comision      FLOAT        NOT NULL,
  tasa_cambio_usd    FLOAT        NOT NULL,
  observacion        VARCHAR(250) NULL    ,
  PRIMARY KEY (id_transaccion)
);

CREATE TABLE usuario
(
  id_usuario         INT          NOT NULL,
  nombre_completo    VARCHAR(250) NOT NULL,
  correo_electronico VARCHAR(250) NOT NULL,
  contraseña         VARCHAR(250) NOT NULL,
  tipo               VARCHAR(250) NOT NULL,
  pais               VARCHAR(250) NOT NULL,
  numero_contacto    VARCHAR(250) NOT NULL,
  estado_cuenta      VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_usuario )
);

CREATE TABLE usuario_token
(
  id_usuario          INT   NOT NULL,
  id_token            INT   NOT NULL,
  cantidad            FLOAT NOT NULL,
  valor_total_usd     FLOAT NOT NULL,
  fecha_actualización DATE  NOT NULL,
  PRIMARY KEY (id_usuario , id_token)
);

CREATE TABLE usuario_transaccion
(
  id_usuario     INT          NOT NULL,
  id_transaccion INT          NOT NULL,
  rol            VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_usuario , id_transaccion)
);

ALTER TABLE reporte_financiero
  ADD CONSTRAINT FK_usuario_TO_reporte_financiero
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE reporte_financiero_transaccion
  ADD CONSTRAINT FK_reporte_financiero_TO_reporte_financiero_transaccion
    FOREIGN KEY (id_reporte_financiero)
    REFERENCES reporte_financiero (id_reporte_financiero);

ALTER TABLE reporte_financiero_transaccion
  ADD CONSTRAINT FK_transaccion_TO_reporte_financiero_transaccion
    FOREIGN KEY (id_transaccion)
    REFERENCES transaccion (id_transaccion);

ALTER TABLE usuario_transaccion
  ADD CONSTRAINT FK_transaccion_TO_usuario_transaccion
    FOREIGN KEY (id_transaccion)
    REFERENCES transaccion (id_transaccion);

ALTER TABLE usuario_transaccion
  ADD CONSTRAINT FK_usuario_TO_usuario_transaccion
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE exchange_wallet
  ADD CONSTRAINT FK_usuario_TO_exchange_wallet
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE transaccion
  ADD CONSTRAINT FK_exchange_wallet_TO_transaccion
    FOREIGN KEY (id_exchange_wallet)
    REFERENCES exchange_wallet (id_exchange_wallet);

ALTER TABLE token_exchange_wallet
  ADD CONSTRAINT FK_exchange_wallet_TO_token_exchange_wallet
    FOREIGN KEY (id_exchange_wallet)
    REFERENCES exchange_wallet (id_exchange_wallet);

ALTER TABLE reporte_fiscal
  ADD CONSTRAINT FK_usuario_TO_reporte_fiscal
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE tickets_soporte
  ADD CONSTRAINT FK_usuario_TO_tickets_soporte
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE configuracion_preferencias
  ADD CONSTRAINT FK_usuario_TO_configuracion_preferencias
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE carrito_compras
  ADD CONSTRAINT FK_usuario_TO_carrito_compras
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE alerta
  ADD CONSTRAINT FK_usuario_TO_alerta
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE usuario_token
  ADD CONSTRAINT FK_usuario_TO_usuario_token
    FOREIGN KEY (id_usuario )
    REFERENCES usuario (id_usuario );

ALTER TABLE token_exchange_wallet
  ADD CONSTRAINT FK_token_TO_token_exchange_wallet
    FOREIGN KEY (id_token)
    REFERENCES token (id_token);

ALTER TABLE transaccion
  ADD CONSTRAINT FK_token_TO_transaccion
    FOREIGN KEY (id_token)
    REFERENCES token (id_token);

ALTER TABLE carrito_compras
  ADD CONSTRAINT FK_token_TO_carrito_compras
    FOREIGN KEY (id_token)
    REFERENCES token (id_token);

ALTER TABLE alerta
  ADD CONSTRAINT FK_token_TO_alerta
    FOREIGN KEY (id_token)
    REFERENCES token (id_token);

ALTER TABLE usuario_token
  ADD CONSTRAINT FK_token_TO_usuario_token
    FOREIGN KEY (id_token)
    REFERENCES token (id_token);
