import 'package:code_base/screens/page_book/book_page.dart';
import 'package:code_base/screens/page_home/home_page.dart';
import 'package:code_base/screens/page_setting/setting_page.dart';
import 'package:code_base/screens/services/notification_service.dart';
import 'package:code_base/screens/widgets/app_bar_widget.dart';
import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/dimens.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentPage = 0;
  final List<Widget> _listPage = [
    const HomePage(),
    const BookPage(),
    const SettingPage(),
  ];

  final List<BottomNavigationBarItem> _listBottomBar = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.book), label: "Book"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
  ];

  final PageController _pageController = PageController();

  @override
  void initState() {
    NotificationService().requestPermisionNotification();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return AppWillPopScope().willPopScope();
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPage,
          type: BottomNavigationBarType.fixed,
          items: _listBottomBar,
          onTap: (index) {
            setState(() {
              _currentPage = index;
            });
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          },
        ),
        body: PageView.builder(
          controller: _pageController,
          itemCount: _listPage.length,
          itemBuilder: (context, index) {
            return _listPage[index];
          },
        ),
      ),
    );
  }
}
