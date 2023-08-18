import 'package:challenge/model/rive.asset.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({super.key, required this.menu, required this.press, required this.riveonInit, required this.isActive});

  final RiveAsset menu;

  final VoidCallback press;

  final ValueChanged<Artboard> riveonInit;

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
        const Padding(
          padding:  EdgeInsets.only(left: 24),
          child: Divider(
            height: 1,
          ),
        ),
          Stack(
            children: [
              
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                 height: 56,
                 width: isActive ? 288 : 0,
                curve: Curves.fastOutSlowIn,
                child: Container(
                 decoration:  const BoxDecoration(
                  color: Color(0xFF6792FF),
                     borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                ),
              ),

              ListTile(
                onTap: press,
                leading: SizedBox(
                height: 34,
                width: 34,
                child: RiveAnimation.asset(
                  menu.src,
                  artboard:menu.artboard,
                  onInit: riveonInit
                  ),
              ),
              title:  Text(menu.title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        ],
      );
}
}