import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/rounded_button.dart';
import 'main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Hero(
                  tag: 'hero',
                  child: Image.asset('assets/logo4.jpg',
                      height: 50.0,
                      color: Colors.grey[600],
                      colorBlendMode: BlendMode.modulate),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  SizedBox(
                    height: 555.0,
                    child: Material(
                      //   shadowColor: Colors.grey[350],
                      elevation: 15.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80.0),
                                child: Text(
                                  'FIRST TIME LOGIN',
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
                              // ignore: deprecated_member_use
                              FlatButton(
                                minWidth: 0.0,
                                onPressed: () => Navigator.pop(context),
                                child: const Icon(
                                  Icons.cancel_sharp,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0,
                                ),
                                child: Text(
                                  'Welcome to Experia! For your first visit, login securely with an OTP, after which you can create your password.',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    textStyle: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'LOGIN WITH YOUR',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.openSans(
                                    textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                'Mobile No. or Email ID',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.openSans(
                                  textStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 250.0,
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    fillColor: Colors.black,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 5.0),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  RoundedButton(
                                    minWidth: 250.0,
                                    buttonTitle: 'Generate OTP',
                                    color: Colors.indigo,
                                    onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyApp(),
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
                                ],
                              )
                            ],
                          ),
                          Positioned(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[600],
                                backgroundBlendMode: BlendMode.modulate,
                              ),
                              height: 180.0,
                              child: Material(
                                // shadowColor: Colors.grey[350],
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
