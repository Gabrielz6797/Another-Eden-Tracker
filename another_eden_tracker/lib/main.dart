import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:another_eden_tracker/config/router/app_router.dart';
import 'package:another_eden_tracker/config/theme/app_theme.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ArmorCubit(),
        ),
        BlocProvider(
          create: (context) => BadgeCubit(),
        ),
        BlocProvider(
          create: (context) => CharacterCubit(),
        ),
        BlocProvider(
          create: (context) => GrastaCubit(),
        ),
        BlocProvider(
          create: (context) => WeaponCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: AppTheme().getAppTheme(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
