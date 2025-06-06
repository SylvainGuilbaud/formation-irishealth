Class common.functions Extends Ens.Rule.FunctionSet
{

ClassMethod getTimeStamp(StartDateTime As %String) As %String
{
	if $LENGTH(StartDateTime)=8 {
		set StartDateTime = $extract(StartDateTime,1,8)
	} elseif $LENGTH(StartDateTime)=12 {
		set StartDateTime = $extract(StartDateTime,1,8) _ " " _ $extract(StartDateTime,9,10) _ ":" _ $extract(StartDateTime,11,*)
	} elseif $LENGTH(StartDateTime)=14 {
		set StartDateTime = $extract(StartDateTime,1,8) _ " " _ $extract(StartDateTime,9,10) _ ":" _ $extract(StartDateTime,11,12) _ ":" _ $extract(StartDateTime,13,*)
	}
	set StartDateTime = $zdt($zdth(StartDateTime,8),3)
	Return StartDateTime
}

ClassMethod dateAdd(duration As %Integer = 30, unitDuration As %Integer = 60, StartDateTime As %String) As %String
{
	if StartDateTime'["-" {
		set compact = 1
		set timestampStartDateTime = ..getTimeStamp(StartDateTime)
	} else {
		set compact = 0
		set timestampStartDateTime = StartDateTime
	}
	&sql(SELECT DATEADD('ss', :duration * :unitDuration , :timestampStartDateTime) into :timestampEndDateTime)
	if compact {
		set EndDateTime = $translate(timestampEndDateTime,"- :")
	} else {
		set EndDateTime = timestampEndDateTime
	}
	Return EndDateTime
}

ClassMethod WeekEnd() As %Boolean
{
	
	set WeekEnd=0,Day=$zd($H,10)
	set:Day=0||Day=6 WeekEnd=1
	return WeekEnd
}

ClassMethod JourFérié(jour As %Integer = 0) As %Boolean
{
	set férié=0
	set:'jour jour=$h
	set jjmm=$extract($zd(jour,1),1,5)
	set jjmmaaaa=$zd(jour,1)
	set:(##class(Ens.Util.FunctionSet).Lookup("jours fériés",jjmm))||(##class(Ens.Util.FunctionSet).Lookup("jours fériés",jjmmaaaa)) férié=1
	return férié
}

ClassMethod JourSemaine() As %Integer [ CodeMode = expression, Final, Language = objectscript ]
{
$zd($H,10)
}

/// Returns the time as a number of seconds since midnight.
ClassMethod Heure() As %Integer [ CodeMode = expression, Final, Language = objectscript ]
{
$p($p($zdt($h,10)," ",2),":")
}

ClassMethod getHL7MessageType(hprimContexte As %String) As %String [ Language = objectscript ]
{
	set type="ADT"
	quit type
}

ClassMethod getHL7MessageEvent(hprimContexte As %String) As %String [ Language = objectscript ]
{
	set event="A01"
	if hprimContexte'="ADM" {
		set event="A08"
	}
	quit event
}

ClassMethod getCIVIL(sexe As %String = "1", sitfam As %String = "M") As %String [ Language = basic ]
{
	civil=""
	if sexe=1 then
		set civil="MR"
	end if
	if sexe=2 then
	Select Case sitfam
           Case "S","A" civil = "MLE"
           Case "M","W","D" civil = "MME"
           Case Else civil="MME"
    End Select
	end if
	return civil
}

ClassMethod isNumeric(num As %String) As %Boolean [ Language = objectscript ]
{
	if ##class(%Numeric).IsValid(num) {
		quit 1
	}
	else {	
		quit 0
	}
}

}
