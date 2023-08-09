-- Crear una base de datos LOGIN_2023
CREATE DATABASE LOGIN_2023;
GO

-- Usar la base de datos LOGIN_2023
USE LOGIN_2023;
GO

-- Creación de la tabla de roles

CREATE TABLE roles (
    id_rol INT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL
);

-- Creación de la tabla de usuarios

CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    id_rol INT NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

-- Insertando registros en la tabla de roles

INSERT INTO roles (id_rol, nombre_rol) VALUES (1, 'administrador');
INSERT INTO roles (id_rol, nombre_rol) VALUES (2, 'supervisor');
INSERT INTO roles (id_rol, nombre_rol) VALUES (3, 'vendedor');

-- Insertando registros en la tabla de usuarios

INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (1, 'JUANCITO', 'ADMIN@123', 1);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (2, 'DARIEL', 'DARIEL@123', 2);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (3, 'DANIELA', 'DANIELA@123', 3);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (4, 'MARIA', 'MARIA@123', 1);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (5, 'YENNEFER', 'YENNEFER@123', 2);

-- Creación de la tabla usuario

CREATE TABLE usuario (
    id_usuario INT NOT NULL,
    nombre_user VARCHAR(20) NOT NULL,
    telefono VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL
);

SELECT * FROM usuario
-- Insertar datos en la tabla usuario

INSERT INTO usuario VALUES (1, 'JUANCITO', '809-555-8789', 'JUANCITO@GMAIL.COM');

-- Creación de la tabla Articulos

CREATE TABLE Articulos (
    IDArticulo INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Precio DECIMAL(10, 2)
);

-- Insertar datos en la tabla Articulos

INSERT INTO Articulos (IDArticulo, Nombre, Precio)
VALUES
    (1, 'Laptop Lenovo', 850.50),
    (2, 'Mouse Gamer', 30.25),
    (3, 'Monitor Gamer 32', 250.75),
    (4, 'Bocinas', 12.90),
    (5, 'UPS de 1200 kw', 120.00);

-- Creación de la tabla Ventas

CREATE TABLE Ventas (
    IDVenta INT IDENTITY(1, 1) PRIMARY KEY,
    IDArticulo INT,
    Cantidad INT,
    Precio DECIMAL(18, 2)
);


-- Consulta de la tabla Ventas

SELECT * FROM Ventas;

-- Eliminar datos de la tabla Ventas

DELETE FROM Ventas;

-- Insertar 10 artículos tecnológicos en la tabla Articulos

INSERT INTO Articulos (IDArticulo, Nombre, Precio)
VALUES
    (6, 'Smartphone', 500.00),
    (7, 'Laptop Legion', 1000.00),
    (8, 'Tablet', 300.00),
    (9, 'Smartwatch', 150.00),
    (10, 'Gafas de Realidad Virtual', 200.00),
    (11, 'Auriculares Inalámbricos', 100.00),
    (12, 'Altavoz Inteligente', 80.00),
    (13, 'Cámara de Acción', 250.00),
    (14, 'Monitor Curvo', 300.00),
    (15, 'Consola de Videojuegos', 400.00);

-- Consulta de la tabla Articulos

SELECT * FROM Articulos;
