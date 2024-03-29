import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:smart_soft/core/bloc/core_cubit.dart';
import 'package:smart_soft/core/config/app_theme.dart';
import 'package:smart_soft/features/auth/views/blocs/login/login_cubit.dart';
import 'package:smart_soft/features/auth/views/blocs/register/register_cubit.dart';
import 'package:smart_soft/features/auth/views/blocs/reset_password/reset_password_cubit.dart';
import 'package:smart_soft/features/auth/views/blocs/who_am_i/who_am_i_cubit.dart';
import 'features/onboarding/view/bloc/on_boarding_cubit.dart';
import 'features/onboarding/view/screens/on_boarding_screen.dart';
import 'generated/codegen_loader.g.dart';

void main() async {

   await CoreCubit.setupApp();

   runApp(EasyLocalization(
       supportedLocales: const [Locale('en'), Locale('ar')],
       fallbackLocale: const Locale('en'),
       assetLoader: const CodegenLoader(),
       path: "assets/translations/",
       child: const MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        BlocProvider(create: (_) => CoreCubit()),
        BlocProvider(create: (_) => OnBoardingCubit()),
        BlocProvider(create: (_) => LoginCubit()),
        BlocProvider(create: (_) => RegisterCubit()),
        BlocProvider(create: (_) => WhoAmICubit()),
        BlocProvider(create: (_) => ResetPasswordCubit()),

      ],
      child: Sizer(
        builder: (BuildContext context, Orientation orientation,
            DeviceType deviceType) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            home: const OnBoardingScreen(),
            theme: AppTheme.theme(context),
          );
        },
      ),
    );
  }
}
