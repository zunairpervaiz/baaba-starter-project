import 'dart:async';

import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

typedef ReconnectCallback = FutureOr<void> Function();

@Singleton()
final class ConnectivityService {
  late final InternetConnection _connection;

  final _hasInternetConnection = false.obs;
  bool get hasInternetConnection => _hasInternetConnection.value;
  set hasInternetConnection(bool value) => _hasInternetConnection.value = value;

  final _connectionStatusController = StreamController<InternetStatus>.broadcast();
  Stream<InternetStatus> get connectionStatusStream => _connectionStatusController.stream;

  StreamSubscription<InternetStatus>? _connectionStatusChangeStream;
  ReconnectCallback? _onReconnect;

  set shouldReconnect(ReconnectCallback? onReconnect) => _onReconnect = onReconnect;

  @PostConstruct(preResolve: true)
  Future<ConnectivityService> init() async {
    _connection = InternetConnection.createInstance(checkInterval: Duration(seconds: 5));
    return this;
  }

  void listenToConnectionStatus({bool showDialogOnDisconnected = true}) {
    _connectionStatusChangeStream?.cancel();

    _connectionStatusChangeStream = _connection.onStatusChange.listen((status) async {
      _connectionStatusController.add(status);
      switch (status) {
        case InternetStatus.connected:
          hasInternetConnection = true;
          _onReconnect?.call();
          if (Get.isDialogOpen ?? false) Get.back<void>();
          break;
        case InternetStatus.disconnected:
          hasInternetConnection = false;
          if (showDialogOnDisconnected) {
            hasInternetConnection = false;
            if (showDialogOnDisconnected) {
              //show dialog here
            }
          }
          break;
      }
    });
  }

  Future<bool> checkInternetConnection() async {
    final result = await _connection.hasInternetAccess;
    return result;
  }

  Future<bool?> showNoInternetConnectionDialog() async {
    if (Get.isDialogOpen ?? false) Get.back();
    return null;
    //return dialog here
  }

  @disposeMethod
  void dispose() {
    _connectionStatusController.close();
    _connectionStatusChangeStream?.cancel();
  }
}
