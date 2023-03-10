import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../data/data_sources/api.dart';
import '../data/repositories/api_repository.dart';
import '../presentation/screens/available_requests_screen/available_requests_view_model.dart';
import '../presentation/screens/create_request/create_request_vm.dart';
import '../presentation/screens/request_description_screen/request_description_viewmodel.dart';
import '../presentation/screens/requests/requests_vm.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt
    ..registerLazySingleton<Dio>(Dio.new)
    ..registerLazySingleton<API>(
      () => API(
        dio: getIt<Dio>(),
      ),
    )
    ..registerLazySingleton<APIRepository>(
      () => APIRepository(
        api: getIt<API>(),
      ),
    )
    ..registerFactory(
      () => CreateRequestViewModel(
        requestRepo: getIt<APIRepository>(),
      ),
    )
    ..registerFactory(
      () => RequestsViewModel(
        requestRepo: getIt<APIRepository>(),
      ),
    )
    ..registerFactory(
      () => AvailableRequestsVM(
        requestRepo: getIt<APIRepository>(),
      ),
    )
    ..registerFactory(
      () => RequestDescriptionVM(
        requestRepo: getIt<APIRepository>(),
      ),
    );
}
