class tacheFile {
  final String?  id_Client, id_tech, etat , date_creation ,vmc,chauffage,plomberie , livraison ,travaux;
 final int? id ;
  tacheFile({this.id, this.id_Client,this.id_tech, this.etat, this.date_creation , this.vmc, this.chauffage, this.plomberie , this.livraison
  , this.travaux
  });
 factory tacheFile.fromMap(Map<String, dynamic> map) {
    return new tacheFile(
      id: map['id'] as int,
      id_Client: map['id_client'] as String,
      id_tech: map['id_tech'] as String,
       etat: map['etat'] as String,
        date_creation: map['date_creation'] as String,
         vmc: map['vmc'] as String,
          chauffage: map['chauffage'] as String,
           plomberie: map['plomberie'] as String,
            livraison: map['livraison'] as String,
            travaux: map['travaux'] as String,

      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'id_Client': this.id_Client,
      'id_tech': this.id_tech,
       'etat': this.etat,
       'date_creation': this.date_creation,
      'vmc': this.vmc,
      'chauffage': this.chauffage,
      'plomberie': this.plomberie,
      'livraison': this.livraison,
      'travaux': this.travaux,

      
    } as Map<String, dynamic>;
  }
  tacheFile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        id_Client = json['id_Client'],
        id_tech = json['id_tech'],
        etat = json['etat'],
        date_creation = json['date_creation'],
        vmc = json['vmc'],
        chauffage = json['chauffage'],
        plomberie = json['plomberie'],
        livraison = json['livraison'],
         travaux = json['travaux'];


          Map<String, dynamic> toJson() => {
      'id': this.id,
      'id_Client': this.id_Client,
      'id_tech': this.id_tech,
       'etat': this.etat,
       'date_creation': this.date_creation,
      'vmc': this.vmc,
      'chauffage': this.chauffage,
      'plomberie': this.plomberie,
      'livraison': this.livraison,
       'travaux': this.travaux,

      };

}


