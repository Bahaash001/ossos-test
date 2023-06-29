import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

import 'src/core/routes/app_routes.dart';
import 'src/core/sl/sl.dart';
import 'src/features/spalsh/pages/spalsh_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initSL();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return OKToast(
        dismissOtherOnShow: true,
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            builder: (context, child) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaleFactor: 1,
                  ),
                  child: child!);
            },
            // home: AnimationScreen(),
            getPages: AppPages.pages,
            initialRoute: SplashScreen.route,
          ),
        ));
  }
}
