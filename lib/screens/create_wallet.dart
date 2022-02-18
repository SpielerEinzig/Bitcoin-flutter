import 'package:bitcoin_wallet/components/neumorphic_button.dart';
import 'package:bitcoin_wallet/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CreateWallet extends StatelessWidget {
  const CreateWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: neumorphicButton(
              icon: Icons.account_balance_wallet_outlined,
              label: "Create your wallet",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
