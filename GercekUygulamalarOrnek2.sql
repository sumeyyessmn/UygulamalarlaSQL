select 
	U.USERNAME_ as KullaniciAdi, U.NAMESURNAME AS AdSoyad, 
	CT.CITY AS Il, T.TOWN AS Ilçe, D.DISTRICT AS Semt, A.ADDRESSTEXT as AcikAdres,
	O.ID AS SiparisID, O.DATE_ AS Tarih, o.TOTALPRICE as ToplamTutar, 
	P.DATE_ AS OdemeTarihi,p.APPROVECODE as BankaOnayKodu,
	I.DATE_ AS FaturaTarihi, ý.CARGOFICHENO as KargoFisNo,
	ITM.ITEMCODE AS UrunKodu,ITM.ITEMNAME AS UrunAdi, OD.AMOUNT AS Miktar, OD.UNITPRICE AS BirimFiyat,
	OD.LINETOTAL AS SatirToplami
	OD.*, ITM.*
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
where O.ID=3515 
