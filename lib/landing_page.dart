import 'package:flutter/material.dart';
import 'package:login_ui/admin_user_selection.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});
  @override
  State createState() => _LandingPageState();
}

class _LandingPageState extends State {
  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50), // Space above the image
            Image.asset("assets/lets_start_img.png"),
            const SizedBox(height: 20),
            const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Manage",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1E3A8A),
                    height: 1.4, // Reduces gap between lines
                  ),
                ),
                Text(
                  "your Task",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1E3A8A),
                    height: 1,
                  ),
                ),
                Text(
                  "with",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1E3A8A),
                    height: 1.3,
                  ),
                ),
                Text(
                  "App Name",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF1E3A8A),
                    height: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AdminUserScreen()),
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        const Color.fromARGB(130, 112, 114, 235),
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
                    "Let's Start",
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
