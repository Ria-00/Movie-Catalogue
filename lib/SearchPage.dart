
import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget{
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
              TextField(
                decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,color: Color.fromARGB(255, 174, 11, 11),),
                hintText: 'Actor, title or genre',
                filled: true,
                fillColor: Color.fromARGB(151, 255, 255, 255),
                border: OutlineInputBorder(borderSide: BorderSide.none,)
                ,suffixIcon: Icon(Icons.mic,color: Color.fromARGB(255, 174, 11, 11),)
                )
                ,),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Genres', style: TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 28,fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w800),textAlign: TextAlign.right,)
              ),
              SizedBox(height: 10,),
              Row(children: [
                SizedBox(width: 5,),
                ElevatedButton(onPressed: ()=>(), child: Text('Comedy'),
              style: ElevatedButton.styleFrom(minimumSize: Size(170, 60),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor:Color.fromARGB(144, 59, 59, 59),
              foregroundColor: Color.fromARGB(255, 255, 255, 255)
              )),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: ()=>(), child: Text('Drama'),
              style: ElevatedButton.styleFrom(minimumSize: Size(170, 60),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor:Color.fromARGB(144, 59, 59, 59),
              foregroundColor: Color.fromARGB(255, 255, 255, 255)
              )),
              
              ],),
              SizedBox(height: 15,),
              Row(children: [
                SizedBox(width: 5,),
                ElevatedButton(onPressed: ()=>(), child: Text('Romance'),
              style: ElevatedButton.styleFrom(minimumSize: Size(170, 60),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor:Color.fromARGB(144, 59, 59, 59),
              foregroundColor: Color.fromARGB(255, 255, 255, 255)
              )),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: ()=>(), child: Text('Action'),
              style: ElevatedButton.styleFrom(minimumSize: Size(170, 60),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor:Color.fromARGB(144, 59, 59, 59),
              foregroundColor: Color.fromARGB(255, 255, 255, 255)
              )),
              
              ],),
              SizedBox(height: 15,),
              Row(children: [
                SizedBox(width: 5,),
                ElevatedButton(onPressed: ()=>(), child: Text('Suspense'),
              style: ElevatedButton.styleFrom(minimumSize: Size(170, 60),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor:Color.fromARGB(144, 59, 59, 59),
              foregroundColor: Color.fromARGB(255, 255, 255, 255)
              )),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: ()=>(), child: Text('Anime'),
              style: ElevatedButton.styleFrom(minimumSize: Size(170, 60),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor:Color.fromARGB(144, 59, 59, 59),
              foregroundColor: Color.fromARGB(255, 255, 255, 255)
              )),
              
              ],),
              SizedBox(height: 10,),  
              Text('See more ˅',style:TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 16),)
              ,SizedBox(height: 25,),
              Align(
              alignment: Alignment.topLeft,
              child: Text('Featured Collections', style: TextStyle(color: Color.fromARGB(255, 174, 11, 11),fontSize: 28,fontFamily: 'LeagueSpartan',fontWeight: FontWeight.w800),textAlign: TextAlign.right,)
              ),
              SizedBox(height: 15,),
             Container(
                child:Row(children:[
                  
            Text('Hindi',style: TextStyle(color: Color.fromARGB(168, 174, 11, 11),fontSize: 20,),),
            Spacer(),
            Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(137, 155, 23, 11),
                size: 20
              ),
              
          ])
             ),
              SizedBox(height: 15,),
             Container(
                child:Row(children:[
                  
            Text('English',style: TextStyle(color:Color.fromARGB(168, 174, 11, 11),fontSize: 20),),
            Spacer(),
            Icon(
                Icons.arrow_forward_ios,
                color:Color.fromARGB(168, 174, 11, 11),
                size: 20
              ),
              
          ])
             ),
             SizedBox(height: 15,),
             Container(
                child:Row(children:[
                  
            Text('Telugu',style: TextStyle(color:Color.fromARGB(168, 174, 11, 11),fontSize: 20),),
            Spacer(),
            Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(168, 174, 11, 11),
                size: 20
              ),
              
          ])
             ),
             SizedBox(height: 15,),
             Container(
                child:Row(children:[
                  
            Text('Punjabi',style: TextStyle(color:Color.fromARGB(168, 174, 11, 11),fontSize: 20),),
            Spacer(),
            Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(168, 174, 11, 11),
                size: 20
              ),
              
          ])
             ),
             SizedBox(height: 15,),
             Container(
                child:Row(children:[
                  
            Text('Malyalam',style: TextStyle(color:Color.fromARGB(168, 174, 11, 11),fontSize: 20),),
            Spacer(),
            Icon(
                Icons.arrow_forward_ios,
                color:Color.fromARGB(168, 174, 11, 11),
                size: 20
              ),
              
          ])
             ),
             SizedBox(height: 15,),
             Container(
                child:Row(children:[
                  
            Text('Urdu',style: TextStyle(color: Color.fromARGB(168, 174, 11, 11),fontSize: 20),),
            Spacer(),
            Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(168, 174, 11, 11),
                size: 20
              ),
              
          ])
             ),
             SizedBox(height: 15,),
             Container(
                child:Row(children:[
                  
            Text('Japanese',style: TextStyle(color: Color.fromARGB(168, 174, 11, 11),fontSize: 20),),
            Spacer(),
            Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(168, 174, 11, 11),
                size: 20
              ),
              
          ])
             )
              ],
            )
            
          ),
        ),
        
      ),
    );
  }
  
}