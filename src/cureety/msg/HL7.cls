Class cureety.msg.HL7 Extends Ens.Request
{

Property raw As list Of %String(MAXLEN = "");

// Property HL7 As list Of EnsLib.HL7.Message(XMLPROJECTION = "none");

Storage Default
{
<Data name="HL7DefaultData">
<Subscript>"HL7"</Subscript>
<Value name="1">
<Value>raw</Value>
</Value>
</Data>
<DefaultData>HL7DefaultData</DefaultData>
<Type>%Library.CacheStorage</Type>
}

}
