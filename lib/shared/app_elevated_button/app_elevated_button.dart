import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(113, 194, 255, 1),
            Color.fromRGBO(74, 102, 255, 1),
          ],
          stops: [0.00, 1.00],
          begin: Alignment(-0.62, -0.07),
          end: Alignment(0.86, 1.16),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Container(
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}
