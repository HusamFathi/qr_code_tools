import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../entities/home_constants.dart';
import '../repositories/home_repository.dart';

class GetHomeConstantsUseCaseParams extends Equatable {
  final BuildContext context;

  const GetHomeConstantsUseCaseParams({required this.context});

  @override
  List<Object?> get props => [context];
}

class GetHomeConstantsUseCase {
  final HomeRepository repository;

  GetHomeConstantsUseCase({required this.repository});

  HomeConstants call({required GetHomeConstantsUseCaseParams params}) {
    return repository.getHomeConstants(context: params.context);
  }
}
