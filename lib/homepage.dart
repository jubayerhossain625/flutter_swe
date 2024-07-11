import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("alifbook",
          style: TextStyle(
            fontFamily: "Roboto",
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: 240,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/1097489.jpg'),
                        fit: BoxFit.cover,
                      )
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 120, left: 10),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 83,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/IMG_20220210_123359.jpg'),
                      radius: 80,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Md. Alif Khan",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 12
                      ),
                      children: [
                        TextSpan(
                          text: "193",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " friends",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Text(
                    "i like fantasy",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
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
                    icon: const Icon(Icons.facebook,)
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse('https://instagram.com/03_alifk'),
                          mode: LaunchMode.externalNonBrowserApplication
                      );
                    },
                    icon: const FaIcon(FontAwesomeIcons.instagram, size: 24,)
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse('https://x.com/03_alifk'),
                          mode: LaunchMode.externalNonBrowserApplication
                      );
                    },
                    icon: const FaIcon(FontAwesomeIcons.xTwitter, size: 24,)
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse('https://reddit.com/u/unbeatableMAK'),
                          mode: LaunchMode.externalNonBrowserApplication
                      );
                    },
                    icon: const FaIcon(FontAwesomeIcons.redditAlien, size: 24,)
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse('https://linkedin.com/in/3alif'),
                          mode: LaunchMode.externalNonBrowserApplication
                      );
                    },
                    icon: const FaIcon(FontAwesomeIcons.linkedin, size: 24,)
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse('https://github.com/3alif'),
                          mode: LaunchMode.externalApplication
                      );
                    },
                    icon: const FaIcon(FontAwesomeIcons.github, size: 24,)
                ),
                IconButton(
                    onPressed: () async {
                      await launchUrl(
                          Uri.parse('https://discord.com/users/814099179961581568'),
                          mode: LaunchMode.externalNonBrowserApplication
                      );
                    },
                    icon: const FaIcon(FontAwesomeIcons.discord, size: 24,)
                ),
              ],
            ),
            const Divider(),
            // const SizedBox(height: 10,),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton(
            //       onPressed: (){},
            //       style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple[300]),
            //       child: const Text(
            //         "Follow",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //           fontFamily: 'Roboto',
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 10,),
            //     ElevatedButton(
            //       onPressed: (){},
            //       style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
            //       child: const Text(
            //         "Follow",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.bold,
            //           fontFamily: 'Roboto',
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Details",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.business_center, color: Colors.grey[500],),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                            ),
                            children: [
                              TextSpan(
                                text: "General Member at ",
                              ),
                              TextSpan(
                                text: "Software Engineering Club - SEC, Daffodil International University",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.school, color: Colors.grey[500],),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                            ),
                            children: [
                              TextSpan(
                                text: "Studies B.Sc. in Software Engineering at ",
                              ),
                              TextSpan(
                                text: "Daffodil International University",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.home, color: Colors.grey[500],),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                            ),
                            children: [
                              TextSpan(
                                text: "Lives in ",
                              ),
                              TextSpan(
                                text: "Dhaka, Bangladesh",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.room, color: Colors.grey[500],),
                      const SizedBox(width: 5,),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 40,
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                            ),
                            children: [
                              TextSpan(
                                text: "From ",
                              ),
                              TextSpan(
                                text: "Khulna, Bangladesh",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.favorite, color: Colors.grey[500],),
                      const SizedBox(width: 5,),
                      const Text(
                        "Single",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.rss_feed, color: Colors.grey[500]),
                      const SizedBox(width: 5,),
                      const Text(
                        "Followed by 265 people",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.more_horiz, color: Colors.grey[500]),
                      const SizedBox(width: 5,),
                      const Text(
                        "See Md. Alif's About Info",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
