
class Product {
  final int id;
  final String name;
  final List images;  

  Product({this.id, this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> myjson) {

    var image = myjson['images'] as List;
    List<Images> imageList = image.map((i) => Images.fromJson(i)).toList(); // maper selon le model Images

    return Product(
      id: myjson['id'],
      name: myjson['name'],
      images: imageList
    );
  }
}


class Images {
  final int id;
  final String imageName;

  Images({this.id, this.imageName});

  factory Images.fromJson(Map<String, dynamic> myjson) {
    return Images(
      id: myjson['id'],
      imageName: myjson['imageName']
    );
  }
}