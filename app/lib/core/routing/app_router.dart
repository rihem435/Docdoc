import 'package:app/core/di/dependency_injection.dart';
import 'package:app/core/routing/routes.dart';
import 'package:app/features/home/ui/home_screen.dart';
import 'package:app/features/login/logic/cubit/login_cubit.dart';
import 'package:app/features/login/ui/login_screen.dart';
import 'package:app/features/onBoarding/ui/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child:  LoginScreen(),
          ),
        );
         case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
  
}
