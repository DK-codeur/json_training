class Photo {
  final int id;
  final String title;
  final String url;

  Photo({this.id, this.title, this.url});

  factory Photo.fromJson(Map<String, dynamic> myjson) {
    return Photo(
      id: myjson['id'],
      title: myjson['title'],
      url: myjson['url']
    );
  }

}

class PhotoList {
  final List<Photo> photos;

  PhotoList({this.photos});

  factory PhotoList.fromJson(List<dynamic> myjson) {

    List<Photo> photos = new List<Photo>();
    photos = myjson.map((i) => Photo.fromJson(i)).toList();

    return PhotoList(
      photos: photos
    );
  }
}