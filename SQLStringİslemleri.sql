/* string i�lemleri */
/* Ascii ve char fonksiyonlar� */
select ascii('f') --102

select ascii(char(102)) --102
select char(ascii('f')) --f

/* substring */
select SUBSTRING('Sumeyye Sisman',1,7) -- Sumeyye (1.karakterden ba�la 7 karakter al)
select USERNAME_ from USERS where USERNAME_ like 'S%' 
select USERNAME_ from USERS where SUBSTRING(USERNAME_,1,1)='S' --ilk karakteri S olan
select USERNAME_ FROM USERS WHERE SUBSTRING(USERNAME_,LEN(USERNAME_),1)='E' --son karakteri E olan
--NOT: LEN fonksiyonu bir stringin uzunlu�unu verir bize.
/* CHARINDEX */
select CHARINDEX('U','SUMEYYE SISMAN',1) --2.karakterde buldu
/* CONCAT */
--iki veya daha fazla stringin yan yana birle�tirilmesini sa�l�yor.
select concat('Sumeyye',' ','Sisman') --Sumeyye Sisman
select CONCAT_WS(' ','Sumeyye','Sisman') --Sumeyye Sisman bo�luk seperatoru kulland�k
select CONCAT_WS(' ',USERNAME_,PASSWORD_,NAMESURNAME) from USERS
/* FORMAT */
--Say� ya da tarih i�in local olarak istedi�imiz formatta yazd�rmam�z� sa�lar.
select FORMAT(GETDATE(),'d','en-us') -- 8/9/2023
select FORMAT(GETDATE(),'D','en-us') -- Wednesday,August 9, 2023
--LEFT RIGHT LEN--
/* SOLDAN SA�DAN KARAKTER ALMAMIZI SA�LAR LEFT RIGHT*/
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
--trim bo�luklar� temizlemek anlam�na geliyor.
select trim(' Sumeyye Sisman ') --ba��ndaki ve sonundaki bo�lu�u temizledi
select LTRIM(' Sumeyye Sisman ')--sadece ba��ndaki bo�lu�u temizledi 
select RTRIM(' Sumeyye Sisman ')--sadece sonundaki bo�lu�u temizledi
select LTRIM(RTRIM(' Sumeyye Sisman '))--ba��ndaki ve sonundaki bo�lu�u temizledi

/* LOWER-UPPER-REVERSE-REPLICATE */
select LOWER('SUMSUM') --sumsum k���k harfe �evirdi
select UPPER('sumsum') --SUMSUM b�y�k harfe �evirdi

select REVERSE('sumo') --omus tersten yazd�
select REPLICATE('0',10) --0 � 10 kere yazd�rd�

/* replace -yer de�i�tirmek */
select REPLACE('sumeyye sisman','sisman','SISMAN') --sisman � SISMAN ile de�i�ti


