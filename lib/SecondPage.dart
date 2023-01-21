import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {

  late String imgPath;

  SecondPage({required this.imgPath});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.imgPath,   //animasyon için hero kullanıldı
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(widget.imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
