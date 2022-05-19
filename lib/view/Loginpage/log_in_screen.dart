import 'package:flutter/material.dart';
import 'package:iotics/core/Api/data.dart';
import '../../core/Api/Models/sign_up_model/sign_up_model.dart';
import '../../core/constant widgets/buttonwidget.dart';
import '../../core/constant widgets/textwidget.dart';
import '../../core/constant widgets/txtbox.dart';
import '../Order_listing_page/orderlisting_screen.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          width: 300,
          height: 350,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const TextWidget(
                    txt: "Taste",
                    size: 30,
                    weight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(height: 50),
                  TxtField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    hint: "Username",
                    controller: usernameController,
                    pass: false,
                  ),
                  TxtField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      return null;
                    },
                    hint: "Password",
                    controller: passwordController,
                    pass: true,
                  ),
                  ButtonWidget(
                    ontap: () async {
                      if (_formKey.currentState!.validate()) {
                        final _auth = await signUp();
                        if (_auth == true) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const OrderListingScreen())));
                        } else {
                          return;
                        }
                      }
                    },
                    txt: "Sign In",
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  Future<bool?> signUp() async {
    final username = usernameController.text;
    final password = passwordController.text;
    final value = SignUpModel.create(username: username, password: password);
    final auth = await TasteDb().signIn(value);
    return auth;
  }
}
