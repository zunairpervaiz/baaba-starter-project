import 'package:baaba_api_services/failure_service.dart';
import 'package:fpdart/fpdart.dart';

abstract class ParamUsecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
