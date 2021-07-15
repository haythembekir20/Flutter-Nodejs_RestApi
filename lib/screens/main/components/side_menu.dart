import 'package:admin/screens/main/admin.dart';
import 'package:admin/screens/main/client.dart';
import 'package:admin/screens/main/facture.dart';
import 'package:admin/screens/main/intervention.dart';
import 'package:admin/screens/main/ligne_facture.dart';
import 'package:admin/screens/main/ligne_intervention.dart';
import 'package:admin/screens/main/tache.dart';
import 'package:admin/screens/main/technician.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Facture_intervention.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
            
          ),
          DrawerListTile(
            title: "Intervention",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              
            Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => intervention_main(),
        )
        );
    
            },
          ),
          DrawerListTile(
            title: "Tache",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
               Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => tache_main(),
        )
        );
            },
          ),
          DrawerListTile(
            title: "Facture",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
               Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => facture_main(),
        )
        );
            },
          ),
          DrawerListTile(
            title: "Ligne_Intervention",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => ligne_intervention_main(),
        )
        );
            },
          ),
           DrawerListTile(
            title: "Facture_intervention",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => Factureinterventionmain(),
        )
        );
            },
          ),
          DrawerListTile(
            title: "Ligne_Facture",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
               Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => ligne_facture_main(),
        )
        );
            },
          ),
          DrawerListTile(
            title: "Client",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {
                Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => clientmain(),
        )
        );
            },
          ),
          DrawerListTile(
            title: "Technician",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
               Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => technicianmain(),
        )
        );
            },
          ),
          DrawerListTile(
            title: "Admin",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
               Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => adminmain(),
        )
        );
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
