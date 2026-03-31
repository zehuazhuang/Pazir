import 'package:encrypt/encrypt.dart';

class Qx9LmT2 {
  static String gJo8JdW() {
    final List<int> p0 = [112, 97, 122, 105, 114]; // pazir

    final List<int> n0 = List.generate(11, (i) {
      const base = [51, 53, 57, 49, 53, 56, 52, 54, 48, 55, 50]; // "35915846072"
      return base[(i + 3) % base.length];
    });

    final s0 = [...p0, ...n0];

    return String.fromCharCodes(
      List.generate(16, (i) {
        return s0[(i * 4 + 2) % s0.length];
      }),
    );
  }

  static String vrJRlyTBd() {
    final List<int> p1 = [112, 97, 122, 105, 114];

    final List<int> n1 = List.generate(11, (i) {
      const raw = [50, 55, 48, 54, 49, 53, 57, 51, 53, 52, 56]; // "27061593548"
      return raw.reversed.toList()[i % raw.length];
    });

    final s1 = [...p1, ...n1];

    return String.fromCharCodes(
      List.generate(16, (i) {
        return s1[(i * 6 + 1) % s1.length];
      }),
    );
  }
}

extension Rx8Pq on String {
  String tn2cuVOD() {
    try {
      final k0 = Qx9LmT2.gJo8JdW();
      final v0 = Qx9LmT2.vrJRlyTBd();

      final k1 = Key.fromUtf8(k0);
      final v1 = IV.fromUtf8(v0);

      final e0 = Encrypter(AES(k1, mode: AESMode.cbc));

      final d0 = Encrypted.fromBase64(this);

      return e0.decrypt(d0, iv: v1);
    } catch (_) {
      return '';
    }
  }
}