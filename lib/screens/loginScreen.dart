import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:ecom_login_flutter/screens/homeScreen.dart';
import '../utils/colors.dart';

class LoginScreen extends StatelessWidget {
  final Future<String?> Function(LoginData)? onLogin;
  final Future<String?> Function(SignupData)? onSignup;
  final Future<String?> Function(String)? onRecoverPassword;

  const LoginScreen({
    super.key,
    this.onLogin,
    this.onSignup,
    this.onRecoverPassword,
  });

  @override
  Widget build(BuildContext context) {
    const inputBorder = BorderRadius.all(Radius.circular(12.0));

    return FlutterLogin(
      title: '',
      onLogin: onLogin ?? (_) async => null,
      onSignup: onSignup ?? (_) async => null,
      onRecoverPassword: onRecoverPassword ?? (_) async => null,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    appBarTitle: 'Home',
                    screens: [
                      Center(child: Text('Home Screen')),
                      Center(child: Text('Shop Screen')),
                      Center(child: Text('Wishlist Screen')),
                      Center(child: Text('Cart Screen')),
                      Center(child: Text('Profile Screen')),
                    ],
                    bottomNavigationItems: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.search), label: 'Shop'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.favorite_border), label: 'Wishlist'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.shopping_cart_outlined),
                          label: 'Cart'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_box), label: 'Profile'),
                    ],
                  )),
        );
      },
      theme: LoginTheme(
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.primaryColor,
        errorColor: AppColors.zambeziColor,
        titleStyle: const TextStyle(
          color: AppColors.whiteColor,
          fontFamily: 'Roboto',
          fontSize: 28,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
        bodyStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.zambeziColor,
        ),
        textFieldStyle: const TextStyle(
          color: AppColors.blackColor,
        ),
        buttonStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.whiteColor,
        ),
        cardTheme: CardTheme(
          color: AppColors.whiteColor,
          elevation: 8,
          shadowColor: AppColors.darkGreyColor.withOpacity(0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.textFieldColor.withOpacity(0.3),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          labelStyle: const TextStyle(
            fontSize: 14,
            color: AppColors.zambeziColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: inputBorder,
            borderSide:
                const BorderSide(color: AppColors.zambeziColor, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: inputBorder,
            borderSide:
                const BorderSide(color: AppColors.primaryColor, width: 2.0),
          ),
        ),
        buttonTheme: LoginButtonTheme(
          splashColor: AppColors.primaryColor.withOpacity(0.5),
          highlightColor: AppColors.primaryColor.withOpacity(0.3),
          backgroundColor: AppColors.primaryColor,
          elevation: 6.0,
          highlightElevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        pageColorLight: AppColors.primaryColor.withOpacity(0.2),
        pageColorDark: AppColors.primaryColor.withOpacity(0.5),
      ),
    );
  }
}
