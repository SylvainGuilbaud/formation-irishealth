/// 
Class FOCH.rules.cureety Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.HL7.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.HL7.MsgRouter.RoutingEngine" production="FOCH.production.formation">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<send transform="FOCH.transfo.cureety" target="cureety"></send>
</ruleSet>
</ruleDefinition>
}

}
