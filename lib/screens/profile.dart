import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            horizontalTitleGap: 0.0,
            leading: Container(
              height: 200,
              width: 80,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/Rutanana.jpg')),
                  shape: BoxShape.circle),
            ),
            title: RichText(
                text: const TextSpan(
              text: "Jeans",
              style: TextStyle(color: Colors.black),
            )),
            subtitle: RichText(
                text: const TextSpan(
              text: "jeans@jeans-studio.com",
              style: TextStyle(color: Colors.black),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "My Account",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        DrawerListTile(title: "Wristband", svgSrc: Icons.book, press: () {}),
        DrawerListTile(
            title: "Wallet & Payments", svgSrc: Icons.money, press: () {}),
        DrawerListTile(
            title: "Following & Likes", svgSrc: Icons.link, press: () {}),
        DrawerListTile(
            title: "Notifications",
            svgSrc: Icons.notification_add,
            press: () {}),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Event Organizer",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        DrawerListTile(
            title: "Event Organizer",
            svgSrc: Icons.event_available_rounded,
            press: () {}),
        DrawerListTile(
            title: "Service Provider",
            svgSrc: Icons.supervised_user_circle,
            press: () {}),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Culchr",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        DrawerListTile(
            title: "Customer Support",
            svgSrc: Icons.support_agent_rounded,
            press: () {}),
        DrawerListTile(
            title: "Terms & Policy",
            svgSrc: Icons.terminal_sharp,
            press: () {}),
        DrawerListTile(title: "App Info", svgSrc: Icons.info, press: () {}),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              InkWell(
                child: Text(
                  "Sign Out",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
      ]),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title;
  final IconData svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 14),
      ),
      trailing: Icon(
        svgSrc,
        color: Colors.black,
        size: 25,
      ),
    );
  }
}
