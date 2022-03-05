import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

void Load(context) async {
  await Future.delayed(const Duration(seconds: 3), () {
    Navigator.pushReplacementNamed(context, '/login');
  });
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    Load(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('./assets/S_logo.png'),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 25, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Social ",
                          style: TextStyle(
                              color: Color(0xFFF39594),
                              fontSize: 40,
                              fontWeight: FontWeight.w600),
                        ),
                        Text("Path",
                            style: TextStyle(
                                color: Color(0xFF272F40),
                                fontSize: 40,
                                fontWeight: FontWeight.w600))
                      ],
                    )),
                const SpinKitChasingDots(
                  color: Color(0xFF272F40),
                  size: 60,
                ),
              ]),
        ),
      ),
    );
  }
}
