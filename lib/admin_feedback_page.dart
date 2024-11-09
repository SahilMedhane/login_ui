import 'package:flutter/material.dart';

class AdminFeedbackPage extends StatelessWidget {
  const AdminFeedbackPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
        title: const Text(
          "Feedback",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: const Text(
        "Give us feedback at this link",
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
      ),
    );
  }
}
