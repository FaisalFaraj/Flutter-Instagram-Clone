class StoryModel {
  int id;
  String type; // image, video, text
  String media;
  String time;

  StoryModel({
    required this.id,
    required this.type,
    required this.media,
    required this.time,
  });

  factory StoryModel.fromJson(Map<String, dynamic> json) {
    return StoryModel(
      id: json['id'],
      type: json['story_type'],
      media: json['story_media'],
      time: json['story_time'],
    );
  }
}
