class Contact {
  final String name;
  final String photo;
  final String description;
  final String price;
  final String piecemeal;
  bool isFavorite;

  Contact({
    required this.name,
    required this.photo,
    required this.description,
    required this.price,
    required this.piecemeal,
    this.isFavorite = false,
  });
}
