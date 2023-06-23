import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart'; 

import '../theme/theme.dart'; 
 
ToastFuture toastMessage(String text , [Color? color]) {
  return showToast(text,
      textStyle: const TextStyle(color: Colors.white, fontSize: 14),
      duration: const Duration(seconds: 2),
      dismissOtherToast: true,
      backgroundColor: color??AppTheme.getColorScheme.primary,
      position: ToastPosition.bottom,
      textPadding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      animationCurve: Curves.easeOutBack);
}

ToastFuture toastErrorMessage(String text) {
  return showToast(text,
      textStyle: const TextStyle(color: Colors.white, fontSize: 14),
      duration: const Duration(seconds: 2),
      dismissOtherToast: true,
      backgroundColor: const Color.fromARGB(255, 191, 9, 9),
      position: ToastPosition.bottom,
      textPadding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      animationCurve: Curves.easeOutBack);
}
