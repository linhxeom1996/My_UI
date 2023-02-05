import 'package:code_base/screens/bottom_bar/bottom_bar_bloc.dart';
import 'package:code_base/screens/bottom_bar/bottom_bar_event.dart';
import 'package:code_base/screens/bottom_bar/bottom_bar_state.dart';
import 'package:code_base/screens/page_account/account_page.dart';
import 'package:code_base/screens/page_cart/cart_page.dart';
import 'package:code_base/screens/page_favorite/favorite_page.dart';
import 'package:code_base/screens/page_home/home_page.dart';
import 'package:code_base/screens/page_search/search_page.dart';
import 'package:code_base/screens/services/notification_service.dart';
import 'package:code_base/screens/widgets/behavior.dart';
import 'package:code_base/theme/colors.dart';
import 'package:code_base/theme/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentPage = 0;
  final List<Widget> _listPage = [
    const HomePage(),
    const SearchPage(),
    const CartPage(),
    const FavoritePage(),
    AccountPage()
  ];

  @override
  void initState() {
    NotificationService().requestPermisionNotification();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () {
      return AppWillPopScope().willPopScope();
    }, child:
        BlocBuilder<BottomBarBloc, BottomBarState>(builder: (context, state) {
      switch (state.indexPage) {
        case 1:
          _currentPage = 1;
          break;
        case 2:
          _currentPage = 2;
          break;
        case 3:
          _currentPage = 3;
          break;
        case 4:
          _currentPage = 4;
          break;
        default:
          _currentPage = 0;
          break;
      }
      return Scaffold(
        bottomNavigationBar: _bottomNavigatorBar(),
        body: AnimatedContainer(
          duration: const Duration(seconds: 2),
          curve: Curves.easeInCubic,
          child: _listPage[_currentPage],
        ),
      );
    }));
  }

  Widget _bottomNavigatorBar() {
    List<BottomNavigationBarItem> listBottomBar = [
      BottomNavigationBarItem(
          icon: Image.asset(AppImage.bottom_bar_home,
              color: _currentPage == 0 ? AppColor.mainColor : AppColor.black,
              width: 18,
              height: 18),
          label: "Home"),
      BottomNavigationBarItem(
          icon: Image.asset(AppImage.bottom_bar_search,
              color: _currentPage == 1 ? AppColor.mainColor : AppColor.black,
              width: 18,
              height: 18),
          label: "Explore"),
      BottomNavigationBarItem(
          icon: Image.asset(AppImage.bottom_bar_cart,
              color: _currentPage == 2 ? AppColor.mainColor : AppColor.black,
              width: 18,
              height: 18),
          label: "Cart"),
      BottomNavigationBarItem(
          icon: Image.asset(AppImage.bottom_bar_favorite,
              color: _currentPage == 3 ? AppColor.mainColor : AppColor.black,
              width: 18,
              height: 18),
          label: "Favorite"),
      BottomNavigationBarItem(
          icon: Image.asset(AppImage.bottom_bar_person,
              color: _currentPage == 4 ? AppColor.mainColor : AppColor.black,
              width: 18,
              height: 18),
          label: "Account"),
    ];

    return BottomNavigationBar(
      currentIndex: _currentPage,
      type: BottomNavigationBarType.fixed,
      items: listBottomBar,
      selectedItemColor: AppColor.mainColor,
      onTap: (index) {
        // setState(() {
        //   _currentPage = index;
        // });
        context.read<BottomBarBloc>().add(BottomBarEvent(indexPage: index));
      },
    );
  }
}
