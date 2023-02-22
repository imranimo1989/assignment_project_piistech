
import 'package:assignment_project_piistech/Model/apiClient.dart';
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
  bool isLoading = false;

  Future<void> Login() async {

    setState(() {
      isLoading = true;


    });
    bool response = await LoginRequest(
        userNameTextController.text, passwordTextController.text);

    if (response == true) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard()),
          (route) => false);
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ScreenBackground(
        widget: Form(
          key: _formKey,
          child: Container(
            alignment: Alignment.center,
            child: isLoading
                ? (const CircularProgressIndicator())
                : SingleChildScrollView(
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
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 15),
                              child: Text(
                                'Get Started With',
                                style: appTitleStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 50),
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 50),
                          child: TextFormField(
                              controller: passwordTextController,
                              obscureText: true,
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
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 50),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Login();
                              }
                            },
                            style: AppButtonStyle(),
                            child: ButtonChild('LOGIN'),
                          ),
                        )
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
