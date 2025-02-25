CREATE DATABASE RapiServDB;
GO
USE RapiServDB;
GO

-- Tabla de Ventas
CREATE TABLE Ventas (
    ID_Venta INT PRIMARY KEY IDENTITY,
    Fecha DATE NOT NULL,
    Hora TIME NOT NULL,
    ID_Producto INT NOT NULL,
    ID_Sucursal INT NOT NULL,
    Cantidad INT NOT NULL,
    Monto_Total DECIMAL(10,2) NOT NULL
);
  
-- Tabla de Productos
CREATE TABLE Productos (
    ID_Producto INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL
);

-- Tabla de Sucursales
CREATE TABLE Sucursales (
    ID_Sucursal INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100) NOT NULL,
    Zona VARCHAR(50) NOT NULL,
    Ciudad VARCHAR(50) NOT NULL
);

-- Tabla de Tiempos (Dimensión)
CREATE TABLE Tiempos (
    ID_Tiempo INT PRIMARY KEY IDENTITY,
    Dia INT NOT NULL,
    Mes INT NOT NULL,
    Año INT NOT NULL,
    Franja_Horaria VARCHAR(20) NOT NULL
);

INSERT INTO Productos (Nombre, Categoria, Precio) VALUES 
('Cordon Bleu', 'Plato Fuerte', 15.00),
('Papas Fritas', 'Acompañamiento', 5.00);

INSERT INTO Sucursales (Nombre, Zona, Ciudad) VALUES 
('Sucursal Capital', 'Capital', 'Buenos Aires'),
('Sucursal Interior', 'Interior', 'Córdoba');

INSERT INTO Tiempos (Dia, Mes, Año, Franja_Horaria) VALUES 
(1, 10, 2024, 'Mañana'),
(1, 10, 2024, 'Tarde');

INSERT INTO Ventas (Fecha, Hora, ID_Producto, ID_Sucursal, Cantidad, Monto_Total) VALUES 
('2024-10-01', '10:00', 1, 1, 5, 75.00),
('2024-10-01', '14:00', 2, 2, 10, 50.00);
