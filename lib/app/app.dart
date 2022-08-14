import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobilerush2022/presentation/auth/signup_page.dart';
import 'package:mobilerush2022/utls/app.const.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Colors.white,
          titleTextStyle: GoogleFonts.poppins(
              color: Appconst.secondaryCOlor,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const SignUpPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
