import 'package:flutter/material.dart';
import 'package:login_ui/members_selection.dart';
import 'package:login_ui/project_details.dart';

class PhaseSelection extends StatefulWidget {
  @override
  State createState() => _PhaseSelectionState();
}

class _PhaseSelectionState extends State<PhaseSelection> {
  final List<String> sdlcPhases = [
    'Requirement Analysis',
    'Design',
    'Coding',
    'Testing',
    'Deployment',
    'Maintenance'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProjectDetails()));
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          'SDLC Phases',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: sdlcPhases.length,
        itemBuilder: (context, index) {
          return Container(
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
            ),
            child: ListTile(
              title: Text(sdlcPhases[index]),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                //////members selection for that specific phase
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MembersSelection()));
              },
            ),
          );
        },
      ),
    );
  }
}
