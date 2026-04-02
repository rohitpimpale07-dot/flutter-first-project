import 'package:flutter/material.dart';
// import 'settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
          child: Text("Home Page"),
      ),

      // appBar: AppBar(
      //   title: const Text("1st Page"),
      // ),
      //


      // drawer: Drawer(
      //   backgroundColor: Colors.grey,
      //   child: ListView(
      //     children: [
      //       Icon(
      //         Icons.motorcycle_rounded,
      //         size: 50,
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home, size: 20,),
      //         title: Text("Next Page"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/secondpage');
      //         },
      //
      //       )
      //     ]
      //   )
      // ),

      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/secondpage');
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(
      //       //     builder: (context) => const SecondPage(),
      //       //   ),
      //       // );
      //     },
      //     child: const Text("Go to Second Page"),
      //   ),
      // ),
    );
  }
}
