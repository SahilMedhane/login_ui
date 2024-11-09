import 'package:flutter/material.dart';

class AdminAbout extends StatelessWidget {
  const AdminAbout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
        title: const Text(
          "About",
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
      body: Padding(
        padding: const EdgeInsets.all(70.0),
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            const Text(
              "App Name",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Version:1.0",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "The latest version already installed.",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "This app is related to project management. It includes the project management using the SDLC Life cycle",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                shape: BoxShape.rectangle,
                color: const Color.fromRGBO(57, 62, 70, 1),
              ),
              child: const Text(
                "Terms and Conditions",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                shape: BoxShape.rectangle,
                color: const Color.fromRGBO(57, 62, 70, 1),
              ),
              child: const Text(
                "Open Source Licences",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
