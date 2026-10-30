import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "Success Login";
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome To Aplication$statusLogin",
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: txtUsername,
              decoration: InputDecoration(hint: Text("Input Username")),
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: txtPassword,
              decoration: InputDecoration(hint: Text("Input Password")),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  String username = txtUsername.text.toString();
                  String password = txtPassword.text.toString();
                  if (username == "Admin" && password == "Admin") {
                    print("Login Berhasil");
                    statusLogin = "Login Berhasil";
                  } else {
                    print("Login Gagal");
                    statusLogin = "Login Gagal";
                  }
                },
                child: Text('Login'),
              ),
              ElevatedButton(onPressed: () {}, child: Text('Register')),
            ],
          ),
        ],
      ),
    );
  }
}
