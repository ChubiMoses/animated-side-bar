
import 'package:challenge/components/side_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor:Color(0xFF6792FF),
      key: _scaffoldKey,
      drawer: const SideBar(),
      appBar: AppBar(
        elevation: 0.0,
      backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            if (_scaffoldKey.currentState!.isEndDrawerOpen) {
              _scaffoldKey.currentState!.closeDrawer();
                }else{
                  _scaffoldKey.currentState!.openDrawer();
                }
              },
          child:  const Icon(
            Icons.short_text,
            size: 30,
          ),
        ),
      ),
      body:const Center(
        child: Text("Hello \n World", textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
      )
      );
  }
}