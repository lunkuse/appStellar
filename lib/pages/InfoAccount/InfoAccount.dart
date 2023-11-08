import 'package:flutter/material.dart';
import 'package:stellar_crypto_app/data/StellarDao.dart';
import 'package:stellar_crypto_app/main.dart';

class InfoAccount extends StatelessWidget {
  final StellarDao stellarDao;

  // InfoAccount () {
  //   _stellarDao = MyApp().getStellarDao;
  // }
  InfoAccount({required this.stellarDao});

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
                FutureBuilder<void>(
                    // future: InfoAccount()._stellarDao.getAccount(""),
                    // future: this.stellarDao,
                    builder: (context, snapshot) {
                      // print('Ejecutando Stellar...');
                      return Text('Ejecutando Stellar...');
                    });
              },
              child: Text('Info Account'),
            )
          ],
        ),
      ),
    );
  }
}
