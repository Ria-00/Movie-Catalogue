import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_catalogue/Home.dart';

class Movie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            
            width: double.infinity,
            height: 1200,
            decoration: BoxDecoration(color: Color.fromARGB(239, 0, 0, 0)),
            child: Column(
              children: [
                Stack(children: [
              Container(
                child: Image(image:NetworkImage('https://i.ebayimg.com/images/g/uHwAAOSw-iFgRQG3/s-l1600.jpg')),
              ),
              Positioned(
                top: 24,
                left: 10,
                child:IconButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>Home()),), icon: Icon(Icons.arrow_back,size: 34,color: Color.fromARGB(205, 0, 0, 0),))
              ),
            ],),
            SizedBox(height: 13,),
            Text('Teenage Bounty Hunters',style: TextStyle(fontFamily: 'LeagueSpartan',color: const Color.fromARGB(255, 197, 186, 186),fontSize: 33),textAlign:TextAlign.left,),
            Row(children: [
              SizedBox(width:160 ,),
            Text('6.4/10', style: TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 15,fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w900),textAlign: TextAlign.right,),
            Icon(Icons.star_half,color: const Color.fromARGB(203, 255, 193, 7),size: 18,)
            ],),
            SizedBox(height: 15,),
            Row(
              children: [Padding(padding: EdgeInsets.all(12)),
              Text("Twin sisters Blair and Sterling balance teen life at\nan elite Southern high school with an unlikely new \ncareer as butt-kicking bounty hunters. \n\n"
              ,style: TextStyle(color: Color.fromARGB(183, 231, 222, 222)),
            ),
            ],
            ),
            Row(
              children: [
              SizedBox(width: 27,),  
              Text('Program creator:',style: TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 20,fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w900))
            ,Text('   Kathleen Jordan',style: TextStyle(color: Color.fromARGB(183, 231, 222, 222),fontSize: 16)
            )
            ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
              SizedBox(width: 27,),  
              Text('First episode date:',style: TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 20,fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w900))
            ,Text('   14 August 2020 (USA)',style: TextStyle(color: Color.fromARGB(183, 231, 222, 222),fontSize: 16)
            )
            ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
              SizedBox(width: 27,),  
              Text('Producers:',style: TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 20,fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w900))
            ,Text('   Alex Orr; Arturo Guzman',style: TextStyle(color: Color.fromARGB(183, 231, 222, 222),fontSize: 16)
            )
            ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
              SizedBox(width: 27,),  
              Text('Production company:',style: TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 20,fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w900))
            ,Text('   Tilted Productions',style: TextStyle(color: Color.fromARGB(183, 231, 222, 222),fontSize: 16)
            )
            ],
            )
              
              ],
            
            )
             
          ),
        ),
        ), 
    );
  }
  
}