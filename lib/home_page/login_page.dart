
import 'package:flutter/material.dart';
var size,height,width;
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    size=MediaQuery.of(context).size;
    height=size.height;
    width=size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 224, 228),
      body: 
         SingleChildScrollView(
          
           child:
            Container(
            color: Colors.amber,
            width: width,
           height: height,
            child:
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Image(
                        width: 130,
                        height: 70,
                        image: AssetImage('assets/images/logo.png')
                               ),                  
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                      child: Row(
                        children: [
                          Text("Log in to your account",
                          style: TextStyle(
                            color: Color.fromARGB(175, 0, 0, 0),
                            fontSize:17,
                            fontWeight:  FontWeight.bold,),
                          ),
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Row(
                        children: [
                          Text("Email",
                                style: TextStyle(
                                  color: Color.fromARGB(140, 0, 0, 0),
                                  fontSize:15,
                                  fontWeight:  FontWeight.bold,),
                                ),
                        ],
                      ),
                    ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                   child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      hintText: "user@email.com",
                    ),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                   child: Row(
                    children: [
                                  Text("Password",
                                  style: TextStyle(
                                    color: Color.fromARGB(140, 0, 0, 0),
                                    fontSize:15,
                                    fontWeight:  FontWeight.bold,),
                                  ),
                    ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
                   child: TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: "********",
                      ),
                     ),
                 ),
                FilledButton(
                 onPressed: (){},
                 child: Text("  Sign in  ",),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                   child: Text("OR, Sign in with ",
                        style: TextStyle(
                         color: Color.fromARGB(180, 0, 0, 0),
                           fontSize:15,
                            fontWeight:  FontWeight.bold,),
                            ),
                 ),
                 SizedBox(        
                  height: 50,
                  width: 140,
                   child: Row(
                    children: [
                      IconButton(
                        onPressed: (){},
                       icon: Icon(
                        Icons.facebook,
                        size: 30,
                        color: Color.fromARGB(255, 3, 83, 244),
                   
                       )
                       ),
                       IconButton(
                        onPressed: (){},
                       icon: Icon(
                        Icons.email_rounded,
                        size: 30,
                        color: Color.fromARGB(255, 209, 0, 0),
                      
                   
                       )
                       ),
                       IconButton(
                        onPressed: (){},
                       icon: Icon(
                        Icons.apple_outlined,
                        size: 30,
                        color: Color.fromARGB(255, 0, 0, 0),
                        
                   
                       )
                       )
                   
                    ],
                   ),
                 ),
                 SizedBox(
                  height:45 ,
                  width:210 ,
                   child: Row(
                     children: [
                       Text("Don't have a account?",
                                     style: TextStyle(
                                        color: Color.fromARGB(140, 0, 0, 0),
                                        fontSize:13,
                                        fontWeight:  FontWeight.bold,),
                                      ),
                     TextButton(onPressed: (){},
                      child: 
                           Text("sign up!",style: TextStyle(fontSize: 14),)
                      )
                     ],
                   ),
                 ),

                  ],
                ),
              ),
           
            
           ),
         )
    );
  }
}
