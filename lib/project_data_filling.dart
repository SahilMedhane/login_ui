import "package:flutter/material.dart";
import "package:login_ui/admin_homepage.dart";
//import "package:google_fonts/google_fonts.dart";
//import 'Schedule.dart';

class ProjectDataFilling extends StatefulWidget {
  const ProjectDataFilling({super.key});

  @override
  State createState() => _DataFillingState();
}

class _DataFillingState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 40, 49, 1),

      /// CREATE NEW PROJECT

      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdminHomePage()),
            );
            setState(() {});
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Create New Project",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          /// TITLE

          children: [
            const Text(
              "Project Title",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(57, 62, 70, 1)),

                /// TITLE TEXT FIELD

                child: TextField(
                  style: const TextStyle(
                    //backgroundColor: Color.fromRGBO(57, 62, 70, 1),
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    hintText: "Enter Title ...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black)),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            /// DESCRIPTION

            const Text(
              "Project Description",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(57, 62, 70, 1)),

                /// DESCRIPTION TEXT FIELD

                child: TextField(
                  //selectionHeightStyle: BoxHeightStyle.max,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Enter Description ...",

                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    //fillColor: Colors.grey,
                    focusColor: const Color.fromRGBO(57, 62, 70, 1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            /// Time & Date

            const Text(
              "Time & Date",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),

            const SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Container(
                  height: 40,
                  width: 178,
                  color: const Color.fromRGBO(57, 62, 70, 1),
                  child: Row(
                    children: [
                      /// TIME
                      Container(
                          height: 40,
                          width: 40,
                          color: Colors.cyanAccent,
                          child: const Icon(Icons.access_time_rounded)),

                      const SizedBox(
                        width: 50,
                      ),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "10:30",
                            style: TextStyle(
                                //fontSize: 25,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 40,
                  width: 178,
                  color: const Color.fromRGBO(57, 62, 70, 1),
                  child: Row(
                    children: [
                      /// DATE

                      Container(
                          height: 40,
                          width: 40,
                          color: Colors.cyanAccent,
                          child: const Icon(Icons.calendar_month_outlined)),

                      const SizedBox(
                        width: 30,
                      ),

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "29/10/2024",
                            style: TextStyle(
                                //fontSize: 25,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 220,
            ),

            /// SUBMIT

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AdminHomePage()),
                    );
                    setState(() {});
                  },
                  child: Container(
                    height: 55,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.cyanAccent,
                    ),
                    child: const Center(
                        child: Text(
                      "Submit",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    )),
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
