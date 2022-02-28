import 'package:flutter/material.dart';
import 'package:perfect/signup.dart';
import 'components/roundedbutton.dart';
import 'login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Design',
      theme: ThemeData.light().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/first': (context) => const MyLogin(),
        '/second': (context) => const MySignup(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/datame3-removebg-preview.png',
              // height: 10.0,
              //width: 70.0,
              color: const Color.fromARGB(255, 44, 86, 230),
            ),
            const Text(
              'Data me.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color.fromARGB(255, 44, 86, 230),
              ),
            ),
            const Text(
              'Know yourself better',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Color.fromARGB(255, 44, 86, 230),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClip(),
                  child: Container(
                    height: 420,
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 100.0,
                                top: 80.0,
                              ),
                              child: Image.asset(
                                'assets/blackcircle-removebg-preview (1).png',
                                height: 10.0,
                                //width: 70.0,
                                color: const Color.fromARGB(255, 44, 86, 230),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    color: const Color.fromARGB(255, 239, 243, 244),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100.0,
                  ),
                  child: ClipPath(
                    clipper: CustomClip2(),
                    child: Container(
                      height: 320,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15.0,
                              left: 250.0,
                            ),
                            child: Image.asset(
                              'assets/blackcircle-removebg-preview (1).png',
                              height: 15.0,
                              //width: 70.0,
                              color: const Color.fromARGB(255, 44, 86, 230),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 80.0,
                              left: 330.0,
                            ),
                            child: Image.asset(
                              'assets/blackcircle-removebg-preview (1).png',
                              height: 15.0,
                              //width: 70.0,
                              color: const Color.fromARGB(255, 44, 86, 230),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 80.0,
                              left: 50.0,
                            ),
                            child: Image.asset(
                              'assets/blackcircle-removebg-preview (1).png',
                              height: 15.0,
                              //width: 70.0,
                              color: const Color.fromARGB(255, 44, 86, 230),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 160.0,
                            ),
                            child: RotationTransition(
                              turns: const AlwaysStoppedAnimation(30 / 360),
                              child: Image.asset(
                                'assets/smblueleaf.png',
                                height: 40.0,
                                color: const Color.fromARGB(255, 44, 86, 230),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Stack(
                                children: [
                                  Positioned(
                                    left: 28.0,
                                    bottom: 8.9,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 40.0,
                                      ),
                                      child: Image.asset(
                                        'assets/blackcircle-removebg-preview (1).png',
                                        height: 25.0,
                                        //width: 70.0,
                                        //color: const Color.fromARGB(255, 44, 86, 230),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 40.0,
                                    ),
                                    child: Image.asset(
                                      'assets/blackstem2.png',
                                      height: 70.0,
                                      //  width: 50,

                                      //color: const Color.fromARGB(255, 44, 86, 230),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 55.0,
                                ),
                                child: RotationTransition(
                                  turns: const AlwaysStoppedAnimation(30 / 360),
                                  child: Image.asset(
                                    'assets/smblueleaf.png',
                                    height: 40.0,
                                    color:
                                        const Color.fromARGB(255, 44, 86, 230),
                                  ),
                                ),
                              ),
                              Stack(
                                children: [
                                  Positioned(
                                    right: 28.0,
                                    bottom: 50.0,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        bottom: 48.0,
                                      ),
                                      child: Image.asset(
                                        'assets/blackcircle-removebg-preview (1).png',
                                        height: 25.0,
                                        //width: 70.0,
                                        //color: const Color.fromARGB(255, 44, 86, 230),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 50.0,
                                    ),
                                    child: Image.asset(
                                      'assets/blackstem2.png',
                                      height: 70.0,
                                      //width: 70.0,
                                      //color: const Color.fromARGB(255, 44, 86, 230),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 50.0,
                                ),
                                child: RotationTransition(
                                  turns: const AlwaysStoppedAnimation(30 / 360),
                                  child: Image.asset(
                                    'assets/smblueleaf.png',
                                    height: 45.0,
                                    color:
                                        const Color.fromARGB(255, 44, 86, 230),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 100.0,
                                ),
                                child: RotationTransition(
                                  turns: const AlwaysStoppedAnimation(30 / 360),
                                  child: Image.asset(
                                    'assets/threeleaf-removebg-preview.png',
                                    height: 80.0,
                                    color:
                                        const Color.fromARGB(255, 44, 86, 230),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: const Color.fromARGB(255, 230, 234, 235),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 220.0,
                  ),
                  child: ClipPath(
                    clipper: CustomClip3(),
                    child: Container(
                      height: 200,
                      color: const Color.fromARGB(255, 12, 31, 63),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 120.0,
                                  right: 120.0,
                                ),
                                child: RoundedButton(
                                    mystyle:
                                        const TextStyle(color: Colors.white),
                                    buttonTitle: 'Log In',
                                    color:
                                        const Color.fromARGB(255, 44, 86, 230),
                                    onPressed: () {
                                      // Navigate to login screen
                                      Navigator.pushNamed(context, '/first');
                                    }),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 120.0,
                                  right: 120.0,
                                ),
                                child: RoundedButton(
                                    mystyle: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 44, 86, 230)),
                                    buttonTitle: 'Sign Up',
                                    color:
                                        const Color.fromARGB(255, 12, 31, 63),
                                    onPressed: () {
                                      // Navigate to the signup screen
                                      Navigator.pushNamed(context, '/second');
                                    }),
                              ),
                            ],
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

class CustomClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 210.0;
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
    double radius = 170.0;
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
