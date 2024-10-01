import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_implementation.dart';
import 'package:bookly_app/features/home/presentaion/managers/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/managers/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/search/data/search_repo/search_repo_imple.dart';
import 'package:bookly_app/features/search/presentation/views/managers/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetitServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            homeRepo: getIt.get<HomeRepoImplementation>()..fetchFeaturedBooks(),
          )..fetchFeaturedBooksCubit(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            homeRepo: getIt.get<HomeRepoImplementation>()..fetchNewestBooks(),
          )..fetchNewestBooksCubit(),
        ),
        BlocProvider(
            create: (context) => SearchingCubit(getIt.get<SearchRepoImple>()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
