import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration/forgot.dart';
import 'package:registration/signup.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),SizedBox(height: 20,),GestureDetector(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgot(),));
                },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text("Forgot password")),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 100,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),minimumSize: Size(300, 60)
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
                Row(mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Don't have an acccount?",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));},
                      child: Text("Sign up",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,),),
                    )
                  ],
                ),SizedBox(
                  height: 300,width: double.infinity,
                  
                  child: Lottie.asset("assets/splash.json",))
                  
              ],
            ),
          ),
        ),
      ),
    );
  }
}
