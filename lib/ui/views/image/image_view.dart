import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'image_viewmodel.dart';

class ImageView extends StackedView<ImageViewModel> {
  const ImageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ImageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  ImageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ImageViewModel();
}
