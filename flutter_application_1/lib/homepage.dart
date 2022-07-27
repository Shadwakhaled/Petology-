import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/content_view.dart';
import 'package:flutter_application_1/custom_tab.dart';
import 'package:flutter_application_1/topbarcontents.dart';

class HomeePage extends StatefulWidget {
  const HomeePage({Key? key}) : super(key: key);

  @override
  State<HomeePage> createState() => _HomeePageState();
}

class _HomeePageState extends State<HomeePage> {
  List<ContentView> contentView = [
    ContentView(
        tab: const CustomTab(title: 'home'),
        content: Center(
          child: Container(
            color: Colors.black,
            width: 100,
            height: 100,
          ),
        )),
    ContentView(
        tab: const CustomTab(title: 'about'),
        content: Center(
          child: Container(
            color: Colors.white,
            width: 100,
            height: 100,
          ),
        )),
    ContentView(
        tab: const CustomTab(title: 'home'),
        content: Center(
          child: Container(
            color: Colors.black,
            width: 100,
            height: 100,
          ),
        )),
    ContentView(
        tab: const CustomTab(title: 'ask'),
        content: Center(
          child: Container(
            color: Colors.black,
            width: 100,
            height: 100,
          ),
        ))
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70),
        child: TopBarContents(),
      ),
      body: LayoutBuilder(builder: (context, constrains) {
        if (constrains.maxWidth > 715) {
          return desktopView();
        } else {
          return mobileView();
        }
      }),
    );
  }

  Widget desktopView() {
    return Column();
  }

  Widget mobileView() {
    return Container();
  }
}
