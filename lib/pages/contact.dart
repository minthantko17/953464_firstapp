import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  List mydata = ['Apple', 'Banana', 'Papaya'];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [
              ListTile(
                onTap: () {},
                leading: Icon(Icons.abc_sharp),
                title: Text(mydata[0]),
                subtitle: Text("subtitle"),
                trailing: FlutterLogo(),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.abc_sharp),
                title: Text(mydata[1]),
                subtitle: Text("subtitle"),
                trailing: FlutterLogo(),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.abc_sharp),
                title: Text(mydata[2]),
                subtitle: Text("subtitle"),
                trailing: FlutterLogo(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
