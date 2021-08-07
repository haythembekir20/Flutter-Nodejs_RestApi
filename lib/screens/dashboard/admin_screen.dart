import 'package:admin/models/adminfile.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/add/admin_add.dart';
import 'package:admin/screens/dashboard/components/adminfiles.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/header.dart';


class adminscreen extends StatelessWidget {
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
        builder:(context) => admin_add(),
        )
        );
              },
              icon: Icon(Icons.add),
              label: Text("Add New Admin"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
                      adminfiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      
                    ],
                  ),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
