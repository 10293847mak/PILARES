-- Base de Datos
-- Entregable 9 Operaciones en una base de datos
-- Alejandro Adrian Coy Vazquez
-- 3016ZL02
-- 05/10/2023
use tiendainformatica;

-- 1-Lista el nombre de todos los productos que hay en la tabla producto.
SELECT productos.Modelo as Productos from productos;

-- 2-Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT 
	productos.Modelo AS PRODUCTOS,
    productos.Precio AS PRECIOS
FROM productos;

-- 3-Lista todas las columnas de la tabla producto.
SELECT * FROM productos;

-- 4-Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
SELECT 
	fabricante.Marca AS FABRICANTE,
    productos.Modelo AS PRODUCTO,
    productos.Precio AS PRECIO
FROM fabricante INNER JOIN productos ON fabricante.PK_Fabricante = productos.FK_Fabricante ORDER BY fabricante.Marca; 

-- °Subconsultas (En la cláusula WHERE)
-- 1-Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT 
	productos.Modelo AS PRODUCTOR
FROM productos WHERE productos.FK_Fabricante = (
		SELECT
		fabricante.PK_Fabricante
		FROM fabricante WHERE fabricante.Marca = 'Lenovo');

-- Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT
*
FROM productos WHERE productos.Precio = (
		SELECT
		max(productos.Precio)
		FROM productos WHERE productos.FK_Fabricante = (
				SELECT 
				fabricante.PK_Fabricante
				FROM fabricante where fabricante.Marca = 'Lenovo')) AND productos.Precio <> (
						SELECT
						max(productos.Precio)
						FROM productos WHERE productos.FK_Fabricante = (
								SELECT 
								fabricante.PK_Fabricante
								FROM fabricante WHERE fabricante.Marca = 'Lenovo'
						));

-- Lista el nombre del producto más caro del fabricante Lenovo.
SELECT 
productos.Modelo AS PRODUCTO
FROM productos INNER JOIN fabricante ON productos.FK_Fabricante = fabricante.PK_Fabricante
WHERE fabricante.Marca = 'Lenovo' AND productos.Precio = (
        SELECT MAX(p.Precio) 
        FROM productos p
        INNER JOIN fabricante f ON p.FK_Fabricante = f.PK_Fabricante WHERE f.Marca = 'Lenovo'
);

