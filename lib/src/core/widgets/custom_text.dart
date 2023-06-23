import 'package:flutter/material.dart';

import '../theme/theme.dart';

// ignore: must_be_immutable
class CusSizedText extends StatelessWidget {
  CusSizedText(
      {Key? key,
      required this.text,
      this.color,
      this.maxLines,
      this.size = 15,
      this.overflow = TextOverflow.visible,
      this.fontFamily,
      this.align = TextAlign.center,
      this.weight = FontWeight.w500})
      : super(key: key);

  Color? color;
  final String text;
  int? maxLines;
  double size;
  TextAlign align;
  FontWeight weight;
  TextOverflow overflow;
  String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(text,
          textAlign: align,
          maxLines: maxLines,
          style: TextStyle(
              color: color ?? AppTheme.getColorScheme.primary,
              fontFamily: fontFamily,
              fontSize: size,
              overflow: overflow,
              fontWeight: weight)),
    );
  }
}
