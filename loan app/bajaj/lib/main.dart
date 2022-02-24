import 'package:bajaj/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/rounded_button.dart';
import './login.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Hero(
                  tag: 'hero',
                  child: SizedBox(
                    height: 50.0,
                    child: Image.asset('assets/logo4.jpg'),
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  SizedBox(
                    height: 555.0,
                    child: Material(
                      shadowColor: Colors.grey[350],
                      elevation: 15.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              'Welcome to Experia! The service portal to help you manage your loans, cards, & investments - in one place',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          RoundedButton(
                            minWidth: 250.0,
                            buttonTitle: 'Login',
                            color: Colors.indigo,
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLogin(),
                              ),
                            ),
                            ownStyle: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          RoundedButton(
                            minWidth: 250.0,
                            buttonTitle: 'Logging in for the first time?',
                            color: Colors.white,
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUp(),
                              ),
                            ),
                            ownStyle: GoogleFonts.openSans(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Unable to login?',
                                style: GoogleFonts.openSans(),
                              ),
                              Text(
                                'Click here',
                                style: GoogleFonts.openSans(
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            child: SizedBox(
                              height: 180.0,
                              child: Material(
                                shadowColor: Colors.grey[350],
                                elevation: 15.0,
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(30.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      'Easier Login Options',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.openSans(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/google.png',
                                            height: 30.0,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.all(5.0),
                                            height: 30.0,
                                            width: 60.0,
                                            color: Colors.blue,
                                            child: Text(
                                              'Sign In',
                                              textAlign: TextAlign.center,
                                              style: GoogleFonts.openSans(
                                                color: Colors.white,
                                                fontSize: 15.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
