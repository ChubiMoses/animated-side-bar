import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:  Column(
        children: [
          const SizedBox(height: 30,),
          Center(
            child:  Stack(
              children: [
                Hero(
                  tag:0,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 80,
                    backgroundImage:AssetImage(image)
                  ),
                ),
                const Positioned(
                  right: 8,
                  top: 120,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Color(0xFF6792FF),
                    ),
                  ),
                )
              ],
            ),
          ),
          
        ],
      )
    );
  }
}