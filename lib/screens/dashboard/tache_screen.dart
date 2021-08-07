import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/add/tache_add.dart';
import 'package:admin/screens/dashboard/components/intervention_File.dart';
import 'package:admin/screens/dashboard/components/tache_file.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/storage_details.dart';

class Tachescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                       Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {
                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => tache_add(),
        )
        );
              },
              icon: Icon(Icons.add),
              label: Text("Add New Tache"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
                      tacheFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
