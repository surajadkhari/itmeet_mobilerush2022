import 'package:flutter/material.dart';
import 'package:mobilerush2022/utls/app.const.dart';

class TermsConditonPage extends StatelessWidget {
  const TermsConditonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms &  Condtions"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              Appconst.termCondtion,
              style: const TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
