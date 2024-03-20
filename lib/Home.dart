import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:movie_catalogue/HomePage.dart';
import 'package:movie_catalogue/SearchPage.dart';
import 'package:movie_catalogue/WatchList.dart';
import 'package:movie_catalogue/main.dart';

class Home extends StatefulWidget{

  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState(); 
  
}

class HomeState extends State<Home>{

  int _page=0;

  List<Widget> _pages=[HomePage(),SearchPage(),WatchList()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 380,
          backgroundColor:  Color.fromARGB(239, 0, 0, 0),
          leading:Row(children:[
            SizedBox(width: 10,),
            Image.asset('assets/images/imbc.png',height: 40,),
            Spacer(),
            Icon(
                Icons.person_sharp,
                color: const Color.fromARGB(255, 155, 24, 14),
                size: 37
              ),
              SizedBox(width: 8,),
            GestureDetector(
              child: Text('Sign Out',style: TextStyle(color: const Color.fromARGB(255, 155, 24, 14) ,fontFamily: 'LeagueSpartan',fontSize: 18,fontWeight: FontWeight.w800),),
              onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>MyApp())),
            )
            
          ])
          ),
        body: _pages[_page],
        bottomNavigationBar: CurvedNavigationBar(
            onTap: (index){
              setState(() {
              _page=index;
            });

            },
            backgroundColor: Color.fromARGB(239, 0, 0, 0),
            buttonBackgroundColor: Color.fromARGB(255, 155, 8, 8),
            animationDuration: Duration(milliseconds: 300),
            color: Color.fromARGB(255, 155, 8, 8),
            items: [
            CurvedNavigationBarItem(child: Icon(Icons.home),),
            CurvedNavigationBarItem(child: Icon(Icons.search),),
            CurvedNavigationBarItem(child: Icon(Icons.download_done_sharp),),
          ]),
      ),
    );
  }
  
}