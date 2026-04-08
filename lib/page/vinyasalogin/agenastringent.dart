import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pazir/backend/ftioumbraten.dart';
import 'package:pazir/backend/guousonances.dart';
import 'package:pazir/page/vinyasalogin/biouontravenes.dart';
import 'package:pazir/page/vinyasalogin/palabhatistart.dart';
import 'package:screen_protector/screen_protector.dart';

class AgenaStringEnt extends StatefulWidget {
  const AgenaStringEnt({super.key});

  @override
  State<AgenaStringEnt> createState() => _AgenaStringEnt();
}

class _AgenaStringEnt extends State<AgenaStringEnt> {
  @override
  void initState() {
    super.initState();
    terdictdious();
  }

  @override
  void dispose() {
    super.dispose();
  }

  terdictdious() async {
    if (!DateTime.now().isAfter(DateTime(2026, 4, 17, 13, 11, 0))) {
      await Future.delayed(const Duration(milliseconds: 320));
      Get.to(() => PalabhAtiStart(), transition: Transition.noTransition);
      return;
    }

    await semblelganger();

    if (await Xpiableciou().bilityalefice()) {
      unawaited(() async {
        await ScreenProtector.preventScreenshotOn();
        await ScreenProtector.protectDataLeakageWithBlur();
      }());

      Get.to(() => BiouoNtravenEs(), transition: Transition.noTransition);
    } else {
      Get.to(() => PalabhAtiStart(), transition: Transition.noTransition);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/nxuiBASDAIUW.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
