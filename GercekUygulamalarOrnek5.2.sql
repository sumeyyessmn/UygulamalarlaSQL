--AYLARA GORE SIPARIS DAGILIMINI GETIREN SORGU

select
--DATEPART bir tarih-saat fonksiyonudur ve tarih saat arasýndaki herhangi bir deðerden ayý getirir.
DATEPART(YEAR, O.DATE_) YIL,
DATEPART(MONTH, O.DATE_) AY,
case 
	when DATEPART(MONTH, O.DATE_)=1 then 'Ocak'
	when DATEPART(MONTH, O.DATE_)=2 then 'Þubat'
	when DATEPART(MONTH, O.DATE_)=3 then 'Mart'
	when DATEPART(MONTH, O.DATE_)=4 then 'Nisan'
	when DATEPART(MONTH, O.DATE_)=5 then 'Mayýs'
	when DATEPART(MONTH, O.DATE_)=6 then 'Haziran'
	when DATEPART(MONTH, O.DATE_)=7 then 'Temmuz'
	when DATEPART(MONTH, O.DATE_)=8 then 'Aðustos'
	when DATEPART(MONTH, O.DATE_)=9 then 'Eylül'
	when DATEPART(MONTH, O.DATE_)=10 then 'Ekim'
	when DATEPART(MONTH, O.DATE_)=11 then 'Kasým'
	when DATEPART(MONTH, O.DATE_)=12 then 'Aralýk'
end as AYADI,
SUM(OD.LINETOTAL) AS TOPLAMSIPARIS_TUTAR,
SUM(OD.AMOUNT) AS TOPLAMSIPARIS_MIKTAR,
COUNT(OD.ID) AS TOPLAMSIPARIS_SAYISI
from ORDERS as O
	inner join USERS U on O.USERID= U.ID
	inner join ADDRESS A ON A.ID= O.ADDRESSID
	inner join CITIES CT ON CT.ID = A.CITYID
	inner join TOWNS T ON T.ID = A.TOWNID
	inner join DISTRICTS D on D.ID = A.DISTRICTID
	inner join PAYMENTS P ON P.ORDERID = O.ID 
	inner join INVOICES I ON I.ORDERID = O.ID
	inner join ORDERDETAILS OD ON OD.ORDERID = O.ID
	inner join ITEMS ITM on ITM.ID = OD.ITEMID
GROUP BY DATEPART(YEAR, O.DATE_),DATEPART(MONTH, O.DATE_)
ORDER BY DATEPART(MONTH, O.DATE_),DATEPART(YEAR, O.DATE_)