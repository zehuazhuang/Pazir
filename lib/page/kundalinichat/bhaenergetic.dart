import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/prakritiuser.dart';
import 'package:pazir/page/manipuramine/twistflowreport.dart';

class BhaenErgeTic extends StatefulWidget {
  const BhaenErgeTic({super.key, required this.bhRIdhaUs});

  final RootingUsers bhRIdhaUs;

  @override
  State<BhaenErgeTic> createState() => _BhaenErgeTic();
}

class _BhaenErgeTic extends State<BhaenErgeTic> {
  Timer? _manaTimer;
  @override
  void initState() {
    super.initState();
    _startVibration();
  }

  @override
  void dispose() {
    _manaTimer?.cancel();
    super.dispose();
  }

  void _startVibration() async {
    int count = 0;

    _manaTimer = Timer.periodic(Duration(milliseconds: 1200), (timer) async {
      if (count >= 5) {
        SmartDialog.showToast(
          "The other party is currently offline. Please try again later.",
        );
        timer.cancel();
        Get.back();
        return;
      }

      HapticFeedback.vibrate();

      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/ziuxNCIUQB.png"),
        ),
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Color.fromRGBO(0, 0, 0, 0),
            body: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        children: [
                          GestureDetector(
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
                                child: Image.asset(
                                  "assets/images/cjNVUISAB.png",
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "  @${widget.bhRIdhaUs.vivekaUName}",
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(5, 3, 19, 1),
                            ),
                          ),
                          Spacer(),

                          GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              Get.dialog(
                                TwistfLowReport(
                                  lumIAnatUid: widget.bhRIdhaUs.sukhabUid,
                                ),
                              );
                            },
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(),
                              child: Image.asset(
                                "assets/images/zuiNAYUSDS.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Stack(
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Transform.rotate(
                              angle: 10 * (math.pi / 180),
                              child: Transform.translate(
                                offset: Offset(40, -46),
                                child: Transform.scale(
                                  scaleX: 1.2,
                                  scaleY: 1.2,
                                  child: Image.asset(
                                    "assets/images/znuABYUNCA.png",
                                    width: 349.39,
                                    height: 249,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flex(
                            direction: Axis.vertical,
                            children: [
                              DecoratedBox(
                                decoration: BoxDecoration(),
                                child: Container(height: 10),
                              ),
                              Image(
                                image: AssetImage(
                                  "assets/images/nasuNUYWQS.png",
                                ),
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
                          Flex(
                            direction: Axis.vertical,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Spacer(),

                              Center(
                                child: Container(
                                  width: 102,
                                  height: 102,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(78, 155, 238, 1),
                                        Color.fromRGBO(255, 255, 255, 0),
                                      ],
                                      begin: Alignment(0, -1),
                                      end: Alignment(0, 1),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(1.5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      alignment: Alignment.center,
                                      child: Container(
                                        width: 88,
                                        height: 88,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromRGBO(78, 155, 238, 1),
                                              Color.fromRGBO(255, 255, 255, 0),
                                            ],
                                            begin: Alignment(0, -1),
                                            end: Alignment(0, 1),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                            1.5,
                                          ), // 👈 边框宽度
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      widget
                                                          .bhRIdhaUs
                                                          .idanadiUAvatar,
                                                    ),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(45),
                                                ),
                                                alignment: AlignmentDirectional(
                                                  0,
                                                  0,
                                                ),
                                              ),
                                            ), // 你的内容
                                          ),
                                        ),
                                      ), // 你的内容
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 21),
                              Text(
                                "  @${widget.bhRIdhaUs.vivekaUName}",
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(5, 3, 19, 1),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Calling...",
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(5, 3, 19, 1),
                                ),
                              ),
                              SizedBox(height: 86),

                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/iuewZXNCIUQWAG.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
