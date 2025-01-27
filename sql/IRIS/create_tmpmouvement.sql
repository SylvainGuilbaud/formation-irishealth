DROP TABLE "SYSDIANE413DEV"."TMPMOUVEMENT"
GO
CREATE TABLE "SYSDIANE413DEV"."TMPMOUVEMENT" 
   (	"ID" NUMBER, 
	"SEJOURID" NUMBER NOT NULL, 
	"IDMVTEXTERN" VARCHAR2(255) NOT NULL, 
	"TYPIN" NUMBER, 
	"TYPOUT" NUMBER, 
	"DATEIN" DATE NOT NULL , 
	"DATEOUT" DATE, 
	"UFMED" VARCHAR2(255), 
	"UFHEB" VARCHAR2(255), 
	"ROOM" VARCHAR2(255), 
	"BED" VARCHAR2(255), 
	"DELETED" NUMBER, 
	"DATEMAJ" DATE, 
	"VISIBLE" NUMBER NOT NULL, 
	 CONSTRAINT "PK_TMPMOUVEMENT" PRIMARY KEY ("ID")
   )
GO