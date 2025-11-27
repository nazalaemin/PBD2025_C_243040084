--1.Tampilkan ProductID dan total uang yang didapat (LineTotal) dari produk
tersebut.

SELECT ProductID, LineTotal
FROM Sales.SalesOrderDetail;

--2. Hanya hitung transaksi yang OrderQty (jumlah beli) >= 2.

SELECT ProductID, SUM(OrderQty) AS TotalQty
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(OrderQty) > 2


--3. Kelompokkan berdasarkan ProductID.

SELECT ProductID, COUNT(*) AS JumlahProduct
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

--4. Filter agar hanya menampilkan produk yang total uangnya (SUM(LineTotal))
di atas $50,000.

SELECT ProductID, SUM(LineTotal) AS TotalQty
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) > 50;

--5. Urutkan dari pendapatan tertinggi

SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;


--6. Ambil 10 produk teratas saja.

SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;
