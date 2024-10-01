import 'package:bookly_app/core/utils/api_services.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly_app/features/search/data/search_repo/search_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetitServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<SearchRepoImple>(SearchRepoImple(
    getIt.get<ApiServices>(),
  ));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      getIt.get<ApiServices>(),
    ),
  );
}
