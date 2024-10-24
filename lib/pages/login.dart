import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 178, 5),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN PAG",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.deepPurple[900],
                    fontWeight: FontWeight.bold),
              ),
              // Gambar / Logo
              // Image.asset(
              //   'assets/images/gun.jpg',
              //   height: 100,
              // ),
              const SizedBox(height: 32.0),
              // Input Username
              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  //fillColor: Colors.black26,
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              const SizedBox(height: 16.0),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  icon: Icon(Icons.key),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 32.0),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, // Warna latar belakang
                  textStyle: const TextStyle(color: Colors.white), // Warna teks
                  minimumSize: const Size(200, 50), // Ukuran tombol
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                        color: Colors.amber, width: 2), // Outline
                    borderRadius: BorderRadius.circular(8), // Radius sudut
                  ),
                ),
                onPressed: () {
                  String username = usernameController.text;
                  String password = passwordController.text;

                  if (username.isNotEmpty && password.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Error'),
                        content:
                            const Text('Username dan Password wajib diisi!'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
