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

DROP TABLE "SYSDIANE413DEV"."TMPPATIENT" 
GO

CREATE TABLE "SYSDIANE413DEV"."TMPPATIENT" 
   (	"NOMPATRONYMIQUE" VARCHAR2(255), 
	"NOMMARITAL" VARCHAR2(255), 
	"PRENOM" VARCHAR2(255), 
	"SEXE" VARCHAR2(255), 
	"DATENAISS" DATE, 
	"LIEUNAISS" VARCHAR2(255), 
	"SITUATION" VARCHAR2(255), 
	"ADRESSE" VARCHAR2(255), 
	"TELEPHONE1" VARCHAR2(255), 
	"TELEPHONE2" VARCHAR2(255), 
	"NOMMEDECIN" VARCHAR2(255), 
	"PRENOMMEDECIN" VARCHAR2(255), 
	"FORMATADRESSEMED" VARCHAR2(255), 
	"ADRESSEMEDECIN" VARCHAR2(255), 
	"TELEPHONEMEDECIN" VARCHAR2(255), 
	"CODEPOSTAL" VARCHAR2(255), 
	"VILLE" VARCHAR2(255), 
	"CODEPOSTALMEDECIN" VARCHAR2(255), 
	"VILLEMEDECIN" VARCHAR2(255), 
	"IDPATIENTEXTERN" VARCHAR2(255), 
	"IDPATIENTINTERN" NUMBER, 
	"IDSEJOUREXTERN" VARCHAR2(255), 
	"MAJ" NUMBER, 
	"DATEMAJ" DATE, 
	"NUMSECU" VARCHAR2(255), 
	"IDTMPPATIENT" NUMBER, 
	"IPPREGIONAL" VARCHAR2(255), 
	"PROFESSION" VARCHAR2(255), 
	"EMAIL" VARCHAR2(255), 
	"ORIGINE_GEO_MERE" VARCHAR2(255), 
	"DATE_DECES" DATE, 
	"PAYS" VARCHAR2(255), 
	"AUTRESPRENOMS" VARCHAR2(255), 
	"PRENOMUSUEL" VARCHAR2(255), 
	"NAISSCODEINSEE" VARCHAR2(255), 
	"PERSONNESCONFIANCE" VARCHAR2(2048)
   )
GO

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

DROP TABLE "SYSDIANE413DEV"."TMPSEJOUR"
GO

CREATE TABLE "SYSDIANE413DEV"."TMPSEJOUR" 
   (	"IDSEJOUREXTERN" VARCHAR2(255), 
	"IDSEJOURINTERN" NUMBER, 
	"IDPATIENTEXTERN" VARCHAR2(255), 
	"DATEIN" DATE, 
	"DATEOUT" DATE, 
	"DATEMAJ" DATE, 
	"MAJ" NUMBER, 
	"TYPESEJOUR" NUMBER, 
	"CHAMBRE" VARCHAR2(255), 
	"LIT" VARCHAR2(255), 
	"IDTMPSEJOUR" NUMBER, 
	"UF_MEDICALE" VARCHAR2(255), 
	"UF_HEBERGEMENT" VARCHAR2(255)
   ) 
GO

DROP TABLE "SYSDIANE413DEV"."TMPDONNEEPATIENT" 
GO

CREATE TABLE "SYSDIANE413DEV"."TMPDONNEEPATIENT" 
   ("IDTMPDONNEEPATIENT" NUMBER, 
"IPP" VARCHAR2(255), 
"NOMPATRONYMIQUE" VARCHAR2(255), 
"NOMMARITAL" VARCHAR2(255), 
"PRENOM" VARCHAR2(255), 
"SEXE" VARCHAR2(255), 
"DATENAISS" DATE, 
"IDDONNEE" NUMBER, 
"IDACTIVEX" NUMBER, 
"DONNEE" VARCHAR2(2048), 
"IDEXTERN" VARCHAR2(255), 
"MAJ" NUMBER, 
"DATEMAJ" DATE DEFAULT TO_DATE('30/12/1899 00:00:00', 'dd/mm/yyyy HH24:MI:SS') NOT NULL, 
"IDDONNEEEXTERNE" VARCHAR2(255)
)
GO