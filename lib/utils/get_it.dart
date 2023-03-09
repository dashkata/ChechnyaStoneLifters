import 'package:checheneca/data/data_sources/api.dart';
import 'package:checheneca/data/repositories/api_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt
    ..registerLazySingleton<Dio>(Dio.new)
    ..registerLazySingleton<API>(API.new)
    ..registerLazySingleton(
      () => APIRepository(
        api: getIt<API>(),
      ),
    );
}
