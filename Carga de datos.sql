use CryptoInsight
select * from usuario_transaccion
-- Tabla: usuario
INSERT INTO usuario VALUES(1, 'Raúl Pinto Camallo', 'rpintocamallo@gmail.com', 'PintoC2020', 'inversionista', 'Perú',
							'986458943', 'activo');
INSERT INTO usuario VALUES(2, 'Lucía Ortega Mejía', 'lortegamejia@gmail.com', 'OrtegaM2021', 'asesor', 'Colombia',
							'992929261', 'inactivo');
INSERT INTO usuario VALUES(3, 'Daniel Contreras Vera', 'dcontrerasvera@gmail.com', 'ContrerasV2021', 'inversionista', 'Colombia',
							'919328360', 'suspendido');
INSERT INTO usuario VALUES(4, 'Sofía Delgado Ríos', 'sdelgadorios@gmail.com', 'DelgadoR2022', 'inversionista', 'Perú',
							'987654321', 'activo');
INSERT INTO usuario VALUES(5, 'Carlos Herrera Núñez', 'cherreranuñez@gmail.com', 'HerreraN2019', 'asesor', 'México',
							'934562187', 'activo');
INSERT INTO usuario VALUES(6, 'Tatiana Gómez Márquez', 'tgomezmarquez@gmail.com', 'GómezM2020', 'desarrollador', 'Argentina',
							'973215647', 'inactivo');
INSERT INTO usuario VALUES(7, 'Luis Castañeda Roca', 'lcastañedaroca@gmail.com', 'CastañedaR2022', 'inversionista', 'Chile',
							'951753842', 'activo');
INSERT INTO usuario VALUES(8, 'Ana Torres Paredes', 'atorresparedes@gmail.com', 'TorresP2021', 'inversionista', 'Chile',
							'945612378', 'suspendido');
INSERT INTO usuario VALUES(9, 'Pedro Molina Espinoza', 'pmolinaespinoza@gmail.com', 'MolinaE2021', 'asesor', 'Perú',
							'965842137', 'activo');
INSERT INTO usuario VALUES(10, 'Elena Ruiz Medina', 'eruizmedina@gmail.com', 'RuizM2019', 'desarrollador', 'México',
							'974561239', 'activo');

-- Tabla: token
INSERT INTO token VALUES(1, 'Bitcoin', 'BTC', 'Bitcoin', 67000.25, 1.23, 300);
INSERT INTO token VALUES(2, 'Ethereum', 'ETH', 'Ethereum', 3500.5, 2.45, 250);
INSERT INTO token VALUES(3, 'BNB', 'BNB', 'BNB Chain', 420.0, 3.12, 180);
INSERT INTO token VALUES(4, 'Cardano', 'ADA', 'Cardano', 0.45, 5.5, 150);
INSERT INTO token VALUES(5, 'Solana', 'SOL', 'Solana', 150.3, 6.7, 200);
INSERT INTO token VALUES(6, 'Polygon', 'MATIC', 'Polygon', 1.02, 3.3, 100);
INSERT INTO token VALUES(7, 'Ripple', 'XRP', 'Ripple', 0.62, 2.1, 120);
INSERT INTO token VALUES(8, 'Litecoin', 'LTC', 'Litecoin', 85.0, 4.6, 90);
INSERT INTO token VALUES(9, 'Chainlink', 'LINK', 'Ethereum', 15.3, 3.8, 110);
INSERT INTO token VALUES(10, 'Uniswap', 'UNI', 'Ethereum', 6.8, 4.0, 95);

-- Tabla: exchange_wallet
INSERT INTO exchange_wallet VALUES(1, 1, 'Binance', 'apikey1', 1);
INSERT INTO exchange_wallet VALUES(2, 2, 'Coinbase', 'apikey2', 1);
INSERT INTO exchange_wallet VALUES(3, 3, 'Kraken', 'apikey3', 1);
INSERT INTO exchange_wallet VALUES(4, 4, 'TrustWallet', 'apikey4', 1);
INSERT INTO exchange_wallet VALUES(5, 5, 'Binance', 'apikey5', 1);
INSERT INTO exchange_wallet VALUES(6, 6, 'MetaMask', 'apikey6', 1);
INSERT INTO exchange_wallet VALUES(7, 7, 'Coinbase', 'apikey7', 1);
INSERT INTO exchange_wallet VALUES(8, 8, 'Bitso', 'apikey8', 1);
INSERT INTO exchange_wallet VALUES(9, 9, 'Kraken', 'apikey9', 1);
INSERT INTO exchange_wallet VALUES(10, 10, 'Binance', 'apikey10', 1);

-- Tabla: transaccion
INSERT INTO transaccion VALUES(1, 1, 1, 'compra', 2, 134000.5, '2024-05-01', 0.1, 1.0, 'Compra inicial');
INSERT INTO transaccion VALUES(2, 2, 2, 'venta', 1, 3500.5, '2024-05-02', 0.2, 1.0, 'Ganancia obtenida');
INSERT INTO transaccion VALUES(3, 3, 3, 'transferencia', 10, 4200.0, '2024-05-03', 0.15, 1.0, 'Transferencia a otra wallet');
INSERT INTO transaccion VALUES(4, 4, 4, 'compra', 1000, 450.0, '2024-05-04', 0.05, 1.0, NULL);
INSERT INTO transaccion VALUES(5, 5, 5, 'venta', 20, 3006.0, '2024-05-05', 0.07, 1.0, 'Venta parcial');
INSERT INTO transaccion VALUES(6, 6, 6, 'compra', 500, 510.0, '2024-05-06', 0.06, 1.0, NULL);
INSERT INTO transaccion VALUES(7, 7, 7, 'compra', 150, 93.0, '2024-05-07', 0.08, 1.0, NULL);
INSERT INTO transaccion VALUES(8, 8, 8, 'venta', 30, 2550.0, '2024-05-08', 0.1, 1.0, 'Salida parcial');
INSERT INTO transaccion VALUES(9, 9, 9, 'transferencia', 10, 153.0, '2024-05-09', 0.12, 1.0, NULL);
INSERT INTO transaccion VALUES(10, 10, 10, 'compra', 50, 340.0, '2024-05-10', 0.05, 1.0, NULL);

-- Tabla: alerta
INSERT INTO alerta VALUES(1, 1, 1, 'precio bajo', 65000, 'recurrente', 'correo', 'activa');
INSERT INTO alerta VALUES(2, 2, 2, 'precio alto', 3700, 'una vez', 'app', 'activa');
INSERT INTO alerta VALUES(3, 3, 3, 'volatilidad', 4.5, 'recurrente', 'sms', 'activa');
INSERT INTO alerta VALUES(4, 4, 4, 'noticia', 0, 'una vez', 'correo', 'activa');
INSERT INTO alerta VALUES(5, 5, 5, 'precio bajo', 120, 'recurrente', 'app', 'activa');
INSERT INTO alerta VALUES(6, 6, 6, 'precio alto', 2, 'una vez', 'sms', 'desactivada');
INSERT INTO alerta VALUES(7, 7, 7, 'noticia', 0, 'recurrente', 'correo', 'activa');
INSERT INTO alerta VALUES(8, 8, 8, 'precio alto', 90, 'una vez', 'correo', 'activa');
INSERT INTO alerta VALUES(9, 9, 9, 'volatilidad', 3.5, 'recurrente', 'app', 'activa');
INSERT INTO alerta VALUES(10, 10, 10, 'precio bajo', 5.5, 'una vez', 'sms', 'activa');

-- Tabla: token_exchange_wallet
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(1, 1);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(2, 2);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(3, 3);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(4, 4);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(5, 5);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(6, 6);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(7, 7);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(8, 8);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(9, 9);
INSERT INTO token_exchange_wallet (id_token, id_exchange_wallet) VALUES(10, 10);

-- Tabla: usuario_token
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(1, 1, 2.0, 134000.5, '2024-05-01');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(2, 2, 1.0, 3500.5, '2024-05-02');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(3, 3, 10.0, 4200.0, '2024-05-03');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(4, 4, 1000.0, 450.0, '2024-05-04');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(5, 5, 20.0, 3006.0, '2024-05-05');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(6, 6, 500.0, 510.0, '2024-05-06');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(7, 7, 150.0, 93.0, '2024-05-07');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(8, 8, 30.0, 2550.0, '2024-05-08');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(9, 9, 10.0, 153.0, '2024-05-09');
INSERT INTO usuario_token (id_usuario, id_token, cantidad, valor_total_usd, fecha_actualización) VALUES(10, 10, 50.0, 340.0, '2024-05-10');

-- Tabla: usuario_transaccion
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(1, 1, 'comprador');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(2, 2, 'vendedor');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(3, 3, 'emisor');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(4, 4, 'comprador');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(5, 5, 'vendedor');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(6, 6, 'comprador');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(7, 7, 'comprador');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(8, 8, 'vendedor');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(9, 9, 'emisor');
INSERT INTO usuario_transaccion (id_usuario, id_transaccion, rol) VALUES(10, 10, 'comprador');

-- Segunda carga de datos

-- Tabla: reporte_fiscal
INSERT INTO reporte_fiscal VALUES(1, 1, '2023-12-31', 15000.50, 4500.20, 19500.70, 'Perú', 'PDF', '2024-01-20');
INSERT INTO reporte_fiscal VALUES(2, 4, '2023-12-31', 8500.00, 2100.00, 10600.00, 'Perú', 'CSV', '2024-01-22');
INSERT INTO reporte_fiscal VALUES(3, 7, '2023-12-31', 22000.75, 8300.50, 30301.25, 'Chile', 'PDF', '2024-01-25');
INSERT INTO reporte_fiscal VALUES(4, 2, '2023-12-31', 5400.00, 1200.00, 6600.00, 'Colombia', 'PDF', '2024-01-28');
INSERT INTO reporte_fiscal VALUES(5, 5, '2023-12-31', 18900.20, 6400.80, 25301.00, 'México', 'CSV', '2024-01-30');
INSERT INTO reporte_fiscal VALUES(6, 9, '2023-12-31', 9200.00, 3100.00, 12300.00, 'Perú', 'PDF', '2024-02-01');
INSERT INTO reporte_fiscal VALUES(7, 10, '2023-12-31', 11000.00, 4000.00, 15000.00, 'México', 'XLSX', '2024-02-03');
INSERT INTO reporte_fiscal VALUES(8, 3, '2023-12-31', 3500.00, 9500.00, 13000.00, 'Colombia', 'PDF', '2024-02-05');
INSERT INTO reporte_fiscal VALUES(9, 6, '2022-12-31', 7800.00, 1500.00, 9300.00, 'Argentina', 'CSV', '2023-01-15');
INSERT INTO reporte_fiscal VALUES(10, 8, '2022-12-31', 4300.00, 2300.00, 6600.00, 'Chile', 'PDF', '2023-01-18');

-- Tabla: configuracion_preferencias 

INSERT INTO configuracion_preferencias VALUES(1, 1, 'oscuro', 'tarjetas', 'BTC,ETH,SOL', 'diaria', 'precio,volatilidad,ROI', 'es-ES');
INSERT INTO configuracion_preferencias VALUES(2, 2, 'claro', 'lista', 'BTC,BNB', 'semanal', 'precio,ROI', 'es-ES');
INSERT INTO configuracion_preferencias VALUES(3, 3, 'oscuro', 'lista', 'ADA,XRP,MATIC', 'inmediata', 'precio,volatilidad', 'es-ES');
INSERT INTO configuracion_preferencias VALUES(4, 4, 'claro', 'tarjetas', 'SOL,LINK,UNI', 'diaria', 'precio', 'es-ES');
INSERT INTO configuracion_preferencias VALUES(5, 5, 'oscuro', 'tarjetas', 'BTC,ETH', 'semanal', 'precio,ROI', 'es-MX');
INSERT INTO configuracion_preferencias VALUES(6, 6, 'oscuro', 'lista', 'MATIC,UNI', 'nunca', 'ninguna', 'es-AR');
INSERT INTO configuracion_preferencias VALUES(7, 7, 'claro', 'lista', 'BTC,LTC,XRP', 'diaria', 'precio,volatilidad,ROI', 'es-CL');
INSERT INTO configuracion_preferencias VALUES(8, 8, 'oscuro', 'tarjetas', 'ETH,SOL', 'inmediata', 'precio,volatilidad', 'es-CL');
INSERT INTO configuracion_preferencias VALUES(9, 9, 'claro', 'tarjetas', 'BNB,ADA', 'semanal', 'precio,ROI', 'es-ES');
INSERT INTO configuracion_preferencias VALUES(10, 10, 'oscuro', 'lista', 'LINK,MATIC', 'diaria', 'precio,volatilidad', 'en-US');

-- Tabla: carrito_compras 

INSERT INTO carrito_compras VALUES(1, 2, 5, 10.5, 1578.15, 'activo');
INSERT INTO carrito_compras VALUES(2, 4, 1, 0.05, 3350.01, 'activo');
INSERT INTO carrito_compras VALUES(3, 9, 7, 1000, 620.00, 'abandonado');
INSERT INTO carrito_compras VALUES(4, 1, 2, 2, 7001.00, 'completado');
INSERT INTO carrito_compras VALUES(5, 5, 8, 50, 4250.00, 'activo');
INSERT INTO carrito_compras VALUES(6, 8, 4, 2500, 1125.00, 'abandonado');
INSERT INTO carrito_compras VALUES(7, 10, 9, 200, 3060.00, 'activo');
INSERT INTO carrito_compras VALUES(8, 6, 6, 1500, 1530.00, 'completado');
INSERT INTO carrito_compras VALUES(9, 7, 10, 300, 2040.00, 'activo');
INSERT INTO carrito_compras VALUES(10, 3, 3, 15, 6300.00, 'abandonado');

-- Tabla: reporte_financiero 

INSERT INTO reporte_financiero VALUES(1, 1, 'Reporte de Operaciones - Mayo 2024', 'Análisis detallado de compras y ventas del mes.', '2024-06-01', '2024-05-01', '2024-05-31', 'mensual');
INSERT INTO reporte_financiero VALUES(2, 7, 'Reporte de Compras de Ripple', 'Resumen de todas las adquisiciones de XRP.', '2024-06-02', '2024-01-01', '2024-05-31', 'personalizado');
INSERT INTO reporte_financiero VALUES(3, 2, 'Análisis Trimestral Q1 2024', 'Revisión de rendimiento de ETH en el primer trimestre.', '2024-04-05', '2024-01-01', '2024-03-31', 'trimestral');
INSERT INTO reporte_financiero VALUES(4, 5, 'Reporte Anual de Inversiones 2023', 'Resumen consolidado del año fiscal 2023.', '2024-01-15', '2023-01-01', '2023-12-31', 'anual');
INSERT INTO reporte_financiero VALUES(5, 9, 'Operaciones con Altcoins - Mayo', 'Detalle de transacciones con BNB y ADA.', '2024-06-03', '2024-05-01', '2024-05-31', 'mensual');
INSERT INTO reporte_financiero VALUES(6, 4, 'Análisis de Volatilidad SOL', 'Estudio de la volatilidad de Solana.', '2024-06-04', '2024-05-01', '2024-05-31', 'personalizado');
INSERT INTO reporte_financiero VALUES(7, 10, 'Reporte de Comisiones Pagadas', 'Total de comisiones en el último semestre.', '2024-06-05', '2024-01-01', '2024-05-31', 'semestral');
INSERT INTO reporte_financiero VALUES(8, 6, 'Rendimiento de MATIC', 'Análisis de la compra de Polygon.', '2024-06-05', '2024-05-01', '2024-05-31', 'personalizado');
INSERT INTO reporte_financiero VALUES(9, 8, 'Pérdidas y Ganancias en LTC', 'Reporte detallado de operaciones con Litecoin.', '2024-06-06', '2024-01-01', '2024-05-31', 'personalizado');
INSERT INTO reporte_financiero VALUES(10, 3, 'Actividad de Transferencias', 'Registro de todas las transferencias salientes.', '2024-06-07', '2024-05-01', '2024-05-31', 'mensual');

-- Tabla: tickets_soporte 

INSERT INTO tickets_soporte VALUES(1, 3, 'Problema con acceso a mi cuenta', 'No puedo iniciar sesión, me dice que mi cuenta está suspendida.', 'Cuenta', '2024-05-15', '2024-05-16', 'Ana López');
INSERT INTO tickets_soporte VALUES(2, 6, 'Consulta sobre API para desarrolladores', 'Necesito información sobre los endpoints para conectar mi app.', 'Técnico', '2024-05-18', '2024-05-18', 'Jorge Díaz');
INSERT INTO tickets_soporte VALUES(3, 8, 'Transferencia no recibida', 'Hice una transferencia de LTC y no aparece en mi wallet.', 'Transacciones', '2024-05-20', '2024-05-21', 'Ana López');
INSERT INTO tickets_soporte VALUES(4, 2, 'Error al cargar el dashboard', 'La página de inicio se queda en blanco.', 'Técnico', '2024-05-22', '2024-05-22', 'Jorge Díaz'); 
INSERT INTO tickets_soporte VALUES(5, 9, 'Cómo exportar reporte fiscal', 'No encuentro la opción para descargar mi reporte en PDF.', 'General', '2024-05-23', '2024-05-23', 'Carla Solis');
INSERT INTO tickets_soporte VALUES(6, 1, 'Duda sobre comisión de venta', 'La comisión aplicada a mi última venta fue más alta de lo esperado.', 'Transacciones', '2024-05-24', '2024-05-25', 'Jorge Díaz');
INSERT INTO tickets_soporte VALUES(7, 4, 'Sugerencia: añadir tema morado', 'Me gustaría poder personalizar la app con un tema de color morado.', 'Sugerencias', '2024-05-25', '2024-05-25', 'Ana López');
INSERT INTO tickets_soporte VALUES(8, 7, 'Cambiar número de contacto', 'He cambiado de número y necesito actualizarlo en mi perfil.', 'Cuenta', '2024-05-26', '2024-05-26', 'Ana López');
INSERT INTO tickets_soporte VALUES(9, 10, 'API key no funciona', 'Estoy intentando conectar con la API pero recibo un error de autenticación.', 'Técnico', '2024-05-28', '2024-05-29', 'Jorge Díaz');
INSERT INTO tickets_soporte VALUES(10, 5, 'Felicitaciones por la plataforma', 'Solo quería decir que la plataforma es excelente y muy fácil de usar.', 'General', '2024-05-30', '2024-05-30', 'Carla Solis');

-- Tabla: reporte_financiero_transaccion 

INSERT INTO reporte_financiero_transaccion VALUES(1, 1, 500.0, 0.0);
INSERT INTO reporte_financiero_transaccion VALUES(2, 7, 10.0, 0.0);
INSERT INTO reporte_financiero_transaccion VALUES(3, 2, 0.0, 50.0);
INSERT INTO reporte_financiero_transaccion VALUES(4, 5, 120.5, 0.0);
INSERT INTO reporte_financiero_transaccion VALUES(5, 3, 0.0, 0.0);
INSERT INTO reporte_financiero_transaccion VALUES(6, 5, 200.0, 0.0);
INSERT INTO reporte_financiero_transaccion VALUES(7, 10, 15.0, 0.0);
INSERT INTO reporte_financiero_transaccion VALUES(8, 6, 45.0, 0.0);
INSERT INTO reporte_financiero_transaccion VALUES(9, 8, 0.0, 100.0);
INSERT INTO reporte_financiero_transaccion VALUES(10, 9, 0.0, 0.0);

select * from reporte_financiero_transaccion