import 'package:flutter/material.dart';
import 'package:travelappflutter/core/app_export.dart';
import 'package:travelappflutter/core/utils/validation_functions.dart';
import 'package:travelappflutter/widgets/custom_button.dart';
import 'package:travelappflutter/widgets/custom_icon_button.dart';
import 'package:travelappflutter/widgets/custom_text_form_field.dart';

import 'controller/sign_in_controller.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                  height: 44,
                                  width: 44,
                                  margin:
                                      getMargin(left: 20, top: 8, right: 20),
                                  alignment: Alignment.centerLeft,
                                  onTap: () {
                                    onTapBtntf();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowleft)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 40, right: 20),
                                      child: Text("lbl_sign_in_now".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSFUIDisplaySemibold26
                                              .copyWith(height: 1.00)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 12, right: 20),
                                      child: Text("msg_please_sign_in".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSFUIDisplayRegular16
                                              .copyWith(height: 1.00)))),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controller.emailController,
                                  hintText: "msg_www_uihut_gmail".tr,
                                  margin:
                                      getMargin(left: 20, top: 40, right: 20),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(56.00),
                                      width: getHorizontalSize(335.00),
                                      margin: getMargin(
                                          left: 20, top: 24, right: 20),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(56.00),
                                                    width: getHorizontalSize(
                                                        335.00),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray100,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    14.00))))),
                                            Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                    padding:
                                                        getPadding(all: 16),
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 8,
                                                                      bottom:
                                                                          8),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .img,
                                                                  height:
                                                                      getVerticalSize(
                                                                          8.00),
                                                                  width: getHorizontalSize(
                                                                      97.00))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left:
                                                                          182),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgEyeicon,
                                                                  height:
                                                                      getSize(
                                                                          24.00),
                                                                  width: getSize(
                                                                      24.00)))
                                                        ])))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    onTap: () {
                                      Get.toNamed(
                                          AppRoutes.forgotPasswordScreen);
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20, top: 16, right: 20),
                                        child: Text("msg_forget_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtSFUIDisplayMedium14
                                                .copyWith(height: 1.00))),
                                  )),
                              CustomButton(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.verificationScreen);
                                  },
                                  width: 335,
                                  text: "lbl_sign_in".tr,
                                  margin:
                                      getMargin(left: 20, top: 40, right: 20),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 40, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text("msg_don_t_have_an_a".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtSFUIDisplayRegular14
                                                    .copyWith(height: 1.00)),
                                            InkWell(
                                              onTap: () {
                                                Get.toNamed(
                                                    AppRoutes.signUpScreen);
                                              },
                                              child: Padding(
                                                  padding: getPadding(left: 8),
                                                  child: Text("lbl_sign_up".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSFUIDisplayMedium14
                                                          .copyWith(
                                                              height: 1.00))),
                                            )
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 20, right: 20),
                                      child: Text("lbl_or_connect".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSFUIDisplayRegular14
                                              .copyWith(height: 1.00)))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20,
                                          top: 100,
                                          right: 20,
                                          bottom: 5),
                                      child: CommonImageView(
                                          imagePath: ImageConstant.imgGroup335,
                                          height: getVerticalSize(44.00),
                                          width: getHorizontalSize(172.00))))
                            ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
