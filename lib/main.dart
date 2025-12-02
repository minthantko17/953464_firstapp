import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pattama Shop',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Pattama Shop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();
  var receivedAmount = TextEditingController();
  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Center(child: Column(children: [Text("Hello")])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Calculate Change",
              style: TextStyle(
                fontFamily: "maa",
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
                color: Colors.blueAccent,
                backgroundColor: Colors.red,
              ),
            ),
            priceTextField(),
            amountTextField(),
            calculateButton(),
            showTotalText(),
            receiveMoneyTextField(),
            changeCalculateButton(),
            showChangeText(),
          ],
        ),
      ),
    );
  }

  Widget priceTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: price,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Price per Item",
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget amountTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: amount,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Amount of Items",
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget calculateButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          if (price.text.isNotEmpty && amount.text.isNotEmpty) {
            setState(() {
              _total = double.parse(price.text) * double.parse(amount.text);
            });
          }
        },
        child: Text("Calculate Total"),
      ),
    );
  }

  Widget showTotalText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Total: $_total Baht"),
    );
  }

  Widget receiveMoneyTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: receivedAmount,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Received Amount",
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }

  Widget changeCalculateButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          if (receivedAmount.text.isNotEmpty &&
              double.parse(receivedAmount.text) >= _total) {
            setState(() {
              _change = double.parse(receivedAmount.text) - _total;
            });
          } else if (double.parse(receivedAmount.text) < _total) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text("Money is not enough.")));
          }
        },
        child: Text("Calculate Change"),
      ),
    );
  }

  Widget showChangeText() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("Change: $_change Baht"),
    );
  }
}
