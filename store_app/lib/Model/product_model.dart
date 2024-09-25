class ProductModel
{
  final int id;
  final double price;
  final String image;
  final String title;
  final String description;
  final RatingModel ratingModel;


  ProductModel({required this.id ,
    required this.price ,
    required this.image ,
    required this.title ,
    required this.description ,
    required this.ratingModel
  });

  factory ProductModel.fromJson(jsonData)
  {
    return ProductModel(
        id: jsonData['id'],
        price: jsonData['price'],
        image: jsonData['image'],
        title: jsonData['title'],
        description: jsonData['description'],
        ratingModel: RatingModel.fromJson(jsonData['rating'])
    );
  }
}
class RatingModel
{
  final double rate;
  final int count;
  RatingModel({required this.rate , required this.count});
  factory RatingModel.fromJson(jsonData)
  {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}