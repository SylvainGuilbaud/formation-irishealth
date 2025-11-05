/// 
Class FOCH.process.cureety Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='cureety.msg.HL7' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='HL7Msg' type='EnsLib.HL7.Message' instantiate='0' />
<property name='k1' type='%Integer' instantiate='0' />
</context>
<sequence xend='200' yend='350' >
<foreach name='messages HL7' property='request.raw' key='context.k1' xpos='200' ypos='250' xend='200' yend='550' >
<code name='transfo HL7' xpos='200' ypos='250' >
<![CDATA[ set context.HL7Msg = ##class(EnsLib.HL7.Message).ImportFromString(request.raw.GetAt(context.k1),.sc)]]>
</code>
<trace name='HL7.Msg' value='context.HL7Msg.RawContent' xpos='200' ypos='350' />
<call name='HL7 Router' target='HL7v2 router' async='1' xpos='200' ypos='450' >
<request type='EnsLib.HL7.Message' >
<assign property="callrequest" value="context.HL7Msg" action="set" languageOverride="" />
</request>
<response type='Ens.Response' />
</call>
</foreach>
</sequence>
</process>
}

Storage Default
{
<Type>%Library.CacheStorage</Type>
}

}
