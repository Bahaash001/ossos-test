import 'package:flutter/material.dart';

import '../theme/theme.dart';

class LinearColordBackground extends StatelessWidget {
  const LinearColordBackground({Key? key, required this.child})
      : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            AppTheme.getColorScheme.secondary,
            AppTheme.getColorScheme.inverseSurface
          ])),
      child: child,
    );
  }
}
