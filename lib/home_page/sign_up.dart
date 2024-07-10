
import 'package:flutter/material.dart';
import 'package:flutter_swe/home_page/login_page.dart';
var size,height,width;
class signup extends StatelessWidget {
  const signup({super.key});

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
          // height: height,
            child:
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 75, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                          Text("Create a new account",
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
                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                   child: TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: "********",
                      ),
                     ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                   child: Row(
                    children: [
                                  Text("Re Enter Password",
                                  style: TextStyle(
                                    color: Color.fromARGB(140, 0, 0, 0),
                                    fontSize:15,
                                    fontWeight:  FontWeight.bold,),
                                  ),
                    ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                   child: TextFormField(
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                        hintText: "********",
                      ),
                     ),
                 ),                
                FilledButton(
                 onPressed: (){},
                 child: Text("  Sign up  ",),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                   child: Text("OR, Sign up with ",
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
                  height:60 ,
                  width:230 ,
                   child: Row(
                     children: [
                       Text("Already have an account?",
                                     style: TextStyle(
                                        color: Color.fromARGB(140, 0, 0, 0),
                                        fontSize:13,
                                        fontWeight:  FontWeight.bold,),
                                      ),
                     TextButton(onPressed: (){
                      Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                     },
                      child: 
                           Text("sign in",style: TextStyle(fontSize: 14),)
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
