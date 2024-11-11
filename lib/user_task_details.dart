import "package:flutter/material.dart";
//import "package:google_fonts/google_fonts.dart";

class UserTaskDetails extends StatefulWidget {
  const UserTaskDetails({super.key});

  @override
  State<UserTaskDetails> createState() => _UserTaskDetailsState();
}

class _UserTaskDetailsState extends State<UserTaskDetails> {
  double _progressValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Task Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Section
            Container(
              padding: const EdgeInsets.all(16.0),
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
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Icon(Icons.task, color: Colors.blueAccent, size: 28),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Task 1",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Description Section
            Container(
              padding: const EdgeInsets.all(16.0),
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
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.description, color: Colors.orange, size: 28),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Description of the task goes here. This section can have multiple lines and will expand based on content.",
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Due Date Section
            Container(
              padding: const EdgeInsets.all(16.0),
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
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  const Icon(Icons.date_range,
                      color: Colors.redAccent, size: 28),
                  const SizedBox(width: 10),
                  Text(
                    "Due: Oct 30, 2024",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            //ooooooooooooooooooooooooooo

            const SizedBox(height: 40),

            // Progress Slider Section
            Text(
              "Task Progress Percentage: ${_progressValue.toInt()}%",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            Slider(
              value: _progressValue,
              min: 0,
              max: 100,
              divisions: 20,
              label: "${_progressValue.toInt()}%",
              activeColor: Colors.blueAccent,
              inactiveColor: Colors.grey[300],
              onChanged: (value) {
                setState(() {
                  _progressValue = value;
                });
              },
            ),
            const SizedBox(height: 20),

            // Submit Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                  backgroundColor: const Color(0xFF1E3A8A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Add submission handling code here later
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          "Progress submitted: ${_progressValue.toInt()}%"),
                    ),
                  );
                },
                child: Text(
                  "Submit Progress",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
