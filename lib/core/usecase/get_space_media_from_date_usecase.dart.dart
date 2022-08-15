import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../erros/failures.dart';

abstract class getSpaceMediaFromDateUsecase<Output, Input> {
  Future<Either<Failure, Output>> call(DateTime date);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
