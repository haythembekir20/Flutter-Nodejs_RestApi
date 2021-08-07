class interventionFile {
  final String?  id_tache, adresse, pdf_name, date_deb,date_fin ;
 // final DateTime?  date_deb,date_fin;
  final int? id;
  interventionFile({this.id, this.id_tache,this.adresse, this.pdf_name, this.date_deb , this.date_fin});
  factory interventionFile.fromMap(Map<String, dynamic> map) {
    return new interventionFile(
      id: map['id'] as int,
      id_tache: map['id_tache'] as String,
      adresse: map['adresse'] as String,
       pdf_name: map['pdf_name'] as String,
        date_deb: map['date_deb'] as String,
         date_fin: map['date_fin'] as String,
      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'id_tache': this.id_tache,
      'adresse': this.adresse,
       'pdf_name': this.pdf_name,
       'date_deb': this.date_deb,
      'date_fin': this.date_fin,
      
    } as Map<String, dynamic>;
  }
  interventionFile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        id_tache = json['id_tache'],
        adresse = json['adresse'],
        pdf_name = json['pdf_name'],
        date_deb = json['date_deb'],
        date_fin = json['date_fin'];


          Map<String, dynamic> toJson() => {
       'id': this.id,
      'id_tache': this.id_tache,
      'adresse': this.adresse,
       'pdf_name': this.pdf_name,
       'date_deb': this.date_deb,
      'date_fin': this.date_fin,
      };

}


