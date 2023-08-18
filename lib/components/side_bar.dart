import 'package:challenge/components/info_card.dart';
import 'package:challenge/components/side_menu_tile.dart';
import 'package:challenge/model/rive.asset.dart';
import 'package:challenge/utils/rive_utils.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  RiveAsset selectedMenu = sideMenus.first;
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor:Colors.black,
      child: Container(
        padding: const EdgeInsets.only(top:70),
        child:  Column(
          children: [ 
           const InfoCard(
            profession: "Software Developer", 
            username: 'Chubi Wonder'),
          
          const SizedBox(height: 50,),
            ...bottomNavs.map((menu) => 
            SideMenuTile(
              menu: menu, 
              press: (){
                menu.input!.change(true);
                Future.delayed(const Duration(seconds: 1),(){
                  menu.input!.change(false);
                });
    
                setState(() {
                  selectedMenu = menu;
                });
              },
             riveonInit: (artboard){
               StateMachineController controller = RiveUtils.getRiveController(artboard, stateMachineName: menu.stateMachineName);
               menu.input = controller.findSMI("active") as SMIBool;
             }, 
             isActive: selectedMenu == menu,
             )),

          ],
        ),
      ),
    );
  }
  
}

