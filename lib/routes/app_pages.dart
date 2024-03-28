import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/application/application_index.dart';
import '../pages/splash/splash_index.dart';
import 'app_route_name.dart';

/// Responsible for the entire application pages
class AppPages {
  static const splash = AppRouteName.splash;
  static const application = AppRouteName.applicationPage;
  static final RouteObserver<Route> observer = RouteObserver();
  static List<String> history = [];

  static final List<GetPage> routes = [
    ///This handles the call of the first page
    GetPage(
      name: AppRouteName.splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
    ),
/*
    ///This handles the call of the OnBoardingPage
    GetPage(
      name: AppRouteName.OnBoardingPage,
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
      name: AppRouteName.applicationPage,
      page: () => const ApplicationPage(),
      binding: ApplicationBinding(),
    ),
    /*
    GetPage(
      name: AppRouteName.SettingPage,
      page: () => const SettingPage(),
      binding: SettingPage(),
    ),
    */
/*
    ///This handles the call of the first page
    GetPage(
      name: AppRouteName.HistoryPage,
      page: () => const HistoryPage(),
      binding: HistoryBinding(),
    ),

    ///This handles the call of the ChatPage
    GetPage(
      name: AppRouteName.ChatPage,
      page: () => const ChatPage(),
      binding: ChatPageBinding(),
    ),
*/
  ];
}
