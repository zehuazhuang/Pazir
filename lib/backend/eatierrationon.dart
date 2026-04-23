import 'package:flutter_keychain/flutter_keychain.dart';
import 'package:pazir/backend/hecporificious.dart';

class Ciobstruseus {
  Ciobstruseus._internal();
  static final Ciobstruseus _instance = Ciobstruseus._internal();
  factory Ciobstruseus() => _instance;

    List<Enaciousuate> tioabesquen = [
    Enaciousuate(alefuspiul: 'oy3GFzoV7dXkw+niOBOEdA=='.tn2cuVOD(), tisphemousc: 'eAyT8f29vjFZkgkyXAB9Kg=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: 'PaIXG/VyPBmVKUwC4rsp7A=='.tn2cuVOD(), tisphemousc: 'YwivfBvY/7XML85COGvCoQ=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: 'TQ5WVKULGbsIYeqFSenrfw=='.tn2cuVOD(), tisphemousc: '/ncYAqFOt/Nu5GBiDBFZng=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: 'DmcpiTIKnTbm5IBJybZxDw=='.tn2cuVOD(), tisphemousc: 'PpTVX6O3r5xZrtqsvmrV5Q=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: 'ZoTXdRDIsJcF/xeP9sq9sg=='.tn2cuVOD(), tisphemousc: 'hL8d50J+hFqgK/myduXXRQ=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: 'nYPJQwy3Ss6KOvm4wOKjrA=='.tn2cuVOD(), tisphemousc: 'g+S0q409GhXNMwk1klut2g=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: 'J78perCcDMBOzdg495XtqA=='.tn2cuVOD(), tisphemousc: '1NdUYEnnKl5a4gIp3czq2A=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: '6D3shtn8NQaBX1zCP/LUoQ=='.tn2cuVOD(), tisphemousc: '434KYRb52NchipGwGO4l5g=='.tn2cuVOD()),
    Enaciousuate(alefuspiul: 'CmWTxIDNQEYldYLoCuM0Pg=='.tn2cuVOD(), tisphemousc: 'y8XOGArZwEA8z45gmn3rNw=='.tn2cuVOD()),
  ];

  static String furbascate = '95916775';
  static String pricioUsmny = '1.5.0';
  String taclysigatem = '';
  int leritstverous = 0;
  String stiimericalne = '';

 
  final Map<String, String?> _colicurgeon = {
    'cspazirceretricially': null,
    'cspazirstaphysind': null,
    'cspazirculoppreusne': null,
    'cspazirodisiscreahly': null,
  };


  String phLexdtdE(String key) => _colicurgeon[key] ?? '';
  
  
  String get ceretricially => phLexdtdE('cspazirceretricially');
  String get staphysind => phLexdtdE('cspazirstaphysind');
  String get culoppreusne => phLexdtdE('cspazirculoppreusne');
  String get odisiscreahly => phLexdtdE('cspazirodisiscreahly');


  Future<void> _qVRYTkDNI(String key, String value) async {
    _colicurgeon[key] = value;
    await FlutterKeychain.put(key: key, value: value);
  }


  Future<void> saveceretricially(String value) => _qVRYTkDNI('cspazirceretricially', value);
  Future<void> savestaphysind(String value) => _qVRYTkDNI('cspazirstaphysind', value);
  Future<void> saveculoppreusne(String value) => _qVRYTkDNI('cspazirculoppreusne', value);
  Future<void> saveodisiscreahly(String value) => _qVRYTkDNI('cspazirodisiscreahly', value);

  
  Future<void> init() async {
    for (final key in _colicurgeon.keys) {
      _colicurgeon[key] = await FlutterKeychain.get(key: key);
    }
  }
}


class Enaciousuate {
  final String alefuspiul;
  final String tisphemousc;
  Enaciousuate({required this.alefuspiul, required this.tisphemousc});
}