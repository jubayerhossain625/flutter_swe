import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MaterialApp(
    title: "Alifbook",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("alifbook",
          style: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/IMG_20220210_123359.jpg'),
              radius: 80,
            ),
          ),
          const SizedBox(height: 10),
          const Center(
            child: Text(
              "Md. Alif Khan",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
          ),
          Center(
            child: Text(
              "193 friends",
              style: TextStyle(
                  color: Colors.grey[350],
                  fontFamily: 'Roboto',
                  fontSize: 12
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse('https://fb.com/mdalif.khan.9440'),
                      mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const Icon(
                    Icons.facebook,
                  )
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                    Uri.parse('https://instagram.com/03_alifk'),
                    mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.instagram, size: 20,)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://x.com/03_alifk'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.xTwitter, size: 20,)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://reddit.com/u/unbeatableMAK'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.reddit, size: 20,)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://linkedin.com/in/3alif'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.linkedin, size: 20,)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://github.com/3alif'),
                        mode: LaunchMode.externalApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.github, size: 20,)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://discord.com/users/814099179961581568'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.discord, size: 20,)
              ),
            ],
          ),
          const Divider(color: Colors.grey,),
          const SizedBox(height: 10,),
          const Text(
            "Details",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.briefcase, color: Colors.grey[500], size: 20,),
                    const SizedBox(width: 5,),
                    Text(
                      "General Member at Software Engineering Club - SEC, DIU",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.graduationCap, color: Colors.grey[500], size: 20,),
                    const SizedBox(width: 5,),
                    Text(
                      "Studies B.Sc. in Software Engineering at Daffodil International University",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.house, color: Colors.grey[500], size: 20,),
                    const SizedBox(width: 5,),
                    Text(
                      "Lives in Dhaka, Bangladesh",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.locationDot, color: Colors.grey[500], size: 20,),
                    const SizedBox(width: 5,),
                    Text(
                      "From Khulna, Bangladesh",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.solidHeart, color: Colors.grey[500], size: 20,),
                    const SizedBox(width: 5,),
                    Text(
                      "Single",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.rss, color: Colors.grey[500], size: 20,),
                    const SizedBox(width: 5,),
                    Text(
                      "Followed by 266 people",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.grey[100],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
