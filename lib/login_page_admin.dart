import 'package:flutter/material.dart';
import 'package:login_ui/admin_homepage.dart';
import 'package:login_ui/admin_user_selection.dart';
import 'package:login_ui/signup_page_admin.dart';
//import 'package:login_ui/signup_page_user.dart';

class LoginPageAdmin extends StatefulWidget {
  const LoginPageAdmin({super.key});
  @override
  State createState() => _LoginPageState();
}

class _LoginPageState extends State {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(57, 62, 70, 1),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ), // Leading Icon
          onPressed: () {
            // Perform some action
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdminUserScreen()),
            );
          },
        ),
        backgroundColor: const Color.fromRGBO(57, 62, 70, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Welcome Back!',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AdminHomePage()),
                );
              },
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(254, 211, 106, 1),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?",
                    style: TextStyle(color: Colors.white)),
                TextButton(
                  onPressed: () {
                    // Action for Sign Up
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpPageAdmin()),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromRGBO(254, 211, 106, 1),
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
