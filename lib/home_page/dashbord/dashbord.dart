import 'package:flutter/material.dart';
import 'package:flutter_swe/widgets/CustomText.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomTest(text: "Dashboard",),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
              return Container(
                height: 100,
                width: MediaQuery.sizeOf(context).width*0.8,
                padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                        color: Colors.green
                    ),
                    boxShadow: [
                      // BoxShadow(
                      //   color: Colors.green.withOpacity(0.3),
                      //   offset: const Offset(10, 5),
                      //   blurRadius: 20,
                      //   spreadRadius: 12,
                      //   blurStyle: BlurStyle.inner
                      // ),
                      // BoxShadow(
                      //     color: Colors.blue.withOpacity(0.3),
                      //     offset: const Offset(1, 1),
                      //     blurRadius: 20,
                      //     spreadRadius: 1,
                      //     blurStyle: BlurStyle.outer
                      // ),
                    ]
                ),
                child:
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(height: 90,width: 90,
                          child: Image.asset("assets/images/a.png",fit: BoxFit.fill,),
                          color: Colors.red,),
                        SizedBox(width: 12,),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTest(text: "T-shirt of Best Product"),
                            CustomTest(text: "Size: SL"),
                            CustomTest(text: "Price: 1220 Tk"),
        
                          ],
                        )
                      ],
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Row(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.add_box_rounded,color: Colors.amber,)),
                            CustomTest(text: "0"),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.add_box_rounded,color: Colors.amber,)),
                          ],
                        ))
                  ],
        
                ),
              );
            })
        
          ],),
      ),
    );
  }
}
