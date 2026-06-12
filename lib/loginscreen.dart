import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration/forgot.dart';
import 'package:registration/signup.dart';

class Loginscreen extends StatelessWidget {
   Loginscreen({super.key});

  TextEditingController emailc=TextEditingController();
TextEditingController passc=TextEditingController();
 final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Form(key:formkey,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "login to your account",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Email", style: TextStyle(fontSize: 15)),
                  ),
                  TextFormField(
                    validator: (value) {
                  if(value==null||value.isEmpty){
                    return "Email is required";
        
                  }if(!(value.contains("@")&&value.contains("."))){
                    return "Enter a valid email";
                  }
                  return null;
                  
                },controller: emailc,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Password", style: TextStyle(fontSize: 15)),
                  ),
                  TextFormField(validator: (value) {
                  if(value==null||value.isEmpty){
                    return "Password is required";}
                    
                    if(value.length!=8){
                      return "Password must be 8 characters";
                    }
                    },
                    controller: passc,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  Forgot(),));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text("Forgot password"),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    height: 55,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          print("Login");
                          
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  Signup()));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Lottie.asset("assets/splash.json"),
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
