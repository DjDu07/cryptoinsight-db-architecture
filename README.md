# CryptoInsight (Finoptix) - Arquitectura de Base de Datos

Este repositorio contiene el diseño, modelado e implementación de la arquitectura de base de datos relacional para **CryptoInsight**, una solución SaaS Fintech enfocada en la gestión unificada de portafolios de criptomonedas, análisis financiero y automatización de reportes fiscales.

## Características del Diseño Relacional
La base de datos fue construida y normalizada en **SQL Server** asegurando la integridad referencial y optimización de consultas para soportar:
- **Gestión de Usuarios y Billeteras:** Control de credenciales, vinculación de múltiples API keys y direcciones de blockchain públicas.
- **Módulo de Transacciones:** Registro histórico detallado de operaciones de compra, venta, intercambio y comisiones operativas.
- **Alertas Automatizadas:** Sistema de persistencia para configurar notificaciones de precios mínimos, máximos y variaciones porcentuales de mercado.

## Componentes Avanzados de T-SQL
El proyecto destaca por la lógica programada directamente en el servidor de base de datos para garantizar consistencia y rendimiento:
- **Procedimientos Almacenados (Stored Procedures):** Implementación de `usp_insertar_transaccion_con_usuario` utilizando control estricto de transacciones (`BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`) combinados con bloques `TRY...CATCH` para asegurar operaciones atómicas.
- **Funciones Definidas por el Usuario (UDFs):** 
  - Funciones escalares (`fn_total_valor_tokens_usuario`) para cálculos financieros centralizados en USD.
  - Funciones con valores de tabla de una sola instrucción (`fn_obtener_alertas_usuario`) para optimizar la carga de feeds dinámicos en el backend.

## Estructura de Archivos
- `cryptoinsight_db.sql`: Script de DDL para la creación de tablas, llaves primarias, foráneas y restricciones de verificación (`CHECK constraints`).
- `Carga de datos.sql`: Set de datos e inserciones de prueba estructuradas para validación de consistencia.
- `Consultas_DiegoD.sql`: Scripts de programación avanzada (vistas, funciones de usuario y procedimientos almacenados).

## Créditos
Este proyecto fue desarrollado de forma grupal como parte del curso Diseño de Base de Datos en la UPC. Integrantes: Diego Joaquín Díaz Urday, Alvaro Miguel Grados Dávila, Juan David Saldaña De Souza, Jean Niels Arizabal Condori, Augusto Sebastian Montes Maza.
