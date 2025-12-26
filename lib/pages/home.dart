import 'dart:convert';

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
      child: FutureBuilder(
        builder: (context, snapshot) {
          List<dynamic> data = json.decode(snapshot.data.toString());
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return myBox(
                data[index]['title'],
                data[index]['subtitle'],
                data[index]['image_url'],
                data[index]['detail'],
              );
            },
          );
        },
        future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
      ),
    );
  }

  Widget myBox(String title, String subtitle, String imageUrl, String detail) {
    var v1, v2, v3, v4;
    v1 = title;
    v2 = subtitle;
    v3 = imageUrl;
    v4 = detail;

    return Container(
      margin: EdgeInsets.only(top: 20),
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
                MaterialPageRoute(
                  builder: (context) => DetailPage(v1, v2, v3, v4),
                ),
              );
            },
            child: Text("Detail page", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
