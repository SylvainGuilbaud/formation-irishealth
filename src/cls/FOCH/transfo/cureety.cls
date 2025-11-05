Class FOCH.transfo.cureety Extends Ens.DataTransformDTL [ DependsOn = (EnsLib.EDI.XML.Document, cureety.msg.HL7) ]
{

Parameter GENERATEEMPTYSEGMENTS = 0;

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='EnsLib.EDI.XML.Document' targetClass='cureety.msg.HL7' sourceDocType='cureety:root' create='new' language='objectscript' >
<foreach property='source.{file()}' key='k1' >
<assign value='$SYSTEM.Encryption.Base64Decode(source.{file(k1)})' property='target.raw.(k1)' action='set' />
<assign value='target.raw.(k1)' property='a' action='set' />
<trace value='a' />
<assign value='##class(EnsLib.HL7.Message).ImportFromString(raw)' property='target.HL7.(k1)' action='set' disabled='1' />
</foreach>
</transform>
}

}
