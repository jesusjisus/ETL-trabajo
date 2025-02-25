
CREATE DATABASE DWH_RapiServ;
GO
USE DWH_RapiServ;
GO

-- Tabla de hechos: Ventas
CREATE TABLE Hechos_Ventas (
    ID_Venta INT PRIMARY KEY,
    ID_Producto INT,
    ID_Sucursal INT,
    ID_Tiempo INT,
    Cantidad INT,
    Total_Venta DECIMAL(10,2)
);

-- Tabla de dimensión: Productos
CREATE TABLE Dim_Producto (
    ID_Producto INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Categoria VARCHAR(50)
);

-- Tabla de dimensión: Sucursales
CREATE TABLE Dim_Sucursal (
    ID_Sucursal INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Zona VARCHAR(50),
    Ciudad VARCHAR(50)
);

-- Tabla de dimensión: Tiempos
CREATE TABLE Dim_Tiempo (
    ID_Tiempo INT PRIMARY KEY,
    Dia INT,
    Mes INT,
    Año INT,
    Franja_Horaria VARCHAR(20)
);

