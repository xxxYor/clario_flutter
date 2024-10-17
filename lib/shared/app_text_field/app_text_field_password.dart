part of 'app_text_field.dart';

class AppTextFieldPassword extends StatefulWidget with AppTextFieldPasswordMixin {
  const AppTextFieldPassword(
    this.params, {
    super.key,
  });

  @override
  final AppTextFieldParams params;
}

mixin AppTextFieldPasswordMixin implements AppTextField {
  @override
  AppTextFieldPasswordState createState() => AppTextFieldPasswordState();
}

class AppTextFieldPasswordState extends _AppTextFieldState {
  bool _show = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return AppTextField(widget.params.copyWith(
          obscureText: !_show,
          decoration: widget.params.decoration.copyWith(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _show = !_show;
                });
              },
              child: Icon(
                !_show ? Icons.visibility : Icons.visibility_off,
                color: state.colors.selected,
                size: 24,
              ),
            ),
          ),
        ));
      },
    );
  }
}
