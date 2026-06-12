import 'package:flutter/material.dart';
import 'package:registration/loginscreen.dart';

class Signup extends StatelessWidget {
   Signup({super.key});
TextEditingController emailc=TextEditingController();
TextEditingController passc=TextEditingController();
TextEditingController confpassc=TextEditingController();
TextEditingController userc=TextEditingController();
final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Form(key:formkey,
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
                TextFormField(validator: (value){
                  if(value==null||value.isEmpty){
                    return "Username is required";
                  }
                  return null;
                },
                  controller: userc,
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
                TextFormField(validator: (value) {
                  if(value==null||value.isEmpty){
                    return "Email is required";
        
                  }if(!(value.contains("@")&&value.contains("."))){
                    return "Enter a valid email";
                  }
                  return null;
                  
                },
                  controller: emailc,
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
                TextFormField(
                  validator: (value) {
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
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Confirm Password", style: TextStyle(fontSize: 15)),
                ),
                TextFormField(validator: (value) {
                  if(value==null||value.isEmpty){
                    return "Enter the password "; 
                  }if(value!=confpassc.text){
                    return "Password does't match";
                  }
                },
                  controller: confpassc,
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
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                          print("Login");
                      }
                    },
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
    ),
  );
}
}
