class facturefile {
  final String?  date_envoie, date_paiement , modalite , total_ht ,total_ttc ,tva ,remise  , a_payer ;
  final int? id;
  facturefile({this.id, this.date_envoie,this.date_paiement, this.modalite, this.total_ht , this.total_ttc, this.tva, this.remise , this.a_payer
 
  });

   factory facturefile.fromMap(Map<String, dynamic> map) {
    return new facturefile(
      id: map['id'] as int,
      date_envoie: map['date_envoie'] as String,
      date_paiement: map['date_paiement'] as String,
       modalite: map['modalite_payment'] as String,
      total_ht: map['total_ht'] as String,
       total_ttc: map['total_ttc'] as String,
       tva: map['tva'] as String,
       remise: map['remise'] as String,
      a_payer: map['a_payer'] as String,
      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'date_envoie': this.date_envoie,
      'date_paiement': this.date_paiement,
      'modalite_payment': this.modalite,
      'total_ht': this.total_ht,
      'total_ttc': this.total_ttc,
      
      'tva': this.tva,
      'remise': this.remise,
       'a_payer': this.a_payer,
      
    } as Map<String, dynamic>;
  }
  facturefile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        date_envoie = json['date_envoie'],
        date_paiement = json['date_paiement'],
        modalite = json['modalite_payment'],
        total_ht = json['total_ht'],
        total_ttc = json['total_ttc'],
        
        tva = json['tva'],
        remise = json['remise'],
        a_payer = json['a_payer'];


          Map<String, dynamic> toJson() => {
       'id': this.id,
      'date_envoie': this.date_envoie,
      'date_paiement': this.date_paiement,
      'modalite_payment': this.modalite,
      'total_ht': this.total_ht,
      'total_ttc': this.total_ttc,
      
      'tva': this.tva,
      'remise': this.remise,
       'a_payer': this.a_payer,
      };
}


