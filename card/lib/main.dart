import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/2165698066/photo/funny-snowman-in-knitted-hat.jpg?s=1024x1024&w=is&k=20&c=DLdQ7wBtR_fJcjitR7uOdChFAj8xXKU2bi6t0xdqkUM=",
                ),
              ),
              Text(
                'Snow Man',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Baraf Wala Manai',
                style: TextStyle(
                  color: Colors.blue.shade200,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Source Code Pro',
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade900,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.teal.shade900),
                    title: Text(
                      '+91 9723649812698',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade900,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal.shade900),
                    title: Text(
                      'barafwalamanai@hotmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.teal.shade900,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
