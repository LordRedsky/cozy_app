import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  int numberOfKitchens;
  int numberOfBedrooms;
  int numberOfCupboards;
  List photos;
  Space({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.city,
    required this.country,
    required this.rating,
    required this.address,
    required this.phone,
    required this.mapUrl,
    required this.numberOfKitchens,
    required this.numberOfBedrooms,
    required this.numberOfCupboards,
    required this.photos,
  });

  @override
  String toString() {
    return 'Space(id: $id, name: $name, imageUrl: $imageUrl, price: $price, city: $city, country: $country, rating: $rating, address: $address, phone: $phone, mapUrl: $mapUrl, photos: $photos, numberOfKitchens: $numberOfKitchens, numberOfBedrooms: $numberOfBedrooms, numberOfCupboards: $numberOfCupboards)';
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'city': city,
      'country': country,
      'rating': rating,
      'address': address,
      'phone': phone,
      'mapUrl': mapUrl,
      'numberOfKitchens': numberOfKitchens,
      'numberOfBedrooms': numberOfBedrooms,
      'numberOfCupboards': numberOfCupboards,
      'photos': photos,
    };
  }

  factory Space.fromMap(Map<String, dynamic> map) {
    return Space(
      id: map['id'] as int,
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
      price: map['price'] as int,
      city: map['city'] as String,
      country: map['country'] as String,
      rating: map['rating'] as int, 
      address: map['address'] as String,
      phone: map['phone'] as String,
      mapUrl: map['mapUrl'] as String,
      numberOfKitchens: map['numberOfKitchens'] as int,
      numberOfBedrooms: map['numberOfBedrooms'] as int,
      numberOfCupboards: map['numberOfCupboards'] as int,
      photos: List.from(
        (map['photos'] as List),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Space.fromJson(String source) =>
      Space.fromMap(json.decode(source) as Map<String, dynamic>);
}
