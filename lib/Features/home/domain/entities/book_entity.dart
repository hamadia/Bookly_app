class BookEntity {
  final String? image;
  final num? bookId;
  final String? title;
  final String? authorName;
  final num? noPage;
  final num? rating;

  BookEntity({
    required this.image,
    required this.bookId,
    required this.title,
    required this.authorName,
    required this.noPage,
    required this.rating,
  });
}
