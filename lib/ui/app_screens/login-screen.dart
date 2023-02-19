import 'package:assignment_project_piistech/utility/screen_background_widget.dart';
import 'package:flutter/material.dart';
import '../style.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void loginValidation() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Login Successfully')),
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Dashboard()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenBackground(
        widget: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 200,
                child: Image.asset(
                  'assets/images/logo_piistech.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                    child: Text(
                      'Get Started With',
                      style: appTitleStyle,textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                child: TextFormField(
                    controller: userNameTextController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your user name';
                      }
                      return null;
                    },
                    decoration: AppInputDecoration(
                        'User Name', const Icon(Icons.person))),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 50),
                child: TextFormField(
                    controller: passwordTextController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    decoration: AppInputDecoration(
                      "Password",
                      const Icon(Icons.lock),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                child: ElevatedButton(
                  onPressed: () {
                    loginValidation();
                  },
                  style: AppButtonStyle(),
                  child: ButtonChild('LOGIN'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
