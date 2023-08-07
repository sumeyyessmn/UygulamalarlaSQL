-- Kullan�c� Ad� Ad Soyad �l �l�e Semt A��k Adres 
--Sipari� ID Tarih Toplam Tutar �deme Tarihi 
--Banka onay kodu Fatura Tarihi Kargo Fi� No

select 
	U.USERNAME_ as KullaniciAdi, U.NAMESURNAME AS AdSoyad, 
	CT.CITY AS Il, T.TOWN AS Il�e, D.DISTRICT AS Semt, A.ADDRESSTEXT as AcikAdres,
	O.ID AS SiparisID, O.DATE_ AS Tarih, o.TOTALPRICE as ToplamTutar, 
	P.DATE_ AS OdemeTarihi,p.APPROVECODE as BankaOnayKodu,
	I.DATE_ AS FaturaTarihi, �.CARGOFICHENO as KargoFisNo
from ORDERS as O
	inner join USERS U on O.USERID= U.ID
	inner join ADDRESS A ON A.ID= O.ADDRESSID
	inner join CITIES CT ON CT.ID = A.CITYID
	inner join TOWNS T ON T.ID = A.TOWNID
	inner join DISTRICTS D on D.ID = A.DISTRICTID
	inner join PAYMENTS P ON P.ORDERID = O.ID 
	inner join INVOICES I ON I.ORDERID = O.ID
where u.NAMESURNAME = 'Mertcan AZDER'

