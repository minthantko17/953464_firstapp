import 'package:firstapp/pages/detail.dart';
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
          myBox(
            "What is a computer",
            "Computer is a thing to calculate and do any other words.",
            "https://th.bing.com/th/id/R.c9c905906ed5f6b395dec5514f75b7cb?rik=cI0aaM39DTF6dA&riu=http%3a%2f%2fwww.pixelstalk.net%2fwp-content%2fuploads%2f2016%2f05%2fHd-Laptop-wallpapers.jpg&ehk=fdAGF7dNdtQMtY9E7s8hArE8z60Wx9Vbg4oAC9aYUcs%3d&risl=&pid=ImgRaw&r=0",
          ),
          SizedBox(height: 24),
          myBox(
            "What is Flutter",
            "Flutter is a framework to develop mobile applications.",
            "https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/300793461/original/0bec4e17182a7b93302af481d2f447d752187b90/create-your-application-with-dart-and-flutter.jpeg",
          ),
          SizedBox(height: 24),
          myBox(
            "What is Dart Language",
            "Dart is a programming language.",
            "https://1.bp.blogspot.com/-nofCTi1SfwQ/VXGc5Z0bFBI/AAAAAAAAAx8/5MJO9dAS82s/s1600/dart%2Blogo.png",
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }

  Widget myBox(String title, String subtitle, String imageUrl) {
    return Container(
      padding: EdgeInsets.all(24),
      height: 185,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 25, color: Colors.white)),
          Text(subtitle, style: TextStyle(fontSize: 15, color: Colors.white)),
          TextButton(
            onPressed: () {
              print("next page >>");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailPage()),
              );
            },
            child: Text("Detail page", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
