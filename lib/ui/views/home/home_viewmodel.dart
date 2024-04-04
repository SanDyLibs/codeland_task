import 'dart:io';

import 'package:codeland_task/app/app.dialogs.dart';
import 'package:codeland_task/app/app.locator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  File? _image;
  File? get image => _image;

  bool? _viewImage;

  bool get viewImage => _viewImage ?? false;

  Future<void> getImage() async {
    await requestPhotosPermission();
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _image = File(pickedFile.path);
      showDialog('Success', 'Image successfully uploaded, please click view to preview the image.');
    } else {
      showDialog('Warning!', 'No image selected.');
    }
    _viewImage = false;
    notifyListeners();
  }

  void previewImage() {
    _viewImage = image == null ? false : true;
    notifyListeners();
  }

  Future<bool> requestPhotosPermission() async {
    PermissionStatus photosPermissionStatus;
    if (Platform.isIOS) {
      photosPermissionStatus = await Permission.photos.request();
    } else {
      photosPermissionStatus = await Permission.camera.request();
    }
    if (photosPermissionStatus != PermissionStatus.granted) {
      showDialog('Permisson', 'Codeland Needs Your Permission To Access The Photo Library');
      return false;
    }
    return true;
  }

  void showDialog(title, val) {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: title,
      description: val,
    );
  }
}
