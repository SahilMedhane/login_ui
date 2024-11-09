import 'package:flutter/material.dart';
import 'package:login_ui/admin_schedule.dart';
//import 'package:google_fonts/google_fonts.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 40, 49, 1),

      /// PROJECT DETAILS

      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdminSchedule()),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Project Details",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(34, 40, 49, 1),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            /// PROJECT TITLE

            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(57, 62, 70, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.task,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Project Name ",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            /// DESCRIPTION

            Container(
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(57, 62, 70, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.text_snippet,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Project Description",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            /// DUE DATE

            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(57, 62, 70, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Due Date : 11 Nov 2024 ",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            /// PROJECT STAGES

            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(57, 62, 70, 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.add_task_rounded,
                      color: Colors.blue,
                      size: 30,
                    ),

                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Project Phases  ",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),

                    const Spacer(),

                    /// OPEN BUTTON

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(34, 40, 49, 1),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Open",
                          style:
                              TextStyle(fontSize: 16, color: Colors.cyanAccent),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 85,
            ),

            /// PROGRESS INDICATOR

            const SizedBox(
              height: 150,
              width: 150,
              child: CircularProgressIndicator(
                value: 0.8,
                strokeWidth: 38,
                valueColor: AlwaysStoppedAnimation(Colors.green),
                backgroundColor: Color.fromRGBO(57, 62, 70, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
