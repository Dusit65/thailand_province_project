import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:introduction_screen/introduction_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: 9, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Buengkan Province",
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0);
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[100],
            indicatorColor: Colors.yellow,
            indicatorWeight: 5.0,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'บึงกาฬ',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.เมือง',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.พรเจริญ',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.โซ่พิสัย',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.เซกา',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.ปากคาด',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.บึงโขงหลง',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.ศรีวิไล',
              ),
              Tab(
                icon: Icon(
                  Icons.map,
                ),
                text: 'อ.บุ่งคล้า',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            shrinkWrap: false,
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "BuengKan Province",
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  "แอปสำหรับคนชอบจังหวัดบึงกาฬ",
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/map.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2023/11/09/11/50/cat-8377169_1280.jpg'),
                ),
              ),
              //bungkan
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/bungkan.png',
                  ),
                ),
                title: Text(
                  'จังหวัดบึงกาฬ',
                ),
                trailing: Icon(
                  FontAwesomeIcons.map,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //meuang
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 1;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/meuang.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอเมือง',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //ponjarearn
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 2;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ponjarearn.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอพรเจริญ',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //sopisai
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 3;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/sopisai.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอโซ่พิสัย',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //seka
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 4;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/seka.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอเซกา',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //pakkad
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 5;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/pakkad.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอปากคาด',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //bunkonglong
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 6;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/bunkonglong.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอบึงโขงหลง',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //srivilai
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 7;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/srivilai.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอศรีวิไล',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //bungkla
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 8;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/bungkla.jpg',
                  ),
                ),
                title: Text(
                  'อำเภอบุ่งคล้า',
                ),
                trailing: Icon(
                  FontAwesomeIcons.mapLocation,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              //exit
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text('ออกจากแอป'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            //buengkan
            showProvince(
                'บึงกาฬ',
                'assets/images/meuang.jpg',
                'assets/images/srivilai.jpg',
                'assets/images/bungkla.jpg',
                'https://buengkanpao.go.th/about/01/01',
                '042492754 ',
                'https://buengkanpao.go.th/',
                'https://maps.app.goo.gl/RbrQLZaLpD7HfZUi7'),
            //meuang
            showDistrict(
                'อำเภอเมือง',
                'assets/images/meuang.jpg',
                'assets/images/srivilai.jpg',
                'assets/images/bungkla.jpg',
                '042491256',
                '042491161',
                'https://maps.app.goo.gl/qm8VpkeP4YdYHWjs5',
                'https://gcontact.gcc.go.th/index.php?option=com_content&view=article&id=20501%3A2011-06-06-02-37-53&catid=4384%3A2011-06-06-00-34-44&Itemid=2'),
            //ponjarearn
            showDistrict(
                'อำเภอพรเจริญ',
                'assets/images/ponjarearn.jpg',
                'assets/images/sopisai.jpg',
                'assets/images/bungkla.jpg',
                '042487119',
                '042487099',
                'https://maps.app.goo.gl/MEQ5bF6MXHM8UKRJ7',
                'https://www.oic.go.th/INFOCENTER33/3326/'),
            //sopisai
            showDistrict(
                'อำเภอโซ่พิสัย',
                'assets/images/sopisai.jpg',
                'assets/images/seka.jpg',
                'assets/images/ponjarearn.jpg',
                '042487119',
                '042485100',
                'https://maps.app.goo.gl/ZYSqKiQKkL7gG19L8',
                'https://www.yellowpages.co.th/profile/%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B9%82%E0%B8%8B%E0%B9%88%E0%B8%9E%E0%B8%B4%E0%B8%AA%E0%B8%B1%E0%B8%A2-%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%81%E0%B8%B2%E0%B8%A3-2FBqlkwsM'),
            //seka
            showDistrict(
                'อำเภอเซกา',
                'assets/images/seka.jpg',
                'assets/images/srivilai.jpg',
                'assets/images/bungkla.jpg',
                '042487113',
                '042489099',
                'https://maps.app.goo.gl/ajQjM679iTVyrk3X7',
                'https://www.yellowpages.co.th/profile/%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B9%80%E0%B8%8B%E0%B8%81%E0%B8%B2-%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%81%E0%B8%B2%E0%B8%A3-3H5tE1rCt'),
            //pakkad
            showDistrict(
                'อำเภอปากคาด',
                'assets/images/pakkad.jpg',
                'assets/images/bunkonglong.jpg',
                'assets/images/seka.jpg',
                '042487115',
                '042481099',
                'https://maps.app.goo.gl/UavuLaxPecusNfuA7',
                'https://sites.google.com/view/dopapakkhat/%E0%B8%82%E0%B8%AD%E0%B8%A1%E0%B8%A5%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%94%E0%B8%95%E0%B8%AD'),
            //bunkonglong
            showDistrict(
                'อำเภอบึงโขงหลง',
                'assets/images/bunkonglong.jpg',
                'assets/images/srivilai.jpg',
                'assets/images/bungkla.jpg',
                '042416207',
                '042416181',
                'https://maps.app.goo.gl/cvGCkH6m9wqW4uu58',
                'https://district.cdd.go.th/buengkhonglong/about-us/contact-us/'),
            //srivilai
            showDistrict(
                'อำเภอศรีวิไล',
                'assets/images/srivilai.jpg',
                'assets/images/pakkad.jpg',
                'assets/images/bungkla.jpg',
                '042416207',
                '042497099',
                'https://maps.app.goo.gl/fMoJX2HDAZ32hKXh9',
                'https://district.cdd.go.th/siwilai/about-us/contact-us/'),
            //bungkla
            showDistrict(
                'อำเภอบุ่งคล้า',
                'assets/images/bungkla.jpg',
                'assets/images/srivilai.jpg',
                'assets/images/seka.jpg',
                '042499004',
                '042499107',
                'https://maps.app.goo.gl/xpoXBreDkEkVt7Jo8',
                'https://district.cdd.go.th/bungkhla/about-us/contact-us/'),
          ],
        ),
      ),
    );
  }

  Widget showDistrict(
      String DisName,
      String DisImg,
      String DisImg2,
      String DisImg3,
      String DisPhone,
      String DisPhone2,
      String DisGPS,
      String DisWeb) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.04,
          ),
          Text(DisName),
          Carousel(
              indicatorBarColor: Colors.transparent,
              autoScrollDuration: Duration(seconds: 2),
              animationPageDuration: Duration(milliseconds: 500),
              activateIndicatorColor: Colors.black,
              animationPageCurve: Curves.bounceInOut,
              indicatorHeight: 10,
              indicatorWidth: 10,
              unActivatedIndicatorColor: Colors.grey,
              stopAtEnd: false,
              autoScroll: true,
              height: MediaQuery.of(context).size.height * 0.4,
              items: [
                Image.asset(
                  DisImg,
                ),
                Image.asset(
                  DisImg2,
                ),
                Image.asset(
                  DisImg3,
                ),
              ]),
          // Image.asset(
          //   shopImg2,
          //   width: MediaQuery.of(context).size.width * 0.3,
          // ),
          // Image.asset(
          //   shopImg3,
          //   width: MediaQuery.of(context).size.width * 0.3,
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(DisPhone);
              },
              tileColor: Colors.pink,
              leading: Icon(Icons.phone),
              title: Text('โทรศัพท์สถานีตำรวจของอำเภอ'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(DisPhone2);
              },
              tileColor: Colors.pink,
              leading: Icon(Icons.phone),
              title: Text('โทรศัพท์โรงพยาบาลของอำเภอ'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(DisGPS),
                );
              },
              tileColor: Colors.pink,
              leading: Icon(
                FontAwesomeIcons.mapLocation,
              ),
              title: Text('นำทางไปยังที่ว่าการอำเภอ'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(Uri.parse(DisWeb));
              },
              tileColor: Colors.pink,
              leading: Icon(
                Icons.web,
              ),
              title: Text('เว็บไซต์อำเภอ'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
        ],
      ),
    );
  }

  Widget showProvince(
      String ProvName,
      String ProvImg,
      String ProvImg2,
      String ProvImg3,
      String aboutProv,
      String ProvPhone,
      String ProvWeb,
      String ProvGPS) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.04,
          ),
          Text(ProvName),
          Carousel(
              indicatorBarColor: Colors.transparent,
              autoScrollDuration: Duration(seconds: 2),
              animationPageDuration: Duration(milliseconds: 500),
              activateIndicatorColor: Colors.black,
              animationPageCurve: Curves.bounceInOut,
              indicatorHeight: 10,
              indicatorWidth: 10,
              unActivatedIndicatorColor: Colors.grey,
              stopAtEnd: false,
              autoScroll: true,
              height: MediaQuery.of(context).size.height * 0.4,
              items: [
                Image.asset(
                  ProvImg,
                ),
                Image.asset(
                  ProvImg2,
                ),
                Image.asset(
                  ProvImg3,
                ),
              ]),
          // Image.asset(
          //   shopImg2,
          //   width: MediaQuery.of(context).size.width * 0.3,
          // ),
          // Image.asset(
          //   shopImg3,
          //   width: MediaQuery.of(context).size.width * 0.3,
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(Uri.parse(aboutProv));
              },
              tileColor: Colors.pink,
              leading: Icon(
                Icons.web,
              ),
              title: Text('ข้อมูลจังหวัด'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(ProvPhone);
              },
              tileColor: Colors.pink,
              leading: Icon(Icons.phone),
              title: Text('เบอร์โทร อบจ. '),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),

          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(Uri.parse(ProvWeb));
              },
              tileColor: Colors.pink,
              leading: Icon(
                Icons.web,
              ),
              title: Text('เว็บ อบจ.'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse('https://www.google.com/maps/@${ProvGPS},17z'),
                );
              },
              tileColor: Colors.pink,
              leading: Icon(
                FontAwesomeIcons.mapLocation,
              ),
              title: Text('นำทางไปยังอบจ.'),
            ),
          ),
        ],
      ),
    );
  }
}
