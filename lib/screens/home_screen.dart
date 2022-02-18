import 'package:bitcoin_wallet/components/glass_box.dart';
import 'package:bitcoin_wallet/components/neumorphic_button.dart';
import 'package:bitcoin_wallet/services/litecoin_service.dart';
import 'package:flutter/material.dart';

import 'receiving_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  liteCoinService() async {
    await createNewLiteCoinWallet();
    print("litecoin service");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    liteCoinService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: glassBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "child",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      neumorphicButton(
                          icon: Icons.keyboard_arrow_up,
                          label: "Send",
                          onPressed: () {
                            print("send");
                          }),
                      neumorphicButton(
                        icon: Icons.keyboard_arrow_down,
                        label: "Receive",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReceivingPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
