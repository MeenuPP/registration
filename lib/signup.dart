import 'package:flutter/material.dart';
import 'package:registration/loginscreen.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailc=TextEditingController();
TextEditingController passc=TextEditingController();
TextEditingController confpassc=TextEditingController();
TextEditingController userc=TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 200, right: 200),
          child: SingleChildScrollView(
            child: Column(
            children: [
              SizedBox(height: 70),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Create an account,it's free",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Username", style: TextStyle(fontSize: 15)),
              ),
              TextField(controller: userc,
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Email", style: TextStyle(fontSize: 15)),
              ),
              TextField(controller: emailc,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Password", style: TextStyle(fontSize: 15)),
              ),
              TextField(controller: passc,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Confirm Password", style: TextStyle(fontSize: 15)),
              ),
              TextField(controller: confpassc,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: 200,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginscreen()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}
