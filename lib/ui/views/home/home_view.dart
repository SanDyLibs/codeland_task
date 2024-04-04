import 'package:codeland_task/ui/common/app_colors.dart';
import 'package:codeland_task/ui/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:codeland_task/ui/common/ui_helpers.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(40),
            Text(
              'Upload a image',
              style: fontFamilyPoppinsSemiBold.size16,
            ),
            verticalSpace(20),
            Container(
              width: 296.w,
              height: 509.w,
              decoration: BoxDecoration(
                border: Border.all(width: 1.w),
              ),
              child: viewModel.viewImage
                  ? Image.file(viewModel.image!)
                  : Icon(
                      Icons.image,
                      size: 200.w,
                    ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                  onTap: () => viewModel.getImage(),
                  height: 35.w,
                  width: 112.w,
                  title: 'Upload',
                  fontSize: 14.sp,
                ),
                ButtonWidget(
                  title: 'View',
                  onTap: () => viewModel.previewImage(),
                  color: viewModel.image != null ? null : kcLightGrey,
                  fontColor: viewModel.image != null ? null : kcDarkGreyColor,
                  fontSize: 14.sp,
                  width: 112.w,
                  height: 35.w,
                ),
              ],
            ),
            verticalSpace(20)
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
