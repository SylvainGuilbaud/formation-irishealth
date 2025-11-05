Class FOCH.REST Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>

<Route Url="/version" Method="GET" Call="GetVersion" Cors="true"/>

</Routes>
}

/// Description
ClassMethod GetVersion() As %Status
{
    Set sc = $$$OK
    write "{""version"": ""1.0.0"", ""service"": ""FOCH REST API""}"
    Return sc
}

}
