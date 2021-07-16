import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Klimatic Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Factures",
            amountOfFiles: "1000",
            numOfFiles: 503,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Clients",
            amountOfFiles: "1600",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Technician",
            amountOfFiles: "768",
            numOfFiles: 230,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Admin",
            amountOfFiles: "6",
            numOfFiles: 2,
          ),
        ],
      ),
    );
  }
}
