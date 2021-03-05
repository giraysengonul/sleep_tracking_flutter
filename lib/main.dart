import 'package:flutter/material.dart';
import 'clock/clock.dart';
import 'clock/clock_text.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sleep Tracking',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new AppClock(),
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomBar(),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: [
                      TabBar(
                        indicator: UnderlineTabIndicator(
                          borderSide: BorderSide(
                            color: Color(0xffff0863),
                            width: 4.0,
                          ),
                          insets: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0),
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 15,
                        labelColor: Color(0xff2d386b),
                        labelStyle: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500),
                        unselectedLabelColor: Colors.black26,
                        tabs: [
                          Tab(
                            text: "ALARMS",
                            icon: Icon(
                              Icons.watch_later,
                              size: 40.0,
                            ),
                          ),
                          Tab(
                            text: "RECORDS",
                            icon: Icon(
                              Icons.menu,
                              size: 40.0,
                            ),
                          ),
                          Tab(
                            text: "PROFILE",
                            icon: Icon(
                              Icons.supervised_user_circle,
                              size: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: FirstTab(),
              ),
              Center(
                child: SecondTab(),
              ),
              Text("Third Screen"),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () {},
            child: Text(
              "EDIT ALARMS",
              style: TextStyle(
                letterSpacing: 1.5,
              ),
            ),
            color: Color(0xffff5e92),
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 25.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Text(
              "+",
              style: TextStyle(
                color: Color(0xff253165),
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5.0,
            highlightElevation: 3.0,
          ),
        ],
      ),
    );
  }
}
