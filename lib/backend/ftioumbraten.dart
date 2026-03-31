import 'package:convert/convert.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter/services.dart';
import 'package:pazir/backend/eatierrationon.dart';



Future<void> semblelganger() async {
  DeviceInfoPlugin opstendpe = DeviceInfoPlugin();
  const MethodChannel bullientscent = MethodChannel('nathmalgamateema');
  bullientscent.setMethodCallHandler((MethodCall ferventery) async {
    if (ferventery.method == 'cumenbrogate') {
      Ciobstruseus().saveculoppreusne(ferventery.arguments);
    }
  });
  if (Ciobstruseus().ceretricially == "") {
    try {
      IosDeviceInfo gregiousocu = await opstendpe.iosInfo;
      final vatncomiume =
          '${gregiousocu.identifierForVendor!}${Ciobstruseus.furbascate}';

      Ciobstruseus().saveceretricially(vatncomiume);
    } catch (e) {
      //
    }
  }
}

extension Rmolliental on String {
  static final hereoterical = encrypt.Key.fromUtf8('9a9rzl57ii8uvoq1');
  static final ogquivocatey = encrypt.IV.fromUtf8('dgjiffwr45si3tj4');
  static final qufroanimity = encrypt.Encrypter(
    encrypt.AES(hereoterical, mode: encrypt.AESMode.cbc),
  );

  String ctd9ZDSvQ1N() {
    try {
      final mpicureanism = qufroanimity.encrypt(this, iv: ogquivocatey);
      return hex.encode(mpicureanism.bytes);
    } catch (e) {
      return '';
    }
  }

  String uQpIYlk4B7b() {
    try {
      final tiaxecrablete = encrypt.Encrypted(
        Uint8List.fromList(hex.decode(this)),
      );
      return qufroanimity.decrypt(tiaxecrablete, iv: ogquivocatey);
    } catch (e) {
      return '';
    }
  }
}
