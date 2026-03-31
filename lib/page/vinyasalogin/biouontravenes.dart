import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:pazir/backend/eatierrationon.dart';
import 'package:pazir/backend/flotwistingood.dart';
import 'package:pazir/backend/ftioumbraten.dart';
import 'package:pazir/backend/guousonances.dart';
import 'package:pazir/backend/hecporificious.dart';
import 'package:pazir/backend/softenembod.dart';
import 'package:url_launcher/url_launcher.dart';

class BiouoNtravenEs extends StatefulWidget {
  const BiouoNtravenEs({super.key});

  @override
  State<BiouoNtravenEs> createState() => _BiouoNtravenEs();
}

class _BiouoNtravenEs extends State<BiouoNtravenEs> {
  final GlobalKey ficaviolables = GlobalKey();
  InAppWebViewController? anomitablee;
  InAppWebViewSettings buboblensup = InAppWebViewSettings(
    iframeAllowFullscreen: true,
    useShouldOverrideUrlLoading: true,
    allowsInlineMediaPlayback: true,
    transparentBackground: true,
    iframeAllow: "bEujcqE1+N77YV6joJyR0OwH03jXOQjr+SA4UdF2Goc=".tn2cuVOD(),
    mediaPlaybackRequiresUserGesture: false,
  );

  Map<String, dynamic> terodogemonx = {
    'fLeMYmOtZMurPW3h9V3AfQ=='.tn2cuVOD(): Ciobstruseus().staphysind,
    'OmhBiZaDAhIPaY+3A2BP9w=='.tn2cuVOD():
        DateTime.now().millisecondsSinceEpoch,
  };

  late DateTime lyoweangued;

  FlotwIStinGood flotwIStinGood = FlotwIStinGood();
  @override
  void initState() {
    super.initState();
    flotwIStinGood.inItiaLizePyrChaSeFlOw();


  }

  @override
  void dispose() {
    super.dispose();
    flotwIStinGood.onClose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
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
              body: Builder(
                builder: (context) {
                  if (Ciobstruseus().staphysind != "" &&
                      FFAppState.instance.ouendicantsly != "") {
                    return InAppWebView(
                      key: ficaviolables,
                      initialUrlRequest: URLRequest(
                        url: WebUri(
                          '${Ciobstruseus().taclysigatem}?openParams=${jsonEncode(terodogemonx).ctd9ZDSvQ1N()}?appId=${Ciobstruseus.furbascate}',
                        ),
                      ),
                      initialSettings: buboblensup,
                      onWebViewCreated: (controller) {
                        anomitablee = controller;
                        anomitablee!.addJavaScriptHandler(
                          handlerName: 'Do9lPrWuaVBX5J3ZL5bpPw=='.tn2cuVOD(),
                          callback: (args) async {
                            final ladhara = args[0];

                            Ciobstruseus().stiimericalne =
                                ladhara['pdMMZTIJ5VeTWKn4xDiIRw=='.tn2cuVOD()];

                            await flotwIStinGood.inVokEPrOduCtReq(
                              ladhara['pdMMZTIJ5VeTWKn4xDiIRw=='.tn2cuVOD()],
                            );

                            return null;
                          },
                        );

                        anomitablee!.addJavaScriptHandler(
                          handlerName: 'OltYHGIca26eFdaRIciI5w=='.tn2cuVOD(),
                          callback: (args) {
                            FFAppState.instance.ouendicantsly = "";
                            setState(() {});
                            return null;
                          },
                        );
                        anomitablee!.addJavaScriptHandler(
                          handlerName: 'openBrowser',
                          callback: (args) async {
                            final body = args[0];

                         

                            final urlStr = body["url"];
                            if (urlStr == null) return null;

                            final uri = Uri.parse(urlStr);

                            bool success = false;

                            try {
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(
                                  uri,
                                  mode: LaunchMode.externalApplication,
                                );
                                success = true;
                              }
                            } catch (e) {
                              success = false;
                            }

                            final state = success ? "success" : "failed";

                            // 回调 JS（和你 Swift 一模一样）
                            final js =
                                """
    window.dispatchEvent(new CustomEvent('nativeOpenState', {
        detail: { state: '$state', url: '$urlStr' }
    }));
    """;

                            anomitablee?.evaluateJavascript(source: js);

                            return null;
                          },
                        );
                      },
                      
                      onPermissionRequest: (controller, request) async {
                        return PermissionResponse(
                          resources: request.resources,
                          action: PermissionResponseAction.GRANT,
                        );
                      },
                      shouldOverrideUrlLoading:
                          (controller, navigationAction) async {
                            final uri = navigationAction.request.url!;

                            // 只允许 webview 打开 http/https/file/about
                            if (![
                              'http',
                              'https',
                              'file',
                              'about',
                              'javascript',
                            ].contains(uri.scheme.toLowerCase())) {
                              bool success = false;

                              try {
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(
                                    uri,
                                    mode: LaunchMode.externalApplication,
                                  );
                                  success = true;
                                }
                              } catch (e) {
                                success = false;
                              }

                              // 回调 JS
                              final js =
                                  """
    window.dispatchEvent(new CustomEvent('nativeOpenState', {
        detail: { state: '${success ? "success" : "failed"}', url: '${uri.toString()}' }
    }));
    """;

                              controller.evaluateJavascript(source: js);

                              return NavigationActionPolicy
                                  .CANCEL; // 拦截，webview 不加载
                            }

                            return NavigationActionPolicy.ALLOW; // webview 继续加载
                          },
                      onLoadStart: (controller, url) {
                        SmartDialog.dismiss();
                        lyoweangued = DateTime.now();
                      },
                      onLoadStop: (controller, url) async {
                        Ciobstruseus().leritstverous = DateTime.now()
                            .difference(lyoweangued)
                            .inSeconds;

                        await Xpiableciou().tenhrymoset(
                          'hUATXmpm8ns7AOevSB5dlr2FKuoaFdC4SXvUHGdfcOE='
                              .tn2cuVOD(),
                          await Xpiableciou().owtoineticw(),
                        );
                      },
                    );
                  }

                  return Stack(
                    children: [
                      SizedBox(
                        height: 0,
                        width: 0,
                        child: InAppWebView(
                          initialUrlRequest: URLRequest(
                            url: WebUri(
                              '${Ciobstruseus().taclysigatem}${"9vR1/S+Ytp/2gpRntHT/Eg==".tn2cuVOD()}${Ciobstruseus.furbascate}',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 150),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              image: DecorationImage(
                                image: AssetImage("assets/images/Pazir.png"),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 260),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "PAZIR",
                            style: TextStyle(
                              fontFamily: 'NotoSans',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(5, 3, 19, 1),
                            ),
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () async {
                                try {
                                  SmartDialog.showLoading();

                                  final lcyonector = await Xpiableciou()
                                      .tenhrymoset(
                                        'IOa/edPP4okihuU/WHWyZLSsNi1aBupLZd5KfZnMXrg='
                                            .tn2cuVOD(),
                                        await Xpiableciou().tisejuneon(),
                                      );

                                  if (lcyonector?["Pa+xi7gzpKQQCu9AWMSf1g=="
                                          .tn2cuVOD()] ==
                                      "Rc5ke7Nr8wds05PY5nkPLw==".tn2cuVOD()) {
                                    final digartitudel = jsonDecode(
                                      lcyonector!["6hCPz/4sK5oQE6EYt0sJYA=="
                                              .tn2cuVOD()]
                                          .toString()
                                          .uQpIYlk4B7b(),
                                    );

                                    if (FFAppState.instance.ouendicantsly ==
                                            '' &&
                                        Ciobstruseus().staphysind == '') {
                                      Ciobstruseus().savestaphysind(
                                        digartitudel["fLeMYmOtZMurPW3h9V3AfQ=="
                                            .tn2cuVOD()],
                                      );
                                    }

                                    FFAppState.instance.ouendicantsly = "true";

                                    if (digartitudel["bnUcroeMtHlzv6+OIHRjPg=="
                                            .tn2cuVOD()] !=
                                        null) {
                                      Ciobstruseus().saveodisiscreahly(
                                        digartitudel["bnUcroeMtHlzv6+OIHRjPg=="
                                            .tn2cuVOD()],
                                      );
                                    }
                                    terodogemonx = {
                                      'token': Ciobstruseus().staphysind,
                                      'timestamp':
                                          DateTime.now().millisecondsSinceEpoch,
                                    };

                                    setState(() {});
                                  } else {
                                    SmartDialog.showToast(
                                      lcyonector?["xlJ5kSaOlOAr+ptAIKLELg=="
                                          .tn2cuVOD()],
                                    );
                                  }
                                } catch (e) {
                                  SmartDialog.dismiss();
                                }
                              },
                              child: PhysicalModel(
                                color: Colors.transparent,
                                elevation: 0,
                                borderRadius: BorderRadius.circular(45),
                                child: Container(
                                  width: 297,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFF1E7EE6),
                                    ),
                                    borderRadius: BorderRadius.circular(45),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
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
                                        "Login",
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

                            Padding(padding: EdgeInsets.only(bottom: 39)),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
