import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectivityHelper {
  /// Checks whether device has an active internet connection.
  /// Runs a rapid network interface and reachability check.
  static Future<bool> hasInternetConnection() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      final hasInterface = connectivityResult.any(
        (result) =>
            result == ConnectivityResult.mobile ||
            result == ConnectivityResult.wifi ||
            result == ConnectivityResult.ethernet,
      );

      if (!hasInterface) {
        return false;
      }

      // Fast DNS reachability probe with short timeout to prevent UI stall
      try {
        final lookup = await InternetAddress.lookup('clients3.google.com')
            .timeout(const Duration(milliseconds: 1000));
        return lookup.isNotEmpty && lookup[0].rawAddress.isNotEmpty;
      } catch (_) {
        // If lookup times out but interface is active, allow proceeding so
        // network services can handle connection directly.
        return true;
      }
    } catch (_) {
      return false;
    }
  }
}

