import 'package:flutter/material.dart';

import 'components/roundedbutton.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipPath(
                  clipper: CustomClip(),
                  child: Container(
                    height: 200.0,
                    width: 300.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                                bottom: 20.0,
                              ),
                              child: TextButton(
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 20.0,
                                bottom: 20.0,
                              ),
                              child: Text(
                                'Back',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: const Color.fromARGB(255, 44, 86, 230),
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 30.0,
                  color: Colors.grey,
                  child: const Icon(
                    Icons.info_outline_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClip2(),
                  child: Container(
                    height: 460,
                    color: const Color.fromARGB(255, 239, 243, 244),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: ClipPath(
                    clipper: CustomClip3(),
                    child: Container(
                      height: 430,
                      color: const Color.fromARGB(255, 230, 234, 235),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: ClipPath(
                    clipper: CustomClip4(),
                    child: Container(
                      height: 380,
                      color: const Color.fromARGB(255, 12, 31, 63),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 40.0,
                            ),
                            child: Text(
                              'Email or phone number',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.0,
                              vertical: 10.0,
                            ),
                            child: TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                fillColor: Color.fromARGB(255, 30, 45, 74),
                                filled: true,
                                labelText: 'Type here...',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 40.0,
                              vertical: 10.0,
                            ),
                            child: TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              obscureText: true,
                              decoration: InputDecoration(
                                fillColor: Color.fromARGB(255, 30, 45, 74),
                                filled: true,
                                labelText: 'Type here...',
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 120.0,
                              right: 120.0,
                            ),
                            child: RoundedButton(
                                mystyle: const TextStyle(color: Colors.white),
                                buttonTitle: 'Log In',
                                color: const Color.fromARGB(255, 44, 86, 230),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();

    path0.moveTo(0, 0);
    path0.lineTo(232, 0);
    path0.quadraticBezierTo(232, 67.25, 211, 112);
    path0.quadraticBezierTo(175.25, 185.25, 1, 200);
    path0.lineTo(0, 0);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 260.0;
    Path path = Path();

    path
      ..moveTo(size.width / 2, 0)
      ..arcToPoint(Offset(size.width, size.height),
          radius: Radius.circular(radius))
      ..lineTo(0, size.height)
      ..arcToPoint(
        Offset(size.width / 2, 0),
        radius: Radius.circular(radius),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomClip3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 250.0;
    Path path = Path();

    path
      ..moveTo(size.width / 2, 0)
      ..arcToPoint(Offset(size.width, size.height),
          radius: Radius.circular(radius))
      ..lineTo(0, size.height)
      ..arcToPoint(
        Offset(size.width / 2, 0),
        radius: Radius.circular(radius),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CustomClip4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 230.0;
    Path path = Path();

    path
      ..moveTo(size.width / 2, 0)
      ..arcToPoint(Offset(size.width, size.height),
          radius: Radius.circular(radius))
      ..lineTo(0, size.height)
      ..arcToPoint(
        Offset(size.width / 2, 0),
        radius: Radius.circular(radius),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
