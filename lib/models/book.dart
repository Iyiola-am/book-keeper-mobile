class Book {
  final int id;
  String title;
  String content;
  final int date_added;
  int date_updated;

  Book({
    this.id,
    this.title,
    this.content,
    this.date_added,
    this.date_updated
  });

  factory Book.fromJson(Map<String, dynamic> data) => new Book(
    id: data["id"] as int,
    title: data["title"],
    content: data["content"],
    date_added: data["date_added"] as int,
    date_updated: data["date_updated"] as int,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "content": content,
    "date_added": date_added,
    "date_updated": date_updated,
  };
}
