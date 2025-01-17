import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/Signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
void _handleGoogleLogin() {

  print("Google icon clicked");
}

void _handleRegister() {

  print("Google icon clicked");
}

void _handleFacebookLogin() {

  print("Facebook icon clicked");
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: SvgPicture.asset(
              'assets/images/illustration.svg',

              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 20.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Welcome',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          const Align(
    alignment: Alignment.centerLeft,
            child: Text(
              'Username',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 8.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'Username',
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Color(0xFFf0f0f0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          TextField(
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Color(0xFFf0f0f0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: _togglePasswordVisibility,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {

              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  color: Color(0xFF3C8AFF),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Handle login
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3C8AFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
         const Text(
            'Or login with',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            GestureDetector(
            onDoubleTap: _handleFacebookLogin,
              child: SvgPicture.asset(
                "./assets/images/facebook.svg",
                // onPressed: () {
                //   // Handle Facebook login
                // },
              ),
    ),
              const SizedBox(width: 20.0),
              GestureDetector(
                onDoubleTap: _handleFacebookLogin,
              child: SvgPicture.asset(
                "./assets/images/goggle.svg"
              ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Don\'t have an account yet?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupApp()),
                  );
                },
                child: const Text(
                  'Register now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3C8AFF),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
