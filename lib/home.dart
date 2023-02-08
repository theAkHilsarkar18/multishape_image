import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/b1.jpg",fit: BoxFit.fitHeight),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Photos & Videos",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1),),
                    ),
                    Text("269 shots",style: TextStyle(color: Colors.grey,fontSize: 10,letterSpacing: 2)),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 290,
                            width: 150,
                           child: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50)),child: Image.asset("assets/images/taj.jpg",fit: BoxFit.fitHeight)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 140,
                                width: 150,
                                child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30)),child: Image.asset("assets/images/p1.jpg",fit: BoxFit.fitWidth)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 140,
                                width: 150,
                                child: ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),child: Image.asset("assets/images/city.jpg",fit: BoxFit.fitHeight)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text("______________",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey )),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(height: 110,),
                  CircleAvatar(backgroundImage: AssetImage("assets/images/c.jpg"),radius: 40,),
                  SizedBox(height: 10,),
                  Text("Cristiano Ronaldo",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 18)),
                  Text("325M Follower",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 10)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
