import 'package:app/core/networking/api_service.dart';
import 'package:app/core/networking/dio_factory.dart';
import 'package:app/features/login/data/repos/login_repo.dart';
import 'package:app/features/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
  //Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
// login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

// home 
//juste create home repo et cubit 

}
