import 'dart:io';

import 'package:flutter/foundation.dart';

/// Created by Saeed Fekri on 12/30/2024.
///
/// @email: en.saeedfekri@gmail.com

Future<bool> hasNetwork() async {
  if (kIsWeb) {
    return true;
  } else {
    try {
      final result = await InternetAddress.lookup('newsapi.org');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}
