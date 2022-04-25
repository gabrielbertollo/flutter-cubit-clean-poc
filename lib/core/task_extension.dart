import 'package:dartz/dartz.dart';
import 'package:flutter_clean_cubit/core/failure_exception.dart';

extension TaskX<T extends Either<Object, U>, U> on Task<T> {
  Task<Either<Failure, U>> mapLeftToFailure() {
    return map(
      (either) => either.leftMap(
        (object) {
          try {
            return object as Failure;
          } catch (_) {
            throw object;
          }
        },
      ),
    );
  }
}
