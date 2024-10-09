import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:maral_cosmetics/helpers/methods/parts/inputs.dart';

Future<bool> checkIntWithContextConn(BuildContext context) async {
  final connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult.first == ConnectivityResult.mobile ||
      connectivityResult.first == ConnectivityResult.wifi) {
    return true;
  } else {
    if (context.mounted) showErrorSnackbar(context, 'Internet nasazlygy !!!');
    return false;
  }
}
