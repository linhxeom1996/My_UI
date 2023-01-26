import 'package:code_base/screens/page_account/account_page.dart';
import 'package:code_base/screens/page_book/book_page.dart';
import 'package:code_base/screens/page_home/home_page.dart';
import 'package:code_base/screens/page_setting/setting_page.dart';
import 'package:code_base/screens/services/notification_service.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _currentPage = 0;

  final List<Widget> _listPage = [
    HomePage(),
    const BookPage(),
    const SettingPage(),
    const AccountPage(),
  ];

  final List<BottomNavigationBarItem> _listBottomBar = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: "Danh mục"),
    BottomNavigationBarItem(icon: Icon(Icons.message), label: "Tin mới"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Tài khoản"),
  ];

  final PageController _pageController = PageController();

  @override
  void initState() {
    NotificationService().requestPermisionNotification();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPage,
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
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _listPage.length,
        itemBuilder: (context, index) {
          return _listPage[index];
        },
      ),
    );
  }
}
