import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Digital ID Card",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile image
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      '', // sample image URL
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Name and department
                  const Text(
                    'Eshana Suzat',
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Computer Science and Engineering Department',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),

                  const SizedBox(height: 16),
                  const Divider(thickness: 1),

                  // Info ListTiles
                  const ListTile(
                    leading: Icon(Icons.badge),
                    title: Text('ID Number'),
                    subtitle: Text('0182320012101123'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                    subtitle: Text('eshana.suzat4045@gmail.com'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Phone'),
                    subtitle: Text('01700000000'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}