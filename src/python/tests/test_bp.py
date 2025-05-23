from bp import FhirConverterProcess
from msg import FhirConverterMessage

class TestFhirConverterProcess:
    def test_init(self):
        fhir_converter_process = FhirConverterProcess()
        assert True

#     def test_1(self):
#         raw_message = r"""MSH|^~\&|HM|HM|HMFORM|HMFORM|20240805230107||ADT^Z99^ADT_A01|10255555835|P|2.5^FRA^2.10||||AL|FRA|8859/1|FR||
# EVN||20240805230012|||borahn^BORAH Najat^^^^^^^HM^D^^^EI|202405101151000|
# PID|1||1299934^^^HM^PI~266125555507230^^^ASIP-SANTE-INS-NIR&1.2.250.1.213.1.4.8&ISO^INS~1156627555551503884665^^^ASIP-SANTE&1.2.250.1.213.1.4.2&ISO^INS-C^^20191009~1156627763401505555565^^^ASIP-SANTE&1.2.250.1.213.1.4.2&ISO^INS-C^^20191017||ROCDY^NADINE^NADINE JEANNE^^ME^^L~BACYS^Nadine^^^ME^^D||19661210000000|F|||Rue des tests^^MARSEILLE^^13009^100^H~Rue des tests^^MARSEILLE^^13009^100^BDL^^13055||^PRN^PH^^^^^^06.06.06.06.06^^^0606060606~^ORN^PH^^^^^^06.06.06.06.06^^^0606060606~^NET^Internet^nom.prenom@domaine.com|||||725555948^^^HM^AN|||||13009 MARSEILLE||1|100^France||||N||VALI|||||||
# ROL|8546085554^HM|UP|ODRP|10845^BEN YAHA^Sadie^^^^^^HM^D^^^EI~10100055520^BEN YAHA^Sadie^^^^^^ASIP-SANTE-PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS|||||||CABINET DU DR SADIE BEN YAHA^43 allee des platanes\S\Res. l'ormi - bat a^MARSEILLE^^13009^100^O|^PRN^PH^^^^^^04.96.12.31.00^^^0496123100~^NET^Internet^sadie.benyaha@medecin.mssante.fr
# NK1|1|SARDOU^Patrice^^^^^L|FRERE^Fr�re^L|Rue des tests^^^^^100^H|^PRN^PH^^^^^^06.06.06.06.06^^^0606060606||||||||||||||||||||||||||||9070555541^^^HM|
# NK1|2|DOILLON^Anais^^^ME^^L|FILLE^Fille^L|Rue des tests^^MARSEILLE^^13009^100^H|^PRN^PH^^^^^^06.06.06.06.06^^^0606060606||K^Personne de Confiance^L|19900101|||||||||||||||||||||||||9070555550^^^HM|
# PV1|1|I|0022^456^456^130001647&130001647&N||||3881^ROUSSEAU^Fr�d�rique^^^^^^HM^D^^^EI~130001647^ROUSSEAU^Fr�d�rique^^^^^^ASIP-SANTE-PS&1.2.250.1.71.4.2.1&ISO^D^^^ADELI~10055541154^ROUSSEAU^Fr�d�rique^^^^^^ASIP-SANTE-PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS|||216||||||P|||725555948^^^HM^VN||03|N||||||||||||||||||||||20240515151000|||||||V|
# PV2|||||||S||20240825230007|||Evaluation et d�cision th�rapeutique|||||||||||||||||||||||||||||||||||||
# ZBE|6588117945^HM|20240611151000||UPDATE|Y|A01|Non programme^^^^^130001647&130001647&N^UF^^^NONP|Oncologie m�dicale 3^^^^^130001647&130001647&N^UF^^^0022|
# ZFA|ACTIF|20200722||||||
# ZFV||||||||1202134^^^HM^MR|
# ZFM|8||||
# ZFD||||||20220111161758|JI
# ROL|8546555913^HM|UP|AT|3881^ROUSSEAU^Fr�d�rique^^^^^^HM^D^^^EI~130055547^ROUSAU^Fr�d�rique^^^^^^ASIP-SANTE-PS&1.2.250.1.71.4.2.1&ISO^D^^^ADELI~10005551154^ROUSSEAU^Fr�d�rique^^^^^^ASIP-SANTE-PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS|20240555151000||||||Institut Paoli Calmettes^232, Boulevard Sainte Marguerite^MARSEILLE CEDEX 09^^13273^100^O|^PRN^PH^^^^^^4229^^^4229~^ORN^PH^^^^^^06.50.24.56.82^^^0650245682~^NET^Internet^ROUSAUF@ipc.unicancer.fr
# ROL|8546555634^HM|UP|FHCP|E4881^METELLUS^Philippe^^^^^^HM^D^^^EI~131155566^METLUS^Philippe^^^^^^ASIP-SANTE-PS&1.2.250.1.71.4.2.1&ISO^D^^^ADELI~10005559288^METELLUS^Philippe^^^^^^ASIP-SANTE-PS&1.2.250.1.71.4.2.1&ISO^D^^^RPPS|20245551151000||||||SELARL DU DOCTEUR METELLUS^317 bd du redon\S\Hopital prive clairval^MARSEILLE 09^^13009^100^O|^PRN^PH^^^^^^04.91.17.14.76^^^0491171476~^ORN^PH^^^^^^04.91.17.17.45^^^0491171745~^NET^Internet^p.metlus@ramsaygds.mssante.fr
# NTE|||entr�e amb le 10/06/2024 ss|AN
#         """
#         fcm = FhirConverterMessage(input_filename='test.hl7',
#                         input_data=raw_message,
#                         input_data_type='Hl7v2',
#                         root_template='ADT_CUSTOM'
#                     )
#         fhir_converter_process = FhirConverterProcess()
#         fhir_converter_process.on_fhir_converter_message(fcm)
#         assert True