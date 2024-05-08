import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:movie_catalogue/HomePage.dart';
import 'package:movie_catalogue/Profile.dart';
import 'package:movie_catalogue/SearchPage.dart';
import 'package:movie_catalogue/SignUp.dart';
import 'package:movie_catalogue/WatchList.dart';
import 'package:movie_catalogue/main.dart';

class Home extends StatefulWidget{

  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState(); 
  
}

class HomeState extends State<Home>{

  int _page=0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Widget> _pages=[HomePage(),SearchPage(),WatchList()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      key: _scaffoldKey,
      drawer: _buildDrawer(),
        appBar: AppBar(
          leadingWidth: 380,
          backgroundColor: Color.fromARGB(239, 0, 0, 0),
          leading: Row(
            children: [
              SizedBox(width: 10),
              Image.asset('assets/images/imbc.png',height: 40,),
              Spacer(),
              IconButton(
                icon: Icon(Icons.person),
                iconSize: 38, 
                color: const Color.fromARGB(255, 155, 24, 14),
                onPressed: () => _scaffoldKey.currentState!.openDrawer(),
              ),

            ],
          ),
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

    Widget _buildDrawer() {
    return Drawer(
      backgroundColor: Color.fromARGB(234, 8, 8, 8),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 118, 15, 15)),
            accountName: Text('RIYA SINGH',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),), 
            accountEmail: Text('singhriya@gmail.com',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
            currentAccountPicture: Image.network("https://static.vecteezy.com/system/resources/previews/023/410/729/original/animal-dog-3d-icon-png.png"),),
          ListTile(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp ())),
            title: Text('New Account',style: TextStyle(color: Colors.white)),
            // style:,
          ),
          // Add more menu items here
          ListTile(
            title: Text('Sign Out',style: TextStyle(color: Colors.white),),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp())),
          ),
        ],
      ),
    );
  }
  
}