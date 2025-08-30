import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class Potfolio extends StatefulWidget {
  const Potfolio({super.key});

  @override
  State<Potfolio> createState() => _PotfolioState();
}

class _PotfolioState extends State<Potfolio> {
  final GlobalKey Home = GlobalKey();
  final GlobalKey About = GlobalKey();
  final GlobalKey Skill = GlobalKey();
  final GlobalKey Education = GlobalKey();
  final GlobalKey Work = GlobalKey();
  final GlobalKey Experience = GlobalKey();
  final GlobalKey Contact = GlobalKey();
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffFDEDCD),
      appBar: size.width >= 1028
          ? AppBar(
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(color: Color(0xff7c2824), height: 1),
              ),
              backgroundColor: Colors.white,
              title: Padding(
                padding: EdgeInsets.only(left: size.width * 0.06),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kabeer.png'),
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      'Mühâmmâd Kåbëër',
                      style: TextStyle(
                        color: Color(0xff7c2824),
                        fontFamily: 'font',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: size.width * 0.04),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Home.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            About.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'About',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Skill.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Skills',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Education.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Education',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Work.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Work',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      IconButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Experience.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        icon: Text(
                          'Experience',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      TextButton(
                        onPressed: () {
                          Scrollable.ensureVisible(
                            Contact.currentContext!,
                            duration: Duration(milliseconds: 600),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            color: Color(0xff7c2824),
                            fontFamily: 'font',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : AppBar(
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(1),
                child: Container(color: Color(0xff7c2824), height: 1),
              ),
              backgroundColor: Colors.white,
              title: Padding(
                padding: EdgeInsets.only(left: size.width * 0.06),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kabeer.png'),
                      ),
                    ),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      'Mühâmmâd Kåbëër',
                      style: TextStyle(
                        color: Color(0xff7c2824),
                        fontFamily: 'font',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Row(
                  children: [
                    Builder(
                      builder: (context) {
                        return InkWell(
                          onTap: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                          child: Icon(Icons.menu, color: Color(0xff7c2824)),
                        );
                      },
                    ),
                    SizedBox(width: size.width * 0.04),
                  ],
                ),
              ],
            ),
      endDrawer: Drawer(
        child: Container(
          color: Color(0xffFDEDCD),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Home.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('About', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    About.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text("Skill's", style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Skill.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Education', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Education.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Work', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Work.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Experience', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Experience.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
              ListTile(
                title: Text('Contact', style: TextStyle(
                    color: Color(0xff7c2824),
                    fontFamily: 'font',
                    fontWeight: FontWeight.bold,
                  ),),
                onTap: () {
                  Navigator.of(context).pop();
                  Scrollable.ensureVisible(
                    Contact.currentContext!,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              Divider(color: Color(0xff7c2824), thickness: 1),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: size.width >= 1028
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          key: Home,
                          height: 530,
                          width: 600,
                          child: Padding(
                            padding: EdgeInsets.only(left: size.width * 0.08),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hi There,',
                                      style: TextStyle(
                                        fontFamily: 'fonts',
                                        fontSize: 40,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Text(
                                      "I'm ",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'fonts',
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Mühâmmâd",
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' Kåbëër',
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "I'm ",
                                      style: TextStyle(
                                        fontFamily: 'fonts',

                                        fontSize: 40,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Flutter Development",
                                      style: TextStyle(
                                        fontFamily: 'fonts',

                                        fontSize: 40,
                                        // fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // key: About,
                                        height: 60,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Color(0xff7c2824),
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                ),
                                              );
                                              ;
                                            },
                                            child: Text(
                                              'Resume  =>',
                                              style: TextStyle(
                                                fontFamily: 'font',

                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 22,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                    left: size.width * 0.03,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'https://github.com/kabirmalik328-maker',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/github.png',
                                              height: 34,
                                              width: 34,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.02),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'www.linkedin.com/in/muhammad-kabeer-35473b378',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/linke.png',
                                              height: 110,
                                              width: 110,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 530,
                          width: 600,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 480,
                                width: 480,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/kaber.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          key: Home,
                          height: size.height * 0.99,
                          width: size.height * 0.99,
                          child: Padding(
                            padding: EdgeInsets.only(left: size.width * 0.08),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hi There,',
                                      style: TextStyle(
                                        fontFamily: 'fonts',
                                        fontSize: 26,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Text(
                                      "I'm ",
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontFamily: 'fonts',
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Mühâmmâd",
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      ' Kåbëër',
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "I'm ",
                                      style: TextStyle(
                                        fontFamily: 'fonts',

                                        fontSize: 26,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Flutter Development",
                                      style: TextStyle(
                                        fontFamily: 'font',

                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        // key: About,
                                        height: 46,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Color(0xff7c2824),
                                          borderRadius: BorderRadius.circular(
                                            40,
                                          ),
                                        ),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {
                                              launchUrl(
                                                Uri.parse(
                                                  'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                ),
                                              );
                                              ;
                                            },
                                            child: Text(
                                              'Resume =>',
                                              style: TextStyle(
                                                fontFamily: 'font',

                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.02,
                                    left: size.width * 0.08,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'https://github.com/kabirmalik328-maker',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/github.png',
                                              height: 34,
                                              width: 34,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(width: size.width * 0.04),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            launchUrl(
                                              Uri.parse(
                                                'www.linkedin.com/in/muhammad-kabeer-35473b378',
                                              ),
                                            );
                                          },
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xffFDEDCD),
                                            child: Image.asset(
                                              'assets/images/linke.png',
                                              height: 150,
                                              width: 150,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: size.width * 0.01),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          border: Border.all(
                                            color: Color(0xff7c2824),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    // bottom: size.height * 0.,
                                    // left: size.width * 0.10,
                                    right: size.width * 0.10,
                                  ),
                                  child: Column(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 372,
                                            width: 480,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  'assets/images/kaber.png',
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            Container(
              child: size.width >= 1028
                  ? Column(
                      children: [
                        Container(
                          key: About,
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          // color: Color(0xffFDEDCD),
                          child: Padding(
                            padding: EdgeInsets.only(top: size.height * 0.04),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 40,
                                  color: Color(0xff7c2824),
                                ),
                                SizedBox(width: size.width * 0.03),
                                Text(
                                  'About',
                                  style: TextStyle(
                                    color: Color(0xff7c2824),
                                    fontFamily: 'font',

                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 650,
                          width: 1210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.15,
                                ),
                                child: Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 440,
                                      width: 320,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.blue,
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "assets/images/profile1.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 580,
                                width: 700,
                                decoration: BoxDecoration(
                                  color: Color(0xff7c2824),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.center,
                                    //   children: [
                                    //     Text(
                                    //       'About Me',
                                    //       style: TextStyle(
                                    //         color: Color(0xffFDEDCD),
                                    //         fontSize: 30,
                                    //         fontWeight: FontWeight.bold,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.04,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "I'm M.Kabeer",
                                            style: TextStyle(
                                              fontFamily: 'font',

                                              color: Color(0xffFDEDCD),
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.00,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Flutter Developer',
                                            style: TextStyle(
                                              fontFamily: 'font',
                                              color: Color(0xffFDEDCD),
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: size.width * 0.03,
                                              right: size.width * 0.03,
                                              top: size.height * 0.01,
                                            ),
                                            child: Text(
                                              'I am an enthusiastic and dedicated Flutter developer, starting my professional journey with a deep passion for mobile app development. As a fresher, I bring strong knowledge of Dart and Flutter, along with a curious mindset and the ability to quickly learn and adapt to new technologies. During my academic journey and personal projects, I have gained hands-on experience in building cross-platform mobile applications, implementing modern UI/UX principles, and ensuring smooth functionality across Android and iOS platforms. What excites me the most about Flutter is the flexibility and creativity it provides—I enjoy experimenting with widgets, animations, and layouts to bring ideas to life. I strongly believe in writing clean, maintainable, and scalable code, while also focusing on performance optimization to deliver a seamless user experience. In addition, I have explored integration with APIs, Firebase, and state management techniques, which has strengthened my practical knowledge. Beyond technical skills, I see myself as a problem-solver who thrives on challenges. I am committed to continuous growth, keeping up with the latest updates in Flutter and other mobile technologies. My career goal is to work on impactful projects, collaborate with talented teams, and contribute to applications that not only solve problems but also enhance people’s daily lives. With every project I undertake, I aim to sharpen my skills, embrace new learning opportunities, and establish myself as a creative and reliable Flutter developer in the tech industry.',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'font',
                                                fontSize: 13,
                                                // fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Email : ',
                                            style: TextStyle(
                                              color: Color(0xffFDEDCD),
                                              fontFamily: 'font',
                                            ),
                                          ),
                                          Text(
                                            'kabirmalik328@gmail.com',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'font',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Place : ',
                                            style: TextStyle(
                                              color: Color(0xffFDEDCD),
                                              fontFamily: 'font',
                                            ),
                                          ),
                                          Text(
                                            'Lahore, Pakistan - 540000',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'font',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * 0.03,
                                        right: size.width * 0.03,
                                        top: size.height * 0.01,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Phone Number : ',
                                            style: TextStyle(
                                              color: Color(0xffFDEDCD),
                                              fontFamily: 'font',
                                            ),
                                          ),
                                          Text(
                                            '+92 305-155-5866',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'font',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.height * 0.02,
                                        left: size.width * 0.03,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 44,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              color: Color(0xffFDEDCD),
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            child: Center(
                                              child: InkWell(
                                                onTap: () {
                                                  launchUrl(
                                                    Uri.parse(
                                                      'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                    ),
                                                  );
                                                  ;
                                                },
                                                child: Text(
                                                  'Resume =>',
                                                  style: TextStyle(
                                                    fontFamily: 'font',

                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xff7c2824),
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Padding(
                    padding: EdgeInsets.only(top: size.height * 0.06),
                    child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.0),
                            child: Container(
                              key: About,
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              // color: Color(0xffFDEDCD),
                              child: Padding(
                                padding: EdgeInsets.only(top: size.height * 0.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 30,
                                      color: Color(0xff7c2824),
                                    ),
                                    SizedBox(width: size.width * 0.03),
                                    Text(
                                      'About',
                                      style: TextStyle(
                                        color: Color(0xff7c2824),
                                        fontFamily: 'font',
                    
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // height: size.height * 0.,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.height * 0.02,
                                      ),
                                      child: Container(
                                        height: size.height * 0.56,
                                        width: size.height * 0.56,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Colors.blue,
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/images/profile1.png",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.02,
                                            right: size.width * 0.02,
                                            left: size.width * 0.02,
                                            bottom: size.height * 0.02,
                                          ),
                                          child: Container(
                                            // height: 580,
                                            // width: 700,
                                            decoration: BoxDecoration(
                                              color: Color(0xff7c2824),
                                              borderRadius: BorderRadius.circular(
                                                20,
                                              ),
                                            ),
                                            child: Column(
                                              children: [
                                                // Row(
                                                //   mainAxisAlignment: MainAxisAlignment.center,
                                                //   children: [
                                                //     Text(
                                                //       'About Me',
                                                //       style: TextStyle(
                                                //         color: Color(0xffFDEDCD),
                                                //         fontSize: 30,
                                                //         fontWeight: FontWeight.bold,
                                                //       ),
                                                //     ),
                                                //   ],
                                                // ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.01,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "I'm M.Kabeer",
                                                        style: TextStyle(
                                                          fontFamily: 'font',
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Flutter Developer',
                                                        style: TextStyle(
                                                          fontFamily: 'font',
                    
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsets.only(
                                                          left: size.width * 0.03,
                                                          right:
                                                              size.width * 0.03,
                                                          top: size.height * 0.00,
                                                        ),
                                                        child: Text(
                                                          'I am an enthusiastic and dedicated Flutter developer, starting my professional journey with a deep passion for mobile app development. During my academic journey and personal projects, I have gained hands-on experience in building cross-platform mobile applications, implementing modern UI/UX principles, and ensuring smooth functionality across Android and iOS platforms. What excites me the most about Flutter is the flexibility and creativity it provides—I enjoy experimenting with widgets, animations, and layouts to bring ideas to life. I strongly believe in writing clean, maintainable, and scalable code, while also focusing on performance optimization to deliver a seamless user experience. In addition, I have explored integration with APIs, Firebase, and state management techniques, which has strengthened my practical knowledge. Beyond technical skills, I see myself as a problem-solver who thrives on challenges. I am committed to continuous growth, keeping up with the latest updates in Flutter and other mobile technologies. My career goal is to work on impactful projects, collaborate with talented teams, and contribute to applications that not only solve problems but also enhance people’s daily lives. With every project I undertake, I aim to sharpen my skills, embrace new learning opportunities, and establish myself as a creative and reliable Flutter developer in the tech industry.',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily: 'font',
                                                            fontSize: 10,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Email : ',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontFamily: 'font',
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        'kabirmalik328@gmail.com',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily: 'font',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Place : ',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontFamily: 'font',
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Lahore, Pakistan - 540000',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'font',
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.03,
                                                    right: size.width * 0.03,
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'Phone Number : ',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          fontFamily: 'font',
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      Text(
                                                        '+92 305-155-5866',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: 'font',
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: size.height * 0.01,
                                                    left: size.width * 0.03,
                                                    bottom: size.height * 0.02,
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height:
                                                            size.height * 0.05,
                                                        width: size.width * 0.25,
                                                        decoration: BoxDecoration(
                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                40,
                                                              ),
                                                        ),
                                                        child: Center(
                                                          child: InkWell(
                                                            onTap: () {
                                                              launchUrl(
                                                                Uri.parse(
                                                                  'https://drive.google.com/file/d/1ioJPnGFcq7lSubciPurWyt6GMGrt95kZ/view',
                                                                ),
                                                              );
                                                              ;
                                                            },
                                                            child: Text(
                                                              'Resume =>',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'font',
                    
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
            ),

            Container(
              child: size.width >= 850
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.08),
                          child: Container(
                            key: Skill,
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.04),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.laptop_chromebook_outlined,
                                    size: 40,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Skill's",
                                    style: TextStyle(
                                      color: Color(0xff7c2824),
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                height: 600,
                                width: 1100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 500,
                                      width: 1000,
                                      decoration: BoxDecoration(
                                        color: Color(
                                          0xff7c2824,
                                        ).withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 400,
                                                  width: 900,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Center(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                top:
                                                                    size.height *
                                                                    0.04,
                                                                // left: size.height * 0.04,
                                                              ),
                                                              child: Container(
                                                                height: 140,
                                                                width: 140,
                                                                decoration: BoxDecoration(
                                                                  color: Color(
                                                                    0xffFDEDCD,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        20,
                                                                      ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          28,
                                                                      backgroundColor:
                                                                          Color(
                                                                            0xffFDEDCD,
                                                                          ),
                                                                      child: Image.asset(
                                                                        'assets/images/flutter.png',
                                                                        height:
                                                                            60,
                                                                        width:
                                                                            60,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                    const Text(
                                                                      "Flutter",
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                top:
                                                                    size.height *
                                                                    0.04,
                                                                left:
                                                                    size.width *
                                                                    0.02,
                                                              ),
                                                              child: Container(
                                                                height: 140,
                                                                width: 140,
                                                                decoration: BoxDecoration(
                                                                  color: Color(
                                                                    0xffFDEDCD,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        20,
                                                                      ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          30,
                                                                      backgroundColor:
                                                                          Color(
                                                                            0xffFDEDCD,
                                                                          ),
                                                                      child: Image.asset(
                                                                        'assets/images/git.png',
                                                                        height:
                                                                            60,
                                                                        width:
                                                                            60,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                    const Text(
                                                                      "Git",
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                top:
                                                                    size.height *
                                                                    0.04,
                                                                left:
                                                                    size.width *
                                                                    0.02,
                                                              ),
                                                              child: Container(
                                                                height: 140,
                                                                width: 140,
                                                                decoration: BoxDecoration(
                                                                  color: Color(
                                                                    0xffFDEDCD,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        20,
                                                                      ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          28,
                                                                      backgroundColor:
                                                                          Color(
                                                                            0xffFDEDCD,
                                                                          ),
                                                                      child: Image.asset(
                                                                        'assets/images/gitHub.png',
                                                                        height:
                                                                            60,
                                                                        width:
                                                                            60,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                    const Text(
                                                                      "GitHub",
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                top:
                                                                    size.height *
                                                                    0.04,
                                                                left:
                                                                    size.width *
                                                                    0.02,
                                                              ),
                                                              child: Container(
                                                                height: 140,
                                                                width: 140,
                                                                decoration: BoxDecoration(
                                                                  color: Color(
                                                                    0xffFDEDCD,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        20,
                                                                      ),
                                                                ),
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CircleAvatar(
                                                                      radius:
                                                                          28,
                                                                      backgroundColor:
                                                                          Color(
                                                                            0xffFDEDCD,
                                                                          ),
                                                                      child: Image.asset(
                                                                        'assets/images/postman.png',
                                                                        height:
                                                                            60,
                                                                        width:
                                                                            60,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                    const Text(
                                                                      "Postman",
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                bottom:
                                                                    size.height *
                                                                    0.04,
                                                                top:
                                                                    size.height *
                                                                    0.04,
                                                              ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.04,

                                                                  // left: size.width * 0.02,
                                                                ),
                                                                child: Container(
                                                                  height: 140,
                                                                  width: 140,
                                                                  decoration: BoxDecoration(
                                                                    color: Color(
                                                                      0xffFDEDCD,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          20,
                                                                        ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CircleAvatar(
                                                                        radius:
                                                                            32,
                                                                        backgroundColor:
                                                                            Color(
                                                                              0xffFDEDCD,
                                                                            ),
                                                                        child: Image.asset(
                                                                          'assets/images/html.png',
                                                                          height:
                                                                              68,
                                                                          width:
                                                                              68,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            size.height *
                                                                            0.01,
                                                                      ),
                                                                      const Text(
                                                                        "Html",
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          color: Color(
                                                                            0xff7c2824,
                                                                          ),
                                                                          fontFamily:
                                                                              'fonts',
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.04,
                                                                  left:
                                                                      size.width *
                                                                      0.02,
                                                                ),
                                                                child: Container(
                                                                  height: 140,
                                                                  width: 140,
                                                                  decoration: BoxDecoration(
                                                                    color: Color(
                                                                      0xffFDEDCD,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          20,
                                                                        ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CircleAvatar(
                                                                        radius:
                                                                            30,
                                                                        backgroundColor:
                                                                            Color(
                                                                              0xffFDEDCD,
                                                                            ),
                                                                        child: Image.asset(
                                                                          'assets/images/java.png',
                                                                          height:
                                                                              55,
                                                                          width:
                                                                              55,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            size.height *
                                                                            0.01,
                                                                      ),
                                                                      const Text(
                                                                        "java",

                                                                        style: TextStyle(
                                                                          fontFamily:
                                                                              'fonts',
                                                                          color: Color(
                                                                            0xff7c2824,
                                                                          ),
                                                                          fontSize:
                                                                              14,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),

                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.04,
                                                                  left:
                                                                      size.width *
                                                                      0.02,
                                                                ),
                                                                child: Container(
                                                                  height: 140,
                                                                  width: 140,
                                                                  decoration: BoxDecoration(
                                                                    color: Color(
                                                                      0xffFDEDCD,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          20,
                                                                        ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CircleAvatar(
                                                                        radius:
                                                                            30,
                                                                        backgroundColor:
                                                                            Color(
                                                                              0xffFDEDCD,
                                                                            ),
                                                                        child: Image.asset(
                                                                          'assets/images/css.png',
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              50,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            size.height *
                                                                            0.01,
                                                                      ),
                                                                      const Text(
                                                                        "CSS",
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          fontFamily:
                                                                              'fonts',
                                                                          color: Color(
                                                                            0xff7c2824,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.04,

                                                                  // bottom: size.height * 0.02,
                                                                  left:
                                                                      size.width *
                                                                      0.02,
                                                                ),
                                                                child: Container(
                                                                  height: 140,
                                                                  width: 140,
                                                                  decoration: BoxDecoration(
                                                                    color: Color(
                                                                      0xffFDEDCD,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          20,
                                                                        ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Column(
                                                                        children: [
                                                                          CircleAvatar(
                                                                            radius:
                                                                                40,
                                                                            backgroundColor:
                                                                                Colors.white,

                                                                            child: Image.asset(
                                                                              'assets/images/canva.png',
                                                                              height: 260,
                                                                              width: 260,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Canva',
                                                                            style: TextStyle(
                                                                              fontFamily: 'fonts',
                                                                              color: Color(
                                                                                0xff7c2824,
                                                                              ),
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: size.height * 0.16),
                            child: Container(
                              key: Skill,
                              // height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.01,
                                  bottom: size.height * 0.01,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: size.height * 0.00,
                                      ),
                                      child: Icon(
                                        Icons.laptop_chromebook_outlined,

                                        size: 30,
                                        color: Color(0xff7c2824),
                                      ),
                                    ),
                                    SizedBox(width: size.width * 0.03),
                                    Text(
                                      "Skill's",
                                      style: TextStyle(
                                        color: Color(0xff7c2824),
                                        fontFamily: 'font',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  // height: size.height * 0.9,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                          bottom: size.height * 0.02,
                                        ),
                                        child: Container(
                                          // height: size.height * 0.8,
                                          width: size.width * 0.9,
                                          decoration: BoxDecoration(
                                            color: Color(
                                              0xff7c2824,
                                            ).withOpacity(0.8),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,

                                            children: [
                                              Wrap(
                                                alignment: WrapAlignment
                                                    .center, // center align hoga
                                                spacing:
                                                    size.width *
                                                    0.02, // horizontal gap
                                                runSpacing: size.height * 0.02,
                                                // mainAxisAlignment:
                                                //     MainAxisAlignment.center,
                                                // crossAxisAlignment:
                                                //     CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 28,
                                                            backgroundColor:
                                                                Color(
                                                                  0xffFDEDCD,
                                                                ),
                                                            child: Image.asset(
                                                              'assets/images/flutter.png',
                                                              height: 60,
                                                              width: 60,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                0.02,
                                                          ),
                                                          const Text(
                                                            "Flutter",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'fonts',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                      left: size.width * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 30,
                                                            backgroundColor:
                                                                Color(
                                                                  0xffFDEDCD,
                                                                ),
                                                            child: Image.asset(
                                                              'assets/images/git.png',
                                                              height: 60,
                                                              width: 60,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                0.02,
                                                          ),
                                                          const Text(
                                                            "Git",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'fonts',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                      // left: size.width * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 28,
                                                            backgroundColor:
                                                                Color(
                                                                  0xffFDEDCD,
                                                                ),
                                                            child: Image.asset(
                                                              'assets/images/gitHub.png',
                                                              height: 60,
                                                              width: 60,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                0.02,
                                                          ),
                                                          const Text(
                                                            "GitHub",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'fonts',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                      left: size.width * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 28,
                                                            backgroundColor:
                                                                Color(
                                                                  0xffFDEDCD,
                                                                ),
                                                            child: Image.asset(
                                                              'assets/images/postman.png',
                                                              height: 60,
                                                              width: 60,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                0.02,
                                                          ),
                                                          const Text(
                                                            "Postman",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'fonts',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                      // left: size.width * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 32,
                                                            backgroundColor:
                                                                Color(
                                                                  0xffFDEDCD,
                                                                ),
                                                            child: Image.asset(
                                                              'assets/images/html.png',
                                                              height: 68,
                                                              width: 68,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                0.01,
                                                          ),
                                                          const Text(
                                                            "Html",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'fonts',
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                      left: size.width * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 30,
                                                            backgroundColor:
                                                                Color(
                                                                  0xffFDEDCD,
                                                                ),
                                                            child: Image.asset(
                                                              'assets/images/java.png',
                                                              height: 55,
                                                              width: 55,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                0.01,
                                                          ),
                                                          const Text(
                                                            "java",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'fonts',
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                      // left: size.width * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 30,
                                                            backgroundColor:
                                                                Color(
                                                                  0xffFDEDCD,
                                                                ),
                                                            child: Image.asset(
                                                              'assets/images/css.png',
                                                              height: 50,
                                                              width: 50,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height:
                                                                size.height *
                                                                0.01,
                                                          ),
                                                          const Text(
                                                            "CSS",
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'fonts',
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: size.height * 0.04,
                                                      bottom:
                                                          size.height * 0.04,

                                                      left: size.width * 0.04,
                                                    ),
                                                    child: Container(
                                                      height: 140,
                                                      width: 140,
                                                      decoration: BoxDecoration(
                                                        color: Color(
                                                          0xffFDEDCD,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              20,
                                                            ),
                                                      ),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Column(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 30,
                                                                backgroundColor:
                                                                    Color(
                                                                      0xffFDEDCD,
                                                                    ),
                                                                child: Image.asset(
                                                                  'assets/images/canva.png',
                                                                  height: 100,
                                                                  width: 100,
                                                                ),
                                                              ),
                                                              Text(
                                                                'Canva',
                                                                style: TextStyle(
                                                                  fontFamily:
                                                                      'fonts',
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ),

            Container(
              child: size.width >= 938
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.08),
                          child: Container(
                            key: Education,
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.04),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.school_outlined,
                                    size: 40,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Education",
                                    style: TextStyle(
                                      color: Color(0xff7c2824),
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 650,
                          width: 1210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 600,
                                width: 1110,
                                decoration: BoxDecoration(
                                  color: Color(0xff7c2824).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: size.height * 0.00,
                                                left: size.width * 0.00,
                                              ),
                                              child: Row(
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        height: 350,
                                                        width: 300,
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                            image: AssetImage(
                                                              'assets/images/virtual.jpg',
                                                            ),

                                                            fit: BoxFit.cover,
                                                          ),

                                                          color: Color(
                                                            0xffFDEDCD,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                20,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              top:
                                                                  size.height *
                                                                  0.02,
                                                            ),
                                                        child: Container(
                                                          child: Padding(
                                                            padding: EdgeInsets.only(
                                                              // top: size.height * 0.02,
                                                              left:
                                                                  size.width *
                                                                  0.02,
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Expanded(
                                                                      child: Text(
                                                                        'BS Computer Science',
                                                                        style: TextStyle(
                                                                          fontFamily:
                                                                              'font',
                                                                          fontWeight:
                                                                              FontWeight.bold,

                                                                          color: Color(
                                                                            0xff7c2824,
                                                                          ),
                                                                          fontSize:
                                                                              26,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      'Virtual University',
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',

                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      '2024-2028',
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',

                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            15,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          height: 150,
                                                          width: 300,

                                                          decoration: BoxDecoration(
                                                            color: Color(
                                                              0xffFDEDCD,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                  20,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.02,
                                                ),
                                                child: Container(
                                                  height: 350,
                                                  width: 300,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/sup.jpg',
                                                      ),

                                                      fit: BoxFit.cover,
                                                    ),

                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.02,
                                                  left: size.width * 0.02,
                                                ),
                                                child: Container(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      // top: size.height * 0.02,
                                                      left: size.width * 0.02,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,

                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'ICS (Physics)',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'font',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,

                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 26,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Superior College',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'fonts',

                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 20,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '2022-2024',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'fonts',

                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  height: 150,
                                                  width: 300,

                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.02,
                                                ),
                                                child: Container(
                                                  height: 350,
                                                  width: 300,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/center.jpg',
                                                      ),

                                                      fit: BoxFit.cover,
                                                    ),

                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.02,
                                                  left: size.width * 0.02,
                                                ),
                                                child: Container(
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      // top: size.height * 0.02,
                                                      left: size.width * 0.02,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,

                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Matric',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'font',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,

                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 26,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              'Center Model School',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'fonts',

                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 20,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '2020-2022',
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'fonts',

                                                                color: Color(
                                                                  0xff7c2824,
                                                                ),
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  height: 150,
                                                  width: 300,

                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            key: Education,
                            // height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.school_outlined,
                                    size: 30,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Education",
                                    style: TextStyle(
                                      color: Color(0xff7c2824),
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 650,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02,
                                ),
                                child: Container(
                                  // height: 600,
                                  width: size.width * 0.9,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7c2824).withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: size.height * 0.02,
                                          bottom: size.height * 0.02,
                                        ),
                                        child: Wrap(
                                          alignment: WrapAlignment.center,
                                          spacing: size.width * 0.02,
                                          runSpacing: size.height * 0.02,
                                          children: [
                                            // 1st Education Card
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: size.height * 0.00,
                                                  ),
                                                  child: Container(
                                                    height: 260,
                                                    width: 260,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/images/virtual.jpg',
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      color: Color(0xffFDEDCD),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.02,
                                                ),
                                                Container(
                                                  height: 110,
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(12),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "BS Computer Science",
                                                          style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "Virtual University",
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "2024-2028",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            // 2nd Education Card
                                            Column(
                                              children: [
                                                Container(
                                                  height: 260,
                                                  width: 260,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/sup.jpg',
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.02,
                                                ),
                                                Container(
                                                  height: 110,
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(12),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "ICS (Physics)",
                                                          style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "Superior College",
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "2022-2024",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),

                                            // 3rd Education Card
                                            Column(
                                              children: [
                                                Container(
                                                  height: 260,
                                                  width: 260,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/images/center.jpg',
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.02,
                                                ),
                                                Container(
                                                  height: 110,
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xffFDEDCD),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(12),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Matric",
                                                          style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "Center Model School",
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "2020-2022",
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Color(
                                                              0xff7c2824,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),

            Container(
              child: size.width >= 781
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.08),
                          child: Container(
                            key: Work,
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.04),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.work_outline,
                                    size: 40,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Work",
                                    style: TextStyle(
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      color: Color(0xff7c2824),
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 800,
                          width: 1210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 720,
                                width: 1110,
                                decoration: BoxDecoration(
                                  color: Color(0xff7c2824).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: size.height * 0.04,
                                  ),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  launchUrl(Uri.parse('https://kabirmalik328-maker.github.io/WeatherAppPreview/'));
                                                },
                                                child: Container(
                                                  height: 300,
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/images/ss.png",
                                                      ),
                                                      fit: BoxFit.contain,
                                                    ),
                                                    color: Color(0xffecf1f9),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        spreadRadius: 2,
                                                        blurRadius: 8,
                                                        offset: Offset(6, 6),
                                                      ),
                                                    ],
                                                
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.02,
                                                ),
                                                child: InkWell(
                                                  onTap: (){
                                                    launchUrl(Uri.parse('https://kabirmalik328-maker.github.io/ShopHerePreview/'));
                                                  },
                                                  child: Container(
                                                    height: 300,
                                                    width: 250,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "assets/images/sw.png",
                                                        ),
                                                        fit: BoxFit.contain,
                                                      ),
                                                      color: Color(0xffecf1f9),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.3),
                                                          spreadRadius: 2,
                                                          blurRadius: 8,
                                                          offset: Offset(6, 6),
                                                        ),
                                                      ],
                                                  
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.02,
                                                ),
                                                child: InkWell(
                                                  onTap: (){
                                                    launchUrl(Uri.parse('https://kabirmalik328-maker.github.io/ChatbotPreview/'));
                                                  },
                                                  child: Container(
                                                    height: 300,
                                                    width: 250,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          "assets/images/swa.png",
                                                        ),
                                                        fit: BoxFit.contain,
                                                      ),
                                                      color: Color(0xffecf1f9),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.3),
                                                          spreadRadius: 2,
                                                          blurRadius: 8,
                                                          offset: Offset(6, 6),
                                                        ),
                                                      ],
                                                  
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              // left: size.width * 0.02,
                                              top: size.height * 0.04,
                                            ),
                                            child: InkWell(
                                              onTap: (){
                                                launchUrl(Uri.parse(''));
                                              },
                                              child: Container(
                                                height: 340,
                                                width: 730,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/k.png",
                                                    ),
                                                    fit: BoxFit.contain,
                                                  ),
                                                  color: Color(0xffecf1f9),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 2,
                                                      blurRadius: 8,
                                                      offset: Offset(6, 6),
                                                    ),
                                                  ],
                                              
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            key: Work,
                            // height: 60,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.work_outline,
                                    size: 30,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Work",
                                    style: TextStyle(
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      color: Color(0xff7c2824),
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 800,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02,
                                  left: size.width * 0.04,
                                  right: size.width * 0.04,
                                ),
                                child: Container(
                                  // height: 720,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7c2824).withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: size.height * 0.04,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Wrap(
                                          alignment: WrapAlignment.center,
                                          spacing: size.width * 0.02,
                                          runSpacing: size.height * 0.02,
                                          children: [
                                            InkWell(
                                              onTap: (){
                                                launchUrl( Uri.parse(
                                                                  'https://kabirmalik328-maker.github.io/WeatherAppPreview/',
                                                                ),);
                                              },
                                              child: Container(
                                                height: 300,
                                                width: 250,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assets/images/ss.png",
                                                    ),
                                                    fit: BoxFit.contain,
                                                  ),
                                                  color: Color(0xffecf1f9),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 2,
                                                      blurRadius: 8,
                                                      offset: Offset(6, 6),
                                                    ),
                                                  ],
                                              
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: size.width * 0.02,
                                              ),
                                              child: InkWell(
                                                onTap: (){
                                                  launchUrl(Uri.parse('https://kabirmalik328-maker.github.io/ShopHerePreview/'));
                                                },
                                                child: Container(
                                                  height: 300,
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/images/sw.png",
                                                      ),
                                                      fit: BoxFit.contain,
                                                    ),
                                                    color: Color(0xffecf1f9),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        spreadRadius: 2,
                                                        blurRadius: 8,
                                                        offset: Offset(6, 6),
                                                      ),
                                                    ],
                                                
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: size.width * 0.02,
                                              ),
                                              child: InkWell(
                                                onTap: (){
                                                  launchUrl(Uri.parse('https://kabirmalik328-maker.github.io/ChatbotPreview/'));
                                                },
                                                child: Container(
                                                  height: 300,
                                                  width: 250,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/images/swa.png",
                                                      ),
                                                      fit: BoxFit.contain,
                                                    ),
                                                    color: Color(0xffecf1f9),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        spreadRadius: 2,
                                                        blurRadius: 8,
                                                        offset: Offset(6, 6),
                                                      ),
                                                    ],
                                                
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: size.width * 0.02,
                                                right: size.width * 0.02,

                                                top: size.height * 0.02,
                                                bottom: size.height * 0.02,
                                              ),
                                              child: InkWell(
                                                onTap: (){
                                                  launchUrl(Uri.parse(''));
                                                },
                                                child: Container(
                                                  height: 160,
                                                  width: 680,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/images/k.png",
                                                      ),
                                                      fit: BoxFit.contain,
                                                    ),
                                                    color: Color(0xffecf1f9),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        spreadRadius: 2,
                                                        blurRadius: 8,
                                                        offset: Offset(6, 6),
                                                      ),
                                                    ],
                                                
                                                    borderRadius:
                                                        BorderRadius.circular(20),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),

            Container(
              child: size.width >= 826
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.08),
                          child: Container(
                            key: Experience,
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.04),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.workspaces_outline,
                                    size: 40,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Experience",
                                    style: TextStyle(
                                      color: Color(0xff7c2824),
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 500,
                          width: 1210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 450,
                                width: 1110,
                                decoration: BoxDecoration(
                                  color: Color(0xff7c2824).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: 348,
                                              width: 820,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    spreadRadius: 2,
                                                    blurRadius: 8,
                                                    offset: Offset(6, 6),
                                                  ),
                                                ],

                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    // mainAxisAlignment: MainAxisAlignment.start,
                                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              left:
                                                                  size.width *
                                                                  0.04,
                                                            ),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color: Color(
                                                                0xff7c2824,
                                                              ),
                                                              width:
                                                                  2, // border thickness
                                                            ),
                                                          ),

                                                          child: Row(
                                                            children: [
                                                              CircleAvatar(
                                                                backgroundImage:
                                                                    AssetImage(
                                                                      'assets/images/Devsinn.jpg',
                                                                    ),
                                                                radius: 80,
                                                                // backgroundColor: Colors.amber,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                              left:
                                                                  size.width *
                                                                  0.03,
                                                              right:
                                                                  size.width *
                                                                  0.04,
                                                              top:
                                                                  size.height *
                                                                  0.08,
                                                            ),
                                                        child: Container(
                                                          height: 300,
                                                          width: 506,
                                                          // color: Colors.amber,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    'DevsInn Technology',
                                                                    style: TextStyle(
                                                                      fontFamily:
                                                                          'font',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,

                                                                      color: Color(
                                                                        0xff7c2824,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.01,
                                                                    ),
                                                                child: Row(
                                                                  children: [
                                                                    Text(
                                                                      "I'm M.Kabeer",
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "I'm Flutter Developer",
                                                                    style: TextStyle(
                                                                      fontFamily:
                                                                          'fonts',
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                // crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Expanded(
                                                                    child: Padding(
                                                                      padding: EdgeInsets.only(
                                                                        left:
                                                                            size.width *
                                                                            0.00,
                                                                        right:
                                                                            size.width *
                                                                            0.07,
                                                                        top:
                                                                            size.height *
                                                                            0.02,
                                                                      ),
                                                                      child: Text(
                                                                        'I work as a Flutter Developer at DevsInn Technology, where I build cross-platform mobile apps with clean code, modern UI/UX, and smooth performance. My role includes app development for Android and iOS, API integration, and collaboration with the team to deliver high-quality products.',
                                                                        style: TextStyle(
                                                                          fontFamily:
                                                                              'fonts',
                                                                        ),
                                                                        // style: TextStyle(color: Colors.white),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.0,
                                                                  left:
                                                                      size.width *
                                                                      0.32,
                                                                ),
                                                                child: Row(
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          40,
                                                                      width: 80,
                                                                      decoration: BoxDecoration(
                                                                        color: Color(
                                                                          0xffFDEDCD,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                              40,
                                                                            ),
                                                                      ),
                                                                      child: Center(
                                                                        child: InkWell(
                                                                          onTap: () {
                                                                            launchUrl(
                                                                              Uri.parse(
                                                                                'https://www.devsinntechnologies.com',
                                                                              ),
                                                                            );
                                                                            ;
                                                                          },
                                                                          child: Text(
                                                                            'View =>',
                                                                            style: TextStyle(
                                                                              fontFamily: 'font',

                                                                              fontWeight: FontWeight.bold,
                                                                              color: Color(
                                                                                0xff7c2824,
                                                                              ),
                                                                              fontSize: 14,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            key: Experience,
                            // height: 60,
                            width: 230,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.workspaces_outline,
                                    size: 30,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Experience",
                                    style: TextStyle(
                                      color: Color(0xff7c2824),
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      fontSize: 26,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 500,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.02,
                                  right: size.width * 0.02,
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02,
                                ),
                                child: Container(
                                  // height: 450,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7c2824).withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Wrap(
                                        alignment: WrapAlignment.center,
                                        spacing: size.width * 0.02,
                                        runSpacing: size.height * 0.02,

                                        children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: size.height * 0.02,
                                                  bottom: size.height * 0.02,
                                                ),
                                                child: Container(
                                                  height: 400,
                                                  width: 320,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        spreadRadius: 2,
                                                        blurRadius: 8,
                                                        offset: Offset(6, 6),
                                                      ),
                                                    ],

                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                              left:
                                                                  size.width *
                                                                  0.04,
                                                              bottom:
                                                                  size.height *
                                                                  0.00,
                                                            ),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                border: Border.all(
                                                                  color: Color(
                                                                    0xff7c2824,
                                                                  ),
                                                                  width:
                                                                      2, // border thickness
                                                                ),
                                                              ),

                                                              child: Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    backgroundImage:
                                                                        AssetImage(
                                                                          'assets/images/Devsinn.jpg',
                                                                        ),
                                                                    radius: 40,
                                                                    // backgroundColor: Colors.amber,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  left:
                                                                      size.width *
                                                                      0.06,
                                                                  right:
                                                                      size.width *
                                                                      0.06,
                                                                ),
                                                            child: Container(
                                                              height: 290,
                                                              width: 506,
                                                              // color: Colors.amber,
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Text(
                                                                        'DevsInn Technology',
                                                                        style: TextStyle(
                                                                          fontFamily:
                                                                              'font',
                                                                          fontWeight:
                                                                              FontWeight.bold,

                                                                          color: Color(
                                                                            0xff7c2824,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.01,
                                                                    ),
                                                                    child: Row(
                                                                      children: [
                                                                        Text(
                                                                          "I'm M.Kabeer",
                                                                          style: TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            // fontFamily:
                                                                            // 'fonts',
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Text(
                                                                        "I'm Flutter Developer",
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          // fontFamily:
                                                                          // 'fonts',
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                      Expanded(
                                                                        child: Padding(
                                                                          padding: EdgeInsets.only(
                                                                            left:
                                                                                size.width *
                                                                                0.00,
                                                                            right:
                                                                                size.width *
                                                                                0.07,
                                                                            top:
                                                                                size.height *
                                                                                0.02,
                                                                          ),
                                                                          child: Text(
                                                                            'I work as a Flutter Developer at DevsInn Technology, where I build cross-platform mobile apps with clean code, modern UI/UX, and smooth performance. My role includes app development for Android and iOS, API integration, and collaboration with the team to deliver high-quality products.',
                                                                            style: TextStyle(
                                                                              fontSize: 12,
                                                                              // fontFamily:
                                                                              // 'fonts',
                                                                            ),
                                                                            // style: TextStyle(color: Colors.white),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsets.only(
                                                                          bottom:
                                                                              size.height *
                                                                              0.02,
                                                                          left:
                                                                              size.width *
                                                                              0.24,
                                                                          top:
                                                                              size.height *
                                                                              0.04,
                                                                        ),
                                                                        child: Container(
                                                                          height:
                                                                              30,
                                                                          width:
                                                                              80,
                                                                          decoration: BoxDecoration(
                                                                            color: Color(
                                                                              0xffFDEDCD,
                                                                            ),
                                                                            borderRadius: BorderRadius.circular(
                                                                              40,
                                                                            ),
                                                                          ),
                                                                          child: Center(
                                                                            child: InkWell(
                                                                              onTap: () {
                                                                                launchUrl(
                                                                                  Uri.parse(
                                                                                    'https://www.devsinntechnologies.com',
                                                                                  ),
                                                                                );
                                                                                ;
                                                                              },
                                                                              child: Text(
                                                                                'View =>',
                                                                                style: TextStyle(
                                                                                  fontFamily: 'font',

                                                                                  fontWeight: FontWeight.bold,
                                                                                  color: Color(
                                                                                    0xff7c2824,
                                                                                  ),
                                                                                  fontSize: 16,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),

            Container(
              child: size.width >= 1000
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.08),
                          child: Container(
                            key: Contact,
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.04),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.connect_without_contact_outlined,
                                    size: 40,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      color: Color(0xff7c2824),
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 650,
                          width: 1210,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 600,
                                width: 1110,
                                decoration: BoxDecoration(
                                  color: Color(0xff7c2824).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    right: size.height * 0.00,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 500,
                                                width: 500,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.black
                                                          .withOpacity(0.3),
                                                      spreadRadius: 2,
                                                      blurRadius: 8,
                                                      offset: Offset(6, 6),
                                                    ),
                                                  ],

                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Column(
                                                  // mainAxisAlignment:
                                                  // MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.04,
                                                                ),
                                                            child: TextField(
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Name...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: const Icon(
                                                                  Icons.person,
                                                                  color: Color(
                                                                    0xff7c2824,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.02,
                                                                ),
                                                            child: TextField(
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Email...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: const Icon(
                                                                  Icons
                                                                      .email_outlined,
                                                                  color: Color(
                                                                    0xff7c2824,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.02,
                                                                ),
                                                            child: TextField(
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Phone Number...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: const Icon(
                                                                  Icons.phone,
                                                                  color: Color(
                                                                    0xff7c2824,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // height: 350,
                                                      width: 450,
                                                      child: Column(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.02,
                                                                ),
                                                            child: TextField(
                                                              maxLines: null,
                                                              minLines: 6,
                                                              decoration: InputDecoration(
                                                                hintText:
                                                                    'Your Message...',
                                                                border: OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                        15,
                                                                      ),
                                                                ),
                                                                prefixIcon: Padding(
                                                                  padding: EdgeInsets.only(
                                                                    bottom:
                                                                        size.height *
                                                                        0.20,
                                                                  ),
                                                                  child: const Icon(
                                                                    Icons
                                                                        .message_outlined,
                                                                    color: Color(
                                                                      0xff7c2824,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(
                                                              top:
                                                                  size.height *
                                                                  0.08,

                                                              left:
                                                                  size.width *
                                                                  0.27,
                                                            ),
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  height: 40,
                                                                  width: 100,
                                                                  decoration: BoxDecoration(
                                                                    color: Color(
                                                                      0xffFDEDCD,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          40,
                                                                        ),
                                                                  ),
                                                                  child: Center(
                                                                    child: Text(
                                                                      'Send =>',
                                                                      style: TextStyle(
                                                                        fontFamily:
                                                                            'fonts',
                                                                        // fontWeight:
                                                                        //     FontWeight.bold,
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                        fontSize:
                                                                            20,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: size.width * 0.00,
                                                ),
                                                child: Container(
                                                  height: 500,
                                                  width: 500,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assets/images/contact.jpg",
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.black
                                                            .withOpacity(0.3),
                                                        spreadRadius: 2,
                                                        blurRadius: 8,
                                                        offset: Offset(6, 6),
                                                      ),
                                                    ],

                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          20,
                                                        ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            key: Contact,
                            // height: 60,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.connect_without_contact_outlined,
                                    size: 30,
                                    color: Color(0xff7c2824),
                                  ),
                                  SizedBox(width: size.width * 0.03),
                                  Text(
                                    "Contact",
                                    style: TextStyle(
                                      fontFamily: 'font',
                                      fontWeight: FontWeight.bold,

                                      color: Color(0xff7c2824),
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // height: 650,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: size.width * 0.02,
                                  right: size.width * 0.02,
                                  top: size.height * 0.02,
                                  bottom: size.height * 0.02,
                                ),
                                child: Container(
                                  // height: 600,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff7c2824).withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right: size.height * 0.00,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Wrap(
                                              alignment: WrapAlignment.center,
                                              spacing: size.width * 0.02,
                                              runSpacing: size.height * 0.02,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: size.width * 0.04,
                                                    right: size.width * 0.04,
                                                    top: size.height * 0.04,
                                                    bottom: size.height * 0.02,
                                                  ),
                                                  child: Container(
                                                    height: 500,
                                                    width: 450,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black
                                                              .withOpacity(0.3),
                                                          spreadRadius: 2,
                                                          blurRadius: 8,
                                                          offset: Offset(6, 6),
                                                        ),
                                                      ],

                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            20,
                                                          ),
                                                    ),
                                                    child: Column(
                                                      // mainAxisAlignment:
                                                      // MainAxisAlignment.spaceEvenly,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.04,
                                                                    ),
                                                                child: TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Name...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: const Icon(
                                                                      Icons
                                                                          .person,
                                                                      color: Color(
                                                                        0xff7c2824,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                child: TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Email...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: const Icon(
                                                                      Icons
                                                                          .email_outlined,
                                                                      color: Color(
                                                                        0xff7c2824,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                child: TextField(
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Phone Number...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: const Icon(
                                                                      Icons
                                                                          .phone,
                                                                      color: Color(
                                                                        0xff7c2824,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          // height: 350,
                                                          width: 300,
                                                          child: Column(
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                      top:
                                                                          size.height *
                                                                          0.02,
                                                                    ),
                                                                child: TextField(
                                                                  maxLines:
                                                                      null,
                                                                  minLines: 6,
                                                                  decoration: InputDecoration(
                                                                    hintText:
                                                                        'Your Message...',
                                                                    border: OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                            15,
                                                                          ),
                                                                    ),
                                                                    prefixIcon: Padding(
                                                                      padding: EdgeInsets.only(
                                                                        bottom:
                                                                            size.height *
                                                                            0.17,
                                                                      ),
                                                                      child: const Icon(
                                                                        Icons
                                                                            .message_outlined,
                                                                        color: Color(
                                                                          0xff7c2824,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                  top:
                                                                      size.height *
                                                                      0.06,
                                                                  left:
                                                                      size.width *
                                                                      0.27,
                                                                ),
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                      height:
                                                                          40,
                                                                      width:
                                                                          100,
                                                                      decoration: BoxDecoration(
                                                                        color: Color(
                                                                          0xffFDEDCD,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                              40,
                                                                            ),
                                                                      ),
                                                                      child: Center(
                                                                        child: Text(
                                                                          'Send =>',
                                                                          style: TextStyle(
                                                                            fontFamily:
                                                                                'fonts',
                                                                            // fontWeight:
                                                                            //     FontWeight.bold,
                                                                            color: Color(
                                                                              0xff7c2824,
                                                                            ),
                                                                            fontSize:
                                                                                20,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),

            Container(
              child: size.width >= 1028
                  ? Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              color: Color(0xff7c2824),
                            ),
                            height: 280,
                            // width: 1210,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.08,
                                      top: size.height * 0.04,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Quick Link's :",
                                              style: TextStyle(
                                                fontFamily: 'font',
                                                fontWeight: FontWeight.bold,

                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Color(
                                                  0xffFDEDCD,
                                                ),
                                                color: Color(0xffFDEDCD),
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // left align
                                          children: [
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Home',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• About',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Skills',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Education',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Work',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Experience',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              style: TextButton.styleFrom(
                                                padding: EdgeInsets.zero,
                                                minimumSize: Size(0, 0),
                                                tapTargetSize:
                                                    MaterialTapTargetSize
                                                        .shrinkWrap,
                                              ),
                                              child: Text(
                                                '• Contact',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.14,
                                    top: size.height * 0.04,
                                  ),
                                  child: Container(
                                    width: 350,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'M.Kabeer Potfolio :',

                                              style: TextStyle(
                                                fontFamily: 'font',
                                                fontWeight: FontWeight.bold,

                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Color(
                                                  0xffFDEDCD,
                                                ),
                                                color: Color(0xffFDEDCD),

                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.00,
                                                  right: size.width * 0.07,
                                                  top: size.height * 0.02,
                                                ),
                                                child: Text(
                                                  "Thank you for taking the time to explore my portfolio. I truly appreciate your visit and would love to stay connected. Feel free to reach out or follow me on my social channels, where I share more of my work, ideas, and updates.",
                                                  style: TextStyle(
                                                    fontFamily: 'font',
                                                    fontSize: 14,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(),
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.08,
                                      top: size.height * 0.04,
                                      right: size.width * 0.08,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            // top: size.height * 0.00,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Contact Info :',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  fontWeight: FontWeight.bold,

                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor: Color(
                                                    0xffFDEDCD,
                                                  ),
                                                  color: Color(0xffFDEDCD),
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.email_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Email : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                'kabirmalik328@gmail.com',
                                                style: TextStyle(
                                                  // fontFamily: 'fonts',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.place_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Place : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                'Lahore, Pakistan - 540000',
                                                style: TextStyle(
                                                  // fontFamily: 'fonts',
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Phone Number : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),

                                              Text(
                                                '+92 305-155-5866',
                                                style: TextStyle(
                                                  fontFamily: 'fonts',

                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.02,
                                            left: size.width * 0.04,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/github.png',
                                                    height: 25,
                                                    width: 25,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width * 0.02,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 15,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/linke.png',
                                                    height: 200,
                                                    width: 200,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: size.height * 0.16),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              color: Color(0xff7c2824),
                            ),
                            // height: 280,
                            // width: 1210,
                            width: double.infinity,
                            child: Wrap(
                              alignment: WrapAlignment.start,
                              spacing: size.width * 0.02,
                              runSpacing: size.height * 0.02,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: size.width * 0.08,
                                    top: size.height * 0.04,
                                  ),
                                  child: Container(
                                    width: 350,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'M.Kabeer Potfolio :',

                                              style: TextStyle(
                                                fontFamily: 'font',
                                                fontWeight: FontWeight.bold,

                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Color(
                                                  0xffFDEDCD,
                                                ),
                                                color: Color(0xffFDEDCD),

                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          // crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: size.width * 0.00,
                                                  right: size.width * 0.07,
                                                  top: size.height * 0.02,
                                                ),
                                                child: Text(
                                                  "Thank you for taking the time to explore my portfolio. I truly appreciate your visit and would love to stay connected. Feel free to reach out or follow me on my social channels, where I share more of my work, ideas, and updates.",
                                                  style: TextStyle(
                                                    fontFamily: 'font',
                                                    fontSize: 13,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(),
                                      ],
                                    ),
                                  ),
                                ),

                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: size.width * 0.05,
                                      top: size.height * 0.02,
                                      right: size.width * 0.08,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            // top: size.height * 0.00,
                                          ),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Contact Info :',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  fontWeight: FontWeight.bold,

                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor: Color(
                                                    0xffFDEDCD,
                                                  ),
                                                  color: Color(0xffFDEDCD),
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.email_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Email : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                'kabirmalik328@gmail.com',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.place_outlined,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Place : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),
                                              Text(
                                                'Lahore, Pakistan - 540000',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: size.width * 0.03,
                                            right: size.width * 0.03,
                                            top: size.height * 0.01,
                                          ),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.phone,
                                                size: 18,
                                                color: Color(0xffFDEDCD),
                                              ),
                                              // Text(
                                              //   'Phone Number : ',
                                              //   style: TextStyle(color: Color(0xffFDEDCD)),
                                              // ),
                                              SizedBox(width: 8),

                                              Text(
                                                '+92 305-155-5866',
                                                style: TextStyle(
                                                  fontFamily: 'font',
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: size.height * 0.02,
                                            left: size.width * 0.08,
                                            bottom: size.height * 0.02,
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/github.png',
                                                    height: 28,
                                                    width: 28,
                                                  ),
                                                ),
                                              ),

                                              SizedBox(
                                                width: size.width * 0.04,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  border: Border.all(
                                                    // color: Color(0xff7c2824),
                                                    color: Color(0xffFDEDCD),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: CircleAvatar(
                                                  radius: 20,
                                                  backgroundColor: Color(
                                                    0xff7c2824,
                                                  ),
                                                  child: Image.asset(
                                                    'assets/images/linke.png',
                                                    height: 30,
                                                    width: 30,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          thickness: 2,
                                          color: Color(0xffFDEDCD),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            bottom: size.height * 0.04,
                                            top: size.height * 0.01,
                                          ),
                                          child: Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Designed by M.Kabeer & Fiza Noor',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'font',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
