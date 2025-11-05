SELECT * FROM [AnalisisDB].[dbo].[amazon_sales_data 2025];

SELECT 
    SUM([Total Sales]) AS Venta_Total_Neta
FROM 
     [AnalisisDB].[dbo].[amazon_sales_data 2025]
WHERE 
    [Status] <> 'Cancelled';

SELECT 
    Category,
    SUM([Total Sales]) AS Venta_Total,
    SUM([Quantity]) AS Unidades_Vendidas
FROM 
    [AnalisisDB].[dbo].[amazon_sales_data 2025]
WHERE 
    [Status] <> 'Cancelled'
GROUP BY 
    [Category]
ORDER BY 
    Venta_Total DESC;
   


SELECT 
    [Customer Location] AS Ciudad,
    COUNT([Order ID]) AS Cantidad_de_Pedidos
FROM 
    [AnalisisDB].[dbo].[amazon_sales_data 2025]
GROUP BY 
   [Customer Location]
ORDER BY 
    Cantidad_de_Pedidos DESC