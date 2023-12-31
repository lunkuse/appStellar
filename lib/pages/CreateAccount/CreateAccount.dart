// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/data/StellarDao.dart';
// import 'package:stellar_crypto_app/main.dart';

// ignore: must_be_immutable
class CreateAccount extends StatelessWidget {
  StellarDao stellarDao;

  // CreateAccount () {
  //   _stellarDao = MyApp().getStellarDao;
  // }
  CreateAccount({required this.stellarDao});
  // = MyApp().getStellarDao

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stellar demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stellar App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                /** 
                  FutureBuilder<void>(
                    future: InfoAccount()._stellarDao.getAccount(""),
                    builder: (context, snapshot){
                      print('Ejecutando Stellar...');
                    }
                );
                */
              },
              child: Text('Info Account'),
            )
          ],
        ),
      ),
    );
  }
}
