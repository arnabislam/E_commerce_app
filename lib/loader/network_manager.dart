import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/loader/loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

///manage the network connectivity status and provide methods to check and handle connectivity change
class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();
  // final Connectivity _connectivity = Connectivity();
  //
  // late StreamSubscription<ConnectivityResult> _connectivitySubscription;
   final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;


//  List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  ///initialize the network manager and set up stream to continually check the connection status

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  ///update the connection  status based on change connectivity and show a relevant pop up for the internet connection

  Future<void> _updateConnectionStatus( result ) async {
    _connectionStatus.value= result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      rLoaders.warningSnackBar(title: 'No Internet Connection');
    }
  }



  ///check the internet connection
  ///returns 'true' if connected, false otherwise
  ///

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result == ConnectivityResult.none) {
        return false;
      } else {
        return true;
      }
    } on PlatformException catch (_) {
      return false;
    }
  }

  ///dispose or close active connectivity stream

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _connectivitySubscription.cancel();
  }
}
