import 'package:flutter/material.dart';
import 'package:movie_catalogue/Home.dart';
import 'package:movie_catalogue/HomePage.dart';
import 'package:movie_catalogue/SearchPage.dart';

class WatchList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 790,
            decoration: BoxDecoration(color: Color.fromARGB(239, 0, 0, 0)),
            child: Column(children: [
              SizedBox(height: 20,),
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ElevatedButton(onPressed: ()=>(), 
                    child: Text('All'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(178, 255, 255, 255)
                    ),
                      ),
                      SizedBox(width: 10,),
                    ElevatedButton(onPressed: ()=>(), 
                    child: Text('Movies'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(178, 255, 255, 255)
                    ),
                      ),
                       SizedBox(width: 10,),
                    ElevatedButton(onPressed: ()=>(), 
                    child: Text('Drama'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(178, 255, 255, 255)
                    ),
                      ),
                      SizedBox(width: 10,),
                    ElevatedButton(onPressed: ()=>(), 
                    child: Text('Anime'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(178, 255, 255, 255)
                    ),
                      )
                  ],
                    ),
            ),
            SizedBox(height: 20,),
                SizedBox(height: 170,),
                Text('Watchlist empty', style: TextStyle(color: Color.fromARGB(232, 203, 191, 191),fontSize: 16,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                SizedBox(height: 20,),
                IconButton(onPressed:  ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()),), icon: Icon(Icons.add_box_outlined,size: 56,color: Color.fromRGBO(155, 6, 6, 0.447),),),
                SizedBox(height: 20,),
                
            ],)
          ),
        ),
      ),
    );
  }
  
}