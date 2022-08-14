import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobilerush2022/presentation/dashboard.dart';
import 'package:mobilerush2022/utls/app.const.dart';
import 'package:mobilerush2022/utls/widgets/custom_form.dart';

import '../../utls/commons/form_valid.dart';
import '../terms_conditionpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with ValidationMixin {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool ischeck;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: GestureDetector(
        onTap: () {
          return FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: SizedBox(
                        height: 150,
                        width: 200,
                        child: Image.asset(Appconst.appLogoAsset),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 10),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Appconst.secondaryCOlor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyFormField(
                      hintText: "Email",
                      controller: emailController,
                      validator: (email) {
                        return isEmailValid(email!)
                            ? null
                            : 'Enter Valid Email';
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyFormField(
                      hintText: "Password",
                      controller: passwordController,
                      validator: (password) {
                        return isPasswordValid(password!)
                            ? null
                            : 'Password should be atleast 8 Characters';
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Forgot Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (() {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const DashBoard()));
                        }
                      }),
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Appconst.primaryColor,
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.check_box),
                        const Text("I agree to the"),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) =>
                                        const TermsConditonPage()));
                          },
                          child: const Text(
                            "Terms and Conditions",
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.check_box),
                        RichText(
                          text: TextSpan(
                              style: GoogleFonts.poppins(color: Colors.black),
                              text: "Not  registerd yet?",
                              children: const [
                                TextSpan(
                                    text: " Sign Up",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
