import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget{
  const BottomNavigation({super.key});

  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}
class _BottomNavigationState extends State<BottomNavigation>{
  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? SvgPicture.asset('assets/svg/ic_home_selected.svg')
                : SvgPicture.asset('assets/svg/ic_home.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset('assets/svg/ic_search_selected.svg')
                : SvgPicture.asset('assets/svg/ic_search.svg'),
          label: 'Search',
        ),
        BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? SvgPicture.asset('assets/svg/ic_notification_selected.svg')
                : SvgPicture.asset('assets/svg/ic_notification.svg'),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? SvgPicture.asset('assets/svg/ic_setting_selected.svg')
                : SvgPicture.asset('assets/svg/ic_setting.svg'),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xffF6925C),
      onTap: _onItemTapped,
      backgroundColor: Colors.transparent,
      elevation: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    );
  }

}
