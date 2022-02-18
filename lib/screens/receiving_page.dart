import 'package:flutter/material.dart';

class ReceivingPage extends StatefulWidget {
  const ReceivingPage({Key? key}) : super(key: key);

  @override
  _ReceivingPageState createState() => _ReceivingPageState();
}

class _ReceivingPageState extends State<ReceivingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        //elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Receive Bitcoin",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Container(
                  color: Colors.grey,
                  width: 300,
                  height: 300,
                ),
                Column(
                  children: [
                    const Text(
                      "Address: bc1qutq78hqwjnazp3sy4e9kvdw9k08dl7g0awaav6",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Copy to clipboard",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
