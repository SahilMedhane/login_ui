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
            color: Colors.black,
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
        backgroundColor: Colors.white,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Admin Section
            Column(
              children: [
                const Icon(Icons.person, // Admin icon
                    size: 100,
                    color: const Color(0xFF1E3A8A)),
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
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(130, 112, 114, 235),
                          const Color.fromARGB(123, 155, 39, 176),
                          const Color.fromARGB(127, 155, 39, 176),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),

                      //color: Color.fromRGBO(254, 211, 106, 1),
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
                const Icon(Icons.people, // User icon
                    size: 100,
                    color: const Color(0xFF1E3A8A)),
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
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(130, 112, 114, 235),
                          const Color.fromARGB(123, 155, 39, 176),
                          const Color.fromARGB(127, 155, 39, 176),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),

                      //color: Color.fromRGBO(254, 211, 106, 1),
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
