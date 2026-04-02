import 'package:flutter/material.dart';
import 'home_page.dart';
import 'settings_page.dart';
import 'profile_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override//this comes after converting stateless widget to stateful widget
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final List<Widget> _pages=[
    HomePage(),
    SettingsPage(),
    ProfilePage(),
  ];



  int _selectedIndex=0;

  // void userTapped(){
  //   print("kaise ho dosto");
  // }
  // final List<String> names=['rohit','piyush','karan'];


  // void userTapped(){
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selectedIndex],

        // routes: {
        //   '/firstpage':(context) => FirstPage(),
        //   '/secondpage':(context) => SecondPage(),
        // },

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index){
              setState(() {
                _selectedIndex=index;
              });
            },
            items:[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),

            ]
        ),
      ),


      // Scaffold(
      //   appBar: AppBar(//doesn't have any padding property but its components have!!
      //     backgroundColor: Colors.brown,
      //     centerTitle: true,
      //     title: Text(
      //       'Roman',
      //       style: TextStyle(
      //         color: Colors.white,
      //         fontWeight: FontWeight.w700,
      //       ),
      //     ),
      //     leading: Icon(//left most side icon
      //       Icons.bike_scooter_rounded,
      //       size: 50,
      //     ),
      //     actions: [//it is a list
      //       Padding(
      //         padding: EdgeInsets.only(right: 10),
      //         child: Icon(
      //           Icons.settings,
      //           size: 30,
      //           color: Colors.black,
      //         ),
      //       ),
      //       Icon(
      //         Icons.exit_to_app,
      //         size: 30,
      //         color: Colors.black,
      //       ),
      //     ],
      //
      //   ),


      //     body:


          // GestureDetector(
          //   child: Container(
          //     color: Colors.brown[300],
          //     width: 200,
          //     height: 200,
          //   ),
          //   onTap: userTapped//on tapping container->userTapped() will be called
          // )

          // Stack(//used to place widgets on top of each other
          //   children: [//first widget on buttom most, next will be on top of first and next will be on the top most
          //     Icon(
          //       Icons.shopping_basket,
          //       size: 50,
          //     ),
          //     Positioned(
          //       top: 0,
          //       left: 0,
          //       child: CircleAvatar(
          //         radius: 25,
          //         backgroundColor: Colors.red,
          //       )
          //     ),
          //     Positioned(
          //       bottom: 0,
          //       right: 0,
          //       child: Container(
          //       color: Colors.black,
          //       width: 25,
          //       height: 25,
          //     )
          //     )
          //
          //   ],
          // )


          // GridView.builder(
          //   itemCount: 64,
          //   gridDelegate:
          //   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,),
          // itemBuilder: (context, index) => Container(
          //   color: Colors.black,
          //   margin: EdgeInsets.all(5),
          // ),
          // )


          // ListView.builder(//ListView helps to make ui scrollable
          //   itemCount: 3,
          //   itemBuilder: (context, index) => ListTile(
          //     title: Text(names[index]),
          //   )
          // )


        // Center(
      //     child: Container(
      //       color: Colors.brown[300],
      //       width: 300,
      //       height: 300,
      //       padding: const EdgeInsets.all(23),
      //       child: Column(
      //         children: [
      //           Icon(
      //             Icons.favorite,
      //             color: Colors.white,
      //             size: 50,
      //           ),
      //           Padding(
      //             padding: EdgeInsetsGeometry.all(10),
      //             child: Text(
      //               "Rohit",
      //               style: TextStyle(
      //                 backgroundColor: Colors.white,
      //                 fontSize: 30,
      //                 color: Colors.black,
      //               ),
      //             ),
      //           ),
      //           Container(
      //             height: 60,
      //             width: 60,
      //             color: Colors.black,
      //           ),
      //         ],
      //       ),
      //   //   ),
      //   // ),
      // ),
    );
}
}
