import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swe/rishat/text_field.dart';
import 'package:lottie/lottie.dart';

class rishat extends StatefulWidget {
  const rishat({super.key});

  @override
  State<rishat> createState() => _rishatState();
}

class _rishatState extends State<rishat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(children: [
        Lottie.asset(
          "assets/Animation - 1720711265781.json",
          fit: BoxFit.fill,
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).height,
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4,
              sigmaY: 4,
            ),
            child: const SizedBox(),
          ),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: FractionalOffset.bottomLeft,
                  colors: [
                Colors.white.withOpacity(0.4),
                Colors.white.withOpacity(0.1)
              ])),
        ),
        Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            const Text(
              "S I G N   U P",
              style: TextStyle(
                  color: Color.fromARGB(255, 239, 87, 138),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    height: 450,
                    width: 400,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 5,
                              sigmaY: 5,
                            ),
                            child: const SizedBox(),
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height,
                          width: MediaQuery.sizeOf(context).height,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: FractionalOffset.bottomLeft,
                                  colors: [
                                Colors.pink.withOpacity(0.2),
                                Colors.pink.withOpacity(0.1)
                              ])),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SizedBox(height: 15),
                              textFild(hint: "Enter Your First Name"),
                              SizedBox(height: 15),
                              textFild(hint: "Enter Your Last Name"),
                              SizedBox(height: 15),
                              textFild(
                                  hint: "Enter Your Email or Phone Number"),
                              SizedBox(height: 15),
                              textFild(hint: "Enter Your Password",obscure: true,),
                              SizedBox(height: 15),
                              textFild(hint: "Re-Enter Your Password ",obscure: true,),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 50,
                width: 130,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5,
                          sigmaY: 5,
                        ),
                        child: const SizedBox(),
                      ),
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height,
                      width: MediaQuery.sizeOf(context).height,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: FractionalOffset.bottomLeft,
                              colors: [
                            Colors.pink.withOpacity(0.2),
                            Colors.pink.withOpacity(0.1)
                          ])),
                    ),
                    const Text(
                      "        Submit",
                      style: TextStyle(
                          color: Colors.black54,
                          height: 2.8,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 50,
                  width: 300,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5,
                            sigmaY: 5,
                          ),
                          child: const SizedBox(),
                        ),
                      ),
                      Container(
                        height: MediaQuery.sizeOf(context).height,
                        width: MediaQuery.sizeOf(context).height,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: FractionalOffset.bottomLeft,
                                colors: [
                              Colors.pink.withOpacity(0.2),
                              Colors.pink.withOpacity(0.1)
                            ])),
                      ),
                       Row(
                        children: [
                          const Text(
                            "       Already Have Account? ",
                            style: TextStyle(
                                color: Colors.black54,
                                height: 2.8,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          InkWell(
                            onTap: () {
                              
                            },
                            child: const Text(
                              "Login ",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 233, 39, 104),
                                  height: 2.8,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    ));
  }
}
