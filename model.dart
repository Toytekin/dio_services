import 'dart:convert';

List<ServicesModel> servicesModelFromJson(String str) =>
    List<ServicesModel>.from(
        json.decode(str).map((x) => ServicesModel.fromJson(x)));

String servicesModelToJson(List<ServicesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ServicesModel {
  int userId;
  int id;
  String title;
  String body;

  ServicesModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  ServicesModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      ServicesModel(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory ServicesModel.fromJson(Map<String, dynamic> json) => ServicesModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
