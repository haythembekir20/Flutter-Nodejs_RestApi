class facturefile {
  final String? idfacture, date_envoie, date_paiement , modalite , total_ht ,total_ttc ,tva ,remise  , a_payer ;

  facturefile({this.idfacture, this.date_envoie,this.date_paiement, this.modalite, this.total_ht , this.total_ttc, this.tva, this.remise , this.a_payer
 
  });
}

List demofacturefile = [
  facturefile(
    idfacture: "1",
    date_envoie: "2",
    date_paiement: "XD File",
    modalite: "pdf",
    total_ht: "01-25-2023",
    total_ttc: "v",
    tva: "v",
    remise: "v",
    a_payer: "v",
    
  ),
  
  
 
];
