import 'package:get/get_navigation/get_navigation.dart';
import 'package:jewel_bank/Views/CreateAccount/create_account.dart';
import 'package:jewel_bank/Views/Home/home.dart';
import 'package:jewel_bank/Views/Login/login.dart';
import 'package:jewel_bank/Views/Onboarding/onboarding.dart';
import 'package:jewel_bank/Views/Profile/profile_screen.dart';
import 'package:jewel_bank/Views/Start/start_screen.dart';
import 'package:jewel_bank/Views/Wallet/wallet.dart';

import '../Views/AccountPurchase/account_purchase.dart';
import '../Views/Monetization/monetization_screen.dart';
import '../Views/Support/support.dart';

class RouteUtils {
  static GetPage start = GetPage(
    name: '/',
    page: () => StartScreen(),
  );
  static GetPage onBoarding = GetPage(
    name: '/onBoarding',
    page: () => OnboardingScreen(),
  );
  static GetPage home = GetPage(
    name: '/home',
    page: () =>  HomeScreen(),
  );
  static GetPage createAccount = GetPage(
    name: '/createAccount',
    page: () => const CreateAccountScreen(),
  );
  static GetPage login = GetPage(
    name: '/login',
    page: () => LoginScreen(),
  );
  static GetPage monetization = GetPage(
    name: '/Monetization',
    page: () => const MonetizationScreen(),
  );
  static GetPage wallet = GetPage(
    name: '/wallet',
    page: () => WalletScreen(),
  );
  static GetPage profile = GetPage(
    name: '/profile',
    page: () => ProfileScreen(),
  );
  static GetPage support = GetPage(
    name: '/support',
    page: () => const SupportScreen(),
  );
  static GetPage accountPurchase = GetPage(
    name: '/purchase',
    page: () => const AccountPurchase(),
  );
}
