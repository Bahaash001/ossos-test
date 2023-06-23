import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

Future<bool> checkConnection() async {
  final Connectivity connectivity = Connectivity();
  ConnectivityResult result;
  try {
    result = await connectivity.checkConnectivity();
  } on PlatformException {
    return false;
  }
  if (result == ConnectivityResult.none) {
    return false;
  }
  return true;
}

Future<bool> noConnection() async {
  final Connectivity connectivity = Connectivity();
  ConnectivityResult result;
  try {
    result = await connectivity.checkConnectivity();
  } on PlatformException {
    return true;
  }
  if (result == ConnectivityResult.none) {
    return true;
  }
  return false;
}
