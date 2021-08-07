

class ligne_facturefile {
  final String?  idfacture, description  ;
final int? id;
  ligne_facturefile({this.id, this.idfacture,this.description, 
 
  });
factory ligne_facturefile.fromMap(Map<String, dynamic> map) {
    return new ligne_facturefile(
      id: map['id'] as int,
      idfacture: map['id_facture'] as String,
      description: map['description'] as String,
      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'id_facture': this.idfacture,
      'description': this.description,
      
    } as Map<String, dynamic>;
  }
  ligne_facturefile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        idfacture = json['idfacture'],
        description = json['description'];


          Map<String, dynamic> toJson() => {
        'id': id,
        'idfacture': idfacture,
        'description': description,
      };

      
}
  












   

      

