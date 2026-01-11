import 'package:flutter/material.dart';
import 'package:untitled/Fragment/ChatFragment.dart';
import 'package:untitled/Fragment/FormFragment.dart';
import 'package:untitled/Fragment/OnboardingFragment.dart';

void main(){
  return runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     home:DefaultTabController(length: 3, child: Scaffold(
       body: TabBarView(children: [
         ChatScreen(),
         FormFragment(),
         OnboardingFragment()
       ]),
       bottomNavigationBar: Material(
         color: Colors.blue,
         child: TabBar(tabs: [
           Tab(icon: Icon(Icons.home),text:"Home",),
           Tab(icon: Icon(Icons.search),text: "Search",),
           Tab(icon: Icon(Icons.person),text: "Profile",),
         ]),
       ),
     ))
    );
  }
}

