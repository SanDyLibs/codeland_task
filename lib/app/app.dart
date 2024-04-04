import 'package:codeland_task/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:codeland_task/ui/views/home/home_view.dart';
import 'package:codeland_task/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:codeland_task/ui/views/login/login_view.dart';
import 'package:codeland_task/ui/views/image/image_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ImageView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
