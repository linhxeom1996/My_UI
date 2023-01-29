import 'package:code_base/screens/routers/path_router.dart';
import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/screens/widgets/button_widget.dart';
import 'package:code_base/screens/widgets/image_widget.dart';
import 'package:code_base/screens/widgets/text_field_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:code_base/theme/icons.dart';
import 'package:code_base/theme/style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              Text('title_login'.tr(), style: AppTextStyle.titleSemibold20),
              Padding(
                padding: const EdgeInsets.only(
                    top: AppDimens.spacing5, bottom: AppDimens.spacing30),
                child: Text('enter_email'.tr(),
                    style: AppTextStyle.txtStyleSemibold),
              ),
              TextFieldCommon(label: 'email'.tr(), hintText: 'hint_email'.tr()),
              Padding(
                padding: const EdgeInsets.only(
                    top: AppDimens.spacing20, bottom: AppDimens.spacing10),
                child: TextFieldCommon(
                  label: 'password'.tr(),
                  hintText: 'hint_password'.tr(),
                  suffixIcon: Icons.visibility_off,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text('forgot_password'.tr(),
                    style: const TextStyle(
                        color: Color(0xff78746D),
                        fontSize: AppDimens.sizeTxt13,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppTextStyle.fontSemibold)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: AppDimens.spacing30, bottom: AppDimens.spacing20),
                child: ButtonCommon(
                    onPressed: () {
                      Navigator.pushNamed(context, PathScreen.bottomBar);
                    },
                    text: 'log_in'.tr()),
              ),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, PathScreen.register);
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'dont_have_account'.tr(),
                          style: const TextStyle(
                              color: AppColor.black,
                              fontSize: AppDimens.sizeTxt14,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppTextStyle.fontSemibold)),
                      TextSpan(
                          text: 'signup'.tr(),
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
}
