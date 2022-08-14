import 'package:flutter/material.dart';
import 'package:mobilerush2022/presentation/home/home_page.dart';
import 'package:mobilerush2022/utls/app.const.dart';

import 'aboutus/about_us.dart';
import 'contact/contact_page.dart';
import 'ourteam/our_team_page.dart';
import 'project/project_page.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<Widget> pages = [
    const Homepage(),
    const ProjectPage(),
    const AboutUsPage(),
    const OurTeamPage(),
    const ContactPage(),
  ];
  List<String> apptitle = [
    "Home",
    "Project",
    "About Us",
    "Our Team",
    "Contact"
  ];

  int currrentIndex = 0;
  void onTap(int index) {
    setState(() {
      currrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(apptitle[currrentIndex].toString()),
      ),
      body: pages[currrentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          currentIndex: currrentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Appconst.secondaryCOlor,
          selectedItemColor: Appconst.primaryColor,
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Image.asset(Appconst.homeLogo),
            ),
            BottomNavigationBarItem(
              label: 'Project',
              icon: Image.asset(Appconst.projectLogo),
            ),
            BottomNavigationBarItem(
              label: 'About Us',
              icon: Image.asset(Appconst.ourTeamLogo),
            ),
            BottomNavigationBarItem(
              label: 'Our Team',
              icon: Image.asset(Appconst.contactLogo),
            ),
            BottomNavigationBarItem(
              label: 'Contact',
              icon: Image.asset(Appconst.contactLogo),
            ),
          ]),
    );
  }
}
