--------------------------------------------------------
--  파일이 생성됨 - 토요일-12월-03-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "CGS"."EMPLOYEE" 
   (	"EMP_ID" CHAR(8 BYTE), 
	"EMP_GENDER" CHAR(1 BYTE), 
	"EMP_ADDRESS" VARCHAR2(100 BYTE), 
	"EMP_BIRTH" DATE, 
	"EMP_PNUM" VARCHAR2(11 BYTE), 
	"EMP_EMAIL" VARCHAR2(30 BYTE), 
	"EMP_NAME" VARCHAR2(15 BYTE), 
	"HIRE_DATE" DATE, 
	"POSITION" NUMBER, 
	"SALARY" NUMBER, 
	"SITE_ID" CHAR(4 BYTE), 
	"CARDNUM" CHAR(16 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FILM
--------------------------------------------------------

  CREATE TABLE "CGS"."FILM" 
   (	"FILM_ID" CHAR(6 BYTE), 
	"FILM_NAME" VARCHAR2(100 BYTE), 
	"RUNNING_TIME" NUMBER, 
	"FILM_TYPE" CHAR(1 BYTE), 
	"RELEASE_DATE" DATE, 
	"DIRECTOR" VARCHAR2(50 BYTE), 
	"GENRE" VARCHAR2(50 BYTE), 
	"COUNTRY" VARCHAR2(50 BYTE), 
	"RESERVE_RATE" NUMBER, 
	"ACTOR" VARCHAR2(500 BYTE), 
	"FILM_GRADE" VARCHAR2(2 BYTE), 
	"FILM_STORY" VARCHAR2(1500 BYTE), 
	"POSTER" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table FILM_GRADE
--------------------------------------------------------

  CREATE TABLE "CGS"."FILM_GRADE" 
   (	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"SCREENING_ID" CHAR(5 BYTE), 
	"EVAL_GRADE" NUMBER, 
	"EVAL_CONTENT" VARCHAR2(450 BYTE), 
	"EVAL_DATE" DATE, 
	"FILM_ID" CHAR(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "CGS"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"NAME" VARCHAR2(15 BYTE), 
	"GENDER" CHAR(1 BYTE), 
	"ADDRESS" VARCHAR2(100 BYTE), 
	"BIRTH" DATE, 
	"PHONE_NUM" VARCHAR2(11 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"JOIN_DATE" DATE, 
	"ACCUM_POINT" NUMBER, 
	"MEMBER_GRADE" CHAR(1 BYTE), 
	"MEMBERSHIP" CHAR(16 BYTE), 
	"CURR_POINT" NUMBER, 
	"PASSWORD" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER_FILM
--------------------------------------------------------

  CREATE TABLE "CGS"."MEMBER_FILM" 
   (	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"SCREENING_ID" CHAR(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER_SALE
--------------------------------------------------------

  CREATE TABLE "CGS"."MEMBER_SALE" 
   (	"USING_POINT" NUMBER, 
	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"SALE_ID" CHAR(8 BYTE), 
	"SALE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER_SITE
--------------------------------------------------------

  CREATE TABLE "CGS"."MEMBER_SITE" 
   (	"SITE_ID" CHAR(4 BYTE), 
	"MEMBER_ID" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRICE
--------------------------------------------------------

  CREATE TABLE "CGS"."PRICE" 
   (	"CUSTOMER_TYPE" CHAR(1 BYTE), 
	"PRICE" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "CGS"."RESERVE" 
   (	"RESERVE_ID" CHAR(7 BYTE), 
	"RESERVE_NAME" VARCHAR2(15 BYTE), 
	"RESERVE_PNUM" CHAR(11 BYTE), 
	"TICKET_PRINT" CHAR(1 BYTE), 
	"SALE_ID" CHAR(8 BYTE), 
	"SALE_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SALE
--------------------------------------------------------

  CREATE TABLE "CGS"."SALE" 
   (	"SALE_ID" CHAR(8 BYTE), 
	"SALE_TYPE" CHAR(1 BYTE), 
	"MEMBER_TYPE" CHAR(1 BYTE), 
	"SALE_DATE" DATE, 
	"SALE_PRICE" NUMBER, 
	"PAYCARD_NUM" CHAR(16 BYTE), 
	"REFUND_TYPE" CHAR(1 BYTE), 
	"SCREENING_ID" CHAR(5 BYTE), 
	"SALE_CNT" NUMBER, 
	"DISCOUNT_PRICE" NUMBER, 
	"DISCOUNT_TYPE" CHAR(1 BYTE), 
	"FINAL_PRICE" NUMBER, 
	"USE_CNT" NUMBER, 
	"COMMON_CNT" NUMBER, 
	"YOUNG_CNT" NUMBER, 
	"SPECIAL_CNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SALE_SEAT
--------------------------------------------------------

  CREATE TABLE "CGS"."SALE_SEAT" 
   (	"SALE_DATE" DATE, 
	"SALE_ID" CHAR(8 BYTE), 
	"SCREENING_ID" CHAR(5 BYTE), 
	"SEAT_ID" CHAR(7 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SCREEN
--------------------------------------------------------

  CREATE TABLE "CGS"."SCREEN" 
   (	"SCREEN_NUM" CHAR(2 BYTE), 
	"SITE_ID" CHAR(4 BYTE), 
	"SEATING_CNT" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SCREENING
--------------------------------------------------------

  CREATE TABLE "CGS"."SCREENING" 
   (	"SCREENING_ID" CHAR(5 BYTE), 
	"SCREENING_DATE" DATE, 
	"SCREENING_CNT" CHAR(1 BYTE), 
	"START_TIME" CHAR(5 BYTE), 
	"END_TIME" CHAR(5 BYTE), 
	"SCHEDULE_OPEN" CHAR(1 BYTE), 
	"FILM_ID" CHAR(6 BYTE), 
	"SITE_ID" CHAR(4 BYTE), 
	"SCREEN_NUM" CHAR(2 BYTE), 
	"FILM_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SEAT
--------------------------------------------------------

  CREATE TABLE "CGS"."SEAT" 
   (	"SITE_ID" CHAR(4 BYTE), 
	"SEAT_STATUS" CHAR(1 BYTE), 
	"ROW_NUM" CHAR(1 BYTE), 
	"COL_NUM" CHAR(2 BYTE), 
	"SCREEN_NUM" CHAR(2 BYTE), 
	"SEAT_ID" CHAR(7 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SITE
--------------------------------------------------------

  CREATE TABLE "CGS"."SITE" 
   (	"SITE_ID" CHAR(4 BYTE), 
	"SITE_NAME" VARCHAR2(50 BYTE), 
	"TOTAL_SCREEN" NUMBER, 
	"MANAGER_NAME" VARCHAR2(15 BYTE), 
	"MANAGER_ID" CHAR(8 BYTE), 
	"SITE_ADDRESS" VARCHAR2(100 BYTE), 
	"OPEN_DATE" DATE, 
	"SITE_PNUM" VARCHAR2(13 BYTE), 
	"TOTAL_SEAT" NUMBER, 
	"SITE_IMG" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TRAILER
--------------------------------------------------------

  CREATE TABLE "CGS"."TRAILER" 
   (	"FILM_ID" CHAR(6 BYTE), 
	"FILE_TYPE" CHAR(1 BYTE), 
	"FILE_LINK" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table WISHLIST
--------------------------------------------------------

  CREATE TABLE "CGS"."WISHLIST" 
   (	"MEMBER_ID" VARCHAR2(15 BYTE), 
	"FILM_ID" CHAR(6 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into CGS.EMPLOYEE
SET DEFINE OFF;
Insert into CGS.EMPLOYEE (EMP_ID,EMP_GENDER,EMP_ADDRESS,EMP_BIRTH,EMP_PNUM,EMP_EMAIL,EMP_NAME,HIRE_DATE,POSITION,SALARY,SITE_ID,CARDNUM) values ('00010001','0','incheon',to_date('91/02/27','RR/MM/DD'),'01012345678','song@naver.com','송명현',to_date('16/10/28','RR/MM/DD'),0,9999,'0001','1234567890123456');
REM INSERTING into CGS.FILM
SET DEFINE OFF;
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000006','가려진 시간',129,'0',to_date('16/11/05','RR/MM/DD'),'엄태화','드라마, 판타지','한국',0.67,'강동원, 신은수, 이효제, 김희원, 권해효, 김단률','12','<strong>“이 얘기를… 네가 믿어줄까?”</strong><br>
<br>
엄마를 잃은 후 새 아빠와 함께 화노도로 이사 온 ‘수린’. <br>
 자신만의 공상에 빠져 홀로 지내는 수린에게 ‘성민’이 먼저 다가온다. <br>
 둘만의 암호로, 둘만의 공간에서, 둘만 아는 추억을 쌓아가는 그들. <br>
 어느 날, 공사장 발파 현장을 구경하기 위해 친구들과 산으로 가고
 그곳에서 모두가 실종된 채, 유일하게 수린만 돌아온다. <br>
  <br>
 그리고 며칠 뒤, 자신이 성민이라는 남자가 수린 앞에 나타난다. <br>
 ‘멈춰진 시간’에 갇혀 어른이 되었다는 성민. <br>
 수린만이 성민을 믿어주는 가운데 
 경찰과 마을 사람들은 의심을 거두지 못하고 성민은 쫓기는 상황에 이르게 되는데… <br>
  <br>
 “너만, 나를 믿어주면 돼” <br>
 세상은 몰랐던 특별한 이야기','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000002','닥터 스트레인지',115,'0',to_date('16/10/26','RR/MM/DD'),'스콧 데릭슨','액션, 어드벤처, 판타지','미국',31,'베네딕트 컴버배치, 레이첼 맥아담스, 틸다 스윈튼','12','<strong>마블 히어로의 새로운 시작!</strong><br>
<strong>모든 것을 초월한, 역사상 가장 강력한 히어로가 온다!</strong><br>
불의의 사고로 절망에 빠진 천재 외과의사 ‘닥터 스트레인지(베네딕트 컴버배치)’. <br>
 마지막 희망을 걸고 찾아 간 곳에서 ‘에인션트 원(틸다 스윈튼)’을 만나 세상을 구원할 강력한 능력을 얻게 되면서, 
 모든 것을 초월한 최강의 히어로로 거듭나는데...','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000003','럭키',112,'0',to_date('16/10/13','RR/MM/DD'),'이계벽','코미디','한국',10,'유해진, 이준, 조윤희','15','<strong>성공률 100% 완벽한 킬러!
</strong><br>
<strong>목욕탕 Key 때문에 무명배우로 삶이 뒤바뀌다?!
</strong><br>
<br>

냉혹한 킬러 형욱(유해진)은 사건 처리 후 우연히 들른 목욕탕에서 비누를 밟고 넘어져 과거의 기억을 잃게 된다. 
<br>
 인기도, 삶의 의욕도 없어 죽기로 결심한 무명배우 재성(이준)은 신변 정리를 위해 들른 목욕탕에서 
 그런 형욱을 보게 되고, 자신과 그의 목욕탕 키를 바꿔 도망친다. 
<br>
 
<br>
 이후 형욱은 자신이 재성이라고 생각한 채, 배우로 성공하기 위해 노력하는데…
<br>
 
<strong><br>
 인생에 단 한번 찾아온 초대형 기회! 초특급 반전!
<br>
 이것이 LUCK.KEY다!<br></strong>','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000004','로스트 인 더스트',102,'0',to_date('16/11/03','RR/MM/DD'),'데이빗 맥켄지','범죄, 드라마','미국',2,'크리스 파인, 벤 포스터','15','<strong>지옥 같은 현실 속에서 벼랑 끝에 내몰린 형제와 필사적으로 그들을 쫓는 형사의 추격.
</strong><br>
빚더미에 시달리던 두 형제, 토비(크리스 파인)과 태너(벤 포스터).
<br>
 가족의 유일한 재산이자, 어머니의 유산인 농장의 소유권 마저 은행 차압위기에 놓이게 된다.
<br>
 
<br>
 절망적인 현실에서 가족을 지키기 위해 연쇄 은행 강도 계획을 꾸미는 형제. 
<br>
 동생을 위해서라면 어떠한 일도 서슴지 않는 전과자 출신의 형 태너와 차분하고 이성적인 성격의 동생 토비는 범죄에 성공한다.
<br>
 
<br>
 한편, 연달아 발생한 은행강도 사건을 수사하던 베테랑 형사 해밀턴(제프 브리지스)은 치밀한 범죄 수법을 본능적으로 직감하고 수사망을 좁혀 그들을 추격하기 시작하는데..','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000005','무한대를 본 남자',108,'0',to_date('16/11/03','RR/MM/DD'),'맷 브라운','드라마','영국',5,'데브 파텔, 제레미 아이언스, 토비 존스','12','<strong>하늘이 내린 수학 천재, 그를 알아준 단 한 사람
</strong><br>
<strong>기적을 증명한 두 남자의 특별한 우정!
</strong><br>
<br>
머릿속에 그려지는 수많은 공식들을 세상 밖으로 펼치고 싶었던 인도 빈민가의 수학 천재 ‘라마누잔’. 
<br>
 그의 천재성을 알아본 영국 왕립학회의 괴짜 수학자 ‘하디 교수’는 
 엄격한 학교의 반대를 무릅쓰고 케임브리지 대학으로 ‘라마누잔’을 불러들인다. 
<br>
 성격도 가치관도 신앙심도 다르지만 수학에 대한 뜨거운 열정으로 함께한 두 사람은 
 모두가 불가능이라 여긴 위대한 공식을 세상에 증명하기 위해 무한대로의 여정을 떠나는데… 
<br>
  
<strong><br>
 역사상 가장 지적인 브로맨스가 시작된다!</strong>','00');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000007','신비한 동물사전',132,'0',to_date('16/11/06','RR/MM/DD'),'데이빗 예이츠','판타지, 모험','영국',17,'에디 레드메인, 콜린 파렐, 캐서린 워터스턴, 댄 포글러, 앨리슨 수돌','12','<strong>‘해리 포터’ 마법의 시작!</strong><br>
<strong>신비한 동물들 탈출, 뉴욕 최대의 위기! 새로운 마법의 시대가 열린다!</strong><br>
 <br>
1926년 뉴욕, ‘검은 존재’가 거리를 쑥대밭으로 만들고 미국의 마법의회 MACUSA의 대통령과 어둠의 마법사를 
체포하는 오러의 수장 그레이브스가 이를 추적하는 혼돈 속에 <br> 
영국의 마법사 뉴트 스캐맨더가 이 곳을 찾는다. <br>
그의 목적은 세계 곳곳에 숨어있는 신비한 동물들을 찾기 위한 것. <br>
여행을 하면서 다양한 크기의 신비한 동물을 구조해 안에 마법의 공간이 있는 가방에 넣어 다니며 보살핀다. <br>
하지만 은행을 지나던 중 금은보화를 좋아하는 신비한 동물인 니플러가 가방 안에서 탈출을 하고 이 일로 
전직 오러였던 티나와 노마지 제이콥과 엮이게 된다. <br>
이 사고로 뉴트와 제이콥의 가방이 바뀌면서 신비한 동물들이 대거 탈출을 하고 그들은 동물들을 찾기 위해 
뉴욕 곳곳을 누빈다.<br> ','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000008','스플릿',121,'0',to_date('16/11/06','RR/MM/DD'),'최국희','드라마','한국',6,'유지태, 이정현, 이다윗, 정성하','15','과거 볼링계의 전설이라 불리며 이름을 날리던 ‘철종’은 불운의 사고로 모든 것을 잃고<br> 
 낮에는 가짜석유 판매원, 밤에는 도박볼링판에서 선수로 뛰며 별 볼일 없는 인생을 살아간다. <br> 
그러던 어느 날, 자신만의 세계에 빠져 살지만 볼링만큼은 천재적인 능력을 갖고 있는 ‘영훈’을 우연히 만난 후,<br> 
 ‘철종’은 ‘영훈’을 자신의 파트너로 끌어들이게 된다. <br> 
‘철종’의 조력자이자 도박판의 브로커 ‘희진’의 주도 아래 드디어 큰 판이 벌어지게 되고, <br> 
‘철종’과 끈질긴 악연의 ‘두꺼비’까지 가세해 치열한 승부가 시작 되는데…','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000010','당신이 사랑하는 동안에',115,'0',to_date('16/11/09','RR/MM/DD'),'폴 맥기건','드라마, 로맨스, 스릴러','미국',0.14,'조쉬 하트넷, 로즈 번, 매튜 릴라드','15','2년 전 시카고. 사진작가를 꿈꾸던 ''매튜''는 모던댄서 ''리사''를 만나 사랑에 빠진다. <br>
어느 날, 뉴욕에서의 일자리 제의를 받은 매튜는 리사에게 함께 떠날 것을 권유하지만 <br>
다음 날, 리사는 아무런 말 없이 사라져 버린다..<br>
<br>
2년 후, 투자회사의 광고책임자로 성공한 매튜는 아름다운 약혼녀와 함께 시카고로 돌아 온다.<br>
그리고 한 카페에서 옛 연인이었던 리사의 목소리를 듣는다. <br>
우연히 스쳐간 그녀의 흔적에 혼란을 느끼는 매튜. 그녀는 정말 ''리사''였을까? <br>
그녀는 2년 전, 왜 아무 말도 없이 떠났을까?<br>
<br>
  모든 것을 뒤로하고 ''리사''의 흔적을 따라 도시를 헤매는 매튜. <br>
그리고 마침내 찾아낸 ''리사''의 아파트. 기억 속 리사의 물건으로 가득한 아파트. <br>
그러나 그곳에는 ''리사''와 같은 이름의 다른 여인이 살고 있었다. <br>
도대체 2년 전 무슨 일이 있었던 것일까? <br>
그리고 리사가 느껴지는 또 다른 여인은 누구일까? <br>
<br>
<strong>올 가을, 이 아름다운 러브 스토리가 사랑에 관한 당신의 모든 것을 흔들어 놓는다.</strong>','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000011','사랑은 없다',86,'0',to_date('16/11/10','RR/MM/DD'),'장훈','로맨스, 드라마','한국',0.01,'김보성, 반민정, 정소영','15','<strong>‘작은 바람에 흔들리는 외로운 영혼들을 위한 찬가’</strong><br>
<br>
40대 가장인 동하는 오랜 시간 대표작을 내지 못한, 과거의 영광 속에 사는 영화배우기도 하다. <br>
어느 날 그런 동하에게 한 통의 전화가 걸려오고, 이를 기점으로 그를 흔드는 작은 바람이 시작된다. <br>
덕분에 그는 그간 잊고 살던 설렘이란 감정을 흔들어 깨우게 되고, 이때부터 자신만의 작은 세상을 만드는 일에 열중한다.<br>
 하지만 이내 이런 설렘과 직면한 현실은 결코 온건하게 타협할 수 없다는 것을 알고 괴로워하는데…<br>
 이런 그에게 실로 오랜만에 영화 출연 제의가 들어온다.','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000012','잭 리처:네버 고 백',118,'0',to_date('16/11/10','RR/MM/DD'),'에드워드 즈윅','액션, 범죄, 드라마, 스릴러','미국',5,'톰 크루즈, 코비 스멀더스, 로버트 네퍼, 알디스 호지, 호르 맥칼라니','15','군사 스파이 혐의로 자신의 후임인 수잔 터너 소령이 체포되자 
 잭 리처만이 그녀의 무죄를 확신하고 탈출을 돕는다 <br>
 사건의 진실을 파헤치던 중 관련된 사람들이 잇따라 살해 당하기 시작하고 
 잭 리처는 이 모든 사건의 배후에 누군가가 존재한다는 것을 알게 되는데... <br>
  <br>
 비상한 두뇌, 타고난 직감, 본능적 액션의 ‘잭 리처’ <br>
 진실을 밝힐 때까지 그의 추격은 멈추지 않는다!','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000013','형',110,'0',to_date('16/11/11','RR/MM/DD'),'권수경','코미디, 드라마','한국',0.13,'조정석, 디오, 박신혜','12','<strong>“살다 보니까 니가 내 인생에 도움이 되는 날이 온다?”</strong><br>
 <strong>뻔뻔한 사기꾼, 동생 핑계로 가석방의 기회를 물었다!</strong><br>
 <br>
유도 국가대표 고두영(도경수)은 경기 도중 불의의 사고를 당하게 되고<br>
이 소식을 들은 사기전과 10범의 형 고두식(조정석)은 눈물의 석방 사기극을 펼친다!<br>
 <br>
<strong>“형은 개뿔, 제발 내 인생에서 꺼져!”</strong><br>
<strong>형이 돌아오고 인생이 더 깜깜해졌다!</strong><br>
 <br>
하루 아침에 앞이 깜깜해진 동생을 핑계로 1년간 보호자 자격으로 가석방 된 두식!<br>
15년동안 단 한번도 연락이 없던 뻔뻔한 형이 집으로 돌아오고
보호자 노릇은 커녕 ‘두영’의 삶을 더 엉망진창으로 만드는데….<br>
 <br>
<strong>남보다 못한 형제의 예측불허 동거가 시작된다!</strong><br>','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000014','두남자',91,'0',to_date('16/11/11','RR/MM/DD'),'이성태','범죄, 액션','한국',0.25,'마동석, 최민호, 김재영, 이유진','12','불법 노래방을 운영하는 악덕업주 ‘형석’(마동석). <br>
 절도를 일삼는 가출팸 리더 ‘진일’(최민호). <br>
 형석이 진일의 여자친구를 강제로 잡아두게 되자 진일은 형석의 딸을 납치한다. <br>
 인생 밑바닥에 있는 두 남자는 사랑하는 이들을 지키기 위해 처절한 싸움을 시작하게 된다.<br>','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000015','미씽: 사라진 여자',100,'0',to_date('16/11/17','RR/MM/DD'),'이언희','미스터리','한국',0.4,'엄지원, 공효진','15','<strong>천사 같던 그녀의 새빨간 거짓말 그리고 거짓보다 더 무서운 진실</strong><br>
<strong>그녀를 찾아야만 한다.</strong><br>
 <br>
이혼 후 육아와 생계를 혼자 책임져야 하는 워킹맘 지선은 헌신적으로 딸을 돌봐주는 보모 한매가 있어 
늘 다행이라고 생각한다.<br>
 
어느 날, 퇴근 후 집에 돌아온 지선은 보모 한매와 딸 다은이가 흔적도 없이 사라져 버린 것을 알게 된다. <br>
지선은 뒤늦게 경찰과 가족에게 사실을 알리지만 아무도 그녀의 말을 믿지 않고,
오히려 양육권 소송 중 일으킨 자작극으로 의심한다.<br>
 
결국 홀로 한매의 흔적을 추적하던 지선은 집 앞을 서성이는 정체불명의 남자와 주변 사람들의 이상한 증언들로 
더욱 혼란에 빠지게 되고, <br>
그녀의 실체에 가까워질수록 이름, 나이, 출신 등 모든 것이 거짓이었다는 충격적인 진실을 알게 되는데…<br>
 <br>
2016년 11월, 가슴 시린 추적이 시작된다.','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000016','당신, 거기 있어줄래요',105,'0',to_date('16/11/18','RR/MM/DD'),'홍지영','판타지, 드라마','한국',8,'김윤석, 변요한, 채서진','12','<strong>인생을 뒤바꾼 기적 같은 10번의 기회</strong><br>
<strong>“넌 30년 전의 나고, 난 30년 후의 너야”</strong><br>
<br>
2015년, 우연히 과거로 돌아갈 수 있는 10개의 알약을 얻게 된 수현(김윤석). <br>
 1985년으로 돌아가 30년 전의 자신(변요한)과 만나게 되고, <br>
 10번의 기회를 통해 평생 후회하고 있던 과거의 한 사건을 바꾸려 하는데…','0');
Insert into CGS.FILM (FILM_ID,FILM_NAME,RUNNING_TIME,FILM_TYPE,RELEASE_DATE,DIRECTOR,GENRE,COUNTRY,RESERVE_RATE,ACTOR,FILM_GRADE,FILM_STORY,POSTER) values ('000009','이프 온리',96,'0',to_date('16/11/08','RR/MM/DD'),'길 정거','로맨스, 코미디, 드라마','미국',4,'제니퍼 러브 휴잇, 폴 니콜스, 루시 대븐포트, 톰 윌킨슨','15','<strong>그 가을 어느 날... 그녀가 떠나갔다</strong><br>
사만다의 졸업연주회가 있던 날.. 저녁식사를 하던 두 사람은 그간의 감정들 때문에 말다툼을 하고, <br>
레스토랑에서 뛰쳐나와 혼자 택시를 타고 가던 사만다는 이안이 보는 앞에서 교통사고로 목숨을 잃는다. <br>
사랑한다는 말 한마디 제대로 표현하지 못했던 그는 그녀의 죽음을 인정할 수가 없다.<br>
<br>
<strong>거짓말처럼 다시 찾아온 시간.. 그녀에게 최고의 하루를 선물한다</strong><br>
다음 날, 눈을 뜬 그는 믿지 못할 상황과 마주한다. 바로 그녀가 떠나간 어제가 다시 반복되고 있는 것. <br>
어제의 일들이 단순한 꿈이길 바라지만 아무리 막으려 해도 같은 사건들이 계속 반복되는 것을 보며 정해진 
운명을 바꿀 수 없음을 깨닫는다. <br>
<br>
이안에게 다시 주어진 사만다와의 마지막 하루. 이제 그녀를 사랑할 수 있는 시간은 단 하루뿐이다. <br>
그는 마지막으로 그녀에게 자신의 모든 사랑을 담은 최고의 하루를 선물하기로 하는데... ','0');
REM INSERTING into CGS.FILM_GRADE
SET DEFINE OFF;
REM INSERTING into CGS.MEMBER
SET DEFINE OFF;
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('12120430','이갑헌','1','02517서울 동대문구 한천로 224 (장안동, 현대아파트)12동 1203호',to_date('93/12/02','RR/MM/DD'),'01012344123','dlrkqgjs@gmail.com',to_date('16/10/28','RR/MM/DD'),0,'0','1234567890123456',1,'huen6072');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('12123500','윤정','2','21674인천 남동구 논고개로68번길 49 (논현동)',to_date('93/03/08','RR/MM/DD'),'01033338878','12123500@inha.ac.kr',to_date('16/11/07','RR/MM/DD'),0,'0','1234567890123457',0,'1234');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('song123','송명훈','1','22207인천 남구 경인남길 10-1',to_date('91/02/27','RR/MM/DD'),'01011112222','aud0325@naver.com',to_date('16/11/07','RR/MM/DD'),0,'0','1234567890123458',2,'100');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('inhaUniversity','인하대학교','3','22212인천 남구 인하로 100 (용현동) 인하대학교',to_date('54/04/24','RR/MM/DD'),'03208607114','inha@inha.ac.kr',to_date('16/11/13','RR/MM/DD'),5000,'0','0000000000000004',100,'huen1202');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('departure93','구자원','1','22212인천 남구 인하로 100 (용현동)',to_date('93/08/18','RR/MM/DD'),'01072476072','koo@naver.com',to_date('16/11/13','RR/MM/DD'),1500,'0','0000000000000004',100,'huen1202');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('chi','이치형','1','22207인천 남구 경인남길 76 (이즈빌딩)',to_date('91/06/28','RR/MM/DD'),'01011223344','chi@naver.com',to_date('16/11/08','RR/MM/DD'),50,'0','0000000000000004',100,'1000');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('tht','이혜승','2','13438경기 성남시 중원구 성남대로 981 (여수동)6565',to_date('93/12/25','RR/MM/DD'),'01040022068','dlgptmd123@nac',to_date('16/11/13','RR/MM/DD'),300,'0','0000000000000004',100,'1234');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('songgbsb','gbsb','1','asdas',to_date('91/02/14','RR/MM/DD'),'01023122323','aud0325@naver.com',to_date('16/11/14','RR/MM/DD'),300,'0','0000000000000004',100,'1234');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('daa1113','이다영','3','02517서울 동대문구 한천로 224 (장안동, 현대아파트)12동 1203호',to_date('01/11/13','RR/MM/DD'),'01045566072','daa1113@naver.com',to_date('16/11/13','RR/MM/DD'),300,'0','0000000000000004',100,'huen1202');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('indus','인더스','2','22201인천 남구 소성로 40',to_date('66/04/13','RR/MM/DD'),'01051236072','indus@inha.org',to_date('16/11/11','RR/MM/DD'),0,'0','0000000000000004',100,'1234');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('semidue','정영진','1','06097서울 강남구 봉은사로 403 (삼성동, 하모니 빌딩)12층',to_date('93/12/02','RR/MM/DD'),'01045611234','dlrkqgjs@naver.com',to_date('16/11/14','RR/MM/DD'),300,'0','0000000000000004',100,'12345');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('song12','송명현','1','22146인천 남구 구월로 2 (주안동)123',to_date('27/02/12','RR/MM/DD'),'01012345678','song@song.com',to_date('16/11/19','RR/MM/DD'),300,'0','0000000000000004',100,'song');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('madvirus','최범균','1','08764서울 관악구 관천로11길 20-7 (신림동, 주택샤르빌)ㅁ',to_date('77/08/31','RR/MM/DD'),'01057300731','madvirus@madvirus.net',to_date('16/11/15','RR/MM/DD'),300,'0','0000000000000004',100,'bkchoi');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('aud0325','송명현','1','22207인천 남구 경인남길 6 (용현동, 인천교회집회소)학교',to_date('91/02/27','RR/MM/DD'),'01012347497','aud0325@naver.com',to_date('16/11/15','RR/MM/DD'),300,'0','0000000000000004',100,'12345');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('song1234','송명현1','1','1',to_date('91/02/27','RR/MM/DD'),'01012345678','song@song.com',to_date('16/11/19','RR/MM/DD'),300,'0','0000000000000004',100,'song');
Insert into CGS.MEMBER (MEMBER_ID,NAME,GENDER,ADDRESS,BIRTH,PHONE_NUM,EMAIL,JOIN_DATE,ACCUM_POINT,MEMBER_GRADE,MEMBERSHIP,CURR_POINT,PASSWORD) values ('asdf','asdf','1','1',to_date('91/02/27','RR/MM/DD'),'01012345678','asdf@asdf.com',to_date('16/11/19','RR/MM/DD'),300,'0','0000000000000004',100,'asdf');
REM INSERTING into CGS.MEMBER_FILM
SET DEFINE OFF;
REM INSERTING into CGS.MEMBER_SALE
SET DEFINE OFF;
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','73276438',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','13476628',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','54762777',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','28502484',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','81559020',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','17966545',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','35697386',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','04620983',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','35010353',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','43825134',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','11415577',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','67656549',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','22129653',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','71380299',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','06924049',to_date('16/11/12','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','00118783',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','82432833',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','41643035',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','21508981',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','59069635',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','83218840',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','80220103',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','67952623',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','26498173',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'chi','29413283',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','44166069',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','39780018',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','60639842',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','54062350',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','40012324',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','41101970',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','02094826',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','06007968',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','77971836',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','58002024',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','99262460',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','35849393',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','83111706',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','57412564',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','35584715',to_date('16/11/15','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','99628806',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','78763327',to_date('16/11/15','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','20815648',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','51797721',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','08312353',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'song123','77418719',to_date('16/11/15','RR/MM/DD'));
Insert into CGS.MEMBER_SALE (USING_POINT,MEMBER_ID,SALE_ID,SALE_DATE) values (0,'12120430','38932514',to_date('16/11/13','RR/MM/DD'));
REM INSERTING into CGS.MEMBER_SITE
SET DEFINE OFF;
REM INSERTING into CGS.PRICE
SET DEFINE OFF;
Insert into CGS.PRICE (CUSTOMER_TYPE,PRICE) values ('0',7000);
Insert into CGS.PRICE (CUSTOMER_TYPE,PRICE) values ('1',6000);
Insert into CGS.PRICE (CUSTOMER_TYPE,PRICE) values ('2',5000);
REM INSERTING into CGS.RESERVE
SET DEFINE OFF;
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('074850 ','이갑헌','01072476072','0','08312353',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('2154567','이치형','01021341541','0','96188786',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('879495 ','송명현','01027797497','0','78315809',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('2146651','이치형','01021341541','0','10746986',to_date('16/11/09','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('279137 ','송명현','01027797497','0','56659250',to_date('10/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('611849 ','이치형','01011223344','0','06561821',to_date('11/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('683853 ','이치형','01011223344','0','01609805',to_date('11/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('102495 ','이치형','01011223344','0','78425680',to_date('11/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('374385 ','이치형','01011223344','0','41643035',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('094396 ','이치형','01011223344','0','58708762',to_date('11/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('000409 ','송명현','01027797497','0','00118783',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('813970 ','윤정','01033338888','0','22834474',to_date('16/11/11','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('843561 ','윤정','01033338888','0','90489697',to_date('16/11/11','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('382297 ','윤정','01033338888','0','95870980',to_date('16/11/11','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('157976 ','윤정','01033338888','0','20773788',to_date('16/11/11','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('771534 ','송명현','01027797497','0','06924049',to_date('16/11/12','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('334733 ','송명현','01027797497','0','73276438',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('695691 ','이치형','01011223344','0','82432833',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('230304 ','이치형','01011223344','0','71380299',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('050049 ','이치형','01011223344','0','21508981',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('925610 ','이치형','01011223344','0','59069635',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('719534 ','이치형','01011223344','0','83218840',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('641829 ','이치형','01011223344','0','80220103',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('135466 ','이치형','01011223344','0','67952623',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('418811 ','이치형','01011223344','0','26498173',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('544842 ','이치형','01011223344','0','29413283',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('760083 ','송명현','01027797497','0','44166069',to_date('12/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('143578 ','이갑헌','01072476072','0','39780018',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('449636 ','송명현','01027797497','0','60639842',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('158253 ','이갑헌','01072476072','0','54062350',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('245218 ','이갑헌','01072476072','0','40012324',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('003552 ','이갑헌','01072476072','0','41101970',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('383081 ','이갑헌','01072476072','0','02094826',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('291024 ','이갑헌','01072476072','0','06007968',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('144613 ','송명현','01027797497','0','77971836',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('726251 ','이갑헌','01072476072','0','58002024',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('132285 ','이갑헌','01072476072','0','99262460',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('197412 ','송명현','01027797497','0','35849393',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('003187 ','송명현','01027797497','0','83111706',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('772932 ','송명현','01027797497','0','57412564',to_date('16/11/13','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('423412 ','송명현','01027797497','0','78763327',to_date('16/11/15','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('268207 ','이갑헌','01072476072','0','99628806',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('893314 ','송명현','01027797497','0','67656549',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('855557 ','이갑헌','01072476072','0','20815648',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('645888 ','이갑헌','01072476072','0','51797721',to_date('13/11/16','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('944532 ','송명현','01027797497','0','35584715',to_date('16/11/15','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('517420 ','송명현','01027797497','0','77418719',to_date('16/11/15','RR/MM/DD'));
Insert into CGS.RESERVE (RESERVE_ID,RESERVE_NAME,RESERVE_PNUM,TICKET_PRINT,SALE_ID,SALE_DATE) values ('748488 ','이갑헌','01072476072','0','38932514',to_date('16/11/13','RR/MM/DD'));
REM INSERTING into CGS.SALE
SET DEFINE OFF;
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('88944823','0','0',to_date('12/11/16','RR/MM/DD'),18000,'1111222233334444','0','00013',3,0,'0',18000,1,1,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('07337714','0','0',to_date('16/11/12','RR/MM/DD'),21000,'1212434312123434','0','00015',3,0,'0',21000,1,3,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('06941370','0','0',to_date('16/11/08','RR/MM/DD'),20000,'1234123412342341','0','00006',3,0,'0',0,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('13659602','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234234423421234','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('48373814','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234232334341234','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('29008921','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234232323231234','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('96188786','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234232223231234','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('19470761','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234121221211234','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('76398060','0','0',to_date('16/11/09','RR/MM/DD'),19000,'3243123223232342','1','00006',3,0,'0',19000,1,1,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('13214460','0','0',to_date('16/11/09','RR/MM/DD'),19000,'3243121234562342','0','00006',3,0,'0',19000,1,1,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('35108418','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1231123454364564','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('60700541','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1231464554544564','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('71165101','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1231345334534564','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('10746986','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234234324234324','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('13476628','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234543455343534','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('54762777','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234656556563534','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('28502484','0','0',to_date('16/11/09','RR/MM/DD'),26000,'1234656556563534','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('81559020','0','0',to_date('16/11/09','RR/MM/DD'),28000,'4343434334343434','0','00006',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('17966545','0','0',to_date('16/11/09','RR/MM/DD'),28000,'4343434334343434','0','00006',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('35697386','0','0',to_date('16/11/09','RR/MM/DD'),28000,'4343232323233434','0','00006',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('04620983','0','0',to_date('16/11/09','RR/MM/DD'),26000,'2332323223233232','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('35010353','0','0',to_date('16/11/09','RR/MM/DD'),26000,'2332323223233232','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('43825134','0','0',to_date('16/11/09','RR/MM/DD'),26000,'2332323223233232','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('11415577','0','0',to_date('16/11/09','RR/MM/DD'),26000,'2332323223233232','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('22129653','0','0',to_date('16/11/09','RR/MM/DD'),26000,'2332323223233232','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('78315809','0','0',to_date('16/11/09','RR/MM/DD'),17000,'8787676756564545','0','00006',3,0,'0',17000,1,0,2,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('06561821','0','0',to_date('11/11/16','RR/MM/DD'),21000,'1234345635431212','0','00006',3,0,'0',21000,1,3,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('68856705','0','0',to_date('16/11/10','RR/MM/DD'),24000,'6767667676766767','0','00006',4,0,'0',24000,1,0,4,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('30506241','0','0',to_date('16/11/10','RR/MM/DD'),24000,'6767565665656767','0','00006',4,0,'0',24000,1,0,4,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('95258524','0','0',to_date('16/11/10','RR/MM/DD'),22000,'1212121221211212','0','00006',4,0,'0',22000,1,0,2,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('87777781','0','0',to_date('10/11/16','RR/MM/DD'),26000,'4322323232332323','0','00006',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('56491085','0','0',to_date('16/11/10','RR/MM/DD'),22000,'1212121221211212','0','00006',4,0,'0',22000,1,0,2,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('65049512','0','0',to_date('16/11/10','RR/MM/DD'),24000,'2323323223232323','0','00006',4,0,'0',24000,1,1,2,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('54328760','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1223232323232112','1','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('64133356','0','0',to_date('10/11/16','RR/MM/DD'),13000,'2321123212311232','0','00006',2,0,'0',13000,1,1,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('26493261','0','0',to_date('10/11/16','RR/MM/DD'),20000,'1234323223231231','0','00006',3,0,'0',20000,1,2,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('21523999','0','0',to_date('10/11/16','RR/MM/DD'),13000,'2321123212311232','0','00006',2,0,'0',13000,1,1,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('21963887','0','0',to_date('16/11/10','RR/MM/DD'),7000,'3131131333321333','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('21734419','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('64657954','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('87156210','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('79372103','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('47570076','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('31043516','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('74338433','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('10712234','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('42783086','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('89574614','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('20075717','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('76587840','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('86972388','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1231322213111331','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('66281879','0','0',to_date('10/11/16','RR/MM/DD'),19000,'1234234523451231','0','00006',3,0,'0',19000,1,1,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('81109425','0','0',to_date('16/11/10','RR/MM/DD'),7000,'1312131331233123','0','00006',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('81740066','0','0',to_date('16/11/10','RR/MM/DD'),12000,'1212232223344343','0','00006',2,0,'0',12000,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('92168120','0','0',to_date('16/11/10','RR/MM/DD'),12000,'1212232223344343','0','00006',2,0,'0',12000,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('58784028','0','0',to_date('16/11/10','RR/MM/DD'),12000,'1212232223344343','0','00006',2,0,'0',12000,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('05323152','0','0',to_date('16/11/10','RR/MM/DD'),12000,'4545356434453453','0','00006',2,0,'0',12000,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('04922356','0','0',to_date('10/11/16','RR/MM/DD'),19000,'1234222233335555','0','00006',3,0,'0',19000,1,1,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('56659250','0','0',to_date('10/11/16','RR/MM/DD'),20000,'1234343434344343','0','00006',3,0,'0',20000,1,2,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('01609805','0','0',to_date('11/11/16','RR/MM/DD'),14000,'9898787656781234','0','00006',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('78425680','0','0',to_date('11/11/16','RR/MM/DD'),19000,'1212123411211212','0','00006',3,0,'0',19000,1,1,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('58708762','0','0',to_date('11/11/16','RR/MM/DD'),28000,'0098324434233242','0','00006',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('81243649','0','0',to_date('16/11/11','RR/MM/DD'),5000,'2343423434324234','0','00006',1,0,'0',5000,1,0,0,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('39370146','0','0',to_date('16/11/11','RR/MM/DD'),6000,'6376723672638723','1','00006',1,0,'0',6000,1,0,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('22834474','0','0',to_date('16/11/11','RR/MM/DD'),14000,'1234567811223344','0','00006',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('90489697','0','0',to_date('16/11/11','RR/MM/DD'),14000,'1256124712583698','0','00006',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('95870980','0','0',to_date('16/11/11','RR/MM/DD'),13000,'4478987755685555','0','00006',2,0,'0',13000,1,1,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('20773788','0','0',to_date('16/11/11','RR/MM/DD'),14000,'4444555789651023','0','00006',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('04294261','0','0',to_date('12/11/16','RR/MM/DD'),12000,'1212323232322323','0','00013',2,0,'0',12000,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('17721643','0','0',to_date('16/11/12','RR/MM/DD'),10000,'1231454532325767','0','00015',2,0,'0',10000,1,0,0,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('18301593','0','0',to_date('16/11/12','RR/MM/DD'),10000,'1231232332325767','0','00015',2,0,'0',10000,1,0,0,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('63229276','0','0',to_date('16/11/12','RR/MM/DD'),10000,'1231123412345767','0','00015',2,0,'0',10000,1,0,0,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('05785587','0','0',to_date('16/11/12','RR/MM/DD'),10000,'1212343456561212','0','00015',2,0,'0',10000,1,0,0,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('76167461','0','0',to_date('16/11/12','RR/MM/DD'),10000,'1212343434341212','0','00015',2,0,'0',10000,1,0,0,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('17217884','0','0',to_date('16/11/12','RR/MM/DD'),10000,'1212121234341212','1','00015',2,0,'0',10000,1,0,0,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('68876895','0','0',to_date('12/11/16','RR/MM/DD'),25000,'1111111111111111','1','00013',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('44497934','0','0',to_date('12/11/16','RR/MM/DD'),20000,'5645456545644564','0','00169',3,0,'0',20000,1,2,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('85957420','0','0',to_date('12/11/16','RR/MM/DD'),13000,'1111345512342344','1','00014',2,0,'0',13000,1,1,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('06924049','0','0',to_date('16/11/12','RR/MM/DD'),20000,'1212121221211231','0','00034',3,0,'0',20000,1,2,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('62998394','0','0',to_date('12/11/16','RR/MM/DD'),20000,'5645223423424564','0','00169',3,0,'0',20000,1,2,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('73276438','0','0',to_date('12/11/16','RR/MM/DD'),14000,'1231123312311231','0','00169',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('00118783','0','0',to_date('12/11/16','RR/MM/DD'),22000,'7835543643534535','0','00111',4,0,'0',22000,1,0,2,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('82432833','0','0',to_date('12/11/16','RR/MM/DD'),19000,'0051212545631326','0','00066',3,0,'0',19000,1,1,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('71380299','0','0',to_date('12/11/16','RR/MM/DD'),21000,'0121012110211020','0','00033',3,0,'0',21000,1,3,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('41643035','0','0',to_date('12/11/16','RR/MM/DD'),26000,'1231123112321232','0','00168',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('21508981','0','0',to_date('12/11/16','RR/MM/DD'),20000,'4165456454644564','0','00181',3,0,'0',20000,1,2,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('59069635','0','0',to_date('12/11/16','RR/MM/DD'),26000,'4565456554654565','0','00161',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('83218840','0','0',to_date('12/11/16','RR/MM/DD'),24000,'2131123212311232','0','00060',4,0,'0',24000,1,2,0,2);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('80220103','0','0',to_date('12/11/16','RR/MM/DD'),27000,'1564456445654565','0','00143',4,0,'0',27000,1,3,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('67952623','0','0',to_date('12/11/16','RR/MM/DD'),26000,'8797789778987898','0','00175',4,0,'0',26000,1,3,0,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('26498173','0','0',to_date('12/11/16','RR/MM/DD'),25000,'5464456545644564','0','00035',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('29413283','0','0',to_date('12/11/16','RR/MM/DD'),26000,'7978789887978797','0','00265',4,0,'0',26000,1,2,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('44166069','0','0',to_date('12/11/16','RR/MM/DD'),24000,'1234432323434343','0','00034',4,0,'0',24000,1,0,4,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('39780018','0','0',to_date('16/11/13','RR/MM/DD'),7000,'1231211331121231','0','00303',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('60639842','0','0',to_date('16/11/13','RR/MM/DD'),28000,'3563362523652635','0','00015',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('54062350','0','0',to_date('13/11/16','RR/MM/DD'),7000,'1234123412341234','0','00303',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('40012324','0','0',to_date('13/11/16','RR/MM/DD'),12000,'1234123412341234','0','00035',2,0,'0',12000,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('41101970','0','0',to_date('13/11/16','RR/MM/DD'),7000,'4561123412341256','0','00110',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('02094826','0','0',to_date('13/11/16','RR/MM/DD'),20000,'4565123458889122','0','00297',3,0,'0',20000,1,2,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('06007968','0','0',to_date('13/11/16','RR/MM/DD'),18000,'4567888888888423','0','00066',3,0,'0',18000,1,0,3,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('77971836','0','0',to_date('16/11/13','RR/MM/DD'),14000,'1212232312123434','0','00045',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('58002024','0','0',to_date('13/11/16','RR/MM/DD'),18000,'5555222245621234','0','00113',3,0,'0',18000,1,1,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('99262460','0','0',to_date('13/11/16','RR/MM/DD'),18000,'5555445375461234','0','00113',3,0,'0',18000,1,1,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('35849393','0','0',to_date('13/11/16','RR/MM/DD'),28000,'1323232332322323','0','00016',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('83111706','0','0',to_date('16/11/13','RR/MM/DD'),25000,'2323232323232323','0','00016',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('57412564','0','0',to_date('16/11/13','RR/MM/DD'),25000,'2323232323232323','0','00016',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('99232412','0','0',to_date('16/11/13','RR/MM/DD'),13000,'1234123412341234','1','00303',2,0,'0',13000,1,1,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('99628806','0','0',to_date('13/11/16','RR/MM/DD'),7000,'4444444444444444','0','00092',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('67656549','0','0',to_date('13/11/16','RR/MM/DD'),28000,'1231123112311231','0','00017',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('76582554','0','0',to_date('13/11/16','RR/MM/DD'),14000,'1111222233334444','1','00374',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('20815648','0','0',to_date('13/11/16','RR/MM/DD'),11000,'2222222222222222','0','00194',2,0,'0',11000,1,0,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('51797721','0','0',to_date('13/11/16','RR/MM/DD'),12000,'6555555555555555','0','00044',2,0,'0',12000,1,0,2,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('31057022','0','0',to_date('16/11/13','RR/MM/DD'),14000,'1111222233334444','1','00166',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('08312353','0','0',to_date('16/11/13','RR/MM/DD'),6000,'2341414313421341','0','00087',1,0,'0',6000,1,0,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('77806951','0','0',to_date('13/11/16','RR/MM/DD'),14000,'1123456755981123','1','00261',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('10379231','0','0',to_date('16/11/13','RR/MM/DD'),14000,'2222333344445555','1','00274',2,0,'0',14000,1,2,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('38932514','0','0',to_date('16/11/13','RR/MM/DD'),6000,'3123144412444131','0','00087',1,0,'0',6000,1,0,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('94144384','0','0',to_date('16/11/13','RR/MM/DD'),24000,'1002100023451123','1','00030',4,0,'0',24000,1,0,4,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('48064891','0','0',to_date('16/11/13','RR/MM/DD'),15000,'1231123243331234','1','00035',3,0,'0',15000,1,0,0,3);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('15144947','0','0',to_date('16/11/13','RR/MM/DD'),308000,'1234123412341234','1','00035',44,0,'0',308000,1,44,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('64001436','0','0',to_date('16/11/13','RR/MM/DD'),308000,'1234123412341234','1','00035',44,0,'0',308000,1,44,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('70004091','0','0',to_date('16/11/13','RR/MM/DD'),161000,'1234123412341234','1','00035',23,0,'0',161000,1,23,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('82274483','0','0',to_date('16/11/14','RR/MM/DD'),25000,'1234123566578975','1','00244',4,0,'0',25000,1,1,3,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('86018724','0','0',to_date('16/11/14','RR/MM/DD'),25000,'1234546387956435','1','00261',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('24517305','0','0',to_date('16/11/14','RR/MM/DD'),28000,'1234341212342323','1','00016',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('27461118','0','0',to_date('16/11/14','RR/MM/DD'),28000,'1124122344221232','1','00352',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('73982066','0','0',to_date('16/11/14','RR/MM/DD'),25000,'2232232356594512','1','00266',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('96237067','0','0',to_date('16/11/14','RR/MM/DD'),27000,'2423232343432523','1','00045',4,0,'0',27000,1,3,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('35584715','0','0',to_date('16/11/15','RR/MM/DD'),28000,'1212121212121212','0','00015',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('77418719','0','0',to_date('16/11/15','RR/MM/DD'),28000,'1212121212121212','0','00015',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('78763327','0','0',to_date('16/11/15','RR/MM/DD'),28000,'1212121212121212','0','00014',4,0,'0',28000,1,4,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('20415510','0','0',to_date('16/11/15','RR/MM/DD'),27000,'0101121212121212','1','00017',4,0,'0',27000,1,3,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('39388353','0','0',to_date('16/11/15','RR/MM/DD'),25000,'1212232312326234','1','00341',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('19437209','0','0',to_date('16/11/15','RR/MM/DD'),7000,'1111222233334444','1','00060',1,0,'0',7000,1,1,0,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('16452418','0','0',to_date('16/11/15','RR/MM/DD'),27000,'1234121212124632','1','00341',4,0,'0',27000,1,3,1,0);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('14833402','0','0',to_date('16/11/15','RR/MM/DD'),25000,'2523232323234657','1','00341',4,0,'0',25000,1,2,1,1);
Insert into CGS.SALE (SALE_ID,SALE_TYPE,MEMBER_TYPE,SALE_DATE,SALE_PRICE,PAYCARD_NUM,REFUND_TYPE,SCREENING_ID,SALE_CNT,DISCOUNT_PRICE,DISCOUNT_TYPE,FINAL_PRICE,USE_CNT,COMMON_CNT,YOUNG_CNT,SPECIAL_CNT) values ('38381987','0','0',to_date('16/11/15','RR/MM/DD'),14000,'2243232323427474','1','00341',2,0,'0',14000,1,2,0,0);
REM INSERTING into CGS.SALE_SEAT
SET DEFINE OFF;
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('10/11/16','RR/MM/DD'),'56659250','00006','0101001');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('10/11/16','RR/MM/DD'),'56659250','00006','0101002');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('10/11/16','RR/MM/DD'),'56659250','00006','0101003');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('10/11/16','RR/MM/DD'),'87777781','00006','0101066');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('10/11/16','RR/MM/DD'),'87777781','00006','0101067');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('10/11/16','RR/MM/DD'),'87777781','00006','0101068');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('10/11/16','RR/MM/DD'),'87777781','00006','0101069');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'01609805','00006','0101012');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'01609805','00006','0101013');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'06561821','00006','0101014');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'06561821','00006','0101024');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'06561821','00006','0101034');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'58708762','00006','0101053');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'58708762','00006','0101054');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'58708762','00006','0101055');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'58708762','00006','0101056');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'78425680','00006','0101047');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'78425680','00006','0101048');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('11/11/16','RR/MM/DD'),'78425680','00006','0101049');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'00118783','00111','0303010');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'00118783','00111','0303013');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'00118783','00111','0303048');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'00118783','00111','0303057');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'00118783','00111','0303074');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'00118783','00111','0303078');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'21508981','00181','0203015');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'21508981','00181','0203035');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'21508981','00181','0203067');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'26498173','00035','0104021');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'26498173','00035','0104024');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'26498173','00035','0104027');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'26498173','00035','0104029');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'29413283','00265','0107038');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'29413283','00265','0107041');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'29413283','00265','0107044');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'29413283','00265','0107046');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'41643035','00168','0201004');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'41643035','00168','0201025');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'41643035','00168','0201037');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'41643035','00168','0201055');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'44166069','00034','0104051');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'44166069','00034','0104052');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'44166069','00034','0104053');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'44166069','00034','0104054');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'59069635','00161','0108021');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'59069635','00161','0108026');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'59069635','00161','0108041');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'59069635','00161','0108046');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'67952623','00175','0202017');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'67952623','00175','0202022');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'67952623','00175','0202025');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'67952623','00175','0202066');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'71380299','00033','0104024');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'71380299','00033','0104036');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'71380299','00033','0104056');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'73276438','00169','0201001');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'73276438','00169','0201002');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'80220103','00143','0104019');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'80220103','00143','0104023');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'80220103','00143','0104042');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'80220103','00143','0104086');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'82432833','00066','0202004');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'82432833','00066','0202024');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'82432833','00066','0202037');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'83218840','00060','0201014');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'83218840','00060','0201027');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'83218840','00060','0201029');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('12/11/16','RR/MM/DD'),'83218840','00060','0201045');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'02094826','00297','0204019');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'02094826','00297','0204022');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'02094826','00297','0204036');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'06007968','00066','0202019');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'06007968','00066','0202047');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'06007968','00066','0202049');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'20815648','00194','0205037');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'20815648','00194','0205054');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'35849393','00016','0101043');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'35849393','00016','0101044');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'35849393','00016','0101045');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'35849393','00016','0101046');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'40012324','00035','0104054');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'40012324','00035','0104057');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'41101970','00110','0303016');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'51797721','00044','0106044');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'51797721','00044','0106045');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'54062350','00303','0205064');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'58002024','00113','0303014');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'58002024','00113','0303015');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'58002024','00113','0303026');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'67656549','00017','0101037');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'67656549','00017','0101038');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'67656549','00017','0101039');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'67656549','00017','0101040');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'99262460','00113','0303014');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'99262460','00113','0303015');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'99262460','00113','0303026');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('13/11/16','RR/MM/DD'),'99628806','00092','0206006');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'56491085','00006','0101021');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'56491085','00006','0101031');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'56491085','00006','0101038');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'56491085','00006','0101039');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'65049512','00006','0101041');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'65049512','00006','0101042');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'65049512','00006','0101043');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/10','RR/MM/DD'),'65049512','00006','0101044');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'20773788','00006','0101051');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'20773788','00006','0101059');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'22834474','00006','0101074');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'22834474','00006','0101075');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'81243649','00006','0101001');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'90489697','00006','0101078');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'90489697','00006','0101079');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'95870980','00006','0101061');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/11','RR/MM/DD'),'95870980','00006','0101062');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/12','RR/MM/DD'),'06924049','00034','0104001');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/12','RR/MM/DD'),'06924049','00034','0104002');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/12','RR/MM/DD'),'06924049','00034','0104003');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'08312353','00087','0205016');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'38932514','00087','0205028');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'39780018','00303','0205068');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'57412564','00016','0101003');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'57412564','00016','0101004');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'57412564','00016','0101005');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'57412564','00016','0101006');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'60639842','00015','0101033');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'60639842','00015','0101034');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'60639842','00015','0101035');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'60639842','00015','0101036');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'77971836','00045','0106014');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'77971836','00045','0106015');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'83111706','00016','0101003');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'83111706','00016','0101004');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'83111706','00016','0101005');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/13','RR/MM/DD'),'83111706','00016','0101006');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'35584715','00015','0101025');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'35584715','00015','0101026');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'35584715','00015','0101037');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'35584715','00015','0101038');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'77418719','00015','0101028');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'77418719','00015','0101042');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'77418719','00015','0101043');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'77418719','00015','0101047');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'78763327','00014','0101034');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'78763327','00014','0101035');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'78763327','00014','0101036');
Insert into CGS.SALE_SEAT (SALE_DATE,SALE_ID,SCREENING_ID,SEAT_ID) values (to_date('16/11/15','RR/MM/DD'),'78763327','00014','0101037');
REM INSERTING into CGS.SCREEN
SET DEFINE OFF;
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('01','0001',80);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('02','0001',80);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('03','0001',70);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('04','0001',120);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('05','0001',120);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('06','0001',80);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('07','0001',80);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('08','0001',70);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('01','0002',60);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('02','0002',70);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('03','0002',70);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('04','0002',120);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('05','0002',80);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('06','0002',70);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('01','0003',60);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('02','0003',70);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('03','0003',90);
Insert into CGS.SCREEN (SCREEN_NUM,SITE_ID,SEATING_CNT) values ('04','0003',100);
REM INSERTING into CGS.SCREENING
SET DEFINE OFF;
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00014',to_date('16/11/15','RR/MM/DD'),'2','12:00','13:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00015',to_date('16/11/15','RR/MM/DD'),'3','14:00','15:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00013',to_date('16/11/15','RR/MM/DD'),'1','10:00','11:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00004',to_date('16/11/11','RR/MM/DD'),'1','10:00','12:00','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00005',to_date('16/11/11','RR/MM/DD'),'2','14:00','16:00','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00006',to_date('16/11/11','RR/MM/DD'),'3','18:00','20:00','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00007',to_date('16/11/11','RR/MM/DD'),'1','10:00','12:00','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00008',to_date('16/11/11','RR/MM/DD'),'2','14:00','16:00','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00009',to_date('16/11/11','RR/MM/DD'),'3','18:00','20:00','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00010',to_date('16/11/11','RR/MM/DD'),'1','10:00','12:00','0','000002','0001','03','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00011',to_date('16/11/11','RR/MM/DD'),'2','14:00','16:00','0','000002','0001','03','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00012',to_date('16/11/11','RR/MM/DD'),'3','18:00','20:00','0','000002','0001','03','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00016',to_date('16/11/15','RR/MM/DD'),'4','16:00','17:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00017',to_date('16/11/15','RR/MM/DD'),'5','18:00','19:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00018',to_date('16/11/15','RR/MM/DD'),'6','20:00','21:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00020',to_date('16/11/15','RR/MM/DD'),'1','11:00','12:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00021',to_date('16/11/15','RR/MM/DD'),'2','13:00','14:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00022',to_date('16/11/15','RR/MM/DD'),'3','15:00','16:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00023',to_date('16/11/15','RR/MM/DD'),'4','17:00','18:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00024',to_date('16/11/15','RR/MM/DD'),'5','19:00','20:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00025',to_date('16/11/15','RR/MM/DD'),'6','21:00','22:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00026',to_date('16/11/15','RR/MM/DD'),'1','09:20','11:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00060',to_date('16/11/15','RR/MM/DD'),'1','09:20','11:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00061',to_date('16/11/15','RR/MM/DD'),'2','11:40','13:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00062',to_date('16/11/15','RR/MM/DD'),'3','14:00','16:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00063',to_date('16/11/15','RR/MM/DD'),'4','16:20','18:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00064',to_date('16/11/15','RR/MM/DD'),'5','18:40','20:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00065',to_date('16/11/15','RR/MM/DD'),'6','21:00','23:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00066',to_date('16/11/15','RR/MM/DD'),'1','09:40','11:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00067',to_date('16/11/15','RR/MM/DD'),'2','12:00','14:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00068',to_date('16/11/15','RR/MM/DD'),'3','14:20','16:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00069',to_date('16/11/15','RR/MM/DD'),'4','16:40','18:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00070',to_date('16/11/15','RR/MM/DD'),'5','19:00','21:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00071',to_date('16/11/15','RR/MM/DD'),'6','21:20','23:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00072',to_date('16/11/15','RR/MM/DD'),'1','10:00','11:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00073',to_date('16/11/15','RR/MM/DD'),'2','11:50','13:20','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00074',to_date('16/11/15','RR/MM/DD'),'3','13:40','15:10','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00075',to_date('16/11/15','RR/MM/DD'),'4','15:30','17:00','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00076',to_date('16/11/15','RR/MM/DD'),'5','17:20','18:50','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00077',to_date('16/11/15','RR/MM/DD'),'6','19:10','20:40','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00078',to_date('16/11/15','RR/MM/DD'),'7','21:00','22:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00079',to_date('16/11/15','RR/MM/DD'),'1','09:35','11:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00080',to_date('16/11/15','RR/MM/DD'),'2','11:55','13:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00081',to_date('16/11/15','RR/MM/DD'),'3','14:15','16:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00082',to_date('16/11/15','RR/MM/DD'),'4','16:35','18:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00083',to_date('16/11/15','RR/MM/DD'),'5','18:55','20:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00084',to_date('16/11/15','RR/MM/DD'),'6','21:15','23:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00085',to_date('16/11/15','RR/MM/DD'),'1','09:10','11:00','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00086',to_date('16/11/15','RR/MM/DD'),'2','11:20','13:10','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00087',to_date('16/11/15','RR/MM/DD'),'3','13:30','15:20','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00088',to_date('16/11/15','RR/MM/DD'),'4','15:40','17:30','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00089',to_date('16/11/15','RR/MM/DD'),'5','17:50','19:40','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00090',to_date('16/11/15','RR/MM/DD'),'6','20:00','21:50','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00091',to_date('16/11/15','RR/MM/DD'),'1','10:00','11:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00092',to_date('16/11/15','RR/MM/DD'),'2','12:00','13:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00093',to_date('16/11/15','RR/MM/DD'),'3','14:00','15:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00027',to_date('16/11/15','RR/MM/DD'),'2','11:40','13:40','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00028',to_date('16/11/15','RR/MM/DD'),'3','14:00','16:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00029',to_date('16/11/15','RR/MM/DD'),'4','16:20','18:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00030',to_date('16/11/15','RR/MM/DD'),'5','18:40','20:40','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00031',to_date('16/11/15','RR/MM/DD'),'6','21:00','23:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00032',to_date('16/11/15','RR/MM/DD'),'1','09:40','11:30','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00033',to_date('16/11/15','RR/MM/DD'),'2','11:50','13:40','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00034',to_date('16/11/15','RR/MM/DD'),'3','14:00','15:50','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00035',to_date('16/11/15','RR/MM/DD'),'4','16:10','18:00','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00036',to_date('16/11/15','RR/MM/DD'),'5','18:20','20:10','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00037',to_date('16/11/15','RR/MM/DD'),'6','20:30','22:20','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00038',to_date('16/11/15','RR/MM/DD'),'1','09:00','11:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00039',to_date('16/11/15','RR/MM/DD'),'2','11:30','13:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00040',to_date('16/11/15','RR/MM/DD'),'3','14:00','16:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00041',to_date('16/11/15','RR/MM/DD'),'4','16:30','18:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00042',to_date('16/11/15','RR/MM/DD'),'5','19:00','21:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00043',to_date('16/11/15','RR/MM/DD'),'1','09:10','11:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00044',to_date('16/11/15','RR/MM/DD'),'2','11:40','14:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00045',to_date('16/11/15','RR/MM/DD'),'3','14:20','16:40','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00046',to_date('16/11/15','RR/MM/DD'),'4','17:00','19:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00047',to_date('16/11/15','RR/MM/DD'),'5','19:40','22:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00048',to_date('16/11/15','RR/MM/DD'),'1','09:00','11:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00049',to_date('16/11/15','RR/MM/DD'),'2','11:30','13:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00050',to_date('16/11/15','RR/MM/DD'),'3','14:00','16:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00051',to_date('16/11/15','RR/MM/DD'),'4','16:30','18:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00052',to_date('16/11/15','RR/MM/DD'),'5','19:00','21:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00053',to_date('16/11/16','RR/MM/DD'),'1','09:10','11:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00054',to_date('16/11/17','RR/MM/DD'),'2','11:30','13:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00055',to_date('16/11/18','RR/MM/DD'),'3','13:50','15:50','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00056',to_date('16/11/19','RR/MM/DD'),'4','16:10','17:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00057',to_date('16/11/20','RR/MM/DD'),'5','18:10','19:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00058',to_date('16/11/21','RR/MM/DD'),'6','20:10','21:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00059',to_date('16/11/22','RR/MM/DD'),'7','22:10','23:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00094',to_date('16/11/15','RR/MM/DD'),'4','16:00','17:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00095',to_date('16/11/15','RR/MM/DD'),'5','18:00','19:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00096',to_date('16/11/15','RR/MM/DD'),'6','20:00','21:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00097',to_date('16/11/15','RR/MM/DD'),'1','09:20','11:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00098',to_date('16/11/15','RR/MM/DD'),'2','11:40','13:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00099',to_date('16/11/15','RR/MM/DD'),'3','14:00','16:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00100',to_date('16/11/15','RR/MM/DD'),'4','16:20','18:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00101',to_date('16/11/15','RR/MM/DD'),'5','18:40','20:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00102',to_date('16/11/15','RR/MM/DD'),'6','21:00','23:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00103',to_date('16/11/15','RR/MM/DD'),'1','10:10','12:10','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00104',to_date('16/11/15','RR/MM/DD'),'2','12:30','14:30','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00105',to_date('16/11/15','RR/MM/DD'),'3','14:50','16:50','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00106',to_date('16/11/15','RR/MM/DD'),'4','17:10','19:00','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00107',to_date('16/11/15','RR/MM/DD'),'5','19:20','21:10','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00108',to_date('16/11/15','RR/MM/DD'),'6','21:30','23:20','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00109',to_date('16/11/15','RR/MM/DD'),'1','09:00','11:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00110',to_date('16/11/15','RR/MM/DD'),'2','11:40','14:00','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00111',to_date('16/11/15','RR/MM/DD'),'3','14:20','16:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00112',to_date('16/11/15','RR/MM/DD'),'4','16:40','18:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00113',to_date('16/11/15','RR/MM/DD'),'5','19:10','21:20','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00114',to_date('16/11/15','RR/MM/DD'),'6','21:40','23:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00115',to_date('16/11/15','RR/MM/DD'),'1','09:30','11:00','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00116',to_date('16/11/15','RR/MM/DD'),'2','11:20','12:50','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00117',to_date('16/11/15','RR/MM/DD'),'3','13:10','14:40','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00118',to_date('16/11/15','RR/MM/DD'),'4','15:00','16:50','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00119',to_date('16/11/15','RR/MM/DD'),'5','17:10','19:00','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00120',to_date('16/11/15','RR/MM/DD'),'6','19:20','21:10','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00121',to_date('16/11/15','RR/MM/DD'),'7','21:30','23:20','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00338',to_date('16/11/18','RR/MM/DD'),'1','10:00','11:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00339',to_date('16/11/18','RR/MM/DD'),'2','12:00','13:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00340',to_date('16/11/18','RR/MM/DD'),'3','14:00','15:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00341',to_date('16/11/18','RR/MM/DD'),'4','16:00','17:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00342',to_date('16/11/18','RR/MM/DD'),'5','18:00','19:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00343',to_date('16/11/18','RR/MM/DD'),'6','20:00','21:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00344',to_date('16/11/18','RR/MM/DD'),'1','11:00','12:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00345',to_date('16/11/18','RR/MM/DD'),'2','13:00','14:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00346',to_date('16/11/18','RR/MM/DD'),'3','15:00','16:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00347',to_date('16/11/18','RR/MM/DD'),'4','17:00','18:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00348',to_date('16/11/18','RR/MM/DD'),'5','19:00','20:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00349',to_date('16/11/18','RR/MM/DD'),'6','21:00','22:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00350',to_date('16/11/18','RR/MM/DD'),'1','09:20','11:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00351',to_date('16/11/18','RR/MM/DD'),'2','11:40','13:40','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00352',to_date('16/11/18','RR/MM/DD'),'3','14:00','16:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00353',to_date('16/11/18','RR/MM/DD'),'4','16:20','18:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00354',to_date('16/11/18','RR/MM/DD'),'5','18:40','20:40','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00355',to_date('16/11/18','RR/MM/DD'),'6','21:00','23:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00356',to_date('16/11/18','RR/MM/DD'),'1','09:40','11:30','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00357',to_date('16/11/18','RR/MM/DD'),'2','11:50','13:40','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00358',to_date('16/11/18','RR/MM/DD'),'3','14:00','15:50','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00359',to_date('16/11/18','RR/MM/DD'),'4','16:10','18:00','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00360',to_date('16/11/18','RR/MM/DD'),'5','18:20','20:10','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00361',to_date('16/11/18','RR/MM/DD'),'6','20:30','22:20','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00362',to_date('16/11/18','RR/MM/DD'),'1','09:00','11:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00363',to_date('16/11/18','RR/MM/DD'),'2','11:30','13:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00364',to_date('16/11/18','RR/MM/DD'),'3','14:00','16:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00365',to_date('16/11/18','RR/MM/DD'),'4','16:30','18:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00366',to_date('16/11/18','RR/MM/DD'),'5','19:00','21:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00367',to_date('16/11/18','RR/MM/DD'),'1','09:10','11:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00368',to_date('16/11/18','RR/MM/DD'),'2','11:40','14:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00369',to_date('16/11/18','RR/MM/DD'),'3','14:20','16:40','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00370',to_date('16/11/18','RR/MM/DD'),'4','17:00','19:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00371',to_date('16/11/18','RR/MM/DD'),'5','19:40','22:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00372',to_date('16/11/18','RR/MM/DD'),'1','09:00','11:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00373',to_date('16/11/18','RR/MM/DD'),'2','11:30','13:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00374',to_date('16/11/18','RR/MM/DD'),'3','14:00','16:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00375',to_date('16/11/18','RR/MM/DD'),'4','16:30','18:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00376',to_date('16/11/18','RR/MM/DD'),'5','19:00','21:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00377',to_date('16/11/18','RR/MM/DD'),'1','09:10','11:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00378',to_date('16/11/18','RR/MM/DD'),'2','11:30','13:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00379',to_date('16/11/18','RR/MM/DD'),'3','13:50','15:50','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00380',to_date('16/11/18','RR/MM/DD'),'4','16:10','17:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00381',to_date('16/11/18','RR/MM/DD'),'5','18:10','19:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00382',to_date('16/11/18','RR/MM/DD'),'6','20:10','21:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00383',to_date('16/11/18','RR/MM/DD'),'7','22:10','23:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00384',to_date('16/11/18','RR/MM/DD'),'1','09:20','11:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00385',to_date('16/11/18','RR/MM/DD'),'2','11:40','13:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00386',to_date('16/11/18','RR/MM/DD'),'3','14:00','16:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00387',to_date('16/11/18','RR/MM/DD'),'4','16:20','18:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00388',to_date('16/11/18','RR/MM/DD'),'5','18:40','20:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00389',to_date('16/11/18','RR/MM/DD'),'6','21:00','23:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00390',to_date('16/11/18','RR/MM/DD'),'1','09:40','11:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00391',to_date('16/11/18','RR/MM/DD'),'2','12:00','14:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00392',to_date('16/11/18','RR/MM/DD'),'3','14:20','16:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00393',to_date('16/11/18','RR/MM/DD'),'4','16:40','18:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00394',to_date('16/11/18','RR/MM/DD'),'5','19:00','21:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00395',to_date('16/11/18','RR/MM/DD'),'6','21:20','23:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00396',to_date('16/11/18','RR/MM/DD'),'1','10:00','11:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00397',to_date('16/11/18','RR/MM/DD'),'2','11:50','13:20','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00398',to_date('16/11/18','RR/MM/DD'),'3','13:40','15:10','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00399',to_date('16/11/18','RR/MM/DD'),'4','15:30','17:00','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00400',to_date('16/11/18','RR/MM/DD'),'5','17:20','18:50','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00401',to_date('16/11/18','RR/MM/DD'),'6','19:10','20:40','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00402',to_date('16/11/18','RR/MM/DD'),'7','21:00','22:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00403',to_date('16/11/18','RR/MM/DD'),'1','09:35','11:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00404',to_date('16/11/18','RR/MM/DD'),'2','11:55','13:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00405',to_date('16/11/18','RR/MM/DD'),'3','14:15','16:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00406',to_date('16/11/18','RR/MM/DD'),'4','16:35','18:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00407',to_date('16/11/18','RR/MM/DD'),'5','18:55','20:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00408',to_date('16/11/18','RR/MM/DD'),'6','21:15','23:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00409',to_date('16/11/18','RR/MM/DD'),'1','09:10','11:00','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00410',to_date('16/11/18','RR/MM/DD'),'2','11:20','13:10','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00411',to_date('16/11/18','RR/MM/DD'),'3','13:30','15:20','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00412',to_date('16/11/18','RR/MM/DD'),'4','15:40','17:30','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00413',to_date('16/11/18','RR/MM/DD'),'5','17:50','19:40','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00414',to_date('16/11/18','RR/MM/DD'),'6','20:00','21:50','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00415',to_date('16/11/18','RR/MM/DD'),'1','10:00','11:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00416',to_date('16/11/18','RR/MM/DD'),'2','12:00','13:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00417',to_date('16/11/18','RR/MM/DD'),'3','14:00','15:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00418',to_date('16/11/18','RR/MM/DD'),'4','16:00','17:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00419',to_date('16/11/18','RR/MM/DD'),'5','18:00','19:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00420',to_date('16/11/18','RR/MM/DD'),'6','20:00','21:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00421',to_date('16/11/18','RR/MM/DD'),'1','09:20','11:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00422',to_date('16/11/18','RR/MM/DD'),'2','11:40','13:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00423',to_date('16/11/18','RR/MM/DD'),'3','14:00','16:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00424',to_date('16/11/18','RR/MM/DD'),'4','16:20','18:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00425',to_date('16/11/18','RR/MM/DD'),'5','18:40','20:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00426',to_date('16/11/18','RR/MM/DD'),'6','21:00','23:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00427',to_date('16/11/18','RR/MM/DD'),'1','10:10','12:10','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00428',to_date('16/11/18','RR/MM/DD'),'2','12:30','14:30','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00429',to_date('16/11/18','RR/MM/DD'),'3','14:50','16:50','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00430',to_date('16/11/18','RR/MM/DD'),'4','17:10','19:00','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00431',to_date('16/11/18','RR/MM/DD'),'5','19:20','21:10','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00432',to_date('16/11/18','RR/MM/DD'),'6','21:30','23:20','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00433',to_date('16/11/18','RR/MM/DD'),'1','09:00','11:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00434',to_date('16/11/18','RR/MM/DD'),'2','11:40','14:00','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00435',to_date('16/11/18','RR/MM/DD'),'3','14:20','16:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00436',to_date('16/11/18','RR/MM/DD'),'4','16:40','18:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00437',to_date('16/11/18','RR/MM/DD'),'5','19:10','21:20','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00438',to_date('16/11/18','RR/MM/DD'),'6','21:40','23:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00439',to_date('16/11/18','RR/MM/DD'),'1','09:30','11:00','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00440',to_date('16/11/18','RR/MM/DD'),'2','11:20','12:50','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00441',to_date('16/11/18','RR/MM/DD'),'3','13:10','14:40','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00442',to_date('16/11/18','RR/MM/DD'),'4','15:00','16:50','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00443',to_date('16/11/18','RR/MM/DD'),'5','17:10','19:00','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00444',to_date('16/11/18','RR/MM/DD'),'6','19:20','21:10','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00445',to_date('16/11/18','RR/MM/DD'),'7','21:30','23:20','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00230',to_date('16/11/17','RR/MM/DD'),'1','10:00','11:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00231',to_date('16/11/17','RR/MM/DD'),'2','12:00','13:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00232',to_date('16/11/17','RR/MM/DD'),'3','14:00','15:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00233',to_date('16/11/17','RR/MM/DD'),'4','16:00','17:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00234',to_date('16/11/17','RR/MM/DD'),'5','18:00','19:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00235',to_date('16/11/17','RR/MM/DD'),'6','20:00','21:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00236',to_date('16/11/17','RR/MM/DD'),'1','11:00','12:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00237',to_date('16/11/17','RR/MM/DD'),'2','13:00','14:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00238',to_date('16/11/17','RR/MM/DD'),'3','15:00','16:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00239',to_date('16/11/17','RR/MM/DD'),'4','17:00','18:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00240',to_date('16/11/17','RR/MM/DD'),'5','19:00','20:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00241',to_date('16/11/17','RR/MM/DD'),'6','21:00','22:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00242',to_date('16/11/17','RR/MM/DD'),'1','09:20','11:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00243',to_date('16/11/17','RR/MM/DD'),'2','11:40','13:40','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00244',to_date('16/11/17','RR/MM/DD'),'3','14:00','16:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00245',to_date('16/11/17','RR/MM/DD'),'4','16:20','18:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00246',to_date('16/11/17','RR/MM/DD'),'5','18:40','20:40','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00247',to_date('16/11/17','RR/MM/DD'),'6','21:00','23:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00248',to_date('16/11/17','RR/MM/DD'),'1','09:40','11:30','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00249',to_date('16/11/17','RR/MM/DD'),'2','11:50','13:40','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00250',to_date('16/11/17','RR/MM/DD'),'3','14:00','15:50','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00251',to_date('16/11/17','RR/MM/DD'),'4','16:10','18:00','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00252',to_date('16/11/17','RR/MM/DD'),'5','18:20','20:10','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00253',to_date('16/11/17','RR/MM/DD'),'6','20:30','22:20','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00254',to_date('16/11/17','RR/MM/DD'),'1','09:00','11:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00255',to_date('16/11/17','RR/MM/DD'),'2','11:30','13:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00256',to_date('16/11/17','RR/MM/DD'),'3','14:00','16:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00257',to_date('16/11/17','RR/MM/DD'),'4','16:30','18:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00258',to_date('16/11/17','RR/MM/DD'),'5','19:00','21:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00259',to_date('16/11/17','RR/MM/DD'),'1','09:10','11:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00260',to_date('16/11/17','RR/MM/DD'),'2','11:40','14:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00261',to_date('16/11/17','RR/MM/DD'),'3','14:20','16:40','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00262',to_date('16/11/17','RR/MM/DD'),'4','17:00','19:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00263',to_date('16/11/17','RR/MM/DD'),'5','19:40','22:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00264',to_date('16/11/17','RR/MM/DD'),'1','09:00','11:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00265',to_date('16/11/17','RR/MM/DD'),'2','11:30','13:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00266',to_date('16/11/17','RR/MM/DD'),'3','14:00','16:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00267',to_date('16/11/17','RR/MM/DD'),'4','16:30','18:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00268',to_date('16/11/17','RR/MM/DD'),'5','19:00','21:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00269',to_date('16/11/17','RR/MM/DD'),'1','09:10','11:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00270',to_date('16/11/17','RR/MM/DD'),'2','11:30','13:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00271',to_date('16/11/17','RR/MM/DD'),'3','13:50','15:50','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00272',to_date('16/11/17','RR/MM/DD'),'4','16:10','17:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00273',to_date('16/11/17','RR/MM/DD'),'5','18:10','19:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00274',to_date('16/11/17','RR/MM/DD'),'6','20:10','21:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00275',to_date('16/11/17','RR/MM/DD'),'7','22:10','23:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00276',to_date('16/11/17','RR/MM/DD'),'1','09:20','11:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00277',to_date('16/11/17','RR/MM/DD'),'2','11:40','13:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00278',to_date('16/11/17','RR/MM/DD'),'3','14:00','16:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00279',to_date('16/11/17','RR/MM/DD'),'4','16:20','18:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00280',to_date('16/11/17','RR/MM/DD'),'5','18:40','20:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00281',to_date('16/11/17','RR/MM/DD'),'6','21:00','23:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00282',to_date('16/11/17','RR/MM/DD'),'1','09:40','11:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00283',to_date('16/11/17','RR/MM/DD'),'2','12:00','14:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00284',to_date('16/11/17','RR/MM/DD'),'3','14:20','16:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00285',to_date('16/11/17','RR/MM/DD'),'4','16:40','18:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00286',to_date('16/11/17','RR/MM/DD'),'5','19:00','21:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00287',to_date('16/11/17','RR/MM/DD'),'6','21:20','23:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00288',to_date('16/11/17','RR/MM/DD'),'1','10:00','11:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00289',to_date('16/11/17','RR/MM/DD'),'2','11:50','13:20','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00290',to_date('16/11/17','RR/MM/DD'),'3','13:40','15:10','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00291',to_date('16/11/17','RR/MM/DD'),'4','15:30','17:00','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00292',to_date('16/11/17','RR/MM/DD'),'5','17:20','18:50','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00293',to_date('16/11/17','RR/MM/DD'),'6','19:10','20:40','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00294',to_date('16/11/17','RR/MM/DD'),'7','21:00','22:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00295',to_date('16/11/17','RR/MM/DD'),'1','09:35','11:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00296',to_date('16/11/17','RR/MM/DD'),'2','11:55','13:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00297',to_date('16/11/17','RR/MM/DD'),'3','14:15','16:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00298',to_date('16/11/17','RR/MM/DD'),'4','16:35','18:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00299',to_date('16/11/17','RR/MM/DD'),'5','18:55','20:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00300',to_date('16/11/17','RR/MM/DD'),'6','21:15','23:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00301',to_date('16/11/17','RR/MM/DD'),'1','09:10','11:00','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00302',to_date('16/11/17','RR/MM/DD'),'2','11:20','13:10','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00303',to_date('16/11/17','RR/MM/DD'),'3','13:30','15:20','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00304',to_date('16/11/17','RR/MM/DD'),'4','15:40','17:30','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00305',to_date('16/11/17','RR/MM/DD'),'5','17:50','19:40','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00306',to_date('16/11/17','RR/MM/DD'),'6','20:00','21:50','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00307',to_date('16/11/17','RR/MM/DD'),'1','10:00','11:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00308',to_date('16/11/17','RR/MM/DD'),'2','12:00','13:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00309',to_date('16/11/17','RR/MM/DD'),'3','14:00','15:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00310',to_date('16/11/17','RR/MM/DD'),'4','16:00','17:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00311',to_date('16/11/17','RR/MM/DD'),'5','18:00','19:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00312',to_date('16/11/17','RR/MM/DD'),'6','20:00','21:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00313',to_date('16/11/17','RR/MM/DD'),'1','09:20','11:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00314',to_date('16/11/17','RR/MM/DD'),'2','11:40','13:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00315',to_date('16/11/17','RR/MM/DD'),'3','14:00','16:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00316',to_date('16/11/17','RR/MM/DD'),'4','16:20','18:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00317',to_date('16/11/17','RR/MM/DD'),'5','18:40','20:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00318',to_date('16/11/17','RR/MM/DD'),'6','21:00','23:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00319',to_date('16/11/17','RR/MM/DD'),'1','10:10','12:10','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00320',to_date('16/11/17','RR/MM/DD'),'2','12:30','14:30','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00321',to_date('16/11/17','RR/MM/DD'),'3','14:50','16:50','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00322',to_date('16/11/17','RR/MM/DD'),'4','17:10','19:00','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00323',to_date('16/11/17','RR/MM/DD'),'5','19:20','21:10','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00324',to_date('16/11/17','RR/MM/DD'),'6','21:30','23:20','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00325',to_date('16/11/17','RR/MM/DD'),'1','09:00','11:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00326',to_date('16/11/17','RR/MM/DD'),'2','11:40','14:00','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00327',to_date('16/11/17','RR/MM/DD'),'3','14:20','16:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00328',to_date('16/11/17','RR/MM/DD'),'4','16:40','18:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00329',to_date('16/11/17','RR/MM/DD'),'5','19:10','21:20','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00330',to_date('16/11/17','RR/MM/DD'),'6','21:40','23:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00331',to_date('16/11/17','RR/MM/DD'),'1','09:30','11:00','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00332',to_date('16/11/17','RR/MM/DD'),'2','11:20','12:50','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00333',to_date('16/11/17','RR/MM/DD'),'3','13:10','14:40','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00334',to_date('16/11/17','RR/MM/DD'),'4','15:00','16:50','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00335',to_date('16/11/17','RR/MM/DD'),'5','17:10','19:00','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00336',to_date('16/11/17','RR/MM/DD'),'6','19:20','21:10','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00337',to_date('16/11/17','RR/MM/DD'),'7','21:30','23:20','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00139',to_date('16/11/16','RR/MM/DD'),'6','21:00','23:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00140',to_date('16/11/16','RR/MM/DD'),'1','09:40','11:30','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00141',to_date('16/11/16','RR/MM/DD'),'2','11:50','13:40','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00142',to_date('16/11/16','RR/MM/DD'),'3','14:00','15:50','0','000004','0001','04','로스트 인 더스트');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00143',to_date('16/11/16','RR/MM/DD'),'4','16:10','18:00','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00144',to_date('16/11/16','RR/MM/DD'),'5','18:20','20:10','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00145',to_date('16/11/16','RR/MM/DD'),'6','20:30','22:20','0','000005','0001','04','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00146',to_date('16/11/16','RR/MM/DD'),'1','09:00','11:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00147',to_date('16/11/16','RR/MM/DD'),'2','11:30','13:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00148',to_date('16/11/16','RR/MM/DD'),'3','14:00','16:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00149',to_date('16/11/16','RR/MM/DD'),'4','16:30','18:40','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00150',to_date('16/11/16','RR/MM/DD'),'5','19:00','21:10','0','000006','0001','05','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00151',to_date('16/11/16','RR/MM/DD'),'1','09:10','11:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00152',to_date('16/11/16','RR/MM/DD'),'2','11:40','14:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00153',to_date('16/11/16','RR/MM/DD'),'3','14:20','16:40','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00154',to_date('16/11/16','RR/MM/DD'),'4','17:00','19:20','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00155',to_date('16/11/16','RR/MM/DD'),'5','19:40','22:00','0','000007','0001','06','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00156',to_date('16/11/16','RR/MM/DD'),'1','09:00','11:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00157',to_date('16/11/16','RR/MM/DD'),'2','11:30','13:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00158',to_date('16/11/16','RR/MM/DD'),'3','14:00','16:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00159',to_date('16/11/16','RR/MM/DD'),'4','16:30','18:40','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00160',to_date('16/11/16','RR/MM/DD'),'5','19:00','21:10','0','000008','0001','07','스플릿');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00161',to_date('16/11/16','RR/MM/DD'),'1','09:10','11:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00162',to_date('16/11/16','RR/MM/DD'),'2','11:30','13:10','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00163',to_date('16/11/16','RR/MM/DD'),'3','13:50','15:50','0','000010','0001','08','당신이 사랑하는 동안에');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00164',to_date('16/11/16','RR/MM/DD'),'4','16:10','17:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00165',to_date('16/11/16','RR/MM/DD'),'5','18:10','19:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00166',to_date('16/11/16','RR/MM/DD'),'6','20:10','21:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00167',to_date('16/11/16','RR/MM/DD'),'7','22:10','23:50','0','000009','0001','08','이프 온리');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00168',to_date('16/11/16','RR/MM/DD'),'1','09:20','11:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00169',to_date('16/11/16','RR/MM/DD'),'2','11:40','13:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00170',to_date('16/11/16','RR/MM/DD'),'3','14:00','16:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00171',to_date('16/11/16','RR/MM/DD'),'4','16:20','18:20','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00172',to_date('16/11/16','RR/MM/DD'),'5','18:40','20:40','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00173',to_date('16/11/16','RR/MM/DD'),'6','21:00','23:00','0','000002','0002','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00174',to_date('16/11/16','RR/MM/DD'),'1','09:40','11:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00175',to_date('16/11/16','RR/MM/DD'),'2','12:00','14:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00176',to_date('16/11/16','RR/MM/DD'),'3','14:20','16:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00177',to_date('16/11/16','RR/MM/DD'),'4','16:40','18:40','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00178',to_date('16/11/16','RR/MM/DD'),'5','19:00','21:00','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00179',to_date('16/11/16','RR/MM/DD'),'6','21:20','23:20','0','000003','0002','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00180',to_date('16/11/16','RR/MM/DD'),'1','10:00','11:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00181',to_date('16/11/16','RR/MM/DD'),'2','11:50','13:20','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00182',to_date('16/11/16','RR/MM/DD'),'3','13:40','15:10','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00183',to_date('16/11/16','RR/MM/DD'),'4','15:30','17:00','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00184',to_date('16/11/16','RR/MM/DD'),'5','17:20','18:50','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00185',to_date('16/11/16','RR/MM/DD'),'6','19:10','20:40','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00186',to_date('16/11/16','RR/MM/DD'),'7','21:00','22:30','0','000011','0002','03','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00187',to_date('16/11/16','RR/MM/DD'),'1','09:35','11:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00188',to_date('16/11/16','RR/MM/DD'),'2','11:55','13:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00189',to_date('16/11/16','RR/MM/DD'),'3','14:15','16:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00190',to_date('16/11/16','RR/MM/DD'),'4','16:35','18:35','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00191',to_date('16/11/16','RR/MM/DD'),'5','18:55','20:55','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00192',to_date('16/11/16','RR/MM/DD'),'6','21:15','23:15','0','000012','0002','04','잭 리처:네버 고 백');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00193',to_date('16/11/16','RR/MM/DD'),'1','09:10','11:00','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00194',to_date('16/11/16','RR/MM/DD'),'2','11:20','13:10','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00195',to_date('16/11/16','RR/MM/DD'),'3','13:30','15:20','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00196',to_date('16/11/16','RR/MM/DD'),'4','15:40','17:30','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00197',to_date('16/11/16','RR/MM/DD'),'5','17:50','19:40','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00198',to_date('16/11/16','RR/MM/DD'),'6','20:00','21:50','0','000013','0002','05','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00199',to_date('16/11/16','RR/MM/DD'),'1','10:00','11:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00200',to_date('16/11/16','RR/MM/DD'),'2','12:00','13:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00201',to_date('16/11/16','RR/MM/DD'),'3','14:00','15:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00202',to_date('16/11/16','RR/MM/DD'),'4','16:00','17:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00203',to_date('16/11/16','RR/MM/DD'),'5','18:00','19:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00204',to_date('16/11/16','RR/MM/DD'),'6','20:00','21:40','0','000014','0002','06','두남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00205',to_date('16/11/16','RR/MM/DD'),'1','09:20','11:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00206',to_date('16/11/16','RR/MM/DD'),'2','11:40','13:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00207',to_date('16/11/16','RR/MM/DD'),'3','14:00','16:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00208',to_date('16/11/16','RR/MM/DD'),'4','16:20','18:20','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00209',to_date('16/11/16','RR/MM/DD'),'5','18:40','20:40','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00210',to_date('16/11/16','RR/MM/DD'),'6','21:00','23:00','0','000002','0003','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00211',to_date('16/11/16','RR/MM/DD'),'1','10:10','12:10','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00212',to_date('16/11/16','RR/MM/DD'),'2','12:30','14:30','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00213',to_date('16/11/16','RR/MM/DD'),'3','14:50','16:50','0','000003','0003','02','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00214',to_date('16/11/16','RR/MM/DD'),'4','17:10','19:00','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00215',to_date('16/11/16','RR/MM/DD'),'5','19:20','21:10','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00216',to_date('16/11/16','RR/MM/DD'),'6','21:30','23:20','0','000005','0003','02','무한대를 본 남자');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00217',to_date('16/11/16','RR/MM/DD'),'1','09:00','11:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00218',to_date('16/11/16','RR/MM/DD'),'2','11:40','14:00','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00219',to_date('16/11/16','RR/MM/DD'),'3','14:20','16:20','0','000007','0003','03','신비한 동물사전');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00220',to_date('16/11/16','RR/MM/DD'),'4','16:40','18:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00221',to_date('16/11/16','RR/MM/DD'),'5','19:10','21:20','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00222',to_date('16/11/16','RR/MM/DD'),'6','21:40','23:50','0','000006','0003','03','가려진 시간');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00223',to_date('16/11/16','RR/MM/DD'),'1','09:30','11:00','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00224',to_date('16/11/16','RR/MM/DD'),'2','11:20','12:50','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00225',to_date('16/11/16','RR/MM/DD'),'3','13:10','14:40','0','000011','0003','04','사랑은 없다');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00226',to_date('16/11/16','RR/MM/DD'),'4','15:00','16:50','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00227',to_date('16/11/16','RR/MM/DD'),'5','17:10','19:00','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00228',to_date('16/11/16','RR/MM/DD'),'6','19:20','21:10','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00229',to_date('16/11/16','RR/MM/DD'),'7','21:30','23:20','0','000013','0003','04','형');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00122',to_date('16/11/16','RR/MM/DD'),'1','10:00','11:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00123',to_date('16/11/16','RR/MM/DD'),'2','12:00','13:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00124',to_date('16/11/16','RR/MM/DD'),'3','14:00','15:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00125',to_date('16/11/16','RR/MM/DD'),'4','16:00','17:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00126',to_date('16/11/16','RR/MM/DD'),'5','18:00','19:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00127',to_date('16/11/16','RR/MM/DD'),'6','20:00','21:20','0','000002','0001','01','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00128',to_date('16/11/16','RR/MM/DD'),'1','11:00','12:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00129',to_date('16/11/16','RR/MM/DD'),'2','13:00','14:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00130',to_date('16/11/16','RR/MM/DD'),'3','15:00','16:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00131',to_date('16/11/16','RR/MM/DD'),'4','17:00','18:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00132',to_date('16/11/16','RR/MM/DD'),'5','19:00','20:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00133',to_date('16/11/16','RR/MM/DD'),'6','21:00','22:20','0','000002','0001','02','닥터 스트레인지');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00134',to_date('16/11/16','RR/MM/DD'),'1','09:20','11:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00135',to_date('16/11/16','RR/MM/DD'),'2','11:40','13:40','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00136',to_date('16/11/16','RR/MM/DD'),'3','14:00','16:00','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00137',to_date('16/11/16','RR/MM/DD'),'4','16:20','18:20','0','000003','0001','03','럭키');
Insert into CGS.SCREENING (SCREENING_ID,SCREENING_DATE,SCREENING_CNT,START_TIME,END_TIME,SCHEDULE_OPEN,FILM_ID,SITE_ID,SCREEN_NUM,FILM_NAME) values ('00138',to_date('16/11/16','RR/MM/DD'),'5','18:40','20:40','0','000003','0001','03','럭키');
REM INSERTING into CGS.SEAT
SET DEFINE OFF;
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','01','0101001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','01','0101002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','01','0101003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','01','0101004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','01','0101005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','01','0101006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','01','0101007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','01','0101008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','01','0101009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','01','0101010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','01','0101011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','01','0101012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','01','0101013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','01','0101014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','01','0101015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','01','0101016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','01','0101017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','01','0101018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','01','0101019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','01','0101020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','01','0101021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','01','0101022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','01','0101023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','01','0101024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','01','0101025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','01','0101026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','01','0101027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','01','0101028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','01','0101029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','01','0101030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','01','0101031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','01','0101032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','01','0101033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','01','0101034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','01','0101035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','01','0101036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','01','0101037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','01','0101038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','01','0101039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','01','0101040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','01','0101041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','01','0101042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','01','0101043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','01','0101044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','5 ','01','0101045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','6 ','01','0101046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','7 ','01','0101047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','8 ','01','0101048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','9 ','01','0101049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','10','01','0101050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','1 ','01','0101051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','2 ','01','0101052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','3 ','01','0101053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','4 ','01','0101054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','5 ','01','0101055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','6 ','01','0101056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','7 ','01','0101057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','8 ','01','0101058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','9 ','01','0101059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','10','01','0101060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','1 ','01','0101061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','2 ','01','0101062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','3 ','01','0101063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','4 ','01','0101064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','5 ','01','0101065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','6 ','01','0101066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','7 ','01','0101067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','8 ','01','0101068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','9 ','01','0101069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','10','01','0101070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','1 ','01','0101071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','2 ','01','0101072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','3 ','01','0101073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','4 ','01','0101074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','5 ','01','0101075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','6 ','01','0101076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','7 ','01','0101077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','8 ','01','0101078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','9 ','01','0101079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','10','01','0101080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','02','0102001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','02','0102002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','02','0102003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','02','0102004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','02','0102005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','02','0102006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','02','0102007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','02','0102008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','02','0102009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','02','0102010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','11','02','0102011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','12','02','0102012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','13','02','0102013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','14','02','0102014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','15','02','0102015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','02','0102016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','02','0102017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','02','0102018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','02','0102019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','02','0102020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','02','0102021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','02','0102022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','02','0102023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','02','0102024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','02','0102025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','11','02','0102026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','12','02','0102027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','13','02','0102028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','14','02','0102029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','15','02','0102030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','16','02','0102031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','17','02','0102032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','18','02','0102033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','02','0102034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','02','0102035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','02','0102036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','02','0102037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','02','0102038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','02','0102039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','02','0102040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','02','0102041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','02','0102042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','02','0102043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','11','02','0102044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','12','02','0102045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','13','02','0102046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','14','02','0102047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','15','02','0102048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','16','02','0102049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','17','02','0102050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','18','02','0102051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','02','0102052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','02','0102053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','02','0102054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','02','0102055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','02','0102056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','02','0102057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','02','0102058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','02','0102059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','02','0102060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','02','0102061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','11','02','0102062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','12','02','0102063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','13','02','0102064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','14','02','0102065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','15','02','0102066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','02','0102067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','02','0102068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','02','0102069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','02','0102070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','5 ','02','0102071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','6 ','02','0102072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','7 ','02','0102073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','8 ','02','0102074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','9 ','02','0102075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','10','02','0102076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','11','02','0102077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','12','02','0102078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','13','02','0102079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','14','02','0102080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','03','0103001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','03','0103002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','03','0103003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','03','0103004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','03','0103005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','03','0103006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','03','0103007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','03','0103008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','03','0103009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','03','0103010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','11','03','0103011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','12','03','0103012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','13','03','0103013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','14','03','0103014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','15','03','0103015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','03','0103016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','03','0103017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','03','0103018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','03','0103019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','03','0103020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','03','0103021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','03','0103022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','03','0103023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','03','0103024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','03','0103025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','11','03','0103026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','12','03','0103027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','13','03','0103028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','14','03','0103029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','15','03','0103030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','16','03','0103031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','17','03','0103032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','18','03','0103033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','03','0103034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','03','0103035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','03','0103036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','03','0103037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','03','0103038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','03','0103039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','03','0103040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','03','0103041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','03','0103042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','03','0103043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','11','03','0103044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','12','03','0103045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','13','03','0103046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','14','03','0103047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','15','03','0103048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','16','03','0103049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','17','03','0103050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','18','03','0103051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','03','0103052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','03','0103053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','03','0103054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','03','0103055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','03','0103056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','03','0103057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','03','0103058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','03','0103059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','03','0103060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','03','0103061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','11','03','0103062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','12','03','0103063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','13','03','0103064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','14','03','0103065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','15','03','0103066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','03','0103067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','03','0103068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','03','0103069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','03','0103070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','6 ','04','0204111');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','7 ','04','0204112');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','8 ','04','0204113');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','9 ','04','0204114');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','10','04','0204115');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','11','04','0204116');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','12','04','0204117');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','13','04','0204118');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','14','04','0204119');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','15','04','0204120');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','06','0106001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','06','0106002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','06','0106003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','06','0106004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','06','0106005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','06','0106006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','06','0106007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','06','0106008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','06','0106009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','06','0106010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','11','06','0106011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','12','06','0106012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','13','06','0106013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','14','06','0106014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','15','06','0106015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','06','0106016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','06','0106017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','06','0106018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','06','0106019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','06','0106020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','06','0106021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','06','0106022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','06','0106023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','06','0106024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','06','0106025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','11','06','0106026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','12','06','0106027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','13','06','0106028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','14','06','0106029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','15','06','0106030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','16','06','0106031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','17','06','0106032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','18','06','0106033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','06','0106034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','06','0106035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','06','0106036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','06','0106037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','06','0106038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','06','0106039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','06','0106040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','06','0106041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','06','0106042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','06','0106043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','11','06','0106044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','12','06','0106045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','13','06','0106046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','14','06','0106047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','15','06','0106048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','9 ','04','0204084');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','10','04','0204085');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','11','04','0204086');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','12','04','0204087');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','13','04','0204088');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','14','04','0204089');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','15','04','0204090');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','1 ','04','0204091');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','2 ','04','0204092');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','3 ','04','0204093');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','4 ','04','0204094');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','5 ','04','0204095');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','6 ','04','0204096');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','7 ','04','0204097');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','8 ','04','0204098');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','9 ','04','0204099');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','10','04','0204100');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','11','04','0204101');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','12','04','0204102');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','13','04','0204103');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','14','04','0204104');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','15','04','0204105');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','1 ','04','0204106');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','2 ','04','0204107');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','3 ','04','0204108');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','4 ','04','0204109');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','5 ','04','0204110');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','16','06','0106049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','17','06','0106050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','18','06','0106051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','06','0106052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','06','0106053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','06','0106054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','06','0106055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','06','0106056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','06','0106057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','06','0106058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','06','0106059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','06','0106060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','06','0106061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','11','06','0106062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','12','06','0106063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','13','06','0106064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','14','06','0106065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','15','06','0106066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','06','0106067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','06','0106068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','06','0106069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','06','0106070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','5 ','06','0106071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','6 ','06','0106072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','7 ','06','0106073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','8 ','06','0106074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','9 ','06','0106075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','10','06','0106076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','11','06','0106077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','12','06','0106078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','13','06','0106079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','14','06','0106080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','07','0107001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','07','0107002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','07','0107003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','07','0107004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','07','0107005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','07','0107006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','07','0107007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','07','0107008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','07','0107009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','07','0107010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','11','07','0107011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','12','07','0107012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','13','07','0107013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','14','07','0107014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','15','07','0107015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','07','0107016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','07','0107017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','07','0107018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','07','0107019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','07','0107020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','07','0107021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','07','0107022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','07','0107023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','07','0107024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','07','0107025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','11','07','0107026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','12','07','0107027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','13','07','0107028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','14','07','0107029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','15','07','0107030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','16','07','0107031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','17','07','0107032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','18','07','0107033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','07','0107034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','07','0107035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','07','0107036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','07','0107037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','07','0107038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','07','0107039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','07','0107040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','07','0107041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','07','0107042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','07','0107043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','11','07','0107044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','12','07','0107045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','13','07','0107046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','14','07','0107047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','15','07','0107048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','16','07','0107049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','17','07','0107050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','18','07','0107051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','07','0107052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','07','0107053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','07','0107054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','07','0107055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','07','0107056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','07','0107057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','07','0107058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','07','0107059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','07','0107060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','07','0107061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','11','07','0107062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','12','07','0107063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','13','07','0107064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','14','07','0107065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','15','07','0107066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','07','0107067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','07','0107068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','07','0107069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','07','0107070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','5 ','07','0107071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','6 ','07','0107072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','7 ','07','0107073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','8 ','07','0107074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','9 ','07','0107075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','10','07','0107076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','11','07','0107077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','12','07','0107078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','13','07','0107079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','14','07','0107080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','08','0108001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','08','0108002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','08','0108003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','08','0108004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','08','0108005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','08','0108006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','08','0108007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','08','0108008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','08','0108009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','08','0108010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','11','08','0108011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','12','08','0108012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','13','08','0108013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','14','08','0108014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','15','08','0108015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','08','0108016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','08','0108017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','08','0108018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','08','0108019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','08','0108020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','08','0108021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','08','0108022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','08','0108023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','08','0108024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','08','0108025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','11','08','0108026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','12','08','0108027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','13','08','0108028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','14','08','0108029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','15','08','0108030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','16','08','0108031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','17','08','0108032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','18','08','0108033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','08','0108034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','08','0108035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','08','0108036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','08','0108037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','08','0108038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','08','0108039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','08','0108040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','08','0108041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','08','0108042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','08','0108043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','11','08','0108044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','12','08','0108045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','13','08','0108046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','14','08','0108047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','15','08','0108048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','16','08','0108049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','17','08','0108050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','18','08','0108051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','08','0108052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','08','0108053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','08','0108054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','08','0108055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','08','0108056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','08','0108057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','08','0108058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','08','0108059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','08','0108060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','08','0108061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','11','08','0108062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','12','08','0108063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','13','08','0108064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','14','08','0108065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','15','08','0108066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','08','0108067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','08','0108068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','08','0108069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','08','0108070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','1 ','01','0201001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','2 ','01','0201002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','3 ','01','0201003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','4 ','01','0201004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','5 ','01','0201005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','6 ','01','0201006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','7 ','01','0201007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','8 ','01','0201008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','9 ','01','0201009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','10','01','0201010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','1 ','01','0201011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','2 ','01','0201012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','3 ','01','0201013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','4 ','01','0201014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','5 ','01','0201015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','6 ','01','0201016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','7 ','01','0201017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','8 ','01','0201018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','9 ','01','0201019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','10','01','0201020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','1 ','01','0201021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','2 ','01','0201022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','3 ','01','0201023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','4 ','01','0201024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','5 ','01','0201025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','6 ','01','0201026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','7 ','01','0201027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','8 ','01','0201028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','9 ','01','0201029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','10','01','0201030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','1 ','01','0201031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','2 ','01','0201032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','3 ','01','0201033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','4 ','01','0201034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','5 ','01','0201035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','6 ','01','0201036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','7 ','01','0201037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','8 ','01','0201038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','9 ','01','0201039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','10','01','0201040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','1 ','01','0201041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','2 ','01','0201042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','3 ','01','0201043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','4 ','01','0201044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','5 ','01','0201045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','6 ','01','0201046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','7 ','01','0201047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','8 ','01','0201048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','9 ','01','0201049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','10','01','0201050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','1 ','01','0201051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','2 ','01','0201052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','3 ','01','0201053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','4 ','01','0201054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','5 ','01','0201055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','6 ','01','0201056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','7 ','01','0201057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','8 ','01','0201058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','9 ','01','0201059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','10','01','0201060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','1 ','02','0202001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','2 ','02','0202002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','3 ','02','0202003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','4 ','02','0202004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','5 ','02','0202005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','6 ','02','0202006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','7 ','02','0202007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','8 ','02','0202008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','9 ','02','0202009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','10','02','0202010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','1 ','02','0202011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','2 ','02','0202012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','3 ','02','0202013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','4 ','02','0202014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','5 ','02','0202015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','6 ','02','0202016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','7 ','02','0202017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','8 ','02','0202018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','9 ','02','0202019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','10','02','0202020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','1 ','02','0202021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','2 ','02','0202022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','3 ','02','0202023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','4 ','02','0202024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','5 ','02','0202025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','6 ','02','0202026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','7 ','02','0202027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','8 ','02','0202028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','9 ','02','0202029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','10','02','0202030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','1 ','02','0202031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','2 ','02','0202032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','3 ','02','0202033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','4 ','02','0202034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','5 ','02','0202035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','6 ','02','0202036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','7 ','02','0202037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','8 ','02','0202038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','9 ','02','0202039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','10','02','0202040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','1 ','02','0202041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','2 ','02','0202042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','3 ','02','0202043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','4 ','02','0202044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','5 ','02','0202045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','6 ','02','0202046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','7 ','02','0202047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','8 ','02','0202048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','9 ','02','0202049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','10','02','0202050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','1 ','02','0202051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','2 ','02','0202052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','3 ','02','0202053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','4 ','02','0202054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','5 ','02','0202055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','6 ','02','0202056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','7 ','02','0202057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','8 ','02','0202058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','9 ','02','0202059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','10','02','0202060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','1 ','02','0202061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','2 ','02','0202062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','3 ','02','0202063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','4 ','02','0202064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','5 ','02','0202065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','6 ','02','0202066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','7 ','02','0202067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','8 ','02','0202068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','9 ','02','0202069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','10','02','0202070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','1 ','03','0203001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','2 ','03','0203002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','3 ','03','0203003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','4 ','03','0203004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','5 ','03','0203005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','6 ','03','0203006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','7 ','03','0203007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','8 ','03','0203008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','9 ','03','0203009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','10','03','0203010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','1 ','03','0203011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','2 ','03','0203012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','3 ','03','0203013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','4 ','03','0203014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','5 ','03','0203015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','6 ','03','0203016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','7 ','03','0203017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','8 ','03','0203018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','9 ','03','0203019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','10','03','0203020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','1 ','03','0203021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','2 ','03','0203022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','3 ','03','0203023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','4 ','03','0203024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','5 ','03','0203025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','6 ','03','0203026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','7 ','03','0203027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','8 ','03','0203028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','9 ','03','0203029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','10','03','0203030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','1 ','03','0203031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','2 ','03','0203032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','3 ','03','0203033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','4 ','03','0203034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','5 ','03','0203035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','6 ','03','0203036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','7 ','03','0203037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','8 ','03','0203038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','9 ','03','0203039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','10','03','0203040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','1 ','03','0203041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','2 ','03','0203042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','3 ','03','0203043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','4 ','03','0203044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','5 ','03','0203045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','6 ','03','0203046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','7 ','03','0203047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','8 ','03','0203048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','9 ','03','0203049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','10','03','0203050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','1 ','03','0203051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','2 ','03','0203052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','3 ','03','0203053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','4 ','03','0203054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','5 ','03','0203055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','6 ','03','0203056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','7 ','03','0203057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','8 ','03','0203058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','9 ','03','0203059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','10','03','0203060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','1 ','03','0203061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','2 ','03','0203062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','3 ','03','0203063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','4 ','03','0203064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','5 ','03','0203065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','6 ','03','0203066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','7 ','03','0203067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','8 ','03','0203068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','9 ','03','0203069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','10','03','0203070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','1 ','05','0205001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','2 ','05','0205002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','3 ','05','0205003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','4 ','05','0205004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','5 ','05','0205005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','6 ','05','0205006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','7 ','05','0205007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','8 ','05','0205008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','9 ','05','0205009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','10','05','0205010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','1 ','05','0205011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','2 ','05','0205012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','3 ','05','0205013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','4 ','05','0205014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','5 ','05','0205015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','6 ','05','0205016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','7 ','05','0205017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','8 ','05','0205018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','9 ','05','0205019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','10','05','0205020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','1 ','05','0205021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','2 ','05','0205022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','3 ','05','0205023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','4 ','05','0205024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','5 ','05','0205025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','6 ','05','0205026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','7 ','05','0205027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','8 ','05','0205028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','9 ','05','0205029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','10','05','0205030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','1 ','05','0205031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','2 ','05','0205032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','3 ','05','0205033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','4 ','05','0205034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','5 ','05','0205035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','6 ','05','0205036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','7 ','05','0205037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','8 ','05','0205038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','9 ','05','0205039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','10','05','0205040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','1 ','05','0205041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','2 ','05','0205042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','3 ','05','0205043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','4 ','05','0205044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','5 ','05','0205045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','6 ','05','0205046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','7 ','05','0205047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','8 ','05','0205048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','9 ','05','0205049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','10','05','0205050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','1 ','05','0205051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','2 ','05','0205052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','3 ','05','0205053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','4 ','05','0205054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','5 ','05','0205055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','6 ','05','0205056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','7 ','05','0205057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','8 ','05','0205058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','9 ','05','0205059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','10','05','0205060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','1 ','05','0205061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','2 ','05','0205062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','3 ','05','0205063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','4 ','05','0205064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','5 ','05','0205065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','6 ','05','0205066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','7 ','05','0205067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','8 ','05','0205068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','9 ','05','0205069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','10','05','0205070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','1 ','05','0205071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','2 ','05','0205072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','3 ','05','0205073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','4 ','05','0205074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','5 ','05','0205075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','6 ','05','0205076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','7 ','05','0205077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','8 ','05','0205078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','9 ','05','0205079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','H','10','05','0205080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','1 ','06','0206001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','2 ','06','0206002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','3 ','06','0206003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','4 ','06','0206004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','5 ','06','0206005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','6 ','06','0206006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','7 ','06','0206007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','8 ','06','0206008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','9 ','06','0206009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','10','06','0206010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','1 ','06','0206011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','2 ','06','0206012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','3 ','06','0206013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','4 ','06','0206014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','5 ','06','0206015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','6 ','06','0206016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','7 ','06','0206017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','8 ','06','0206018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','9 ','06','0206019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','10','06','0206020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','1 ','06','0206021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','2 ','06','0206022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','3 ','06','0206023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','4 ','06','0206024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','5 ','06','0206025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','6 ','06','0206026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','7 ','06','0206027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','8 ','06','0206028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','9 ','06','0206029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','10','06','0206030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','1 ','06','0206031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','2 ','06','0206032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','3 ','06','0206033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','4 ','06','0206034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','5 ','06','0206035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','6 ','06','0206036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','7 ','06','0206037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','8 ','06','0206038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','9 ','06','0206039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','10','06','0206040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','1 ','06','0206041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','2 ','06','0206042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','3 ','06','0206043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','4 ','06','0206044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','5 ','06','0206045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','6 ','06','0206046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','7 ','06','0206047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','8 ','06','0206048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','9 ','06','0206049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','10','06','0206050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','1 ','06','0206051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','2 ','06','0206052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','3 ','06','0206053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','4 ','06','0206054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','5 ','06','0206055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','6 ','06','0206056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','7 ','06','0206057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','8 ','06','0206058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','9 ','06','0206059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','10','06','0206060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','1 ','06','0206061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','2 ','06','0206062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','3 ','06','0206063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','4 ','06','0206064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','5 ','06','0206065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','6 ','06','0206066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','7 ','06','0206067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','8 ','06','0206068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','9 ','06','0206069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','G','10','06','0206070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','1 ','01','0301001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','2 ','01','0301002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','3 ','01','0301003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','4 ','01','0301004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','5 ','01','0301005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','6 ','01','0301006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','7 ','01','0301007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','8 ','01','0301008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','9 ','01','0301009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','10','01','0301010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','1 ','01','0301011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','2 ','01','0301012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','3 ','01','0301013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','4 ','01','0301014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','5 ','01','0301015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','6 ','01','0301016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','7 ','01','0301017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','8 ','01','0301018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','9 ','01','0301019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','10','01','0301020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','1 ','01','0301021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','2 ','01','0301022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','3 ','01','0301023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','4 ','01','0301024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','5 ','01','0301025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','6 ','01','0301026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','7 ','01','0301027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','8 ','01','0301028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','9 ','01','0301029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','10','01','0301030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','1 ','01','0301031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','2 ','01','0301032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','3 ','01','0301033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','4 ','01','0301034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','5 ','01','0301035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','6 ','01','0301036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','7 ','01','0301037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','8 ','01','0301038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','9 ','01','0301039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','10','01','0301040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','1 ','01','0301041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','2 ','01','0301042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','3 ','01','0301043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','4 ','01','0301044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','5 ','01','0301045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','6 ','01','0301046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','7 ','01','0301047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','8 ','01','0301048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','9 ','01','0301049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','10','01','0301050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','1 ','01','0301051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','2 ','01','0301052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','3 ','01','0301053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','4 ','01','0301054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','5 ','01','0301055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','6 ','01','0301056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','7 ','01','0301057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','8 ','01','0301058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','9 ','01','0301059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','10','01','0301060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','1 ','02','0302001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','2 ','02','0302002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','3 ','02','0302003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','4 ','02','0302004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','5 ','02','0302005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','6 ','02','0302006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','7 ','02','0302007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','8 ','02','0302008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','9 ','02','0302009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','10','02','0302010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','1 ','02','0302011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','2 ','02','0302012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','3 ','02','0302013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','4 ','02','0302014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','5 ','02','0302015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','6 ','02','0302016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','7 ','02','0302017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','8 ','02','0302018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','9 ','02','0302019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','10','02','0302020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','1 ','02','0302021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','2 ','02','0302022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','3 ','02','0302023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','4 ','02','0302024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','5 ','02','0302025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','6 ','02','0302026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','7 ','02','0302027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','8 ','02','0302028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','9 ','02','0302029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','10','02','0302030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','1 ','02','0302031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','2 ','02','0302032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','3 ','02','0302033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','4 ','02','0302034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','5 ','02','0302035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','6 ','02','0302036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','7 ','02','0302037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','8 ','02','0302038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','9 ','02','0302039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','10','02','0302040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','1 ','02','0302041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','2 ','02','0302042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','3 ','02','0302043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','4 ','02','0302044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','5 ','02','0302045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','6 ','02','0302046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','7 ','02','0302047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','8 ','02','0302048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','9 ','02','0302049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','10','02','0302050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','1 ','02','0302051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','2 ','02','0302052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','3 ','02','0302053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','4 ','02','0302054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','5 ','02','0302055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','6 ','02','0302056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','7 ','02','0302057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','8 ','02','0302058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','9 ','02','0302059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','10','02','0302060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','1 ','02','0302061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','2 ','02','0302062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','3 ','02','0302063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','4 ','02','0302064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','5 ','02','0302065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','6 ','02','0302066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','7 ','02','0302067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','8 ','02','0302068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','9 ','02','0302069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','10','02','0302070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','1 ','03','0303001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','2 ','03','0303002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','3 ','03','0303003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','4 ','03','0303004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','5 ','03','0303005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','6 ','03','0303006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','7 ','03','0303007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','8 ','03','0303008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','9 ','03','0303009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','10','03','0303010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','1 ','03','0303011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','2 ','03','0303012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','3 ','03','0303013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','4 ','03','0303014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','5 ','03','0303015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','6 ','03','0303016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','7 ','03','0303017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','8 ','03','0303018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','9 ','03','0303019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','10','03','0303020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','1 ','03','0303021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','2 ','03','0303022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','3 ','03','0303023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','4 ','03','0303024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','5 ','03','0303025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','6 ','03','0303026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','7 ','03','0303027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','8 ','03','0303028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','9 ','03','0303029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','10','03','0303030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','1 ','03','0303031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','2 ','03','0303032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','3 ','03','0303033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','4 ','03','0303034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','5 ','03','0303035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','6 ','03','0303036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','7 ','03','0303037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','8 ','03','0303038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','9 ','03','0303039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','10','03','0303040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','1 ','03','0303041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','2 ','03','0303042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','3 ','03','0303043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','4 ','03','0303044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','5 ','03','0303045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','6 ','03','0303046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','7 ','03','0303047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','8 ','03','0303048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','9 ','03','0303049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','10','03','0303050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','1 ','03','0303051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','2 ','03','0303052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','3 ','03','0303053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','4 ','03','0303054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','5 ','03','0303055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','6 ','03','0303056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','7 ','03','0303057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','8 ','03','0303058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','9 ','03','0303059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','10','03','0303060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','1 ','03','0303061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','2 ','03','0303062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','3 ','03','0303063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','4 ','03','0303064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','5 ','03','0303065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','6 ','03','0303066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','7 ','03','0303067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','8 ','03','0303068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','9 ','03','0303069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','10','03','0303070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','1 ','03','0303071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','2 ','03','0303072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','3 ','03','0303073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','4 ','03','0303074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','5 ','03','0303075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','6 ','03','0303076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','7 ','03','0303077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','8 ','03','0303078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','9 ','03','0303079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','10','03','0303080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','1 ','03','0303081');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','2 ','03','0303082');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','3 ','03','0303083');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','4 ','03','0303084');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','5 ','03','0303085');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','6 ','03','0303086');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','7 ','03','0303087');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','8 ','03','0303088');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','9 ','03','0303089');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','10','03','0303090');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','1 ','04','0304001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','2 ','04','0304002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','3 ','04','0304003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','4 ','04','0304004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','5 ','04','0304005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','6 ','04','0304006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','7 ','04','0304007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','8 ','04','0304008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','9 ','04','0304009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','A','10','04','0304010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','1 ','04','0304011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','2 ','04','0304012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','3 ','04','0304013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','4 ','04','0304014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','5 ','04','0304015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','6 ','04','0304016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','7 ','04','0304017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','8 ','04','0304018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','9 ','04','0304019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','B','10','04','0304020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','1 ','04','0304021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','2 ','04','0304022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','3 ','04','0304023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','4 ','04','0304024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','5 ','04','0304025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','6 ','04','0304026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','7 ','04','0304027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','8 ','04','0304028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','9 ','04','0304029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','C','10','04','0304030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','1 ','04','0304031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','2 ','04','0304032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','3 ','04','0304033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','4 ','04','0304034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','5 ','04','0304035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','6 ','04','0304036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','7 ','04','0304037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','8 ','04','0304038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','9 ','04','0304039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','D','10','04','0304040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','1 ','04','0304041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','2 ','04','0304042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','3 ','04','0304043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','4 ','04','0304044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','5 ','04','0304045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','6 ','04','0304046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','7 ','04','0304047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','8 ','04','0304048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','9 ','04','0304049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','E','10','04','0304050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','1 ','04','0304051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','2 ','04','0304052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','3 ','04','0304053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','4 ','04','0304054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','5 ','04','0304055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','6 ','04','0304056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','7 ','04','0304057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','8 ','04','0304058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','9 ','04','0304059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','F','10','04','0304060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','1 ','04','0304061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','2 ','04','0304062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','3 ','04','0304063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','4 ','04','0304064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','5 ','04','0304065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','6 ','04','0304066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','7 ','04','0304067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','8 ','04','0304068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','9 ','04','0304069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','G','10','04','0304070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','1 ','04','0304071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','2 ','04','0304072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','3 ','04','0304073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','4 ','04','0304074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','5 ','04','0304075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','6 ','04','0304076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','7 ','04','0304077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','8 ','04','0304078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','9 ','04','0304079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','H','10','04','0304080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','1 ','04','0304081');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','2 ','04','0304082');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','3 ','04','0304083');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','4 ','04','0304084');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','5 ','04','0304085');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','6 ','04','0304086');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','7 ','04','0304087');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','8 ','04','0304088');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','9 ','04','0304089');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','I','10','04','0304090');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','1 ','04','0304091');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','2 ','04','0304092');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','3 ','04','0304093');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','4 ','04','0304094');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','5 ','04','0304095');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','6 ','04','0304096');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','7 ','04','0304097');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','8 ','04','0304098');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','9 ','04','0304099');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0003','0','J','10','04','0304100');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','04','0104063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','04','0104064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','04','0104001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','04','0104002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','04','0104003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','04','0104004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','04','0104005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','04','0104006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','04','0104007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','04','0104008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','04','0104009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','04','0104010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','11','04','0104011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','12','04','0104012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','13','04','0104013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','14','04','0104014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','15','04','0104015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','04','0104016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','04','0104017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','04','0104018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','04','0104019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','04','0104020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','04','0104021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','04','0104022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','04','0104023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','04','0104024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','04','0104025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','11','04','0104026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','12','04','0104027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','13','04','0104028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','14','04','0104029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','15','04','0104030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','04','0104031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','04','0104032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','04','0104033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','04','0104034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','04','0104035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','04','0104036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','04','0104037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','04','0104038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','04','0104039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','04','0104040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','11','04','0104041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','12','04','0104042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','13','04','0104043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','14','04','0104044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','15','04','0104045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','04','0104046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','04','0104047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','04','0104048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','04','0104049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','04','0104050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','04','0104051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','04','0104052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','04','0104053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','04','0104054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','04','0104055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','11','04','0104056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','12','04','0104057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','13','04','0104058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','14','04','0104059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','15','04','0104060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','04','0104061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','04','0104062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','5 ','04','0104065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','6 ','04','0104066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','7 ','04','0104067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','8 ','04','0104068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','9 ','04','0104069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','10','04','0104070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','11','04','0104071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','12','04','0104072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','13','04','0104073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','14','04','0104074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','15','04','0104075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','1 ','04','0104076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','2 ','04','0104077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','3 ','04','0104078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','4 ','04','0104079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','5 ','04','0104080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','6 ','04','0104081');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','7 ','04','0104082');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','8 ','04','0104083');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','9 ','04','0104084');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','10','04','0104085');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','11','04','0104086');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','12','04','0104087');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','13','04','0104088');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','14','04','0104089');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','15','04','0104090');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','1 ','04','0104091');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','2 ','04','0104092');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','3 ','04','0104093');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','4 ','04','0104094');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','5 ','04','0104095');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','6 ','04','0104096');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','7 ','04','0104097');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','8 ','04','0104098');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','9 ','04','0104099');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','10','04','0104100');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','11','04','0104101');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','12','04','0104102');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','13','04','0104103');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','14','04','0104104');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','15','04','0104105');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','1 ','04','0104106');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','2 ','04','0104107');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','3 ','04','0104108');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','4 ','04','0104109');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','5 ','04','0104110');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','6 ','04','0104111');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','7 ','04','0104112');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','8 ','04','0104113');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','9 ','04','0104114');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','10','04','0104115');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','11','04','0104116');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','12','04','0104117');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','13','04','0104118');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','14','04','0104119');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','15','04','0104120');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','1 ','05','0105001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','2 ','05','0105002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','3 ','05','0105003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','4 ','05','0105004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','5 ','05','0105005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','6 ','05','0105006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','7 ','05','0105007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','8 ','05','0105008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','9 ','05','0105009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','10','05','0105010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','11','05','0105011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','12','05','0105012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','13','05','0105013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','14','05','0105014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','A','15','05','0105015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','1 ','05','0105016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','2 ','05','0105017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','3 ','05','0105018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','4 ','05','0105019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','5 ','05','0105020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','6 ','05','0105021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','7 ','05','0105022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','8 ','05','0105023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','9 ','05','0105024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','10','05','0105025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','11','05','0105026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','12','05','0105027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','13','05','0105028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','14','05','0105029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','B','15','05','0105030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','1 ','05','0105031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','2 ','05','0105032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','3 ','05','0105033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','4 ','05','0105034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','5 ','05','0105035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','6 ','05','0105036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','7 ','05','0105037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','8 ','05','0105038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','9 ','05','0105039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','10','05','0105040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','11','05','0105041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','12','05','0105042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','13','05','0105043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','14','05','0105044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','C','15','05','0105045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','1 ','05','0105046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','2 ','05','0105047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','3 ','05','0105048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','4 ','05','0105049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','5 ','05','0105050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','6 ','05','0105051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','7 ','05','0105052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','8 ','05','0105053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','9 ','05','0105054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','10','05','0105055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','11','05','0105056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','12','05','0105057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','13','05','0105058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','14','05','0105059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','D','15','05','0105060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','1 ','05','0105061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','2 ','05','0105062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','3 ','05','0105063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','4 ','05','0105064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','5 ','05','0105065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','6 ','05','0105066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','7 ','05','0105067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','8 ','05','0105068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','9 ','05','0105069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','10','05','0105070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','11','05','0105071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','12','05','0105072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','13','05','0105073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','14','05','0105074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','E','15','05','0105075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','1 ','05','0105076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','2 ','05','0105077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','3 ','05','0105078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','4 ','05','0105079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','5 ','05','0105080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','6 ','05','0105081');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','7 ','05','0105082');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','8 ','05','0105083');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','9 ','05','0105084');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','10','05','0105085');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','11','05','0105086');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','12','05','0105087');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','13','05','0105088');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','14','05','0105089');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','F','15','05','0105090');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','1 ','05','0105091');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','2 ','05','0105092');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','3 ','05','0105093');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','4 ','05','0105094');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','5 ','05','0105095');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','6 ','05','0105096');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','7 ','05','0105097');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','8 ','05','0105098');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','9 ','05','0105099');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','10','05','0105100');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','11','05','0105101');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','12','05','0105102');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','13','05','0105103');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','14','05','0105104');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','G','15','05','0105105');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','1 ','05','0105106');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','2 ','05','0105107');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','3 ','05','0105108');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','4 ','05','0105109');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','5 ','05','0105110');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','6 ','05','0105111');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','7 ','05','0105112');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','8 ','05','0105113');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','9 ','05','0105114');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','10','05','0105115');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','11','05','0105116');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','12','05','0105117');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','13','05','0105118');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','14','05','0105119');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0001','0','H','15','05','0105120');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','1 ','04','0204001');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','2 ','04','0204002');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','3 ','04','0204003');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','4 ','04','0204004');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','5 ','04','0204005');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','6 ','04','0204006');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','7 ','04','0204007');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','8 ','04','0204008');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','9 ','04','0204009');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','10','04','0204010');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','11','04','0204011');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','12','04','0204012');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','13','04','0204013');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','14','04','0204014');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','A','15','04','0204015');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','1 ','04','0204016');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','2 ','04','0204017');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','3 ','04','0204018');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','4 ','04','0204019');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','5 ','04','0204020');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','6 ','04','0204021');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','7 ','04','0204022');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','8 ','04','0204023');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','9 ','04','0204024');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','10','04','0204025');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','11','04','0204026');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','12','04','0204027');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','13','04','0204028');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','14','04','0204029');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','B','15','04','0204030');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','1 ','04','0204031');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','2 ','04','0204032');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','3 ','04','0204033');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','4 ','04','0204034');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','5 ','04','0204035');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','6 ','04','0204036');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','7 ','04','0204037');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','8 ','04','0204038');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','9 ','04','0204039');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','10','04','0204040');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','11','04','0204041');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','12','04','0204042');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','13','04','0204043');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','14','04','0204044');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','C','15','04','0204045');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','1 ','04','0204046');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','2 ','04','0204047');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','3 ','04','0204048');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','4 ','04','0204049');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','5 ','04','0204050');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','6 ','04','0204051');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','7 ','04','0204052');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','8 ','04','0204053');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','9 ','04','0204054');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','10','04','0204055');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','11','04','0204056');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','12','04','0204057');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','13','04','0204058');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','14','04','0204059');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','D','15','04','0204060');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','1 ','04','0204061');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','2 ','04','0204062');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','3 ','04','0204063');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','4 ','04','0204064');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','5 ','04','0204065');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','6 ','04','0204066');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','7 ','04','0204067');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','8 ','04','0204068');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','9 ','04','0204069');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','10','04','0204070');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','11','04','0204071');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','12','04','0204072');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','13','04','0204073');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','14','04','0204074');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','E','15','04','0204075');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','1 ','04','0204076');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','2 ','04','0204077');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','3 ','04','0204078');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','4 ','04','0204079');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','5 ','04','0204080');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','6 ','04','0204081');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','7 ','04','0204082');
Insert into CGS.SEAT (SITE_ID,SEAT_STATUS,ROW_NUM,COL_NUM,SCREEN_NUM,SEAT_ID) values ('0002','0','F','8 ','04','0204083');
REM INSERTING into CGS.SITE
SET DEFINE OFF;
Insert into CGS.SITE (SITE_ID,SITE_NAME,TOTAL_SCREEN,MANAGER_NAME,MANAGER_ID,SITE_ADDRESS,OPEN_DATE,SITE_PNUM,TOTAL_SEAT,SITE_IMG) values ('0001','강변점',8,'송명현','00010001','서울 강변점',to_date('01/05/02','RR/MM/DD'),'021234567',700,'0');
Insert into CGS.SITE (SITE_ID,SITE_NAME,TOTAL_SCREEN,MANAGER_NAME,MANAGER_ID,SITE_ADDRESS,OPEN_DATE,SITE_PNUM,TOTAL_SEAT,SITE_IMG) values ('0002','강남점',6,'송명현','00010001','서울 강남점',to_date('02/06/24','RR/MM/DD'),'021231414',470,'0');
Insert into CGS.SITE (SITE_ID,SITE_NAME,TOTAL_SCREEN,MANAGER_NAME,MANAGER_ID,SITE_ADDRESS,OPEN_DATE,SITE_PNUM,TOTAL_SEAT,SITE_IMG) values ('0003','동대문점',4,'송명현','00010001','서울 동대문점',to_date('04/07/22','RR/MM/DD'),'021232134',320,'0');
REM INSERTING into CGS.TRAILER
SET DEFINE OFF;
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000002','1','https://www.youtube.com/watch?v=awyG1-xvqFY');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000002','1','https://www.youtube.com/watch?v=ztD7m3ubhVs');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000003','1','https://www.youtube.com/watch?v=_xF4OwIMNfI');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000004','1','https://www.youtube.com/watch?v=cFEn4sfo61M');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000005','1','https://www.youtube.com/watch?v=eLJv0iV4Fik');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000006','1','https://www.youtube.com/watch?v=7m6lVbTgaxU');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000007','1','https://www.youtube.com/watch?v=4f3wL6cgFZ8');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000007','1','https://www.youtube.com/watch?v=XwNb4-gWAGg');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000007','1','https://www.youtube.com/watch?v=aK7u1_syfYE');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000007','1','https://www.youtube.com/watch?v=qSfnoV9ESng');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000008','1','https://www.youtube.com/watch?v=pNNvbWtfJSk');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000009','1','https://www.youtube.com/watch?v=ihC0SmogWOY');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000010','1','https://www.youtube.com/watch?v=WU1bGRa5mBg');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000011','1','https://www.youtube.com/watch?v=q8WwlJHcHls');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000012','1','https://www.youtube.com/watch?v=fHeSHWhocvg');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000013','1','https://www.youtube.com/watch?v=2fC99tRTVKM');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000014','1','https://www.youtube.com/watch?v=lLBbkFRk-mU');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000015','1','https://www.youtube.com/watch?v=eTtUOxt1D7k');
Insert into CGS.TRAILER (FILM_ID,FILE_TYPE,FILE_LINK) values ('000016','1','https://www.youtube.com/watch?v=R11jWtT6lD8');
REM INSERTING into CGS.WISHLIST
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index XPK상영정보
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK상영정보" ON "CGS"."SCREENING" ("SCREENING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK지점
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK지점" ON "CGS"."SITE" ("SITE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK회원
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK회원" ON "CGS"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK회원_선호지점
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK회원_선호지점" ON "CGS"."MEMBER_SITE" ("SITE_ID", "MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK예매
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK예매" ON "CGS"."RESERVE" ("RESERVE_ID", "SALE_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK상영관
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK상영관" ON "CGS"."SCREEN" ("SITE_ID", "SCREEN_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK위시리스트
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK위시리스트" ON "CGS"."WISHLIST" ("MEMBER_ID", "FILM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPKTRAILER
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPKTRAILER" ON "CGS"."TRAILER" ("FILM_ID", "FILE_TYPE", "FILE_LINK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK거래
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK거래" ON "CGS"."SALE" ("SALE_DATE", "SALE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK직원
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK직원" ON "CGS"."EMPLOYEE" ("EMP_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK영화
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK영화" ON "CGS"."FILM" ("FILM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK판매좌석
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK판매좌석" ON "CGS"."SALE_SEAT" ("SALE_DATE", "SALE_ID", "SCREENING_ID", "SEAT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK평점
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK평점" ON "CGS"."FILM_GRADE" ("MEMBER_ID", "SCREENING_ID", "FILM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK내가_본_영화
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK내가_본_영화" ON "CGS"."MEMBER_FILM" ("MEMBER_ID", "SCREENING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK좌석
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK좌석" ON "CGS"."SEAT" ("SEAT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index XPK회원거래
--------------------------------------------------------

  CREATE UNIQUE INDEX "CGS"."XPK회원거래" ON "CGS"."MEMBER_SALE" ("MEMBER_ID", "SALE_ID", "SALE_DATE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table SALE_SEAT
--------------------------------------------------------

  ALTER TABLE "CGS"."SALE_SEAT" ADD CONSTRAINT "XPK판매좌석" PRIMARY KEY ("SALE_DATE", "SALE_ID", "SCREENING_ID", "SEAT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."SALE_SEAT" MODIFY ("SEAT_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE_SEAT" MODIFY ("SCREENING_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE_SEAT" MODIFY ("SALE_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE_SEAT" MODIFY ("SALE_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "CGS"."WISHLIST" ADD CONSTRAINT "XPK위시리스트" PRIMARY KEY ("MEMBER_ID", "FILM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."WISHLIST" MODIFY ("FILM_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."WISHLIST" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILM
--------------------------------------------------------

  ALTER TABLE "CGS"."FILM" ADD CONSTRAINT "XPK영화" PRIMARY KEY ("FILM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."FILM" MODIFY ("RELEASE_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."FILM" MODIFY ("FILM_TYPE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."FILM" MODIFY ("RUNNING_TIME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."FILM" MODIFY ("FILM_NAME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."FILM" MODIFY ("FILM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER_FILM
--------------------------------------------------------

  ALTER TABLE "CGS"."MEMBER_FILM" ADD CONSTRAINT "XPK내가_본_영화" PRIMARY KEY ("MEMBER_ID", "SCREENING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."MEMBER_FILM" MODIFY ("SCREENING_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER_FILM" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SCREENING
--------------------------------------------------------

  ALTER TABLE "CGS"."SCREENING" ADD CONSTRAINT "XPK상영정보" PRIMARY KEY ("SCREENING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."SCREENING" MODIFY ("SCREEN_NUM" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("SITE_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("FILM_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("SCHEDULE_OPEN" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("END_TIME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("START_TIME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("SCREENING_CNT" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("SCREENING_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREENING" MODIFY ("SCREENING_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER_SITE
--------------------------------------------------------

  ALTER TABLE "CGS"."MEMBER_SITE" ADD CONSTRAINT "XPK회원_선호지점" PRIMARY KEY ("SITE_ID", "MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."MEMBER_SITE" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER_SITE" MODIFY ("SITE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "CGS"."SALE" ADD CONSTRAINT "XPK거래" PRIMARY KEY ("SALE_DATE", "SALE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."SALE" MODIFY ("FINAL_PRICE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE" MODIFY ("SALE_CNT" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE" MODIFY ("SCREENING_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE" MODIFY ("SALE_PRICE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE" MODIFY ("SALE_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE" MODIFY ("MEMBER_TYPE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE" MODIFY ("SALE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SALE" MODIFY ("SALE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FILM_GRADE
--------------------------------------------------------

  ALTER TABLE "CGS"."FILM_GRADE" ADD CONSTRAINT "XPK평점" PRIMARY KEY ("MEMBER_ID", "SCREENING_ID", "FILM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."FILM_GRADE" MODIFY ("FILM_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."FILM_GRADE" MODIFY ("SCREENING_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."FILM_GRADE" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SEAT
--------------------------------------------------------

  ALTER TABLE "CGS"."SEAT" ADD CONSTRAINT "XPK좌석" PRIMARY KEY ("SEAT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."SEAT" MODIFY ("SEAT_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SEAT" MODIFY ("SCREEN_NUM" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SEAT" MODIFY ("SITE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER_SALE
--------------------------------------------------------

  ALTER TABLE "CGS"."MEMBER_SALE" ADD CONSTRAINT "XPK회원거래" PRIMARY KEY ("MEMBER_ID", "SALE_ID", "SALE_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."MEMBER_SALE" MODIFY ("SALE_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER_SALE" MODIFY ("SALE_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER_SALE" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER_SALE" MODIFY ("USING_POINT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SITE
--------------------------------------------------------

  ALTER TABLE "CGS"."SITE" ADD CONSTRAINT "XPK지점" PRIMARY KEY ("SITE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."SITE" MODIFY ("SITE_PNUM" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SITE" MODIFY ("OPEN_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SITE" MODIFY ("SITE_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SITE" MODIFY ("MANAGER_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SITE" MODIFY ("MANAGER_NAME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SITE" MODIFY ("TOTAL_SCREEN" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SITE" MODIFY ("SITE_NAME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SITE" MODIFY ("SITE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "CGS"."EMPLOYEE" ADD CONSTRAINT "XPK직원" PRIMARY KEY ("EMP_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("CARDNUM" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("SITE_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("SALARY" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("POSITION" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("HIRE_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("EMP_NAME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("EMP_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("EMP_PNUM" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("EMP_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("EMP_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("EMP_GENDER" NOT NULL ENABLE);
  ALTER TABLE "CGS"."EMPLOYEE" MODIFY ("EMP_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TRAILER
--------------------------------------------------------

  ALTER TABLE "CGS"."TRAILER" ADD CONSTRAINT "XPKTRAILER" PRIMARY KEY ("FILM_ID", "FILE_TYPE", "FILE_LINK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."TRAILER" MODIFY ("FILE_LINK" NOT NULL ENABLE);
  ALTER TABLE "CGS"."TRAILER" MODIFY ("FILE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."TRAILER" MODIFY ("FILM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "CGS"."RESERVE" ADD CONSTRAINT "XPK예매" PRIMARY KEY ("RESERVE_ID", "SALE_DATE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."RESERVE" MODIFY ("SALE_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."RESERVE" MODIFY ("SALE_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."RESERVE" MODIFY ("TICKET_PRINT" NOT NULL ENABLE);
  ALTER TABLE "CGS"."RESERVE" MODIFY ("RESERVE_NAME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."RESERVE" MODIFY ("RESERVE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "CGS"."MEMBER" ADD CONSTRAINT "XPK회원" PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."MEMBER" MODIFY ("MEMBERSHIP" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("MEMBER_GRADE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("ACCUM_POINT" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("JOIN_DATE" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("PHONE_NUM" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("BIRTH" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("GENDER" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "CGS"."MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SCREEN
--------------------------------------------------------

  ALTER TABLE "CGS"."SCREEN" ADD CONSTRAINT "XPK상영관" PRIMARY KEY ("SITE_ID", "SCREEN_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "CGS"."SCREEN" MODIFY ("SEATING_CNT" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREEN" MODIFY ("SITE_ID" NOT NULL ENABLE);
  ALTER TABLE "CGS"."SCREEN" MODIFY ("SCREEN_NUM" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "CGS"."EMPLOYEE" ADD CONSTRAINT "R_31" FOREIGN KEY ("SITE_ID")
	  REFERENCES "CGS"."SITE" ("SITE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FILM_GRADE
--------------------------------------------------------

  ALTER TABLE "CGS"."FILM_GRADE" ADD CONSTRAINT "R_61" FOREIGN KEY ("MEMBER_ID", "SCREENING_ID")
	  REFERENCES "CGS"."MEMBER_FILM" ("MEMBER_ID", "SCREENING_ID") ENABLE;
  ALTER TABLE "CGS"."FILM_GRADE" ADD CONSTRAINT "R_74" FOREIGN KEY ("FILM_ID")
	  REFERENCES "CGS"."FILM" ("FILM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER_FILM
--------------------------------------------------------

  ALTER TABLE "CGS"."MEMBER_FILM" ADD CONSTRAINT "R_59" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "CGS"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "CGS"."MEMBER_FILM" ADD CONSTRAINT "R_60" FOREIGN KEY ("SCREENING_ID")
	  REFERENCES "CGS"."SCREENING" ("SCREENING_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER_SALE
--------------------------------------------------------

  ALTER TABLE "CGS"."MEMBER_SALE" ADD CONSTRAINT "R_14" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "CGS"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "CGS"."MEMBER_SALE" ADD CONSTRAINT "R_50" FOREIGN KEY ("SALE_DATE", "SALE_ID")
	  REFERENCES "CGS"."SALE" ("SALE_DATE", "SALE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER_SITE
--------------------------------------------------------

  ALTER TABLE "CGS"."MEMBER_SITE" ADD CONSTRAINT "R_68" FOREIGN KEY ("SITE_ID")
	  REFERENCES "CGS"."SITE" ("SITE_ID") ENABLE;
  ALTER TABLE "CGS"."MEMBER_SITE" ADD CONSTRAINT "R_69" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "CGS"."MEMBER" ("MEMBER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "CGS"."RESERVE" ADD CONSTRAINT "R_20" FOREIGN KEY ("SALE_DATE", "SALE_ID")
	  REFERENCES "CGS"."SALE" ("SALE_DATE", "SALE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALE
--------------------------------------------------------

  ALTER TABLE "CGS"."SALE" ADD CONSTRAINT "R_39" FOREIGN KEY ("SCREENING_ID")
	  REFERENCES "CGS"."SCREENING" ("SCREENING_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SALE_SEAT
--------------------------------------------------------

  ALTER TABLE "CGS"."SALE_SEAT" ADD CONSTRAINT "R_58" FOREIGN KEY ("SALE_DATE", "SALE_ID")
	  REFERENCES "CGS"."SALE" ("SALE_DATE", "SALE_ID") ENABLE;
  ALTER TABLE "CGS"."SALE_SEAT" ADD CONSTRAINT "R_66" FOREIGN KEY ("SEAT_ID")
	  REFERENCES "CGS"."SEAT" ("SEAT_ID") ENABLE;
  ALTER TABLE "CGS"."SALE_SEAT" ADD CONSTRAINT "R_72" FOREIGN KEY ("SCREENING_ID")
	  REFERENCES "CGS"."SCREENING" ("SCREENING_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCREEN
--------------------------------------------------------

  ALTER TABLE "CGS"."SCREEN" ADD CONSTRAINT "R_40" FOREIGN KEY ("SITE_ID")
	  REFERENCES "CGS"."SITE" ("SITE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCREENING
--------------------------------------------------------

  ALTER TABLE "CGS"."SCREENING" ADD CONSTRAINT "R_33" FOREIGN KEY ("FILM_ID")
	  REFERENCES "CGS"."FILM" ("FILM_ID") ENABLE;
  ALTER TABLE "CGS"."SCREENING" ADD CONSTRAINT "R_35" FOREIGN KEY ("SITE_ID", "SCREEN_NUM")
	  REFERENCES "CGS"."SCREEN" ("SITE_ID", "SCREEN_NUM") ENABLE;
  ALTER TABLE "CGS"."SCREENING" ADD CONSTRAINT "R_56" FOREIGN KEY ("SITE_ID")
	  REFERENCES "CGS"."SITE" ("SITE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SEAT
--------------------------------------------------------

  ALTER TABLE "CGS"."SEAT" ADD CONSTRAINT "R_65" FOREIGN KEY ("SITE_ID", "SCREEN_NUM")
	  REFERENCES "CGS"."SCREEN" ("SITE_ID", "SCREEN_NUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "CGS"."WISHLIST" ADD CONSTRAINT "R_75" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "CGS"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "CGS"."WISHLIST" ADD CONSTRAINT "R_76" FOREIGN KEY ("FILM_ID")
	  REFERENCES "CGS"."FILM" ("FILM_ID") ENABLE;
