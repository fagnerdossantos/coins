import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';

import 'src/configurations/custom_theme.dart';
import 'src/navigation/app_router.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Providers
    return MaterialApp.router(
      // Used for device preview
      // ignore: deprecated_member_use
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      //
      theme: CustomTheme.theme,

      routerConfig: AppRouter().router,

      debugShowCheckedModeBanner: false,
    );
  }
}
