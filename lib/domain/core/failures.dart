import 'package:ddd_raja/domain/core/exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure({required String message}) = _Failure;

  const factory Failure.serverFailure({required String message}) =
      ServerFailure;
  const factory Failure.cacheFailure({required String message}) = CacheFailure;
  const factory Failure.internetFailure() = InternetFailure;

  factory Failure.serverFailureFromException(ServerException exception) {
    return Failure.serverFailure(message: exception.message);
  }

  factory Failure.cacheFailureFromException(CacheException exception) {
    return Failure.cacheFailure(message: exception.message);
  }
}

extension FailureX on Failure {
  String get errorMessage => when(
        (message) => 'Error: $message',
        serverFailure: (message) => 'Server Error: $message',
        cacheFailure: (message) => 'Cache Error: $message',
        internetFailure: () => 'Error: Internet ',
      );
}
