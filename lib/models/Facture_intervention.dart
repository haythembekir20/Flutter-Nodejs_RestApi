class Facture_interventionfile {
  final String? id_inter, id_facture  ;
  final int? id;
  Facture_interventionfile({this.id,this.id_inter, this.id_facture
 
  });

  factory Facture_interventionfile.fromMap(Map<String, dynamic> map) {
    return new Facture_interventionfile(
      id: map['id'] as int,
      id_inter: map['id_inter'] as String,
      id_facture: map['id_facture'] as String,
      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'id_inter': this.id_inter,
      'id_facture': this.id_facture,
      
    } as Map<String, dynamic>;
  }
  Facture_interventionfile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        id_inter = json['id_inter'],
        id_facture = json['id_facture'];


          Map<String, dynamic> toJson() => {
        'id': id,
        'id_inter': id_inter,
        'id_facture': id_facture,
      };

}


