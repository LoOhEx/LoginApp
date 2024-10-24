import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 178, 5),
      appBar: AppBar(
        backgroundColor: Color(0xff311b92),
        title: const Text(
          'Home',
          style: TextStyle(color: const Color.fromARGB(255, 217, 178, 5)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Selamat datang di halaman Home!',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff311b92),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        LoginPage(), // Ganti LoginPage() dengan halaman login yang sesuai
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 217, 178, 5)),
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
