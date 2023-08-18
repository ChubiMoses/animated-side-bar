
import 'package:challenge/screens/profile_screen.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key, required this.profession,required this.username});
  final String username; final String profession;
  @override
  Widget build(BuildContext context) {
    return   ListTile(
        leading: GestureDetector(
          onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfileScreen(image: 'assets/avaters/puppy.jpeg',))),
          child:Stack(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 30,
                  backgroundImage:const AssetImage("assets/avaters/puppy.jpeg")
                ),
                const Positioned(
                  right: 4,
                  top: 35,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Color(0xFF6792FF),
                    ),
                  ),
                )
              ],
            ),
        ),
        title:  Text(username, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800),),
        subtitle: Text(profession, style: const TextStyle(color: Colors.white54,  fontWeight: FontWeight.w500),),
      );
  }
}