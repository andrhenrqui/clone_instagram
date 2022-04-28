// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'my_flutter_app_icons.dart';
//import 'assets';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/instagram_logo_wordmark.png',
          fit: BoxFit.contain,
          height: 30,
        ),
        backgroundColor: const Color.fromARGB(225, 255, 255, 255),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              MyFlutterApp.heart_empty,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              MyFlutterApp.facebook_messenger,
              color: Colors.black,
            ),
          ),
        ],

        //body: Container(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.all(1),
          padding: EdgeInsets.all(8),
          color: Color.fromRGBO(0, 0, 0, 100),
          child: Column(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                //color: Colors.amber,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImageAvatar(
                          urlImage:
                              'https://avatars.githubusercontent.com/u/71542547?v=4'),
                      buildCardStory(),
                      buildCardStory(),
                      buildCardStory(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                // height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Column(
                  children: [
                    buildCardStory(),
                    SizedBox(height: 10),
                    buildCardStory(),
                    SizedBox(height: 10),
                    buildCardStory(),
                    buildCardStory(),
                    SizedBox(height: 10),
                    buildCardStory(),
                    buildCardStory(),
                    SizedBox(height: 10),
                    buildCardStory(),
                    buildCardStory(),
                    SizedBox(height: 10),
                    buildCardStory(),
                    buildCardStory(),
                    SizedBox(height: 10),
                    buildCardStory(),
                    buildCardStory(),
                    SizedBox(height: 10),
                    buildCardStory(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 0, 0, 100),
            icon: Icon(MyFlutterApp.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 0, 0, 100),
            icon: Icon(MyFlutterApp.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 0, 0, 100),
            icon: Icon(Icons.photo_camera_outlined),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 0, 0, 100),
            icon: Icon(MyFlutterApp.shopping_bag),
            label: 'Shopping',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(0, 0, 0, 100),
            icon: Icon(Icons.circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

Widget buildCardStory() => Container(
      //width: 350,
      //height: 250,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      color: Colors.blue,
      child: Column(
        children: [
          Image.network(
            'https://source.unsplash.com/random/180x180',
          ),
          Text(
            "Name_user",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );

class ImageAvatar extends StatelessWidget {
  final String urlImage;

  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.orange],
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter),
            color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'AO VIVO',
                style: TextStyle(fontSize: 8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
