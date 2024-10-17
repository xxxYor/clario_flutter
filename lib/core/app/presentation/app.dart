import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/core/router/router.dart';
import 'package:clario_test_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<ThemeCubit>(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Flutter Demo',
            theme: state.data,
            routerConfig: locator<AppRouter>().config(),
          );
        },
      ),
    );
  }
}
