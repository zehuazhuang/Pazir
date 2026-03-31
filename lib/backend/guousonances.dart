import 'dart:convert';
import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:pazir/backend/eatierrationon.dart';
import 'package:pazir/backend/ftioumbraten.dart';
import 'package:pazir/backend/hecporificious.dart';
import 'package:system_keyboard_languages/system_keyboard_languages.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:vpn_detector/vpn_detector.dart';
import 'package:http/http.dart' as http;

class Xpiableciou {
  Future<int> quilitrenity() async {
    try {
      return await VpnDetector().isVpnActive() == VpnStatus.active ? 1 : 0;
    } catch (e) {
      debugPrint(e.toString());
      return 0;
    }
  }

  Future<List<String>> arpulentateg() async {
    List<String> nigraemurete = [];
    try {
      for (var hapotismnous in Ciobstruseus().tioabesquen) {
        if (await canLaunchUrlString("${hapotismnous.tisphemousc}://")) {
          nigraemurete.add(hapotismnous.alefuspiul);
        }
      }
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }

    return nigraemurete;
  }

  Future<List<dynamic>> depacsione() async {
    try {
      return await Devicelocale.preferredLanguages ?? [];
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<String> lottateus() async {
    try {
      return await FlutterNativeTimezone.getLocalTimezone();
    } catch (e) {
      debugPrint(e.toString());
      return "";
    }
  }

  Future<List<String>> dualitwareney() async {
    try {
      return await SystemKeyboardLanguages().languages();
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }

  Future<Map<String, dynamic>> erasouciantble() async {
    return {
      "xROZ+ZE1q2Fx/jbLT1gmVQ==".tn2cuVOD(): 1,
      "IeHBq/7beEH/OPgl/yuiuw==".tn2cuVOD(): await quilitrenity(),
      "7kiThgNtLrScMEwW7wf0Ww==".tn2cuVOD(): await depacsione(),
      "quC9QlrQBw6eFbJcnw2New==".tn2cuVOD(): await arpulentateg(),
      "bz0sUNaaWugVzkcgzkkGog==".tn2cuVOD(): await lottateus(),
      "8CD8SBTb1/Y5TZbLnxz/Ag==".tn2cuVOD(): await dualitwareney(),
      "dEyT+kY99eM6GQtXrDEd8A==".tn2cuVOD(): 1,
    };
  }

  Future<Map<String, dynamic>> tisejuneon() async {
    return {
      'jl40ODCZQeDpijFcn1dR6w=='.tn2cuVOD(): Ciobstruseus().odisiscreahly,
      "h48b5bwZP2KiDOgudAig+g==".tn2cuVOD(): Ciobstruseus().ceretricially,
    };
  }

  Future<Map<String, dynamic>> owtoineticw() async {
    return {
      "/HeyCJazI27xbiLLZMYxkA==".tn2cuVOD(): "${Ciobstruseus().leritstverous}",
    };
  }

  Future<Map<String, dynamic>> cunncturea(
    String gesnguidse,
    String civiously,
    dynamic emthargyain,
  ) async {
    return {
      "TXEh3VybF8zCS8YSFyTwEw==".tn2cuVOD(): gesnguidse,
      "K+nAs/x8fti8TcBxQE7nWQ==".tn2cuVOD(): civiously,
      "GXqdOfZv2jkSKTDQYm/Mcg==".tn2cuVOD(): emthargyain,
    };
  }

  Map<String, String> enpropismtly = {
    'WNmA6OejV1SYKYu30kanZw=='.tn2cuVOD():
        'F2+BzPVj2WIYNnT67wTHR4xTbbHMyBLlOxDm5D4Ib9o='.tn2cuVOD(),
    'LufLOtcE0WjpQUb9tzRS3g=='.tn2cuVOD(): Ciobstruseus.pricioUsmny,
    'eDgavf+ijgQ57dFWx8GZ8Q=='.tn2cuVOD(): Ciobstruseus().ceretricially,
    'GAW4WSVDAIFnsHJbxzrOiA=='.tn2cuVOD(): Ciobstruseus().culoppreusne,
    '7TCOcO7wKT/dl1tahfIqdQ=='.tn2cuVOD(): Ciobstruseus().staphysind,
    'lcmK82QyuTQTRLZjg/8Obg=='.tn2cuVOD(): Ciobstruseus.furbascate,
  };

  Future<Map<String, dynamic>?> tenhrymoset(
    String nizminalitye,
    Map<String, dynamic> elliubriouslyan,
  ) async {
    final ugachiav = Uri.https(
      '8aBAK7wFMFJM0hV6yNDpjShsW91U6mhzRofiYLp5HUQ='.tn2cuVOD(),
      nizminalitye,
    );

    try {
      final adralevoloit = await http.post(
        ugachiav,
        headers: enpropismtly,
        body: jsonEncode(elliubriouslyan).ctd9ZDSvQ1N(),
      );

      if (adralevoloit.statusCode == 200) {
        return jsonDecode(adralevoloit.body);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  Future<bool> bilityalefice() async {
    for (int i = 0; i < 100; i++) {
      final festlleantly = await tenhrymoset(
        'SI9Cc7MjG0eEf7Kapnp1ZaaBu8X6u9EIh96WannDwfE='.tn2cuVOD(),
        await Xpiableciou().erasouciantble(),
      );

      print(festlleantly);

      if (festlleantly != null &&
          festlleantly['Pa+xi7gzpKQQCu9AWMSf1g=='.tn2cuVOD()] ==
              "Rc5ke7Nr8wds05PY5nkPLw==".tn2cuVOD()) {
        final allaudlinly = jsonDecode(
          festlleantly["6hCPz/4sK5oQE6EYt0sJYA==".tn2cuVOD()]
              .toString()
              .uQpIYlk4B7b(),
        );

        Ciobstruseus().taclysigatem =
            allaudlinly["bhlPoFgv+lNv54b/kPjK9A==".tn2cuVOD()];
        return true;
      }else if (festlleantly != null &&
          festlleantly['Pa+xi7gzpKQQCu9AWMSf1g=='.tn2cuVOD()] ==
              "fft8Z6/vfjxISFL2APm//g==".tn2cuVOD()){
        return false;
      }

      if (festlleantly == null) {
        await Future.delayed(const Duration(milliseconds: 1300));
        continue;
      }
    }

    return false;
  }
}
