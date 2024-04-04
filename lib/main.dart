import 'package:codeland_task/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:codeland_task/app/app.dialogs.dart';
import 'package:codeland_task/app/app.locator.dart';
import 'package:codeland_task/app/app.router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context, child) {
          return MaterialApp(
            initialRoute: Routes.startupView,
            theme: theme,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
          );
        });
  }
}
