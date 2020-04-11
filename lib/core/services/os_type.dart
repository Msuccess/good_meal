import 'dart:io';

class CheckOs {
  CheckOs();

  bool checkOsType() {
    if (Platform.isAndroid) {
      return Platform.isAndroid;
    } else if (Platform.isIOS) {
      return Platform.isIOS;
    }
    return null;
  }
}
