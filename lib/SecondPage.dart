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
      body: Stack(
        children: [
          Hero(
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
          widgetOnImage(),
        ],
      ),
    );
  }

  widgetOnImage() {
    return Positioned(
      left: 15,
      right: 15,
      bottom: 15,
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 4,
        child: Container(
          height: 220,
          width: MediaQuery.of(context).size.width-30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black.withOpacity(0.2)),
                        image: DecorationImage(image: AssetImage("assets/dress.jpg"),fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LAMINATED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      SizedBox(height: 5),
                      Text("Louis vuitton",style: TextStyle(color: Colors.grey),),
                      SizedBox(height: 10,),
                      Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width-160,
                        child: Text("One button V-neck sling long sleeved waist female stitching dress",style: TextStyle(fontSize: 12,color: Colors.grey),),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(color: Colors.grey,),
              Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("€6500",style: TextStyle(fontSize: 22,color: Colors.grey),),
                      Icon(Icons.play_circle_fill,color: Colors.brown,size: 50,),

                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
