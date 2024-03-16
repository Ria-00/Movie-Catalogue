import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyApp(),
      routes: {'/signup':(context) => SignUp(),
      '/home':(context) => HomePage()
      },
    ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(child: Container(
          height: 790,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image:AssetImage('assets/images/bg.png'),fit: BoxFit.cover)),
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(height: 180,),
              Image.asset('assets/images/imbc1.png',height: 100,),
              SizedBox(height: 50,),
              TextField(
              cursorColor: const Color.fromARGB(255, 255, 255, 255),
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Enter Username',
                hintStyle: TextStyle(color: Color.fromARGB(90, 252, 252, 252)),
                labelText:'Username',labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                filled: true,
                fillColor: Color.fromARGB(160, 91, 93, 95),
                border: OutlineInputBorder(
                borderSide: BorderSide.none,),
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                cursorColor: const Color.fromARGB(255, 255, 255, 255),
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Enter Password',
                hintStyle: TextStyle(color: Color.fromARGB(90, 252, 252, 252)),
                labelText:'Password',labelStyle: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),),
                filled: true,
                fillColor: Color.fromARGB(160, 91, 93, 95),
                border: OutlineInputBorder(
                borderSide: BorderSide.none,),
                ),obscureText: true,),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>HomePage()),
            );
          },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                elevation: 8.0,
                minimumSize:const Size(380, 50),
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
                backgroundColor:Color.fromRGBO(155, 6, 6, 1),
                foregroundColor: Color.fromRGBO(255, 255, 255, 1),
                
                ),),
                SizedBox(height: 12,),
                Row(children: [
                  Container(
                    width: 17.0,
                    height: 17.0, 
                    decoration: BoxDecoration(
                      color: Color.fromARGB(110, 255, 255, 255),
                      border: Border.all(color: Colors.black, width: 2.0),
                      shape: BoxShape.rectangle,
                    ),
                  )
                  ,Text('  Remember Me                                              Need Help?',style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),)],),
                SizedBox(height:50,),
                Row(
                  children: [
                      Text(' New to IMDC?',style: TextStyle(fontSize: 16, color: Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.w300),),
                GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>SignUp()),
            );
          },
          child: Text(
            '  Sign up now',
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700,color: const Color.fromARGB(255, 255, 255, 255)),
          )),  ],
                ),
                
                SizedBox(height: 12,),
                
             ],
          ),
        ),),
      ),
    );
  }
  
}

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


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          backgroundColor:  Color.fromARGB(239, 0, 0, 0),
          leading:Padding(padding: EdgeInsets.only(left: 7),child:Image.asset('assets/images/imbc.png',)),
          
          title: Icon(
              Icons.settings,
              color: const Color.fromARGB(255, 155, 24, 14),
              size: 35
            ),
          ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 790,
            decoration: BoxDecoration(color: Color.fromARGB(239, 0, 0, 0)),
            padding: EdgeInsets.all(12),
          ),
        ),
      ),
    );
  }
  
}