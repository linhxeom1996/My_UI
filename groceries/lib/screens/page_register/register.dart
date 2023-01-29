import 'dart:developer';
import 'package:code_base/screens/routers/path_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/icons.dart';
import '../../theme/style.dart';
import '../widgets/behavior.dart';
import '../widgets/button_widget.dart';
import '../widgets/image_widget.dart';
import '../widgets/text_field_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return AppWillPopScope().willPopScope();
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.horizontalCommon),
          decoration: const BoxDecoration(
              color: AppColor.white,
              image: DecorationImage(
                image: AssetImage(AppImage.login_bg),
                fit: BoxFit.fill,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(
                    top: AppDimens.spacing100, bottom: AppDimens.spacing50),
                child: Align(
                  alignment: Alignment.center,
                  child: ImageWidget(
                      asset: AppImage.login_ic_header, width: 50, height: 50),
                ),
              ),
              Text('title_register'.tr(), style: AppTextStyle.titleSemibold20),
              Padding(
                padding: const EdgeInsets.only(
                    top: AppDimens.spacing5, bottom: AppDimens.spacing30),
                child: Text('enter_credential'.tr(),
                    style: AppTextStyle.txtStyleSemibold),
              ),
              TextFieldCommon(
                  label: 'user_name'.tr(), hintText: 'hint_name'.tr()),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: AppDimens.spacing20),
                child: TextFieldCommon(
                  label: 'email'.tr(),
                  hintText: 'hint_email'.tr(),
                  suffixIcon: Icons.done,
                  suffixColor: AppColor.mainColor,
                ),
              ),
              TextFieldCommon(
                label: 'password'.tr(),
                hintText: 'hint_password'.tr(),
                suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(height: AppDimens.spacing20),
              policy(),
              Padding(
                padding: const EdgeInsets.only(
                    top: AppDimens.spacing30, bottom: AppDimens.spacing20),
                child: ButtonCommon(
                    onPressed: () {
                      Navigator.pushNamed(context, PathScreen.bottomBar);
                    },
                    text: 'title_register'.tr()),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PathScreen.login);
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'already_have_account'.tr(),
                          style: const TextStyle(
                              color: AppColor.black,
                              fontSize: AppDimens.sizeTxt14,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppTextStyle.fontSemibold)),
                      TextSpan(
                          text: 'title_login'.tr(),
                          style: const TextStyle(
                              color: Color(0xff53B175),
                              fontSize: AppDimens.sizeTxt14,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppTextStyle.fontSemibold)),
                    ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget policy() {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: 'by_continue'.tr(), style: AppTextStyle.txtStyleSemibold),
        TextSpan(
            text: 'term_of_service'.tr(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                log("tab term of");
              },
            style: const TextStyle(
                color: Color(0xff53B175),
                fontSize: AppDimens.sizeTxt14,
                fontFamily: AppTextStyle.fontSemibold)),
        TextSpan(text: 'and'.tr(), style: AppTextStyle.txtStyleSemibold),
        TextSpan(
            text: 'privacy_policy'.tr(),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                log("tab privacy policy");
              },
            style: const TextStyle(
                color: Color(0xff53B175),
                fontSize: AppDimens.sizeTxt14,
                fontFamily: AppTextStyle.fontSemibold)),
      ]),
    );
  }
}
