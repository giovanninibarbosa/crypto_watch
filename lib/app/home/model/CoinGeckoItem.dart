import 'dart:convert';

class CoinGeckoItem {
  dynamic name;
  String image;
  num currentPrice;
  num priceChange24h;
  num priceChangePercentage24h;

  CoinGeckoItem({
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.priceChange24h,
    required this.priceChangePercentage24h,
  });

  // Mappers: JSON -> Model
  Map<String, dynamic> toMap(){
    return {
      'name': name,
      'image': image,
      'current_price': currentPrice,
      'price_change_24h': priceChange24h,
      'price_change_percentage_24h': priceChangePercentage24h,
    };
  }

  // Mappers: Model -> Json
  factory CoinGeckoItem.fromMap(Map<String, dynamic> map) {
    return CoinGeckoItem(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      currentPrice: map['current_price'] ?? 0,
      priceChange24h: map['price_change_24h'] ?? 0,
      priceChangePercentage24h: map['price_change_percentage_24h'] ?? 0,
    );
  }

  // Mappers: Json -> Model
  String toJson() => json.encode(toMap());

  // Mappers: Model -> Json
  factory CoinGeckoItem.fromJson(String source) =>
      CoinGeckoItem.fromMap(json.decode(source));
}
