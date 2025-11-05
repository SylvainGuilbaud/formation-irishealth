Class FOCH.patient Extends (%Persistent, %Populate)
{

Property PatientID As %Integer [ Required ];

Property Name As %String [ Required ];

Property Age As %Integer [ Required ];

Property Gender As %String [ Required ];

Storage Default
{
<Data name="patientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>PatientID</Value>
</Value>
<Value name="3">
<Value>Name</Value>
</Value>
<Value name="4">
<Value>Age</Value>
</Value>
<Value name="5">
<Value>Gender</Value>
</Value>
</Data>
<DataLocation>^FOCH.patientD</DataLocation>
<DefaultData>patientDefaultData</DefaultData>
<IdLocation>^FOCH.patientD</IdLocation>
<IndexLocation>^FOCH.patientI</IndexLocation>
<StreamLocation>^FOCH.patientS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
