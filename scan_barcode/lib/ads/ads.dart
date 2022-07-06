import 'dart:io';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-2364838166910400/4386589456';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-2364838166910400/4386589456';
    } else {
      throw UnsupportedError("unsupported Platform");
    }
  }
}
