import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
    build(BuildContext context)  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'My Profile',
      theme:ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:MyProfilePage(),
    );
  }
}
  

class MyProfilePage extends StatelessWidget{
  final String name = "Mayar";
  final String bio = "My name is Mayar,I am 19 years old,I am from Algeria and I live in Chlef,I am a student in Hassiba Benbouali university,I hope for one thing in this world,which is to succeed in my academic career.";
  @override
    build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Colors.pink,
        centerTitle: true,
        leading: Icon(Icons.person),
        ),

        body: Container(
          color: Colors.pink,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 48),
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage('https://c0.wallpaperflare.com/preview/47/673/66/little-girl-wildflowers-meadow-child.jpg'),
              ),

              SizedBox(height: 48),
              Text(
                bio,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
    );
  }

}
   