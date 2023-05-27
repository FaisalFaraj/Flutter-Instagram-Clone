class PostModel {
  int id;
  String media;
  String type; // image, video, text
  String date;
  String description;
  int addBy;
  String? location;

  PostModel({
    required this.id,
    required this.type,
    required this.media,
    required this.date,
    required this.description,
    required this.addBy,
    required this.location,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      type: json['post_type'],
      media: json['media'],
      description: json['description'],
      addBy: json['add_by'],
      location: json['location'],
      date: json['date'],
    );
  }
}
