
import 'package:flutter/material.dart';
import 'package:movie_catalogue/Movie.dart';
import 'SearchPage.dart';


class HomePage extends StatelessWidget{
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
            padding: EdgeInsets.all(12),
            child:Column(
              children: [
                SizedBox(height: 15,),
                SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                SizedBox(width: 10,),
                  Container(
                    width: 350,
                    height: 200,
                    child: Image.network('https://www.tallengestore.com/cdn/shop/products/1917_-_Sam_Mendes_WW1_Epic_-_Hollywood_War_Film_Classic_English_Movie_Poster_94e5102a-f2f9-432f-9dfe-a108ff4b9f53.jpg?v=1582781208'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  SizedBox(width: 22,),
                  Container(
                    width: 360,
                    height: 200,
                    child: Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/f8b2ef92655071.5e505bf7132ab.png'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  SizedBox(width: 22,),
                  Container(
                    width: 360,
                    height: 200,
                    child: Image.network('https://miro.medium.com/v2/resize:fit:1358/1*Subc1iyVVKLRT-Wolmj_-A.jpeg'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  )
              ],)
            ),
            SizedBox(height: 15,),
            Row( children: [SizedBox(width: 150,), Icon(Icons.circle,size: 13,color: Color.fromARGB(169, 189, 189, 188),),
            SizedBox(width: 4,),
            Icon(Icons.circle,size: 11,),
            Icon(Icons.circle,size: 11,),
            ],),
            SizedBox(height: 25,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Trending', style: TextStyle(fontFamily: 'LeagueSpartan',color: Color.fromARGB(255, 158, 7, 7),fontSize: 25,),)
            ),
            SizedBox(height: 10 ,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
              Container(
                    width: 120,
                    height: 179,
                    child: Image.network('https://img.buzzfeed.com/buzzfeed-static/static/2023-07/18/21/asset/71268e2b66ba/sub-buzz-645-1689715488-7.jpg'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  SizedBox(width: 18,),
                  Container(
                    width: 120,
                    height: 179,
                    child: Image.network('https://i.redd.it/dj4o5b6ywcx91.jpg'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  SizedBox(width: 18,),
                  Container(
                    width: 120,
                    height: 179,
                    child: Image.network('https://assets.mubicdn.net/images/notebook/post_images/38230/images-w1400.jpeg?1701779649'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  SizedBox(width: 18,),
                  Container(
                   width: 120,
                    height: 179,
                    child: Image.network('https://www.dotyeti.com/wp-content/uploads/2023/01/image9-1-692x1024.jpg'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
            ],),
              ),
            SizedBox(height: 30 ,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Recommended movies', style: TextStyle(fontFamily: 'LeagueSpartan',color: Color.fromARGB(255, 158, 7, 7),fontSize: 25,),)
            ),
            SizedBox(height: 10 ,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                InkWell(
                    child:  Container(
                          width: 120,
                          height: 179,
                          child: Image.network('https://i.ebayimg.com/images/g/uHwAAOSw-iFgRQG3/s-l1600.jpg'),
                          decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  onTap: ()=> Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Movie()),
            ),
                ),
                 
                  SizedBox(width: 18,),
                  Container(
                    width: 120,
                    height: 179,
                    child: Image.network('https://www.dotyeti.com/wp-content/uploads/2023/01/barbie.webp'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  SizedBox(width: 18,),
                  Container(
                    width: 120,
                    height: 179,
                    child: Image.network('https://townsquare.media/site/442/files/2023/12/attachment-saltburn_ver10_xlg.jpg?w=980&q=75'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
                  SizedBox(width: 18,),
                  Container(
                   width: 120,
                    height: 179,
                    child: Image.network('https://images.fandango.com/ImageRenderer/400/0/redesign/static/img/default_poster.png/0/images/masterrepository/other/KillersFlowerMoon_Poster_2023.jpg'),
                    decoration: BoxDecoration(color: Color.fromARGB(171, 0, 0, 0),borderRadius: BorderRadius.circular(10),),
                  ),
            ],),
              ),
              ]
              )
            )
          ),
          
    ));
  }
  
}