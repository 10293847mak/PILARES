SELECT count(*) AS Cantidad_de_productos FROM productos;

SELECT fabricante.Marca AS Fabricante, 
	COUNT(productos.PK_Productos) AS NumeroDeProductos 
FROM fabricante
LEFT JOIN productos ON fabricante.PK_Fabricante = productos.FK_Fabricante
GROUP BY fabricante.Marca
ORDER BY NumeroDeProductos DESC;

SELECT 
	fabricante.Marca AS Fabricante, 
    max(productos.Precio) AS Maximo, 
    min(productos.Precio) AS Minimo, 
    avg(productos.Precio) AS Media 
FROM fabricante
INNER JOIN productos ON fabricante.PK_Fabricante = productos.FK_Fabricante
GROUP BY fabricante.Marca;

SELECT
	fabricante.Marca AS Fabricante,
	max(productos.Precio) AS Maximo, 
    min(productos.Precio) AS Minimo,
    avg(productos.Precio) AS Media,
    count(productos.Precio) AS Cantidad
FROM fabricante
LEFT JOIN productos ON fabricante.PK_Fabricante = productos.FK_Fabricante
GROUP BY fabricante.Marca
HAVING AVG(productos.Precio) > 200
ORDER BY Media DESC;