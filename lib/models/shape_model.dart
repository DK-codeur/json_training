class Property {
  final double width;
  final double height;

  Property({this.width, this.height});

  factory Property.fromJson(Map<String, dynamic> myjson) {
    return Property(
      width: myjson['width'],
      height: myjson['height']
    );
  }
}

class Shape {
  final String shapeName;
  final Property property;

  Shape({this.shapeName, this.property});

  factory Shape.fromJson(Map<String, dynamic> myjson) {
    return Shape(
      shapeName: myjson['shape_name'],
      property: Property.fromJson(myjson['property'])
    );
  }
}