import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final items = List<String>.generate(1000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {},
          leading: Icon(Icons.heart_broken),
          title: Text(items[index]),
        );
      },
    );
  }
}
