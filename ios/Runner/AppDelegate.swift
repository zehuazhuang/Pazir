import UIKit
import Flutter
import flutter_local_notifications

@main
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {

     FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }

    if #available(iOS 10.0, *) {
      UNUserNotificationCenter.current().delegate = self as UNUserNotificationCenterDelegate
    }
    

    FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
        GeneratedPluginRegistrant.register(with: registry)
    }


        if #available(iOS 10.0, *) {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            if granted {
                application.registerForRemoteNotifications()
            } else {
            }
        }
    } else {
        let acriomerationty = UIUserNotificationSettings(types: [.alert, .sound, .badge], categories: nil)
        application.registerUserNotificationSettings(acriomerationty)
        application.registerForRemoteNotifications()
    }

        GeneratedPluginRegistrant.register(with: self)

  

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }


  override func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    let  hronicryphalsm = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
    

    guard let acopheatificony = window?.rootViewController as? FlutterViewController else {
      return
    }


    let landeoalesce = FlutterMethodChannel(name: "nathmalgamateema", binaryMessenger: acopheatificony.binaryMessenger)
    

    landeoalesce.invokeMethod("cumenbrogate", arguments:  hronicryphalsm)


  
  }
}
