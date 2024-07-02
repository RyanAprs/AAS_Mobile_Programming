import 'package:flutter/material.dart';
import 'package:mobile/models/user.dart';
import 'package:mobile/providers/auth_provider.dart';
import 'package:mobile/screens/login_screen.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void signOutUser(BuildContext context) {
    Provider.of<AuthProvider>(context, listen: false).logout();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<AuthProvider>(context).user;

    if (user == null) {
      return LoginScreen();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: [
                    Text(
                      "Nama: ${user.name}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Email: ${user.email}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          signOutUser(context);
                        },
                        child: Text('Logout')),
                  ],
                )),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
