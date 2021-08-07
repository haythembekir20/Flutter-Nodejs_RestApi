
import 'package:admin/models/tacheFile.dart';
import 'package:admin/screens/dashboard/components/delete_button/tache_button.dart';
import 'package:admin/service/tache_service.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../constants.dart';

class tacheFiles extends ConsumerWidget {
  const tacheFiles ({
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
            "Tache",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
               
                DataColumn(
                  label: Text("id_Client"),
                ),
                DataColumn(
                  label: Text("id_tech"),
                ),
                DataColumn(
                  label: Text("etat"),
                ),
                DataColumn(
                  label: Text("date_creation"),
                ),
                DataColumn(
                  label: Text("vmc"),
                ),
                 DataColumn(
                  label: Text("chauffage"),
                ),
                 DataColumn(
                  label: Text("plomberie"),
                ),
                 DataColumn(
                  label: Text("livraison"),
                ),
                 DataColumn(
                  label: Text("travaux"),
                ),
                 DataColumn(
                  label: Text("delete"),
                ),
              ],
              rows: List.generate(
                viewModel.demotacheFiles.length,
                (index) => tacheFileDataRow(viewModel.demotacheFiles[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow tacheFileDataRow(tacheFile fileInfo) {
  return DataRow(
    cells: [
    // DataCell(Text(fileInfo.idTache!)),
      DataCell(Text(fileInfo.id_Client!)),
      DataCell(Text(fileInfo.id_tech!)),
       DataCell(Text(fileInfo.etat!)),
       DataCell(Text(fileInfo.date_creation!)),
       DataCell(Text(fileInfo.vmc!)),
       DataCell(Text(fileInfo.chauffage!)),
       DataCell(Text(fileInfo.plomberie!)),
       DataCell(Text(fileInfo.livraison!)),
       DataCell(Text(fileInfo.travaux!)),
       DataCell(new RButton(
                          //id: ,// bid variable increments by 1 every t
                         id: fileInfo.id!
                        ))
    ],
  );
}
