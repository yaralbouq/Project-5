class BlogModel {
  BlogModel({
    
    required this.id,
    required this.title,
    required this.summary,
    required this.content,
    required this.category,
    required this.readingMinutes,
    required this.image,
    required this.date,
    required this.writer,
  });
  late final int id;
  late final String title;
  late final String writer;
  late final String summary;
  late final String content;
  late final String category;
  late final String readingMinutes;
  late final String date;
  late final String image;

  factory BlogModel.fromJson(Map<String, dynamic> json) {
    return BlogModel(
      id: json['id'] ?? 0, 
      title: json['title'] ?? '',
      summary: json['summary'] ?? '',
      content: json['content'] ?? '',
      category: json['category'] ?? '',
      readingMinutes: json['readingMinutes'] ?? '',
      image: json['image'] ?? 'assets/G.png',
      date: json['date'] ?? '',
      writer: json['writer'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['id'] = id;
    data['summary'] = summary;
    data['content'] = content;
    data['category'] = category;
    data['readingMinutes'] = readingMinutes;
    data['image'] = image;
    data['date'] = date;
    data['writer'] = writer;
    return data;
  }
}
