import 'package:flutter/material.dart';
import 'package:login_ui/login_page_admin.dart';
import 'package:login_ui/login_page_user.dart';
import 'package:login_ui/main.dart';

class AdminUserScreen extends StatefulWidget {
  const AdminUserScreen({super.key});

  @override
  State createState() => _AdminUserScreenState();
}

class _AdminUserScreenState extends State {
  @override
  Widget build(context) {
    return Scaffold(
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
              MaterialPageRoute(builder: (context) => const MyApp()),
            );
          },
        ),
        backgroundColor: const Color.fromRGBO(57, 62, 70, 1),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        color: const Color.fromRGBO(57, 62, 70, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Admin Section
            Column(
              children: [
                const Icon(
                  Icons.person, // Admin icon
                  size: 100,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPageAdmin()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(254, 211, 106, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Admin",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40), // Space between Admin and User sections

            // User Section
            Column(
              children: [
                const Icon(
                  Icons.people, // User icon
                  size: 100,
                  color: Colors.grey,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPageUser()),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(254, 211, 106, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "User",
                      style: TextStyle(fontSize: 24, color: Colors.black),
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
