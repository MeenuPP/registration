import 'package:flutter/material.dart';
import 'package:registration/loginscreen.dart';

class Forgot extends StatelessWidget {
   Forgot({super.key});
 final  formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(key:formkey,
        child: Padding(
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
                TextFormField(validator: (value) {
                  if(value==null||value.isEmpty){
                    return "Email is required";
        
                  }if(!(value.contains("@")&&value.contains("."))){
                    return "Enter a valid email";
                  }
                  return null;
                  
                },
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
      ),
    );
  }
}
