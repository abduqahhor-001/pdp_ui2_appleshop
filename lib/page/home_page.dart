import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    
    'assets/images/image3.jpg',
   "assets/images/back.jpg",
    'assets/images/image3.jpg',
"assets/images/back.jpg",
    'assets/images/image3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 192, 73, 9),
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 192, 73, 9),
         leading: Icon(Icons.menu , color: Colors.white,),
        centerTitle: true,
        title: Text("Apple Products", style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding:EdgeInsets.all(10),
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange,
                ),
                child: Center(
                  child: Text("7" , style: TextStyle(color: Colors.white),),
                ),
            ),
        )
        ],
      ),
      

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image:AssetImage("assets/images/back.jpg"),
                  fit: BoxFit.cover,
                  ),
                  
              ),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.01),
                      ]),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Lifestyle sale",
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              "Shop Now",
                              style: TextStyle(color: Colors.grey[900]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
            SizedBox(
                          height: 30,
                        ),

            Expanded(
                  child: SingleChildScrollView(
                    child: Column(children: 
                      _listItem.map((item) => cellOfList(item)).toList(),

                  ),
                  )
                ),  
          ],),
        ),
      )
    );
  }

    Widget cellOfList(String item) {
    return Card(
      
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: 350,
        
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child:const Row(
          
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}