CREATE TABLE USERTBL
( USERID VARCHAR(8) PRIMARY KEY,
  USERNAME NVARCHAR2(10) NOT NULL,
  BIRTHYEAR NUMBER(4) NOT NULL,
  ADDR NCHAR(2) NOT NULL,
  MOBILE1 CHAR(3),
  MOBILE2 CHAR(8),
  HEIGHT NUMBER(3),
  MDATE DATE);
  
CREATE TABLE BUYTBL
(IDNUM NUMBER(8) PRIMARY KEY,
 USERID VARCHAR(8) NOT NULL,
 PRDNAME NVARCHAR2(10) NOT NULL,
 GROUPNAME NVARCHAR2(10), 
 PRICE NUMBER(8) NOT NULL,
 AMOUNT NUMBER(3) NOT NULL,
 FOREIGN KEY (USERID) REFERENCES USERTBL (USERID));
 
 CREATE TABLE STDTBL
 (STDNAME NCHAR(5) NOT NULL PRIMARY KEY,
  ADDR NCHAR(2) NOT NULL);
  
  CREATE TABLE CLUBTBL
  (CLUBNAME NCHAR(5) NOT NULL PRIMARY KEY,
  ROOMNO NCHAR(4) NOT NULL
  );
  
  CREATE SEQUENCE STDCLUBSEQ;
  
  CREATE TABLE STDCLUBTBL
  (IDNUM NUMBER(5) NOT NULL PRIMARY KEY,
  STDNAME NCHAR(5) NOT NULL,
  CLUBNAME NCHAR(5) NOT NULL,
  FOREIGN KEY (STDNAME) REFERENCES STDTBL(STDNAME),
  FOREIGN KEY (CLUBNAME)REFERENCES CLUBTBL(CLUBNAME));
 
  INSERT INTO STDTBL VALUES ('沿骨呪','井害');
  INSERT INTO STDTBL VALUES ('失獣井','辞随');
  INSERT INTO STDTBL VALUES ('繕遂琶','井奄');
  INSERT INTO STDTBL VALUES ('精走据','井栽');
  INSERT INTO STDTBL VALUES ('郊搾鉄','辞随');
  INSERT INTO CLUBTBL VALUES ('呪慎','101硲');
  INSERT INTO CLUBTBL VALUES ('郊杵','102硲');
  INSERT INTO CLUBTBL VALUES ('逐姥','103硲');
  INSERT INTO CLUBTBL VALUES ('裟紫','104硲');
  
  INSERT INTO STDCLUBTBL VALUES(STDCLUBSEQ.NEXTVAL,'沿骨呪','郊杵');
  INSERT INTO STDCLUBTBL VALUES(STDCLUBSEQ.NEXTVAL,'沿骨呪','逐姥');
  INSERT INTO STDCLUBTBL VALUES(STDCLUBSEQ.NEXTVAL,'繕遂琶','逐姥');
  INSERT INTO STDCLUBTBL VALUES(STDCLUBSEQ.NEXTVAL,'精走据','逐姥');
  INSERT INTO STDCLUBTBL VALUES(STDCLUBSEQ.NEXTVAL,'精走据','裟紫');
  INSERT INTO STDCLUBTBL VALUES(STDCLUBSEQ.NEXTVAL,'郊搾鉄','裟紫');
  
  INSERT INTO USERTBL VALUES('LSG','戚渋奄',1987,'辞随','011','11111111',182,'2008-8-8');
  INSERT INTO USERTBL VALUES('KBS','沿骨呪',1979,'穿害','011','22222222',173,'2012-4-4');
  INSERT INTO USERTBL VALUES('KKH','沿井硲',1971,'井奄','019','33333333',177,'2007-7-7');
  INSERT INTO USERTBL VALUES('JYP','繕遂琶',1950,'辞随','011','44444444',166,'2009-9-9');
  INSERT INTO USERTBL VALUES('SSK','失獣井',1979,'辞随',NULL,NULL,186,'2013-12-12');
  -- NULL 葵戚 弦精井酔, 諮脊拝 琶球誤聖 拙失 , 益 葵幻 脊径!!
  INSERT INTO USERTBL VALUES('LJB','績仙骨',1963,'辞随','016','66666666',182,'2009-9-9');
  INSERT INTO USERTBL VALUES('YJS','星曽重',1969,'井害',NULL,NULL,170,'2005-5-5');
  INSERT INTO USERTBL VALUES('EJW','精走据',1972,'井栽','011','88888888',174,'2014-3-3');
  INSERT INTO USERTBL VALUES('JKW','繕淫酔',1965,'井奄','018','99999999',172,'2010-10-10');
  INSERT INTO USERTBL VALUES('BBK','郊搾鉄',1973,'辞随','010','00000000',176,'2013-5-5');
  
  CREATE SEQUENCE idSEQ; -- 授託腰硲 脊径聖 是背辞 獣碇什 持失
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'KBS', '錘疑鉢', NULL   , 30,   2);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'KBS', '葛闘栽', '穿切', 1000, 1);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'JYP', '乞艦斗', '穿切', 200,  1);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'BBK', '乞艦斗', '穿切', 200,  5);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'KBS', '短郊走', '税嫌', 50,   3);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'BBK', '五乞軒', '穿切', 80,  10);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'SSK', '奪'    , '辞旋', 15,   5);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'EJW', '奪'    , '辞旋', 15,   2);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'EJW', '短郊走', '税嫌', 50,   1);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'BBK', '錘疑鉢', NULL   , 30,   2);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'EJW', '奪'    , '辞旋', 15,   1);
INSERT INTO buyTBL VALUES(idSEQ.NEXTVAL, 'BBK', '錘疑鉢', NULL   , 30,   2);
  
COMMIT;
SELECT * FROM userTBL;
SELECT * FROM buyTBL;
SELECT * FROM CLUBTBL;
SELECT * FROM STDCLUBTBL;


--p250
SELECT CAST(price AS CHAR(5)) || 'X ' || CAST(amount AS CHAR(4)) || '=' AS "舘亜X呪勲",
            price*amount AS "姥古衝" 
FROM buyTbl ;

SELECT CONCAT (CONCAT (CONCAT (CAST(price AS CHAR(5)), 'X '), CAST(amount AS CHAR(4))), '=') AS "舘亜X呪勲",
            price*amount AS "姥古衝"
FROM buyTbl ;

SELECT TO_CHAR(12345, '$999,999') FROM DUAL;
SELECT TO_CHAR(12345, '$000,999') FROM DUAL;
SELECT TO_CHAR(12345, 'L999,999') FROM DUAL;
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MM:SS') FROM DUAL;

SELECT TO_CHAR(10, 'X'), TO_CHAR(255, 'XX') FROM DUAL;

--p252
SELECT ASCII('A'), CHR(65), ASCIISTR('廃'), UNISTR('\D55C') FROM DUAL;

SELECT LENGTH('廃越'), LENGTH('AB'), LENGTHB('廃越'), LENGTHB('AB') FROM DUAL;
--p253
SELECT CONCAT('戚依戚',' Oracle戚陥'), '戚依戚' || ' ' || 'Oracle戚陥'  FROM DUAL;

SELECT INSTR('戚依戚 Oracle戚陥. 戚依亀 神虞適戚陥', '戚依') FROM DUAL;
SELECT INSTR('戚依戚 Oracle戚陥. 戚依亀 神虞適戚陥', '戚依', 2) FROM DUAL;
SELECT INSTRB('戚依戚 Oracle戚陥. 戚依亀 神虞適戚陥', '戚依', 2) FROM DUAL;

SELECT LOWER('abcdEFGH'), UPPER('abcdEFGH'), INITCAP('this is oracle') FROM DUAL;

SELECT REPLACE ('戚依戚 Oracle戚陥', '戚依戚' , 'This is') FROM DUAL;
--p254
SELECT TRANSLATE('戚依戚 Oracle戚陥', '戚依' , 'AB') FROM DUAL;

SELECT SUBSTR('企廃肯厩幻室', 3, 2) FROM DUAL;

SELECT REVERSE('Oracle') FROM DUAL;

SELECT LPAD('戚依戚', 10, '##'), RPAD('戚依戚', 10, '##') FROM DUAL;
--p255
SELECT LTRIM('   戚依戚'), RTRIM('戚依戚$$$', '$') FROM DUAL;

SELECT TRIM('   戚依戚   '), TRIM(BOTH 'せ' FROM 'せせせ仙衡嬢推.せせせ') FROM DUAL;
SELECT TRIM('   戚依戚   '), TRIM(LEADING 'せ' FROM 'せせせ仙衡嬢推.せせせ') FROM DUAL;
SELECT TRIM('   戚依戚   '), TRIM(TRAILING 'せ' FROM 'せせせ仙衡嬢推.せせせ') FROM DUAL;

SELECT REGEXP_COUNT('戚依戚 神虞適戚陥.', '戚') FROM DUAL;
SELECT REGEXP_COUNT ('戚依戚. 神虞適戚陥.', '\.') FROM DUAL;



--p256
SELECT ABS(-100) FROM DUAL;

SELECT CEIL(4.7), FLOOR(4.7), ROUND(4.7) FROM DUAL;

SELECT MOD(157, 10) FROM DUAL;

SELECT POWER(2,3), SQRT(9) FROM DUAL;
--p257
SELECT SIGN(100), SIGN(0), SIGN(-100.123) FROM DUAL;

SELECT TRUNC(12345.12345, 2), TRUNC(12345.12345, -2) FROM DUAL;

SELECT ADD_MONTHS('2020-01-01', 5), ADD_MONTHS(SYSDATE, -5)  FROM DUAL;
SELECT TO_DATE('2020-01-01') + 5,  SYSDATE - 5  FROM DUAL;
--p258
SELECT CURRENT_DATE, SYSDATE, CURRENT_TIMESTAMP FROM DUAL;

SELECT EXTRACT(YEAR FROM DATE '2020-12-25'), EXTRACT(DAY FROM SYSDATE) FROM DUAL;

SELECT LAST_DAY('2020-02-01') FROM DUAL;

SELECT NEXT_DAY('2020-02-01', '杉推析'), NEXT_DAY(SYSDATE, '析推析')  FROM DUAL;

SELECT MONTHS_BETWEEN (SYSDATE, '1988-09-17') FROM DUAL;
--p259
SELECT BIN_TO_NUM(1,0), BIN_TO_NUM(1,1,1,1)  FROM DUAL;

SELECT NUMTODSINTERVAL(48, 'HOUR'), NUMTODSINTERVAL(360000, 'SECOND') FROM DUAL;

SELECT NUMTOYMINTERVAL(37, 'MONTH'), NUMTOYMINTERVAL(1.5, 'YEAR') FROM DUAL;

--------------- <叔柔 2> P260 ---------------------

-- ROW_NUMBER: 腰硲採食
SELECT ROW_NUMBER( ) OVER(ORDER BY height DESC) "徹笛授是", userName, addr, height
   FROM userTBL ;

SELECT ROW_NUMBER( ) OVER(ORDER BY height DESC, userName ASC) "徹笛授是", userName, addr, height
   FROM userTbl ;

SELECT addr, ROW_NUMBER( ) OVER(PARTITION BY addr ORDER BY height DESC, userName ASC) "走蝕紺徹笛授是", userName, height
   FROM userTbl ;

SELECT DENSE_RANK( ) OVER(ORDER BY height DESC)"徹笛授是", userName, addr, height
   FROM userTbl ;

SELECT RANK( ) OVER(ORDER BY height DESC)"徹笛授是", userName, addr, height
   FROM userTbl ;

--NTILE(2) : (胤硲)稽 歳嫌 - 設 紫遂馬走 省製
SELECT NTILE(2) OVER(ORDER BY height DESC) "鋼腰硲", userName, addr, height
   FROM userTbl;

SELECT NTILE(4) OVER(ORDER BY height DESC) "鋼腰硲", userName, addr, height
   FROM userTbl;

--------------- </叔柔 2> ---------------------
--------------- <叔柔 3> P264 ---------------------
SELECT  userName, addr, height AS "徹",
       height - (LEAD(height, 1, 0) OVER (ORDER BY height DESC)) AS "陥製 紫寓引 徹 託戚"
   FROM userTbl ;

SELECT addr, userName, height AS "徹",
       height - ( FIRST_VALUE(height) OVER (PARTITION BY addr ORDER BY height DESC) ) 
             AS "走蝕紺 置企徹人 託戚"
   FROM userTbl ;

SELECT  addr, userName, height AS "徹",
      (CUME_DIST() OVER (PARTITION BY addr ORDER BY height DESC)) * 100 AS "刊旋昔据 拷歳晴%"
   FROM userTbl ;

SELECT  DISTINCT addr,
	PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY height) OVER (PARTITION BY addr) 
               AS "走蝕紺 徹税 掻肖葵"
   FROM userTbl ;
   
   SELECT * FROM USERTBL
   ORDER BY ADDR;
   
   
-------------- <叔柔 4> ---------------------
CREATE TABLE pivotTest
   (  uName NCHAR(3),
      season NCHAR(2),
      amount NUMBER(3));

INSERT  INTO  pivotTest VALUES ('沿骨呪' , '移随',  10) ;
INSERT  INTO  pivotTest VALUES ('星曽重' , '食硯',  15) ;
INSERT  INTO  pivotTest VALUES ('沿骨呪' , '亜聖',  25) ;
INSERT  INTO  pivotTest VALUES ('沿骨呪' , '砂',    3) ;
INSERT  INTO  pivotTest VALUES ('沿骨呪' , '砂',    37) ;
INSERT  INTO  pivotTest VALUES ('星曽重' , '移随',  40) ;
INSERT  INTO  pivotTest VALUES ('沿骨呪' , '食硯',  14) ;
INSERT  INTO  pivotTest VALUES ('沿骨呪' , '移随',  22) ;
INSERT  INTO  pivotTest VALUES ('星曽重' , '食硯',  64) ;
SELECT * FROM pivotTest;

COMMIT;

SELECT * FROM pivotTest
   PIVOT ( SUM(amount) -- 1鯵税 尻至 亜管
           FOR season 
           IN ('砂','食硯','亜聖','移随') )   ;

--------------- </叔柔 4> ---------------------





   