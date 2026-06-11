import 'package:flutter/material.dart';
import 'package:registration/loginscreen.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 200, right: 200),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                "Forgot Password",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,side: BorderSide(color: Colors.black),minimumSize:Size(300,60)) , child: Text("recovery link",)),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen()));
                },
                child: Text("Back to Login", style: TextStyle(color: Colors.blue)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
