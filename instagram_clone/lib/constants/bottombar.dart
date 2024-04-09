import'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_clone/home/homepage.dart';
import 'package:instagram_clone/screens/AccountScreen.dart';
import 'package:instagram_clone/screens/add_screen.dart';
import 'package:instagram_clone/screens/search_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({final Key? key})
      : super(key: key);
  

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
   PersistentTabController _controller= PersistentTabController();
   bool _hideNavBar = false;



  List<Widget> _buildScreens() => [
     
    MyHomePage(),
    SearchPage(),
    AddMedia(),
    AccountPage()
       
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            inactiveIcon: const Icon(Icons.home_outlined),
            title: "Home",
            activeColorPrimary: Colors.white,
            inactiveColorPrimary: Colors.grey,
            ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.search),
          inactiveIcon: const Icon(Icons.search_outlined),
          title: "Search",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey,
          
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.add_box),
          inactiveIcon: const Icon(Icons.add_box_outlined),
          title: "Upload",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey,
         
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(Icons.person),
          inactiveIcon: const Icon(Icons.person_2_outlined),
          title: "Profile",
          activeColorPrimary: Colors.white,
          inactiveColorPrimary: Colors.grey,
         
        ),
       
      ];

      //hide navbar
       void logout() {
    setState(() {
      _hideNavBar = true; // Hide the bottom navigation bar
    });
    // Additional logout logic can go here
  }

  @override
  Widget build(final BuildContext context) => Scaffold(

      
       
        body: Stack(children: [

          

          Positioned.fill(
            child: PersistentTabView(
            context,
            controller: _controller,
            screens: _buildScreens(),
            items: _navBarsItems(),
            resizeToAvoidBottomInset: true,
            navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
                ? 0.0
                : kBottomNavigationBarHeight,
            bottomScreenMargin: 0,
            
                     
            backgroundColor: Color.fromARGB(255, 17, 16, 17),
            
            hideNavigationBar: _hideNavBar,
            decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
            itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 400),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
            ),
            navBarStyle: NavBarStyle
                .style1, // Choose the nav bar style with this property
                    ),
          ),
        
       
        ],)
      );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<bool>('_hideNavBar', _hideNavBar));
  }
}