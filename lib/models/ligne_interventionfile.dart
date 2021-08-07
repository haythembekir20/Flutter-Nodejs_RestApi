class ligne_interventionfile {
  final String?  id_inter, description  ;
final int? id;
  ligne_interventionfile({this.id, this.id_inter,this.description, 
 
  });
  factory ligne_interventionfile.fromMap(Map<String, dynamic> map) {
    return new ligne_interventionfile(
      id: map['id'] as int,
      id_inter: map['id_inter'] as String,
      description: map['description'] as String,
      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'id_inter': this.id_inter,
      'description': this.description,
      
    } as Map<String, dynamic>;
  }
  ligne_interventionfile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        id_inter = json['id_inter'],
        description = json['description'];


          Map<String, dynamic> toJson() => {
        'id': id,
        'id_inter': id_inter,
        'description': description,
      };

}


