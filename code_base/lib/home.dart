import 'package:code_base/screens/page_book/book_page.dart';
import 'package:code_base/screens/page_search/search_page.dart';
import 'package:code_base/screens/page_setting/setting_page.dart';
import 'package:code_base/screens/services/notification_service.dart';
import 'package:code_base/screens/widgets/app_bar_widget.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;
  final List<Widget> _listPage = [
    const SearchPage(),
    const BookPage(),
    const SettingPage(),
  ];

  @override
  void initState() {
    NotificationService().requestPermisionNotification();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCommon(
        title: "discover".tr(),
        colorTitle: AppColor.black54,
        bgColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: AppDimens.spacing10),
          child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.25),
                child: const Icon(Icons.menu, color: Colors.black54),
              )),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Book"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
      body: _listPage[_currentPage],
    );
  }
}
