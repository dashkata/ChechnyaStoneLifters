import 'package:checheneca/data/data_sources/api.dart';
import 'package:checheneca/data/repositories/api_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../presentation/available_requests_screen/available_requests_view_model.dart';
import '../presentation/request_description_screen/request_description_viewmodel.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt
    ..registerLazySingleton<Dio>(Dio.new)
    ..registerLazySingleton<API>(API.new)
    ..registerLazySingleton(
      () => APIRepository(
        api: getIt<API>(),
      ),
    )
    ..registerFactory(AvailableRequestsVM.new)
    ..registerFactory(RequestDescriptionVM.new);
}
