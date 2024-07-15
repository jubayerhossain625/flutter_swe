import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swe/widgets/CustomText.dart';

import '../widgets/customForm.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  GlobalKey<FormState>  formKey = GlobalKey();

  TextEditingController controllerFirstName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerRePassword = TextEditingController();

submit(){
  print("Fist Name : ${controllerFirstName.text.trim()}");
  print("Last Name : ${controllerLastName.text}");
  print("Email Name : ${controllerEmail.text}");
}
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
                  child: CustomTest(text: "Sign Up",fontSize: 20,fontWeight: FontWeight.bold,)),

              const SizedBox(height: 30,),
              const Align(
                  alignment: Alignment.centerLeft,
                  child:CustomTest(text: "Create your Account",fontSize: 20,fontWeight: FontWeight.w700)),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20,top: 20),
                child: CustomForm(
                  fromKey: formKey,
                  controller:controllerFirstName ,hintText: "Enter first name",),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20),
                child: CustomForm(controller:controllerLastName ,hintText: "Enter last name",),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20),
                child: CustomForm(controller:controllerEmail ,hintText: "Enter gmail",),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 20),
                child: CustomForm(controller:controllerPassword ,hintText: "Enter password",),
              ),

              Padding(
                padding: const EdgeInsets.only(left:10.0,right:10,bottom: 50),
                child: CustomForm(controller:controllerRePassword ,hintText: "Enter re-password",),
              ),

              SizedBox(
                height: 40,width: 300,
                child: ElevatedButton(
                    onPressed: (){
                      if(formKey.currentState!.validate()){
                        submit();
                      }

                    },
                    child: const Text("Submit"),
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Or SignUp",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  crossAxisAlignment:  CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,width: 50,
                      margin: const EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white.withOpacity(0.7),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Icon(Icons.facebook,color: Colors.blue,),
                    ),

                    Container(
                      height: 40,width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white.withOpacity(0.7),
                        border: Border.all(color: Colors.blue),
                      ),
                      child: const Icon(Icons.facebook,color: Colors.blue,),
                    ),

                  ],
                ),
              ),

              const SizedBox(height: 10,),

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
