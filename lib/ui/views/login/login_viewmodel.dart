import 'package:codeland_task/app/app.locator.dart';
import 'package:codeland_task/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  bool? _isUserNameEmpty;
  bool? _isPasswordEmpty;

  bool get isUserNameEmpty => _isUserNameEmpty ?? false;
  bool get isPasswordEmpty => _isPasswordEmpty ?? false;

  void goToHomePage() {
    _navigationService.navigateToHomeView();
  }

  void validateUsername(val) {
    _isUserNameEmpty = val;
    notifyListeners();
  }

  void validatePassword(val) {
    _isPasswordEmpty = val;
    notifyListeners();
  }
}
