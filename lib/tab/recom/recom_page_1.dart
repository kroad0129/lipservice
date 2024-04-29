import 'package:flutter/material.dart';

class RecomPage1 extends StatelessWidget {
  const RecomPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          title: const Text('Instagram Clone'),
        ),
        body: Column(
          children: [
            Text('Instagram에 오신 것을 환영합니다.')
          ],
        )
    );
  }
}