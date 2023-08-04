import 'home_page.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Drawer(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()),
                                  (route) => false);
                            },
                            child: const Icon(
                              Icons.close,
                              size: 25,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          "Flutter",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.share,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Learn Flutter Development",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(height: 0, thickness: 1,),
              const CustomCard(
                  icon: Icon(
                    Icons.verified_user,
                    color: Colors.white,
                  ),
                  text: "Want to become a verified User?"),
              const Divider(height: 0, thickness: 1,),
              const ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                trailing: Icon(
                  Icons.swipe,
                  color: Colors.white,
                ),
                title: Text(
                  "Night mode",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const CustomCard(
                  icon: Icon(
                    Icons.color_lens,
                    color: Colors.white,
                  ),
                  text: "Theme"),
              const CustomCard(
                  icon: Icon(
                    Icons.feedback,
                    color: Colors.white,
                  ),
                  text: "Share your Feedback"),
              const Divider(height: 0, thickness: 1,),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Other apps",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: const [
                    CustomCard(
                        icon: Icon(
                          Icons.shop,
                          color: Colors.white,
                        ),
                        text: "Simple Guide for Java"),
                    CustomCard(
                        icon: Icon(
                          Icons.shop,
                          color: Colors.white,
                        ),
                        text: "Leveling"),
                    CustomCard(
                        icon: Icon(
                          Icons.shop,
                          color: Colors.white,
                        ),
                        text: "Water Drinking"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          alignment: Alignment.center,
          height: 200,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  25,
                ),
                topLeft: Radius.circular(
                  25,
                )),
            color: Colors.white,
          ),
          child: const Text("Tutorials", style: TextStyle(fontSize: 22, color: Colors.black12, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
