class clientfile {
  final String?  nom, prenom , email , tel ,adresse  ,login  , mdp, siteweb,raison ;
 final int? id;
  clientfile({this.id, this.nom,this.prenom, this.email, this.tel , this.adresse,  this.login , this.mdp
  , this.siteweb,  this.raison
 
  });
 factory clientfile.fromMap(Map<String, dynamic> map) {
    return new clientfile(
      id: map['id'] as int,
      nom: map['nom'] as String,
      prenom: map['prenom'] as String,
       email: map['email'] as String,
      tel: map['tel'] as String,
       adresse: map['adresse'] as String,
       login: map['login'] as String,
       mdp: map['mdp'] as String,
      siteweb: map['siteweb'] as String,
      raison: map['raison'] as String,
      
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'id': this.id,
      'nom': this.nom,
      'prenom': this.prenom,
      'email': this.email,
      'tel': this.tel,
      'adresse': this.adresse,
      'login': this.login,
      'mdp': this.mdp,
       'siteweb': this.siteweb,
       'raison': this.raison,
      
    } as Map<String, dynamic>;
  }
  clientfile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nom = json['nom'],
        prenom = json['prenom'],
        email = json['email'],
        tel = json['tel'],
        adresse = json['adresse'],
        
        login = json['login'],
        mdp = json['mdp'],
        siteweb = json['siteweb'],
         raison = json['raison'];

          Map<String, dynamic> toJson() => {
      'id': this.id,
      'nom': this.nom,
      'prenom': this.prenom,
      'email': this.email,
      'tel': this.tel,
      'adresse': this.adresse,
      
      'login': this.login,
      'mdp': this.mdp,
       'siteweb': this.siteweb,
        'raison': this.raison,
      };

}


