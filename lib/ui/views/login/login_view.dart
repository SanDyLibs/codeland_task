import 'package:codeland_task/ui/common/app_colors.dart';
import 'package:codeland_task/ui/common/app_strings.dart';
import 'package:codeland_task/ui/common/ui_helpers.dart';
import 'package:codeland_task/ui/widgets/button_widget.dart';
import 'package:codeland_task/ui/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  static final _formKey = GlobalKey<FormState>();

  @override
  Widget builder(
      BuildContext context, LoginViewModel viewModel, Widget? child) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: leftPadding(86) + ringhtPadding(86),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/codeland_text_logo.png',
                      width: 202.w,
                      height: 128.w,
                    ),
                    Padding(
                      padding: topPadding(100),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/codeland_logo.png',
                            height: 180.w,
                            width: 180.w,
                          ),
                          verticalSpace(16),
                          Text(
                            biomedical_kiosk,
                            style: fontFamilyPoppinsSemiBold.size20,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              for_HCEs,
                              style: fontFamilyPoppinsMedium.size10.colorFF7709,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(10),
              Padding(
                padding: defaultPadding(30),
                child: Column(
                  children: [
                    TextFieldWidget(
                      height: viewModel.isUserNameEmpty ? 77.w : null,
                      labelText: 'Username',
                      textInputAction: TextInputAction.next,
                      onSaved: (val) => viewModel.validateUsername(
                          (val ?? '').isNotEmpty ? false : true),
                      validator: (val) {
                        viewModel.validateUsername(
                            (val ?? '').isNotEmpty ? false : true);
                        return val == null || val.isEmpty
                            ? 'Username is required'
                            : null;
                      },
                    ),
                    verticalSpace(19),
                    TextFieldWidget(
                      height: viewModel.isPasswordEmpty ? 77.w : null,
                      isPassword: true,
                      labelText: 'Password',
                      textInputAction: TextInputAction.done,
                      onSaved: (val) => viewModel.validatePassword(
                          (val ?? '').isNotEmpty ? false : true),
                      validator: (val) {
                        viewModel.validatePassword(
                            (val ?? '').isNotEmpty ? false : true);
                        return val == null || val.isEmpty
                            ? 'Password is required'
                            : null;
                      },
                    ),
                    verticalSpace(27),
                    Row(
                      children: [
                        Expanded(
                          child: ButtonWidget(
                            onTap: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                _formKey.currentState?.save();
                                viewModel.goToHomePage();
                              }
                            },
                            height: 56.w,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(56),
                    Row(
                      children: [
                        Text(
                          'For Assistance & Login Details Contact: ',
                          style: fontFamilyPoppinsMedium.size12,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'English, Kannada & Telugu : ',
                          style: fontFamilyPoppinsRegular.size12,
                        ),
                        InkWell(
                          onTap: () => launchUrlString("tel:9071386515"),
                          child: Text(
                            '7406333800',
                            style: fontFamilyPoppinsSemiBold
                                .size12.colorFF7709.underline,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'English, Kannada & Hindi    : ',
                          style: fontFamilyPoppinsRegular.size12,
                        ),
                        InkWell(
                          onTap: () => launchUrlString("tel:9071386515"),
                          child: Text(
                            '9071386515',
                            style: fontFamilyPoppinsSemiBold
                                .size12.colorFF7709.underline,
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(61),
                    Text(
                      'v1.7 © 2023,Codeland Infosolutions Pvt Ltd.',
                      style: fontFamilyPoppinsMedium.size12,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(BuildContext context) => LoginViewModel();
}
