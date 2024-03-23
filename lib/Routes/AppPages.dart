import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/application/application_index.dart';
import '../pages/splash/splash_index.dart';
import 'RouteName.dart';

/// Responsible for the entire application pages
class AppPages {
  static const Splash = RouteName.Splash;
  static const Application = RouteName.ApplicationPage;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> Routes = [
    ///This handles the call of the first page
    GetPage(
      name: RouteName.Splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
/*
    ///This handles the call of the OnBoardingPage
    GetPage(
      name: RouteName.OnBoardingPage,
      page: () => const OnBoardingPage(),
      binding: OnBoardingBinding(),
      middlewares: [
        GetMiddleware(priority: 1),
      ],
      transition: Transition.rightToLeftWithFade,
    ),
*/
    ///This handles the call of the ApplicationPage
    GetPage(
      name: RouteName.ApplicationPage,
      page: () => const ApplicationPage(),
      binding: ApplicationBinding(),
    ),
    /*
    GetPage(
      name: RouteName.SettingPage,
      page: () => const SettingPage(),
      binding: SettingPage(),
    ),
    */
/*
    ///This handles the call of the first page
    GetPage(
      name: RouteName.HistoryPage,
      page: () => const HistoryPage(),
      binding: HistoryBinding(),
    ),

    ///This handles the call of the ChatPage
    GetPage(
      name: RouteName.ChatPage,
      page: () => const ChatPage(),
      binding: ChatPageBinding(),
    ),
*/
  ];
}
