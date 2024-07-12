-- Basket Analysis and Data Exploration
Select count (Ordernumber)  from BasketSales  --7501

-- Distinct products Purchased
-- Change data to long view 
-- Drop table #products
Select Ordernumber,Product 
into #products
from 
(
Select Ordernumber, Item1 as Product
from BasketSales
union ALL
Select Ordernumber, Item2 as Product
from BasketSales
union ALL
Select Ordernumber, Item3 as Product
from BasketSales
union ALL
Select Ordernumber, Item4 as Product
from BasketSales
union ALL
Select Ordernumber, Item5 as Product
from BasketSales
union ALL
Select Ordernumber, Item6 as Product
from BasketSales
union ALL
Select Ordernumber, Item7 as Product
from BasketSales
union ALL
Select Ordernumber, Item8 as Product
from BasketSales
union ALL
Select Ordernumber, Item9 as Product
from BasketSales
union ALL
Select Ordernumber, Item10 as Product
from BasketSales
union ALL
Select Ordernumber, Item11 as Product
from BasketSales
union ALL
Select Ordernumber, Item12 as Product
from BasketSales
union ALL
Select Ordernumber, Item13 as Product
from BasketSales
union ALL
Select Ordernumber, Item14 as Product
from BasketSales
union ALL
Select Ordernumber, Item15 as Product
from BasketSales
union ALL
Select Ordernumber, Item16 as Product
from BasketSales
union ALL
Select Ordernumber, Item17 as Product
from BasketSales
union ALL
Select Ordernumber, Item18 as Product
from BasketSales
union ALL
Select Ordernumber, Item19 as Product
from BasketSales
union ALL
Select Ordernumber, Item20 as Product
from BasketSales
) as X

----- 
Select * from #products where product is not NULL -- count = 29,363
Select * from #products where product is  NULL -- count = 120,657
--- Deleting null values/rows
Delete 
from #products
WHERE product is NULL

----- Assuming only one product was sold, distinct product sold and most product sold.
Select distinct product, COUNT(Product) as ProductSold
from #products
group by Product
order by COUNT(Product) desc

--- Max and Min Items sold
Select Ordernumber, count (Product) as ItemSold
from #products
group by Ordernumber
order by count (Product) DESC

---- Basket analysis for 2 products 
Select top 1 * from #Products

SELECT
PRODUCT_1,
PRODUCT_2,
COUNT(ON1) TRANS_COUNT
FROM
(
SELECT
a.Ordernumber as ON1,
a.PRODUCT PRODUCT_1,
b.PRODUCT PRODUCT_2,
b.Ordernumber as  ON2
FROM #products AS a JOIN
#products as b on a.Ordernumber = b.Ordernumber
WHERE 
a.Product != b.Product
and a.Product < b.Product
) as Temp
GROUP BY PRODUCT_1,PRODUCT_2
order by  COUNT(ON1) DESC

---- Basket analysis for 3 products 

SELECT
PRODUCT_1,
PRODUCT_2,
PRODUCT_3,
COUNT(ON1) TRANS_COUNT
FROM
(
SELECT
a.Ordernumber as ON1,
a.PRODUCT PRODUCT_1,
b.PRODUCT PRODUCT_2,
b.Ordernumber as  ON2,
c.Ordernumber as  ON3,
c.PRODUCT PRODUCT_3

FROM #products AS a

JOIN
#products as b on a.Ordernumber = b.Ordernumber
JOIN
#products as c on b.Ordernumber = c.Ordernumber
WHERE 
a.Product != b.Product
and a.Product < b.Product
and b.Product != c.Product
and b.Product < c.Product
) as Temp
GROUP BY PRODUCT_1,PRODUCT_2,PRODUCT_3
order by  COUNT(ON1) DESC