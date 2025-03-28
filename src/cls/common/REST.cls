Class common.REST Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
<Route Url="/" Method="GET" Call="version" Cors="true"/>
<Route Url="/info" Method="GET" Call="GetInfo" Cors="true"/>
<Route Url="/data" Method="GET" Call="data" Cors="true"/>
</Routes>
}

/// Description
ClassMethod GetInfo() As %Status
{
    set sc = $$$OK

    write "hello world " _ $ZDATE($h,3),!

    return sc
}

ClassMethod version() As %Status
{
    set sc=$$$OK
    set %response.ContentType= ..#CONTENTTYPEJSON
    set json={}
    set json.classname = (..%ClassName(1))
    set json.version=($zv)
    set json.date=($zdt($h,3))
    set json.system=($System)
    set json.username=($Username)
    set json.roles=($Roles)
    set json.namespace=($Namespace)
    set nls=##class(%SYS.NLS.Locale).GetLanguage()
    set json.country=($listget(nls,1))
    set json.lang=($listget(nls,2))
    set json.JavaHomeDirectory=$SYSTEM.Util.JavaHomeDirectory()
    set json.JavaExe=$SYSTEM.Util.JavaExe()
    do json.%ToJSON()
    return sc
}

ClassMethod data() As %Status
{
    set sc=$$$OK
    set %response.ContentType= ..#CONTENTTYPEJSON
    set json= {
                "name": "John Doe",
                "age": 30,
                "city": "New York"
    }
    do json.%ToJSON()   
    return sc
}

}
