import 'package:flutter/material.dart';
import 'package:sociopaths/pages/agenda.dart';
import 'package:sociopaths/pages/feed.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

double bottomSpace = 0;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    if (MediaQuery.of(context).size.height < 690) {
      bottomSpace = -130;
    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFEDF5F9),
        body: Stack(children: [
          Positioned(
              top: bottomSpace,
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/login_bg.png', scale: 0.9)),
          Column(
            mainAxisAlignment:
                (WidgetsBinding.instance!.window.viewInsets.bottom > 0.0)
                    ? (MainAxisAlignment.center)
                    : (MainAxisAlignment.end),
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(
                        color: Color(0xFFFF9E8F),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    hintText: "Email or phone number",
                    fillColor: const Color(0xFF272F40),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(
                        color: Color(0xFFFF9E8F),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    hintText: "Password",
                    fillColor: const Color(0xFF272F40),
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.fromLTRB(50, 20, 50, 10),
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFFFF9E8F),
                  ),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/feed');
                      },
                      child: const Text('Login',
                          style: TextStyle(
                              color: Color(0xFF272F40),
                              fontWeight: FontWeight.bold,
                              fontSize: 22)))),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text(
                  'Is it first time to you ?',
                  style: TextStyle(
                    color: Color(0xFF001120),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign up now',
                      style: TextStyle(
                        color: Color(0xFFFF9E8F),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ))
              ]),
              const Text(
                'Or sign with',
                style: TextStyle(
                  color: Color(0xFF001120),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Image.asset('assets/google_logo.png'),
              )
            ],
          )
        ]));
  }
}
