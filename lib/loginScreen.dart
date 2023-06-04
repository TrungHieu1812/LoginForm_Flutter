import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreen();
}

var _isObscured = true;

class _LoginScreen extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 30),
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                  top: 50, left: 30, right: 30, bottom: 15),
              child: const Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              )),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: const TextField(
              style: TextStyle(fontSize: 18),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.person_outlined),
                hintText: 'Type your username',
              ),
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                  top: 25, left: 30, right: 30, bottom: 15),
              child: const Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              )),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: TextField(
              obscureText: _isObscured,
              style: const TextStyle(fontSize: 18),
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                prefixIcon: const Icon(Icons.lock_outline),
                hintText: 'Type your password',
                suffixIcon: IconButton(
                  icon: _isObscured
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            child: TextButton(
              onPressed: () {},
              child: const Text('Forgot password?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            width: 400,
            height: 45,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Color.fromARGB(255, 100, 232, 232), Color.fromARGB(255, 207, 103, 226)]),
                borderRadius: BorderRadius.circular(30)),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text('LOGIN',style: TextStyle(fontSize: 17,color: Colors.white),),
            ),
          ),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  top: 40, left: 30, right: 30, bottom: 30),
              child: const Text(
                'Or Sign Up Using',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/images/fb_icon.png',
                  height: 50,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/images/tw_icon.png',
                  height: 50,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset(
                  'assets/images/gg_icon.png',
                  height: 50,
                ),
              ),
            ],
          ),
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 130, left: 30, right: 30),
              child: const Text(
                'Or Sign Up Using',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              )),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: TextButton(
              onPressed: () {},
              child: const Text('SIGN UP',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
