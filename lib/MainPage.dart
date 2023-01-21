import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moda_uygulamasi/SecondPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
with SingleTickerProviderStateMixin{

  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);  //this tablar arası animasyonlu geçiş
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
      bottomNavigationBar: Material(
        color: Colors.white,
        child: tabBarPart(),
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
                    listOfAvatar("assets/model1.jpeg","assets/chanellogo.jpg"),
                    listOfAvatar("assets/model2.jpeg","assets/louisvuitton.jpg"),
                    listOfAvatar("assets/model3.jpeg","assets/chloelogo.png"),
                    listOfAvatar("assets/model1.jpeg","assets/chanellogo.jpg"),
                    listOfAvatar("assets/model2.jpeg","assets/louisvuitton.jpg"),
                    listOfAvatar("assets/model3.jpeg","assets/chloelogo.png"),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(12),
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 6,
                child: Container(
                  height: 550,
                  width: double.infinity,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(image: AssetImage("assets/model1.jpeg"),fit: BoxFit.cover),
                          ),
                        ),
                        title: Text("Chloe"),
                        subtitle: Text("54 mins ago"),
                        trailing: Icon(Icons.info_outline),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text("This official website features a ribbed knit zipper jacket that is"
                              "modern and stylish. It looks very temparametn and is recommend to friends.",
                          style: TextStyle(fontSize: 15),),
                      ),
                      imagesPart(),
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 75,
                                child: Text("# Louis vuitton",style: TextStyle(fontSize: 10,),),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.brown.withOpacity(0.5),
                                ),
                              ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 75,
                                child: Text("# Chloe",style: TextStyle(fontSize: 10),),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.brown.withOpacity(0.5),
                                ),
                              ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Divider(),
                      SizedBox(height: 20,),
                      iconsPartOnCard(),
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

  listOfAvatar(String image,String logoImage) {
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
                    image: AssetImage(image),fit: BoxFit.cover),
                    ),
                  ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(image: AssetImage(logoImage),fit: BoxFit.cover),
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

  imagesPart() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: InkWell(   //animasyonlu geçiş hem de tıklama oxelligi var
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(imgPath: "assets/modelgrid1.jpeg",)));
            },
            child: Hero(
                tag: "assets/modelgrid1.jpeg",
                child: Container(
                  width: (MediaQuery.of(context).size.width - 50) / 2,  //tabletle de uyumlu olamsı için
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage("assets/modelgrid1.jpeg"),
                        fit: BoxFit.cover),
                  ),
                ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(imgPath: "assets/modelgrid2.jpeg")));
                },
                child: Hero(
                  tag: "assets/modelgrid2.jpeg",
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 100) / 2,
                    height: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/modelgrid2.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(imgPath: "assets/modelgrid3.jpeg")));
                },
                child: Hero(
                  tag: "assets/modelgrid3.jpeg",
                  child: Container(
                    width: (MediaQuery.of(context).size.width - 100) / 2,
                    height: 95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/modelgrid3.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  iconsPartOnCard() {
    return Row(
      children: [
        Icon(Icons.reply,color: Colors.brown.withOpacity(0.5),size: 30,),
        SizedBox(width: 5,),
        Text("1.7k",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5),)),
        SizedBox(width: 30,),
        Icon(Icons.comment,color: Colors.brown.withOpacity(0.5),size: 30,),
        SizedBox(width: 5,),
        Text("325",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5),)),
        Container(
          width: (MediaQuery.of(context).size.width - 215),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.favorite,color: Colors.red,size: 30,),
              SizedBox(width: 5,),
              Text("2.3k",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.5),)),
            ],
          ),
        ),


      ],
    );
  }

  tabBarPart() {
    return TabBar(
        indicatorColor: Colors.transparent,
        controller: tabController,
        tabs: [
          Tab(icon: Icon(Icons.more,color: Colors.grey,size: 20,),),
          Tab(icon: Icon(Icons.play_arrow,color: Colors.grey,size: 20,),),
          Tab(icon: Icon(Icons.navigation,color: Colors.grey,size: 20,),),
          Tab(icon: Icon(Icons.supervised_user_circle,color: Colors.grey,size: 20,),),

        ]
    );
  }

}
