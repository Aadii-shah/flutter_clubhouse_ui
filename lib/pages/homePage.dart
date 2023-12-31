// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clubhouse_ui/data/data.dart';
import 'package:clubhouse_ui/widget/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.search,
            size: 28.0,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.envelope_open,
              size: 26.0,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.calendar,
              size: 28.0,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              size: 28.0,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 10.0, 20.0, 10.0),
              child:
                  UserProfileImage(imageUrl: currentUser.imageUrl, size: 36.0),
            ),
          ),
          
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 120.0),
            children: [  
              MyUpcomingRoom(upcomingrooms: upcomingRoomsList),
              const SizedBox(height: 12.0,),
              ...roomsList.map((e) => RoomCard(room: e))
            ],
          ),

          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              height: 100.0, 
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.1),
                  Theme.of(context).scaffoldBackgroundColor,
                ]
              )),),
          ),

          // adding start a room continer button
          Positioned(
            bottom: 60.0,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.green,
              borderRadius: BorderRadius.circular(24.0)
              ),
              child: const Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(child: Icon(CupertinoIcons.add,
                    size: 21.0, color: Colors.white,
                    )
                    ),
                    TextSpan(text: 'Start a room',
                    style: TextStyle(color: Colors.white, fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    )
                    )

                  ]
                )
                
              ),
            )
            ),

            // adding menu icon button with green dots...
            Positioned(
            bottom: 60.0,
            right: 40.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    CupertinoIcons.circle_grid_3x3_fill,
                    size: 28.0,
                  ),
                  onPressed: () {},
                ),
                Positioned(
                  right: 4.6,
                  bottom: 11.8,
                  child: Container(
                    height: 16.0,
                    width: 16.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}