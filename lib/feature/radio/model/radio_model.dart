class RadioModel {
  final int id;
  final String name;
  final String url;
  final String date;

  RadioModel({
    required this.id,
    required this.name,
    required this.url,
    required this.date,
  });

  factory RadioModel.fromJson(Map<String, dynamic> json) {
    return RadioModel(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      date: json['recent_date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'url': url, 'recent_date': date};
  }
}
