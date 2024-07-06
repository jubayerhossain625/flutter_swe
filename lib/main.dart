import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
              "192 friends",
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
                  icon: const FaIcon(FontAwesomeIcons.instagram)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://x.com/03_alifk'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.xTwitter)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://reddit.com/u/unbeatableMAK'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.reddit)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://linkedin.com/in/3alif'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.linkedin)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://github.com/3alif'),
                        mode: LaunchMode.externalApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.github)
              ),
              IconButton(
                  onPressed: () async {
                    await launchUrl(
                        Uri.parse('https://discord.com/users/814099179961581568'),
                        mode: LaunchMode.externalNonBrowserApplication
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.discord)
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
        ],
      ),
    );
  }
}
