Class FOCH.msg.CleverNet.Patient Extends Ens.Request
{

Property FirstName As %String(MAXLEN = "") [ Required ];

Property LastName As %String(MAXLEN = "") [ Required ];

Property DOB As %Date(FORMAT = 4) [ Required ];

Property DOBTS As %TimeStamp [ Required ];

Property Gender As %String(VALUELIST = "M,F") [ Required ];

Property IPP As %String(MAXLEN = "") [ Required ];

Property Observations As list Of FOCH.structure.Observation;

Property Weights As array Of FOCH.structure.Observation;

Property Temperatures As array Of FOCH.structure.Observation;

Property phones As list Of %String(MAXLEN = 10);

Property emails As list Of %String(MAXLEN = 100);

Storage Default
{
<Data name="PatientDefaultData">
<Subscript>"Patient"</Subscript>
<Value name="1">
<Value>FirstName</Value>
</Value>
<Value name="2">
<Value>LastName</Value>
</Value>
<Value name="3">
<Value>DOB</Value>
</Value>
<Value name="4">
<Value>DOBTS</Value>
</Value>
<Value name="5">
<Value>Gender</Value>
</Value>
<Value name="6">
<Value>IPP</Value>
</Value>
<Value name="7">
<Value>Observations</Value>
</Value>
<Value name="8">
<Value>phones</Value>
</Value>
<Value name="9">
<Value>emails</Value>
</Value>
</Data>
<Data name="Temperatures">
<Attribute>Temperatures</Attribute>
<Structure>subnode</Structure>
<Subscript>"FOCH.msg.CleverNet.Patient.Temperatures"</Subscript>
</Data>
<Data name="Weights">
<Attribute>Weights</Attribute>
<Structure>subnode</Structure>
<Subscript>"FOCH.msg.CleverNet.Patient.Weights"</Subscript>
</Data>
<DefaultData>PatientDefaultData</DefaultData>
<Type>%Library.CacheStorage</Type>
}

}
