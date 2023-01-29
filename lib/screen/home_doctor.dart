import 'package:flutter/material.dart';

class HomeDoctor extends StatefulWidget {
  const HomeDoctor({Key? key}) : super(key: key);

  @override
  _HomeDoctorState createState() => _HomeDoctorState();
}

class _HomeDoctorState extends State<HomeDoctor> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Doctor',
              style: TextStyle(color: Colors.green),
            ),
            centerTitle: true,
            bottom: const TabBar(
              tabs: [
                Tab(
                    child: Text(
                  'Konsultan',
                  style: TextStyle(color: Colors.green),
                )),
                Tab(
                    child: Text(
                  'Psikiater',
                  style: TextStyle(color: Colors.green),
                )),
              ],
            ),
            automaticallyImplyLeading: false,
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.white24,
                child: Column(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('assets/image/1.png'),
                      ),
                      title: Text("Dr. Filan, S.Psi., M.Psi"),
                      subtitle: Text("081325678976"),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Dr. Suripto, S.Psi., M.Psi"),
                      subtitle: Text("085789065432"),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white24,
                child: Column(
                  children: const [
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Siti, S.Psi., M.Psi"),
                      subtitle: Text("082187651904"),
                      trailing: Icon(Icons.more_vert),
                    ),
                    ListTile(
                      leading: CircleAvatar(),
                      title: Text("Sania, S.Psi.,M.Psi"),
                      subtitle: Text("081368907543"),
                      trailing: Icon(Icons.more_vert),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
