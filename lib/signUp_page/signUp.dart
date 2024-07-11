import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 18),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child:  Image.asset("assets/images/logo.png",height: 100,width: 100,),
            ),
            const SizedBox(height: 20,),

            Align(
              alignment: Alignment.center,
              child: Text("Sign up",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
            ),
            const SizedBox(height: 50,),

            Align(
              alignment: Alignment.centerLeft,
              child: Text("Create Your Account",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)
            ),

            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10, bottom: 20),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Enter first name"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10, bottom: 20),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Email last name"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10, bottom: 20),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Email or Phone number"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10, bottom: 20),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Password"
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10, bottom: 50),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Re-password"
                ),
              ),
            ),

            //Button
            SizedBox(
              height: 40,width: 300,
              child: ElevatedButton( 
                onPressed: (){}, child: Text("Submit")
              ),
            ),

          SizedBox(height: 20,),
          Text("Or SignUp with",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),

           Padding(
             padding: const EdgeInsets.only(top:20.0),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //padding: EdgeInsets.only(right: 20),
                  margin: EdgeInsets.only(right: 20),
                  height: 40, width: 50,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.7),
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Icon(Icons.facebook,color: Colors.blue,),
                ),
             
                Container(
                  height: 40, width: 50,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.7),
                    border: Border.all(color: Colors.blue)
                  ),
                  child: Icon(Icons.facebook,color: Colors.blue,),
                )
              ],
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(top: 20.0),
             child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),),
                SizedBox(width: 3,),
                const Text("Log in",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.blueAccent),),
              ],
             ),
           )

          ],
        ),
       ),
      ),
    );
  }
}