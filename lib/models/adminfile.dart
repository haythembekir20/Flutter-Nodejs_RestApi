
class adminfile {
  final String?  nom, prenom , email , tel ,adresse  ,login  , pwd, rule ;
  final int? id;
  adminfile({this.id, this.nom,this.prenom, this.email, this.tel , this.adresse,  this.login , this.pwd
  , this.rule
 
  });
  factory adminfile.fromMap(Map<String, dynamic> map) {
    return new adminfile(
      id: map['id'] as int,
      nom: map['nom'] as String,
      prenom: map['prenom'] as String,
       email: map['email'] as String,
      tel: map['tel'] as String,
       adresse: map['adresse'] as String,
       login: map['login'] as String,
       pwd: map['mdp'] as String,
      rule: map['rule'] as String,
      
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
      'mdp': this.pwd,
       'rule': this.rule,
      
    } as Map<String, dynamic>;
  }
  adminfile.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        nom = json['nom'],
        prenom = json['prenom'],
        email = json['email'],
        tel = json['tel'],
        adresse = json['adresse'],
        login = json['login'],
        pwd = json['mdp'],
        rule = json['rule'];


          Map<String, dynamic> toJson() => {
      'id': this.id,
      'nom': this.nom,
      'prenom': this.prenom,
      'email': this.email,
      'tel': this.tel,
      'adresse': this.adresse,
      
      'login': this.login,
      'mdp': this.pwd,
       'rule': this.rule,
      };

}



