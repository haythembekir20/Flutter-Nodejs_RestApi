class technicianfile {
  final String?  nom, prenom , email , tel ,adresse ,descativer ,login  , mdp, dern_cnx ;
 final int?id;
  technicianfile({this.id, this.nom,this.prenom, this.email, this.tel ,
   this.adresse, this.descativer, this.login , this.mdp
  , this.dern_cnx
 
  });


factory technicianfile.fromMap(Map<String, dynamic> map) {
    return new technicianfile(
      id: map['id'] as int,
      dern_cnx: map['dern_cnx'] as String,
      nom: map['nom'] as String,
        prenom: map['nom'] as String,
      email: map['email'] as String,
       tel: map['tel'] as String,
        adresse: map['adresse'] as String,
         descativer: map['desactiver'] as String,
         login: map['login'] as String,
        mdp: map['mdp'] as String,
         
        
      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
       'dern_cnx': this.dern_cnx,
      'nom': this.nom,
      'prenom': this.prenom,
      'email': this.email,
       'tel': this.tel,
       'adresse': this.adresse,
      'desactiver': this.descativer,
      'login': this.login,
      'mdp': this.mdp,
      
       
      
    } as Map<String, dynamic>;
  }
  technicianfile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
          nom= json['nom'],
       prenom= json['prenom'],
      email= json['email'],
       tel= json['tel'],
        adresse= json['adresse'],
         descativer= json['descativer'],
         login= json['login'],
        mdp= json['mdp'],
         dern_cnx= json['dern_cnx'];
         
      

          Map<String, dynamic> toJson() => {
      'id': this.id,
      'nom': this.nom,
      'prenom': this.prenom,
      'email': this.email,
       'tel': this.tel,
       'adresse': this.adresse,
      'descativer': this.descativer,
      'login': this.login,
       'mdp': this.mdp,
         'dern_cnx': this.dern_cnx,

      };






}


