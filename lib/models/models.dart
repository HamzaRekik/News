class Category {
  String title;
  String query;
  String image;

  Category({required this.title, required this.query, required this.image});
}

class Post {
  String title;
  String description;
  String? image;
  String? author;
  String? date;
  Post(
      {required this.title,
      required this.description,
      required this.image,
      this.author,
      this.date});

  factory Post.fromJson(json) {
    return Post(
        title: json['title'],
        description: json['description'],
        image: json['urlToImage'],
        author: json['author'],
        date: json['publishedAt']);
  }
}
