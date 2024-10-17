import 'package:clario_test_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppDecoratedBackground extends StatelessWidget {
  final Widget child;

  const AppDecoratedBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            gradient: state.colors.backgroundGradient,
            image: const DecorationImage(
              image: AssetImage('assets/images/background_1.png'),
              fit: BoxFit.fitWidth,
              alignment: AlignmentDirectional.topCenter,
            ),
          ),
          child: child,
        );
      },
    );
  }
}
