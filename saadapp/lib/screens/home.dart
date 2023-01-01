import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191B22),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
              color: Color(0xff1A1C23),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(15)),
              boxShadow: [
              BoxShadow(
              color: Colors.grey.shade900,
              blurRadius: 15.0,
              spreadRadius: 4.0,
              offset: Offset(
              5.0, 
              5.0,
            ),
      )
    ],
              ),
            height: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[ ListTile(
                leading: const CircleAvatar(backgroundImage: AssetImage("assets/images/logo.png"),),
                title:
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(width: 2, color: Color(0xff343645))
                    ),
                    hintText: "Search Users, ID's etc",
                    hintStyle: TextStyle(color: Colors.white),
                    suffixIcon: Icon(Icons.search, color: Colors.white,),
                  ),
                ),
                  trailing: Icon(Icons.notifications, color: Colors.white, size: 30,)
              ),
              const SizedBox(
                height: 20,
                width: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){}, child: Text("Home", style: TextStyle(color: Colors.white),)),
                    const SizedBox(
                      width: 12,
                    ),
                    TextButton(onPressed: (){}, child: Text("Balance", style: TextStyle(color: Colors.white),)),
                    const SizedBox(
                      width: 12,
                    ),
                    TextButton(onPressed: (){}, child: Text("Offers", style: TextStyle(color: Colors.white),)),
                    const SizedBox(
                      width: 12,
                    ),
                    TextButton(onPressed: (){}, child: Text("Rewards", style: TextStyle(color: Colors.white),)),
                  ],
                ),
              ),
              ]
            ),
          ),  
          
          ], 
        ),
      ),
    );
  }
}