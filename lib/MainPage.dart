import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Moda Uygulaması",
          style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.grey,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: ListView(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listOfAvatar(),
                    listOfAvatar(),
                    listOfAvatar(),
                    listOfAvatar(),
                    listOfAvatar(),
                    listOfAvatar(),

                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 4,
                color: Colors.green.shade300,
                child: Container(
                  height: 450,
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(image: NetworkImage("https://www.thenews.com.pk/assets/uploads/updates/2021-06-25/854464_1577425_scarlett-johansson11_updates.jpg"),fit: BoxFit.cover),
                          ),
                        ),
                        title: Text("Scharlet"),
                        subtitle: Text("subtitle"),
                        trailing: Icon(Icons.info_outline),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  listOfAvatar() {
    return Padding(
        padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Stack(
            alignment: Alignment.bottomRight,  //ya da Positioned widget i kullanarak küçük resmi stack üzerinde hareket ettirebilirdik
            children: [
              Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                    image: NetworkImage("https://www.thenews.com.pk/assets/uploads/updates/2021-06-25/854464_1577425_scarlett-johansson11_updates.jpg"),fit: BoxFit.cover),
                    ),
                  ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.deepPurple,
                  // image: DecorationImage(image: NetworkImage(""))
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 4),
            child: Container(
              height: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: StadiumBorder(), //butona ovallik verir
                ),
                onPressed: (){},
                child: Text("Follow"),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
