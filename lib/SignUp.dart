import 'package:flutter/material.dart';

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 790,
            decoration: BoxDecoration(color: Color.fromARGB(234, 1, 1, 1)),
            padding: EdgeInsets.all(12),
            child: Column(children: [
              SizedBox(height: 100,),
              Image.asset('assets/images/imbc1.png',height: 100,),
              SizedBox(height: 20,),
              Row(children: [
                Flexible(
                  child: TextField(
                    cursorColor: const Color.fromARGB(255, 255, 255, 255),
                    style: TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(labelText: 'Enter First Name',
                    )),
                ),
                SizedBox(width: 25,),
                Flexible(
                  child: TextField(decoration: InputDecoration(labelText: 'Enter Last Name')),flex:1,
                ),
              ],),
              TextField(decoration: InputDecoration(labelText: 'Email',hintText: 'abc@domain.com',hintStyle: TextStyle(color: Color.fromARGB(156, 125, 124, 124))),),
              TextField(decoration: InputDecoration(labelText: 'Password'),obscureText: true,),
              TextField(decoration: InputDecoration(labelText: 'Confirm Password'),obscureText: true,),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, '/'), child:Text('Register'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(400, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    backgroundColor:Color.fromARGB(255, 174, 15, 28),
                    foregroundColor:  Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              
              SizedBox(height: 25,),
              Text('OR',style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),),
              SizedBox(height: 20,),
              Row(children: [
                Flexible(child: 
                  ElevatedButton(onPressed: ()=>(), child: Container(
                
                child: Row(children:[Image.network("https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png",height: 20,width: 25,),Text("       Google",style: TextStyle(fontWeight: FontWeight.w400),)],),
              ),
              style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 172, 7, 7),
                    foregroundColor:  Color.fromRGBO(255, 255, 255, 1),
                ),
              )
                ),
                SizedBox(width: 20,),
                Flexible(child: 
                  ElevatedButton(onPressed: ()=>(), child: Container(
                child: Row(children:[Image.asset("assets/images/apple.png",height: 34),Text("   Apple",style: TextStyle(fontWeight: FontWeight.w400),)],),
              ),
              style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 169, 6, 6),
                    foregroundColor:  Color.fromRGBO(255, 255, 255, 1),
                ),
              )
                )
              ],),
              
              

            ],),
          ),
        ),
        
        ),
    );
  }

}
