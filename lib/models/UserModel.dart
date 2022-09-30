class UserModel {
  int id;
  String name;
  String email;
  String username;
  String profilePicUrl;
  String token;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.username,
    this.profilePicUrl,
    this.token

  });

  UserModel.fromJSON(Map<String, Object> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    profilePicUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String , Object> toJson() {
    return {
    'id' : id,
    'name' : name,
    'email' : email,
    'username' : username,
    'profilePicUrl' : profilePicUrl,
    'token' : token
    };

  }


}