/* string iþlemleri */
/* Ascii ve char fonksiyonlarý */
select ascii('f') --102

select ascii(char(102)) --102
select char(ascii('f')) --f

/* substring */
select SUBSTRING('Sumeyye Sisman',1,7) -- Sumeyye (1.karakterden baþla 7 karakter al)
select USERNAME_ from USERS where USERNAME_ like 'S%' 
select USERNAME_ from USERS where SUBSTRING(USERNAME_,1,1)='S' --ilk karakteri S olan
select USERNAME_ FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='E' --son karakteri E olan
--NOT: LEN fonksiyonu bir stringin uzunluðunu verir bize.
/* CHARINDEX */
select CHARINDEX('U','SUMEYYE SISMAN',1) --2.karakterde buldu
/* CONCAT */
--iki veya daha fazla stringin yan yana birleþtirilmesini saðlýyor.
select concat('Sumeyye',' ','Sisman') --Sumeyye Sisman
select CONCAT_WS(' ','Sumeyye','Sisman') --Sumeyye Sisman boþluk seperatoru kullandýk
select CONCAT_WS(' ',USERNAME_,PASSWORD_,NAMESURNAME) from USERS
/* FORMAT */
--Sayý ya da tarih için local olarak istediðimiz formatta yazdýrmamýzý saðlar.
select FORMAT(GETDATE(),'d','en-us') -- 8/9/2023
select FORMAT(GETDATE(),'D','en-us') -- Wednesday,August 9, 2023
--LEFT RIGHT LEN--
/* SOLDAN SAÐDAN KARAKTER ALMAMIZI SAÐLAR LEFT RIGHT*/
select left('sumeyye',2) --su
select right('sumeyye',2) --ye
select len(1234567890)

select left('sumeyye sisman',7) --sumeyye
select left('sumeyye sisman',CHARINDEX(' ','sumeyye sisman')) --sumeyye
select right('sumeyye sisman',6) --sisman
select right('sumeyye sisman', len('sumeyye sisman')-CHARINDEX(' ','sumeyye sisman')) --sisman

select left('sumeyye sisman',CHARINDEX(' ','sumeyye sisman')),right('sumeyye sisman', len('sumeyye sisman')-CHARINDEX(' ','sumeyye sisman')) --sumeyye sisman
select left(NAMESURNAME,CHARINDEX(' ',NAMESURNAME)),right(NAMESURNAME, len(NAMESURNAME)-CHARINDEX(' ',NAMESURNAME)) from USERS

/* TRIM, LTRIM, RTRIM */
--trim boþluklarý temizlemek anlamýna geliyor.
select trim(' Sumeyye Sisman ') --baþýndaki ve sonundaki boþluðu temizledi
select LTRIM(' Sumeyye Sisman ')--sadece baþýndaki boþluðu temizledi 
select RTRIM(' Sumeyye Sisman ')--sadece sonundaki boþluðu temizledi
select LTRIM(RTRIM(' Sumeyye Sisman '))--baþýndaki ve sonundaki boþluðu temizledi

/* LOWER-UPPER-REVERSE-REPLICATE */
select LOWER('SUMSUM') --sumsum küçük harfe çevirdi
select UPPER('sumsum') --SUMSUM büyük harfe çevirdi

select REVERSE('sumo') --omus tersten yazdý
select REPLICATE('0',10) --0 ý 10 kere yazdýrdý

/* replace -yer deðiþtirmek */
select REPLACE('sumeyye sisman','sisman','SISMAN') --sisman ý SISMAN ile deðiþti


