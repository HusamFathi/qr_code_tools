// ignore_for_file: unused_field

import 'package:flutter/material.dart';

import '../../../../core/network/network_info.dart';
import '../../domain/entities/home_constants.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/local/constants_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeConstantsDataSourceImpl _constantsDataSource;
  final NetworkInfo _networkInfo;

  HomeRepositoryImpl({
    required this._constantsDataSource,
    required this._networkInfo,
  });

  @override
  HomeConstants getHomeConstants({required BuildContext context}) {
    return _constantsDataSource.getHomeConstants(context: context);
  }
}
