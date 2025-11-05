Class FOCH.structure.Observation Extends (%SerialObject, %Populate, %XML.Adaptor)
{

Property Code As %String(MAXLEN = "", POPSPEC = "City()") [ Required ];

Property Description As %String(MAXLEN = "") [ Required ];

Property Value As %String(MAXLEN = "") [ Required ];

Property Unit As %String(MAXLEN = "") [ Required ];

Storage Default
{
<Data name="ObservationState">
<Value name="1">
<Value>Code</Value>
</Value>
<Value name="2">
<Value>Description</Value>
</Value>
<Value name="3">
<Value>Value</Value>
</Value>
<Value name="4">
<Value>Unit</Value>
</Value>
</Data>
<State>ObservationState</State>
<StreamLocation>^FOCH.structure.ObservationS</StreamLocation>
<Type>%Library.CacheSerialState</Type>
}

}
