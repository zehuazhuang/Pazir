import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/softenembod.dart';

class DitatIonboEula extends StatefulWidget {
  const DitatIonboEula({super.key});

  @override
  State<DitatIonboEula> createState() => _DitatIonboEula();
}

class _DitatIonboEula extends State<DitatIonboEula> {
  bool _lnesnGAS = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 580,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/odvneNXZCQWF.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(),
                  child: Container(height: 41),
                ),
                Center(
                  child: Text(
                    "Pazir End User License \nAgreement (EULA)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'NotoSans',
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(5, 3, 19, 1),
                    ),
                  ),
                ),

                Expanded(
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                            top: 16,
                          ),
                          child: Flex(
                            direction: Axis.vertical,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'This End User License Agreement (EULA) governs your use of the Pazir Application. By downloading, accessing or using the App, you agree to be bound by this Agreement. If you do not agree to these terms, you may not use this application.\n\n1. QualificationsBy \n\nusing the Pazir App (the "App"), you confirm that you are at least 18 years of age. You agree to provide true and accurate age information during registration or use. If you are under the age of 18, you need the express consent of a parent or legal guardian to use the App.\n\n2. User generated contentThis app allows users to post and share content, including but not limited to videos, pictures, and text.By Posting content, you agree to the following terms:Prohibited Content: You may not post any content that is offensive, harmful or illegal, including but not limited to:- Hate speech, abuse, harassment or personal attacks;- Pornographic, explicit or vulgar content;- Content that promotes violence, discrimination, illegal activities or violations of the rights of others;- Any content that does not fit the community atmosphere or violates public order and good customs.Content Licensing: You retain ownership of the content posted, but by Posting, you grant Pazir a non-exclusive license to use, distribute, and display the content within the App.\n\n3. Reporting and response mechanism3.1 Your ResponsibilitiesIf you become aware of User content that violates this EULA, you agree to report it immediately through Pazir\'s reporting mechanism.3.2 Our ResponseWe will review the reported content within 24 hours and take appropriate measures, including but not limited to removing the offending content, warning or banning the offending user. Users who repeatedly violate the rules may face permanent suspension.\n\n4. Privacy PolicyBy using the App, you acknowledge that you have read and understood our [Privacy Policy], which details how we collect, use and protect your personal information.\n\n5. TerminationWe may terminate or suspend your access to Pazir at any time for any reason, with or without prior notice. You can also stop using Pazir and delete your account at any time.\n\n6. Modification of the agreementWe may amend this Agreement at any time. Changes will be announced in the App, and your continued use of the App means your acceptance of the revised terms.\n\n7. DisclaimerPazir is provided "AS IS" without warranties of any kind, express or implied. We do not guarantee that the application will always be interruption-free, error-free or completely secure;\n\n8. Limitation of liabilityTo the fullest extent permitted by law, we are not liable for any damage caused by your use of Pazir.',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(5, 3, 19, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      value: _lnesnGAS,
                      onChanged: (value) {
                        setState(() {
                          _lnesnGAS = value!;
                        });
                      },
                    ),
                    Text(
                      "I have read and agree to the EULA",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(5, 3, 19, 1),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 18,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Get.back();
                      },
                      child: PhysicalModel(
                        color: Colors.transparent,
                        elevation: 0,
                        borderRadius: BorderRadius.circular(45),
                        child: Container(
                          width: 130,
                          height: 49,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(235, 240, 245, 1),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Center(
                            child: Text(
                              "Disagree",
                              style: TextStyle(
                                fontFamily: 'NotoSans',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(136, 147, 162, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () async {
                        if(!_lnesnGAS){
                          SmartDialog.showToast("The agreement has not yet been agreed upon.");
                          return;
                        }

                        FFAppState.instance.lobreatwme = true;
                        Get.back();
                      },
                      child: PhysicalModel(
                        color: Colors.transparent,
                        elevation: 0,
                        borderRadius: BorderRadius.circular(45),
                        child: Container(
                          width: 130,
                          height: 49,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF1E7EE6)),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color.fromRGBO(30, 126, 230, 1),
                                    Color.fromRGBO(184, 218, 255, 1),
                                  ],
                                  begin: Alignment(-1, 0),
                                  end: Alignment(1, 0),
                                ),
                                borderRadius: BorderRadius.circular(45),
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                "Agree",
                                style: TextStyle(
                                  fontFamily: 'NotoSans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                DecoratedBox(
                  decoration: BoxDecoration(),
                  child: Container(height: 31),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
