import 'package:code_base/base/button_base.dart';
import 'package:code_base/models/setting_model.dart';
import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/theme/icons.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../theme/dimens.dart';
import '../../theme/style.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  final List<SettingModel> _listSetting = [
    SettingModel(icon: AppImage.account_ic_orders, title: "Other"),
    SettingModel(
        icon: AppImage.account_ic_details,
        title: "My Details",
        paddingDivider: true),
    SettingModel(
        icon: AppImage.account_ic_delivery,
        title: "Delivery Address",
        paddingDivider: true),
    SettingModel(icon: AppImage.account_ic_payment, title: "Payment Methods"),
    SettingModel(icon: AppImage.account_ic_promo, title: "Promo Card"),
    SettingModel(icon: AppImage.account_ic_notification, title: "Notification"),
    SettingModel(icon: AppImage.account_ic_help, title: "Help"),
    SettingModel(icon: AppImage.account_ic_about, title: "About"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppDimens.spacing30,
                    horizontal: AppDimens.horizontalCommon),
                child: InfoUser(),
              ),
              const Divider(color: Colors.grey, height: 0),
              Expanded(
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: ListView.builder(
                      itemCount: _listSetting.length,
                      itemBuilder: (context, index) {
                        return _itemPerson(
                            icon: _listSetting[index].icon,
                            title: _listSetting[index].title,
                            paddingDivider:
                                _listSetting[index].paddingDivider ?? false);
                      }),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimens.horizontalCommon),
                child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Image.asset(AppImage.account_ic_logout,
                            width: 25, height: 25, color: AppColor.mainColor),
                        Text(
                          'logout'.tr(),
                          style: const TextStyle(
                              fontSize: AppDimens.sizeTxt15,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppTextStyle.fontSemibold),
                        ),
                        const SizedBox(height: 25),
                      ],
                    )),
              )
            ],
          )),
    );
  }

  Widget _itemPerson(
      {required String icon,
      required String title,
      required bool paddingDivider}) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.horizontalCommon),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Image.asset(icon, width: 20, height: 20),
                const SizedBox(width: AppDimens.spacing15),
                Text(
                  title,
                  style: const TextStyle(
                      color: AppColor.black,
                      fontSize: AppDimens.sizeTxt14,
                      fontFamily: AppTextStyle.fontSemibold,
                      fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios, size: 15)
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingDivider ? 20 : 0),
          child: const Divider(color: Colors.grey, height: 0),
        )
      ],
    );
  }
}

class InfoUser extends StatelessWidget {
  const InfoUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/account_img_avatar.jpeg"),
        ),
        const SizedBox(width: AppDimens.spacing20),
        GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  const Text(
                    "Afsar Hossen",
                    style: TextStyle(
                        fontSize: AppDimens.sizeTxt17,
                        color: AppColor.black,
                        fontWeight: FontWeight.w800,
                        fontFamily: AppTextStyle.fontSemibold),
                  ),
                  const SizedBox(width: AppDimens.spacing8),
                  SizedBox(
                      width: 15,
                      height: 15,
                      child: Image.asset(AppImage.account_ic_edit))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: AppDimens.spacing3),
                child: Text(
                  "Imshuvo97@gmail.com",
                  style: TextStyle(
                      color: Color(0xff78746D),
                      fontSize: AppDimens.sizeTxt11,
                      fontFamily: AppTextStyle.fontSemibold),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
