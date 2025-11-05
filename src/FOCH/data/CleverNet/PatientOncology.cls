Class FOCH.data.CleverNet.PatientOncology Extends FOCH.data.CleverNet.Patient
{

Property CancerType As %String(MAXLEN = "") [ Required ];

Property Stage As %String(MAXLEN = "") [ Required ];

Property Treatments As list Of %String(MAXLEN = 255);

Storage Default
{
<Data name="PatientOncologyDefaultData">
<Subscript>"PatientOncology"</Subscript>
<Value name="1">
<Value>CancerType</Value>
</Value>
<Value name="2">
<Value>Stage</Value>
</Value>
<Value name="3">
<Value>Treatments</Value>
</Value>
</Data>
<DefaultData>PatientOncologyDefaultData</DefaultData>
<Type>%Library.CacheStorage</Type>
}

}
