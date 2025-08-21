import 'package:baaba_starter_project/data/remote/network_provider.dart';
import 'package:baaba_starter_project/data/services/api_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: NetworkProvider)
final class NetworkProviderImpl implements NetworkProvider {
  NetworkProviderImpl(this._apiService);

  late final ApiService _apiService;
}
