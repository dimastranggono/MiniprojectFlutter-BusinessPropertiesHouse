
class RecommendedModels{
  late int id;
  late String nama;
  late String city;
  late String country;
  late String price;
  late String imageUrl;
  late int rating;
  late String address;
  late String phone;
  late String mapUrl;
  late List photos;
  late int number_of_kitchens;
  late int number_of_bedrooms;
  late int number_of_cupboards;

  RecommendedModels({
    required this.id,
    required this.nama,
    required this.city,
    required this.country,
    required this.price,
    required this.imageUrl,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.photos,
   required this.number_of_kitchens,
   required this.number_of_bedrooms,
   required this.number_of_cupboards,
    
  });

  factory RecommendedModels.fromJson(Map<String, dynamic> json) =>
  RecommendedModels(
    id: json['id'],
    nama: json['name'],
    city: json['city'],
    country: json['country'],
    price: json['price'],
    imageUrl: json['image_url'],
    rating: json['rating'],
    address: json['address'],
    phone: json['phone'],
    mapUrl: json['map_url'],
    photos: json['photos'],
    number_of_kitchens: json['number_of_kitchens'],
    number_of_bedrooms: json['number_of_bedrooms'],
    number_of_cupboards: json['number_of_cupboards'],
  );
}