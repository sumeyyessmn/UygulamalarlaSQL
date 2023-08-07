--ODEME TURUNE GORE DAGILIM


select 
datepart(year,DATE_) AS YIL,
datepart(month,DATE_) AS AY,
case 
	when PAYMENTTYPE=1 then 'Kredi Karti'
	when PAYMENTTYPE=2 then 'Banka Havalesi'
end as ODEMETURU_ACIKLAMA,
sum(PAYMENTTOTAL) as TOPLAMTUTAR
from PAYMENTS
group by datepart(year,DATE_),datepart(month,DATE_) , PAYMENTTYPE
ORDER BY datepart(year,DATE_),datepart(month,DATE_)