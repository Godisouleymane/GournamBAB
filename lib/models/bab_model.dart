class BabModel {
  final String id;
  final String name;
  final String location;
  final String capacity;
  final String pricePerKil;
  final int stock;
  final String telephone;
  final String imageUrl;
  BabModel(
      {required this.id,
      required this.name,
      required this.location,
      required this.capacity,
      required this.telephone,
      required this.pricePerKil,
      required this.imageUrl,
      required this.stock});
}
