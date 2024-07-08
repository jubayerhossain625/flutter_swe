
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset("assets/images/a.png",height: 100,width: 100,)),
              const SizedBox(height: 20,),
              const Align(
                  alignment: Alignment.center,
                  child: Text("Sign Up",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
              const SizedBox(height: 30,),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Create your Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                      hintText: "First Name"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                      hintText: "Last Name"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    hintText: "Email or Phone number"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                      hintText: "Password"
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right:10,bottom: 50),
                child: TextFormField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                      hintText: "Re-Password"
                  ),
                ),
              ),

              SizedBox(
                height: 40,width: 300,
                child: ElevatedButton(

                    onPressed: (){}, child: Text("Submit")),
              ),
              SizedBox(height: 20,),
              const Text("Or SignUp",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,width: 50,
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white.withOpacity(0.7),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Icon(Icons.facebook,color: Colors.blue,),
                    ),

                    Container(
                      height: 40,width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white.withOpacity(0.7),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: Icon(Icons.facebook,color: Colors.blue,),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 10,),

              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have a Account?",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w200),),
                  SizedBox(width: 10,),
                  Text("Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
