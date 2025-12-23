import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          myBox(),
          SizedBox(height: 24),
          myBox(),
          SizedBox(height: 24),
          myBox(),
          SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget myBox() {
    return Container(
      padding: EdgeInsets.all(24),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(
            "https://th.bing.com/th/id/R.c9c905906ed5f6b395dec5514f75b7cb?rik=cI0aaM39DTF6dA&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f05%2fHd-Laptop-wallpapers.jpg&ehk=fdAGF7dNdtQMtY9E7s8hArE8z60Wx9Vbg4oAC9aYUcs%3d&risl=&pid=ImgRaw&r=0",
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.7),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What is a computer",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Text(
            "Computer is a thing to calculate and do any other words.",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
