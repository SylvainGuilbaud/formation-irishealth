cat << EOF | iris session iris
zn "%sys"
do ##class(Security.Users).UnExpireUserPasswords("*")
do ##class(%SYSTEM.CSP).SetConfig("CSPConfigName","$HOSTNAME")
zn "user"
do ##class(%EnsembleMgr).EnableNamespace("USER")
set ^trace(\$i(^trace))=\$zdt(\$h,3)
do ##class(%SYSTEM.OBJ).Load("/IRIS/install.cls","ck")
do ##class(iris.install).ipm()
do ##class(iris.install).jdbc()
halt
EOF