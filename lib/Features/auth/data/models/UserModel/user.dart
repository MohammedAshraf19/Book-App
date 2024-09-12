class UserData{
   String? name;
   String? phone;
   String? image;
   String? uID;
   String? email;
  UserData({
    this.name,
    this.phone,
    this.email,
    this.image,
    this.uID
});
  UserData.fromJson(dynamic json){
    name = json['name'];
    phone = json['phone'];
    image= json['image'];
    uID = json['uID'];
    email = json['email'];
  }
  Map<String, dynamic> toJson(){
  final map = <String, dynamic>{};
  map['name'] = name;
  map['phone'] = phone;
  map['image'] = image;
  map['uID'] = uID;
  map['email'] = email;
  return map;
  }


}