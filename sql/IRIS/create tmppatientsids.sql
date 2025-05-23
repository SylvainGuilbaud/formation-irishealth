DROP TABLE "SYSDIANE413DEV"."TMPPATIENT_IDS" 
GO
-- SYSDIANE413DEV.TMPPATIENT_IDS definition

CREATE TABLE "SYSDIANE413DEV"."TMPPATIENT_IDS" 
   (	"ID" NUMBER, 
	"PATIENTID" NUMBER NOT NULL, 
	"IDSOURCE" VARCHAR2(255), 
	"IDEXT" VARCHAR2(255) NOT NULL, 
	"TYPEID" NUMBER NOT NULL, 
	"EXTRADATAS" VARCHAR2(2048), 
	"VISIBLE" NUMBER NOT NULL, 
	"DATEMAJ" DATE NOT NULL, 
	 CONSTRAINT "PK_TMPPATIENT_IDS" PRIMARY KEY ("ID")
   )
GO

-- CREATE INDEX "SYSDIANE413DEV"."IDX_FK_89" ON "SYSDIANE413DEV"."TMPPATIENT_IDS" ("PATIENTID") 
--   PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
--   STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--   PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED
--   BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--   TABLESPACE "DIANE_T" ;
--   CREATE UNIQUE INDEX "SYSDIANE413DEV"."PK_TMPPATIENT_IDS" ON "SYSDIANE413DEV"."TMPPATIENT_IDS" ("ID") 
--   PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
--   STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--   PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 MAXSIZE UNLIMITED
--   BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--   TABLESPACE "DIANE_T" ;
--   CREATE INDEX "SYSDIANE413DEV"."IDX_94" ON "SYSDIANE413DEV"."TMPPATIENT_IDS" ("PATIENTID", "TYPEID", "VISIBLE") 
--   PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
--   STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
--   PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
--   BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
--   TABLESPACE "DIANE_T" ;


-- -- SYSDIANE413DEV.TMPPATIENT_IDS foreign keys

-- ALTER TABLE "SYSDIANE413DEV"."TMPPATIENT_IDS" ADD CONSTRAINT "FK_REF_89" FOREIGN KEY ("PATIENTID")
-- 	  REFERENCES "SYSDIANE413DEV"."TMPPATIENT" ("IDTMPPATIENT");