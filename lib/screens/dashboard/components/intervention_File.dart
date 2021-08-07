
import 'package:admin/models/interventionFile.dart';
import 'package:admin/screens/dashboard/components/delete_button/intervention_button.dart';
import 'package:admin/service/intervention_service.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class interventionFiles extends ConsumerWidget {
  const interventionFiles ({
    Key? key,
  }) : super(key: key);

  @override
   Widget build(BuildContext context,watch) {
     
    final viewModel = watch(getDataFuture);
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
            "Intervention",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                
                DataColumn(
                  label: Text("id_tache"),
                ),
                DataColumn(
                  label: Text("adresse"),
                ),
                DataColumn(
                  label: Text("pdf_name"),
                ),
                DataColumn(
                  label: Text("date_deb"),
                ),
                DataColumn(
                  label: Text("date_fin"),
                ),
                DataColumn(
                  label: Text("Delete"),
                ),
              ],
              rows: List.generate(
                viewModel.demointerventionFiles.length,
                (index) => interventionFileDataRow(viewModel.demointerventionFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow interventionFileDataRow(interventionFile fileInfo) {
  return DataRow(
    cells: [
   //  DataCell(Text(fileInfo.id_inter!)),
      DataCell(Text(fileInfo.id_tache!)),
      DataCell(Text(fileInfo.adresse!)),
       DataCell(Text(fileInfo.pdf_name!)),
       DataCell(Text(fileInfo.date_deb!)),
       DataCell(Text(fileInfo.date_fin!)),
       DataCell(new RButton(
                          //id: ,// bid variable increments by 1 every t
                         id: fileInfo.id!
                        ))
    ],
  );
}
