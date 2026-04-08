import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PalchemYiralCode extends StatefulWidget {
  const PalchemYiralCode({super.key});

  @override
  State<PalchemYiralCode> createState() => _PalchemYiralCode();
}

class _PalchemYiralCode extends State<PalchemYiralCode> {
  final TextEditingController _somaticOde = TextEditingController();
  bool infiniteSHOW = false;
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
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Container(
          width: 311,
          height: 260,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/iuuhuiWIUBFB.png"),
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: double.infinity,
                  height: 82,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                "Cancel",
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
                          if (_somaticOde.text != "Pazir") {
                            setState(() {
                              infiniteSHOW = true;
                            });
                          }
                        },
                        child: PhysicalModel(
                          color: Colors.transparent,
                          elevation: 0,
                          borderRadius: BorderRadius.circular(45),
                          child: Container(
                            width: 130,
                            height: 49,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFF1E7EE6),
                              ),
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
                                  "Confirm",
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
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "INVITATION CODE:",
                          style: TextStyle(
                            fontFamily: 'NotoSans',
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          width: double.infinity,
                          height: 54,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 5,
                          ),
                          alignment: Alignment.center,
                          child: TextField(
                            maxLines: 3,
                            controller: _somaticOde,
                            keyboardType: TextInputType.number,

                            decoration: InputDecoration(
                              hintText: "Enter Chat Room Invitation Code",
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
                      ),
                      if (infiniteSHOW)
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 4),
                          child: Text(
                            "Invalid invitation code, please re-enter",
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(235, 66, 103, 1),
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
      ),
    );
  }
}
