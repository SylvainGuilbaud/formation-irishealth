Class FOCH.data.CleverNet.Patient Extends (%Persistent, %XML.Adaptor, %Populate)
{

Property FirstName As %String(MAXLEN = "") [ Required ];

Property LastName As %String(MAXLEN = "") [ Required ];

Property DOB As %Date(FORMAT = 4) [ Required ];

Property DOBTS As %TimeStamp [ Required ];

Property Gender As %String(VALUELIST = ",M,F") [ Required ];

Property IPP As %String(MAXLEN = "") [ Required ];

Property Observations As array Of FOCH.structure.Observation(POPSPEC = ":5");

Property Weights As array Of FOCH.structure.Observation;

Property Temperatures As array Of FOCH.structure.Observation;

Property phones As list Of %String(MAXLEN = 10);

Property emails As list Of %String(MAXLEN = 100);

Storage Default
{
<Data name="Observations">
<Attribute>Observations</Attribute>
<Structure>subnode</Structure>
<Subscript>"Observations"</Subscript>
</Data>
<Data name="PatientDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>FirstName</Value>
</Value>
<Value name="3">
<Value>LastName</Value>
</Value>
<Value name="4">
<Value>DOB</Value>
</Value>
<Value name="5">
<Value>DOBTS</Value>
</Value>
<Value name="6">
<Value>Gender</Value>
</Value>
<Value name="7">
<Value>IPP</Value>
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
<Subscript>"Temperatures"</Subscript>
</Data>
<Data name="Weights">
<Attribute>Weights</Attribute>
<Structure>subnode</Structure>
<Subscript>"Weights"</Subscript>
</Data>
<DataLocation>^FOCH.data.CleverNet.PatientD</DataLocation>
<DefaultData>PatientDefaultData</DefaultData>
<IdLocation>^FOCH.data.CleverNet.PatientD</IdLocation>
<IndexLocation>^FOCH.data.CleverNet.PatientI</IndexLocation>
<StreamLocation>^FOCH.data.CleverNet.PatientS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
