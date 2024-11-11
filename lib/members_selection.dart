import 'package:flutter/material.dart';
import 'package:login_ui/phase_selection.dart';

class MembersSelection extends StatefulWidget {
  @override
  State createState() => _MembersSelectionState();
}

class _MembersSelectionState extends State {
  final List teamMembers = [
    "Alice Johnson",
    "Bob Smith",
    "Charlie Brown",
    "Diana Prince",
    "Ethan Hunt",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => PhaseSelection()));
            },
            child: Icon(Icons.arrow_back)),
        title: Text("Team Members"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: teamMembers.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[850],
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Container(
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
                title: Text(teamMembers[index],
                    style: TextStyle(color: Colors.black)),
                trailing: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                              '${teamMembers[index]} assigned to project')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E3A8A),
                  ),
                  child: Text(
                    "Assign",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
