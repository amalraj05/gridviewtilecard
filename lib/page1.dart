import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: Icon(Icons.menu),
      title: Text("Gridview Tilecard",style: TextStyle(fontSize: 25),),
      actions: [Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.search),
      )],
      backgroundColor: Colors.pink[500],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 0,
          ),
          itemCount: title.length,
        itemBuilder: (context, index) => Card(
          elevation: 6,
          child: Container(
            height: 50,
            width: 10,
            decoration: BoxDecoration(color: Colors.pink),
          child: Column(
            children: [
              Image.network(images[index],width: 150,height: 100,),
              Column(
                children: [
                  Title(color: Colors.yellow, child: Text(title[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                  Text(price[index],style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
              
            ],
          ),
          ),
         )),
      ),
    );
  }
}
final List images=[
  "https://th.bing.com/th/id/R.77eed415b01a3ec4f6cb7758a5a2a6d4?rik=XKDGn49n844u4Q&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fshoes-png-nike-shoes-transparent-background-800.png&ehk=ZvKLgGJIAl%2fJYtcu4emEZimity8VBQnk3UNcaW8MbLQ%3d&risl=&pid=ImgRaw&r=0",
  "https://www.pngarts.com/files/6/Jeans-PNG-Image-Transparent-Background.png",
  "https://cpimg.tistatic.com/03309525/b/5/Hawai.png",
  "https://www.pngall.com/wp-content/uploads/2016/06/Samsung-Mobile-Phone-Free-Download-PNG.png",
  "https://www.pngmart.com/files/15/Havells-Beard-Trimmer-Transparent-PNG.png",
  "https://www.pngarts.com/files/2/Soccer-Ball-PNG-Download-Image.png",
  "https://pngimg.com/uploads/dress_shirt/dress_shirt_PNG8105.png",
  "https://pngimg.com/uploads/football_boots/football_boots_PNG59.png",
];
List title=[
  "Shoes",
  "Pants",
  "Chappals",
  "Phones",
  "Trimmers",
  "football",
  "Shirts",
  "Boots"
];
List price=[
  "price - 1,500",
  "price - 1,000",
  "price - 100",
  "price - 20,000",
  "price - 350",
  "price - 1200",
  "price - 500",
  "price - 1150",
];