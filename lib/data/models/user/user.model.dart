class UserModel {
  int id;
  String username;
  String displayName;
  String? bio;
  String? link;
  String profileImage;

  UserModel({
    required this.id,
    required this.displayName,
    required this.username,
    this.bio,
    this.link,
    required this.profileImage,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      displayName: json['displayName'] ?? json['username'],
      username: json['username'],
      profileImage: json['profile_image'],
      bio: json['bio'],
      link: json['link'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['displayName'] = displayName;
    data['username'] = username;
    data['bio'] = bio;
    data['link'] = link;
    data['profile_image'] = profileImage;
    return data;
  }
}
