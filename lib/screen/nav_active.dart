//material package
import 'package:flutter/material.dart';
import 'package:try_firebase/screen/ScreenMain.dart';
import 'package:try_firebase/screen/calender_screen.dart';
import 'package:try_firebase/screen/home.dart';
import 'package:try_firebase/screen/obat.dart';
import 'package:try_firebase/screen/home_doctor.dart';
import 'package:try_firebase/screen/page_blank.dart';
import 'package:try_firebase/screen/widget_appbar.dart';
import 'package:try_firebase/screen/editprofilepage.dart';
// import 'package:try_firebase/profile.dart';

class NavActive extends StatefulWidget {
  const NavActive({Key? key}) : super(key: key);

  @override
  State<NavActive> createState() => _NavActiveState();
}

class _NavActiveState extends State<NavActive> {
  late List<Widget> pages;
  late Widget page1;
  late Widget page2;
  late Widget page3;
  late Widget page4;
  late Widget page5;
  // late Widget page6;
  late int currentIndex;
  late Widget currentPage;

  //Initial State
  @override
  void initState() {
    super.initState();
    page1 = const HomeScreen();
    page2 = const HomeDoctor();
    page3 = const ObatPage();
    page4 = const CalendarScreen();
    page5 = HomePage();
    // page6 = ProfileUI();
    // page6 = SettingsUI();
    // page6 = ProfileScreen();
    pages = [page1, page2, page3, page4, page5];
    currentIndex = 0;
    currentPage = page1;
  }

  //void function
  void changeDestination(int index) {
    setState(() {
      currentIndex = index;
      currentPage = pages[index];
    });
  }

  //Bottom Navigation Bar Items
  final destinationValue = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.volunteer_activism),
      label: "Doctor",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.format_list_numbered),
      label: "Note",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sms),
      label: "Consultation",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: "Mental Illness",
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(Icons.account_circle),
    //   label: "Profile",
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          //AppTitle
          appTitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Image.asset(
              "assets/image/budrek.png",
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          //Notification Icon
          action: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                // IconButton(
                //   onPressed: () {
                //     setState(
                //       () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => const BlankPage(
                //               appTitle: "Notifikasi",
                //               bodyTitle: "Halaman Notifikasi",
                //             ),
                //           ),
                //         );
                //       },
                //     );
                //   },
                //   icon: const Icon(
                //     Icons.notifications_outlined,
                //     color: Color(0xff0B8E31),
                //     size: 35,
                //   ),
                // ),
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // builder: ((context) => ProfileScreen())));
                                builder: ((context) => SettingsUI())));
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xff0B8E31),
                    size: 35,
                  ),
                ),
                // const Padding(
                //   padding: EdgeInsets.only(top: 8.0),
                //   child: CircleAvatar(
                //     backgroundColor: Color(0xffD20000),
                //     radius: 9.0,
                //     child: Text(
                //       "5",
                //       style: TextStyle(fontSize: 12),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
      //Body
      body: currentPage,
      //Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        //Items List
        items: destinationValue,
        //Current Index in List
        currentIndex: currentIndex,
        //Change Index
        onTap: (index) {
          changeDestination(index);
        },
        //Change Active Color
        selectedItemColor: const Color(0xff0B8E31),
        unselectedItemColor: const Color(0xff808080),
        //Show Item Label
        showUnselectedLabels: true,
      ),
    );
  }
}
