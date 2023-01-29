import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:try_firebase/screen/signin.dart';
import 'package:try_firebase/utils/color_utils.dart';
import 'package:try_firebase/reusable_widgets/reusable_widget.dart';
import 'package:try_firebase/screen/griddashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
        Padding(
          padding: EdgeInsets.only(left: 16, right:16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Welcome to Budrektopia", 
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(height: 4,),
                  Text("No Overthinking, No Feeling Stress", style: TextStyle(
                      color: Colors.green.shade300,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Image.asset("assets/image/cover.jpg", width: 400,),
                ])
            ],
          )
        ),
        SizedBox(
          height: 8,
        ),
        Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'About Budrektopia',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green.shade300,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
        Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Budrektopia merupakan aplikasi yang siap membantumu untuk menemukan jalan keluar dari setiap masalahmu. Dibantu dengan psikolog yang ahli dan terpercaya.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
      // GridDashboard()
      ] ,
      ),
    );


      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Logout"),
      //     onPressed: () {
      //       FirebaseAuth.instance.signOut().then((value) {
      //         print("Signed Out");
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: ((context) => SignInScreen())));
      //       });
      //     },
      //   ),
      // ),
    // );
  }
}
