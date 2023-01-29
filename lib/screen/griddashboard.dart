import 'package:flutter/material.dart';
import 'package:try_firebase/screen/home_doctor.dart';

class GridDashboard extends StatelessWidget {
  Item item1 = new Item(
      title: "Consultation",
      subtitle: "Consultation Schedule",
      event: "3 Events",
      img: "assets/image/calendar.png");

  Item item2 = new Item(
      title: "Mental Illness",
      subtitle: "About Mental Illness",
      event: "Kind of Mentall Illness",
      img: "assets/image/illness.png");

  Item item3 = new Item(
    title: "Doctor",
    subtitle: "Contact Person Doctor",
    event: "2 Doctors",
    img: "assets/image/doctor.png",
  );

  Item item4 = new Item(
      title: "Medicine",
      subtitle: "Pesan obat disini",
      event: "More medicines",
      img: "assets/image/medicine.png");

  Item item5 = new Item(
      title: "Mood Checker",
      subtitle: "Check Your Mood Here",
      event: "Hope you're fine",
      img: "assets/image/medicine.png");

  Item item6 = new Item(
      title: "Kritik dan Saran",
      subtitle: "Tell your opinions here",
      event: "We will help you",
      img: "assets/image/medicine.png");

  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item1, item2, item3, item4, item5, item6];
    var color = Colors.green.shade300;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 3,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return HomeDoctor();
                  },
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    color: color, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 35,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(data.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 4,
                    ),
                    Text(data.subtitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 4,
                    ),
                    Text(data.event,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            );
          }).toList()),
    );
    // backgroundColor: Colors.white,
  }
}

class Item {
  String title;
  String subtitle;
  String event;
  String img;
  Item(
      {required this.title,
      required this.subtitle,
      required this.event,
      required this.img});
}
