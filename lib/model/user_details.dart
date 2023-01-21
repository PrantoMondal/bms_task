class UserDetail {
  String? name;
  String? email;
  String? image;

  UserDetail({this.name, this.email, this.image});

  UserDetail.fromJson(Map<String,dynamic>json){
    name = json["name"];
    email = json["email"];
    image = json["image"];
  }
  Map<String, dynamic> toJson(){
    final Map<String, dynamic>data = new Map<String,dynamic>();
    data["name"] = this.name;
    data["email"] = this.email;
    data["image"] = this.image;

    return data;

}


}