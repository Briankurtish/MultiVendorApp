import 'package:flutter/material.dart';
import 'package:multi_vendor_app/controllers/auth_controller.dart';
import 'package:multi_vendor_app/views/buyers/auth/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  final AuthController _authController = AuthController();
  late String email;
  late String fullName;
  late String phoneNumber;
  late String password;

  _signUpUser() async {
    String res = await _authController.signUpUsers(
        email, fullName, phoneNumber, password);

    if (res != 'success') {
      print(res);
    } else {
      print("Good");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create Customer's Account",
                style: TextStyle(fontSize: 20),
              ),
              CircleAvatar(
                radius: 64,
                backgroundColor: Colors.green.shade800,
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  onChanged: (value) {
                    fullName = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Full Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  onChanged: (value) {
                    phoneNumber = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Phone Number',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _signUpUser();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have An Account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
