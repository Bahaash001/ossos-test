import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../helper/dio_helper.dart';

Future<void> initCore(GetIt sl) async {
  sl.registerLazySingleton<DioHelper>(
    () => DioHelperImpl(client: sl()),
  );
  sl.registerLazySingleton(() => Dio());
}
