import 'package:baaba_api_services/failure_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class NoParamUsecase<Type> {
  Future<Either<Failure, Type>> call();
}
