import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // GMSServices.provideAPIKey("AIzaSyABwmbt_dUgK2vPvSLOOE5mC2L5mSZaopU")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
