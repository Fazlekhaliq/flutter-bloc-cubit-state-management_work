class LoginModel {
  bool? status;
  String? message;
  String? token;
  Data? data;

  LoginModel({this.status, this.message, this.token, this.data});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    token = json['token'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['token'] = this.token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? lname;
  String? email;
  Null? emailVerifiedAt;
  String? image;
  Null? provider;
  Null? providerId;
  String? following;
  String? follower;
  String? likes;
  String? createdAt;
  String? updatedAt;
  Null? fcmToken;
  String? fullName;

  Data(
      {this.id,
        this.name,
        this.lname,
        this.email,
        this.emailVerifiedAt,
        this.image,
        this.provider,
        this.providerId,
        this.following,
        this.follower,
        this.likes,
        this.createdAt,
        this.updatedAt,
        this.fcmToken,
        this.fullName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    lname = json['lname'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    image = json['image'];
    provider = json['provider'];
    providerId = json['provider_id'];
    following = json['following'];
    follower = json['follower'];
    likes = json['likes'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    fcmToken = json['fcm_token'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['lname'] = this.lname;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['image'] = this.image;
    data['provider'] = this.provider;
    data['provider_id'] = this.providerId;
    data['following'] = this.following;
    data['follower'] = this.follower;
    data['likes'] = this.likes;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['fcm_token'] = this.fcmToken;
    data['full_name'] = this.fullName;
    return data;
  }
}