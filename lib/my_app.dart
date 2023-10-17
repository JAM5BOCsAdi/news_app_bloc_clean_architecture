import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app_bloc_clean_architecture/src/config/themes/theme_color.dart';
import 'package:news_app_bloc_clean_architecture/src/features/daily_news/presentation/views/breaking_news_view.dart';
import 'package:news_app_bloc_clean_architecture/src/features/daily_news/presentation/views/saved_articles_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late PersistentTabController _controller;
  final ThemeColor themeColor = ThemeColor();

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  List<Widget> _buildScreens() {
    return [
      const BreakingNewsView(),
      const SavedArticlesView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.news_solid),
        title: 'News',
        activeColorPrimary: themeColor.getPrimaryColor(context),
        inactiveColorPrimary: themeColor.getSecondaryColor(context),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bookmark),
        title: 'Saved',
        activeColorPrimary: themeColor.getPrimaryColor(context),
        inactiveColorPrimary: themeColor.getSecondaryColor(context),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: themeColor.getSystemNavigationBarStyle(context),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News App',
        theme: FlexThemeData.light(
          scheme: FlexScheme.purpleM3,
          useMaterial3: true,
        ),
        darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.purpleM3,
          useMaterial3: true,
        ),
        themeMode: ThemeMode.system,
        home: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: themeColor.getBrightness(context) == Brightness.light ? Colors.white : Colors.black, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          // decoration: NavBarDecoration(
          //       borderRadius: BorderRadius.circular(10.0),
          //       colorBehindNavBar: Colors.black,
          //     ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle.style6, // Choose the nav bar style with this property.
        ),
      ),
    );
  }
}
