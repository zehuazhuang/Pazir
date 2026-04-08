import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/dvaitairtanui.dart';
import 'package:pazir/backend/prakritiuser.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:pazir/page/samadhihome/pranaajnashou.dart';

class EnergeTicaligNmzu extends StatefulWidget {
  const EnergeTicaligNmzu({
    super.key,
    required this.deeptchEM,
    required this.coretranNA,
    required this.breathinPA,
  });

  final String deeptchEM;
  final String coretranNA;
  final String breathinPA;

  @override
  State<EnergeTicaligNmzu> createState() => _EnergeTicaligNmzu();
}

class _EnergeTicaligNmzu extends State<EnergeTicaligNmzu> {
  String? holisticmotTU = "assets/images/Pazir.png";
  TextEditingController innerfocusEM = TextEditingController();

  String? restorativDA;
  String? anicmotionLA = "United States";
  bool flowstateGE = true;
  @override
  void initState() {
    super.initState();
    innerfocusEM.text = widget.deeptchEM;
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<String> showLocationPicker(BuildContext context) async {
    List<String> locations = [
      "United States",
      "Canada",
      "United Kingdom",
      "Australia",
      "Germany",
      "France",
      "Japan",
    ];

    String? pickedLocation = await showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select Location"),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: locations.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(locations[index]),
                  onTap: () {
                    Navigator.pop(context, locations[index]);
                  },
                );
              },
            ),
          ),
        );
      },
    );

    // 返回选择结果，如果没选返回默认美国
    return pickedLocation ?? "United States";
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(140, 198, 255, 1),
              Color.fromRGBO(230, 236, 242, 1),
            ],
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
          ),
        ),
        child: Stack(
          children: [
            Scaffold(
              backgroundColor: Color.fromRGBO(0, 0, 0, 0),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 20),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset("assets/images/cjNVUISAB.png"),
                        ),
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: BoxDecoration(),
                    child: Container(height: 20),
                  ),

                  DecoratedBox(
                    decoration: BoxDecoration(),
                    child: Container(height: 21),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Flex(
                          direction: Axis.vertical,
                          children: [
                            Image(
                              image: AssetImage("assets/images/nasuNUYWQS.png"),
                              width: double.infinity,
                              height: 105,
                              fit: BoxFit.fill,
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 6,
                            ),
                            child: Flex(
                              direction: Axis.vertical,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  behavior: HitTestBehavior.translucent,
                                  onTap: () async {
                                    holisticmotTU =
                                        await whisperCalmImageRipple();
                                    setState(() {});
                                  },
                                  child: Center(
                                    child: Stack(
                                      alignment: Alignment(1, 1),
                                      children: [
                                        PhysicalModel(
                                          color: Colors.transparent,
                                          elevation: 0,
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                          child: Container(
                                            width: 88,
                                            height: 88,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: const Color(0xFF1E7EE6),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                4.0,
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      holisticmotTU!,
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                ),
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 32,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                "assets/images/xkzvXZLKNC.png",
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              45,
                                            ),
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 20),
                                ),
                                Text(
                                  "Email:",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                Container(height: 16),
                                Container(
                                  width: double.infinity,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(235, 240, 245, 1),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  alignment: Alignment.center,
                                  child: TextField(
                                    controller: innerfocusEM,
                                    decoration: InputDecoration(
                                      hintText: "Enter email address",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(5, 3, 19, .4),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(5, 3, 19, 1),
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 32),
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Birthday",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(5, 3, 19, 1),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                GestureDetector(
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2100),
                                    );

                                    if (pickedDate != null) {
                                      setState(() {
                                        restorativDA =
                                            "${pickedDate.year}-${pickedDate.month}-${pickedDate.day}";
                                      });
                                    }
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(235, 240, 245, 1),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          restorativDA ?? "Select Date",
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: restorativDA == null
                                                ? Color.fromRGBO(5, 3, 19, .4)
                                                : Color.fromRGBO(5, 3, 19, 1),
                                          ),
                                        ),
                                        Icon(Icons.arrow_drop_down, size: 40),
                                      ],
                                    ),
                                  ),
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DecoratedBox(
                                      decoration: BoxDecoration(),
                                      child: Container(height: 32),
                                    ),
                                    Text(
                                      "Location",
                                      style: TextStyle(
                                        fontFamily: 'Raleway',
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(5, 3, 19, 1),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    GestureDetector(
                                      onTap: () async {
                                        String location =
                                            await showLocationPicker(context);
                                        setState(() {
                                          anicmotionLA = location;
                                        });
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 55,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 16,
                                        ),
                                        alignment: Alignment.centerLeft,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            235,
                                            240,
                                            245,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              anicmotionLA ?? "Select Location",
                                              style: TextStyle(
                                                fontFamily: 'Raleway',
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: anicmotionLA == null
                                                    ? Color.fromRGBO(
                                                        5,
                                                        3,
                                                        19,
                                                        .4,
                                                      )
                                                    : Color.fromRGBO(
                                                        5,
                                                        3,
                                                        19,
                                                        1,
                                                      ),
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down,
                                              size: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 20),
                                ),
                                Text(
                                  "Gender",
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(5, 3, 19, 1),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 14),
                                ),
                                Row(
                                  spacing: 8,
                                  children: [
                                    GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        setState(() {
                                          flowstateGE = true;
                                        });
                                      },
                                      child: Container(
                                        width: 78,
                                        height: 64,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            235,
                                            240,
                                            245,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                        alignment: Alignment(0, 0),
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Stack(
                                            alignment: Alignment(1, 1),
                                            children: [
                                              Center(
                                                child: Image(
                                                  image: AssetImage(
                                                    "assets/images/xzcasNCVUERF.png",
                                                  ),
                                                  width: 24,
                                                  height: 24,
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  2.0,
                                                ),
                                                child: PhysicalModel(
                                                  color: Colors.transparent,
                                                  elevation: 0,
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                  child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: flowstateGE
                                                            ? Color(0xFF1E7EE6)
                                                            : Colors
                                                                  .transparent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            45,
                                                          ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            2.0,
                                                          ),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                45,
                                                              ),
                                                          gradient: LinearGradient(
                                                            colors: flowstateGE
                                                                ? [
                                                                    Color.fromRGBO(
                                                                      30,
                                                                      126,
                                                                      230,
                                                                      1,
                                                                    ),
                                                                    Color.fromRGBO(
                                                                      184,
                                                                      218,
                                                                      255,
                                                                      1,
                                                                    ),
                                                                  ]
                                                                : [
                                                                    Colors
                                                                        .white,
                                                                    Colors
                                                                        .white,
                                                                  ],
                                                            begin: Alignment(
                                                              -1,
                                                              0,
                                                            ),
                                                            end: Alignment(
                                                              1,
                                                              0,
                                                            ),
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                              0,
                                                              0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                    GestureDetector(
                                      behavior: HitTestBehavior.translucent,
                                      onTap: () {
                                        setState(() {
                                          flowstateGE = false;
                                        });
                                      },
                                      child: Container(
                                        width: 78,
                                        height: 64,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(
                                            235,
                                            240,
                                            245,
                                            1,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                        ),
                                        alignment: Alignment(0, 0),
                                        child: SizedBox(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Stack(
                                            alignment: Alignment(1, 1),
                                            children: [
                                              Center(
                                                child: Image(
                                                  image: AssetImage(
                                                    "assets/images/qwsdsXZCNEG.png",
                                                  ),
                                                  width: 24,
                                                  height: 24,
                                                ),
                                              ),

                                              Padding(
                                                padding: const EdgeInsets.all(
                                                  2.0,
                                                ),
                                                child: PhysicalModel(
                                                  color: Colors.transparent,
                                                  elevation: 0,
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                  child: Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: !flowstateGE
                                                            ? Color(0xFF1E7EE6)
                                                            : Colors
                                                                  .transparent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            45,
                                                          ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            2.0,
                                                          ),
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                45,
                                                              ),
                                                          gradient: LinearGradient(
                                                            colors: !flowstateGE
                                                                ? [
                                                                    Color.fromRGBO(
                                                                      30,
                                                                      126,
                                                                      230,
                                                                      1,
                                                                    ),
                                                                    Color.fromRGBO(
                                                                      184,
                                                                      218,
                                                                      255,
                                                                      1,
                                                                    ),
                                                                  ]
                                                                : [
                                                                    Colors
                                                                        .white,
                                                                    Colors
                                                                        .white,
                                                                  ],
                                                            begin: Alignment(
                                                              -1,
                                                              0,
                                                            ),
                                                            end: Alignment(
                                                              1,
                                                              0,
                                                            ),
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                              0,
                                                              0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                DecoratedBox(
                                  decoration: BoxDecoration(),
                                  child: Container(height: 51),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.translucent,
                                    onTap: () async {
                                      if (restorativDA == null) {
                                        SmartDialog.showToast(
                                          "Please complete the date.",
                                        );
                                        return;
                                      }

                                      int hvARitAUid =
                                          FFAppState
                                              .instance
                                              .zazImeAllUsers
                                              .length +
                                          1;

                                      RootingUsers newMAritrAcUs = RootingUsers(
                                        sukhabUid: hvARitAUid,
                                        vivekaUName: widget.coretranNA,
                                        apattiUEmail: widget.deeptchEM,
                                        hastrikUPasw: widget.breathinPA,
                                        idanadiUAvatar:
                                            holisticmotTU ??
                                            "assets/images/Pazir.png",
                                        relations: (
                                          stillsUGood: 0,
                                          vationUFollow: [],
                                          onactiUFans: [],
                                          easingUBlock: [],
                                        ),
                                      );
                                      await FFAppState.instance.stWAaBilAdUs(
                                        newMAritrAcUs,
                                      );

                                      FFAppState.instance.flexionLogUid =
                                          hvARitAUid;

                                      Get.to(PranaAjnaShou());
                                    },
                                    child: PhysicalModel(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        width: 190,
                                        height: 49,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color(0xFF1E7EE6),
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            45,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color.fromRGBO(
                                                    30,
                                                    126,
                                                    230,
                                                    1,
                                                  ),
                                                  Color.fromRGBO(
                                                    184,
                                                    218,
                                                    255,
                                                    1,
                                                  ),
                                                ],
                                                begin: Alignment(-1, 0),
                                                end: Alignment(1, 0),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(45),
                                            ),
                                            alignment: AlignmentDirectional(
                                              0,
                                              0,
                                            ),
                                            child: Text(
                                              "Save",
                                              style: TextStyle(
                                                fontFamily: 'NotoSans',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(
                                                  255,
                                                  255,
                                                  255,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
