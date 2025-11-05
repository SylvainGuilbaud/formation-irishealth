Class init.install
{

/// Install IPM
ClassMethod ipm() As %Status
{
    Set sc = $$$OK
    set r=##class(%Net.HttpRequest).%New()
    set r.Server="pm.community.intersystems.com"
    set r.SSLConfiguration="ISC.FeatureTracker.SSL.Config"
    do r.Get("/packages/zpm/latest/installer")
    do $system.OBJ.LoadStream(r.HttpResponse.Data,"c")
    zpm "repo -r -n registry -reset-defaults"
    zpm "install webterminal"
    zpm "install swagger-ui" 
    zpm "install classexplorer" 
    set ^trace($i(^trace))=$lb($zdt($h,3),"ipm",$system.Status.GetErrorText(sc))

    Return sc
}

ClassMethod jdbc() As %Status
{
    Set sc = $$$OK
    set ns=$NAMESPACE
    zn "%sys"
    set ^%SYS("sql","ODBCCONNECTION","DATA")=5
    set ^%SYS("sql","ODBCCONNECTION","DATA",1)=$lb("","","mysql","formation","XKVFJaLViXIivSMPXT5kxEXtRKAfc1tGqSZOPNH3Hfw=",0,1,"jdbc:mysql://host.docker.internal:3306/formation","com.mysql.cj.jdbc.Driver","/jdbc/mysql-connector-java-8.0.26.jar","",0,"",0,0,1,0,0,0,"",0,0,"")
    set ^%SYS("sql","ODBCCONNECTION","DATA",2)=$lb("","","oracle","oracle","bKsQDMYXiMVqAY4YJL5h7Q==",0,1,"jdbc:oracle:thin:@host.docker.internal:1521:orcl","oracle.jdbc.driver.OracleDriver","/jdbc/ojdbc11.jar","",0,"",0,0,1,0,0,0,"",0,0,"")
    set ^%SYS("sql","ODBCCONNECTION","DATA",3)=$lb("","","postgres","postgres","6f8eAI5TOg0c3NkS9xnNDA==",0,1,"jdbc:postgresql://postgres:5432/postgres","org.postgresql.Driver","/jdbc/postgresql-42.7.5.jar","",0,"",0,0,1,0,0,0,"",0,0,"")
    set ^%SYS("sql","ODBCCONNECTION","DATA",4)=$lb("","","iris","_system","HnBuSSuEERERntcVPGsUMQ==",0,1,"jdbc:IRIS://127.0.0.1:1972/IRISAPP","com.intersystems.jdbc.IRISDriver","/jdbc/intersystems-jdbc-3.10.1.jar","",0,"",0,0,1,0,0,0,"",0,0,"")
    set ^%SYS("sql","ODBCCONNECTION","DATA",5)=$lb("","","mssql","sa","sfwsrQYWfOEjZXXC5CIsEPSk695//kJ58ulzTRakyqE=",0,1,"jdbc:sqlserver://mssql:1433;databaseName=master;encrypt=false","com.microsoft.sqlserver.jdbc.SQLServerDriver","/jdbc/mssql-jdbc-12.8.1.jre11.jar","",0,"",0,0,1,0,0,0,"",0,0,"")

    set ^%SYS("sql","ODBCCONNECTION","INDEX","NameIndex"," MYSQL",1)=""
    set ^%SYS("sql","ODBCCONNECTION","INDEX","NameIndex"," ORACLE",2)=""
    set ^%SYS("sql","ODBCCONNECTION","INDEX","NameIndex"," POSTGRES",3)=""
    set ^%SYS("sql","ODBCCONNECTION","INDEX","NameIndex"," IRIS",4)=""
    set ^%SYS("sql","ODBCCONNECTION","INDEX","NameIndex"," MSSQL",5)=""
    zn ns
    set ^trace($i(^trace))=$lb($zdt($h,3),"jdbc",$system.Status.GetErrorText(sc))
    Return sc
}

}
