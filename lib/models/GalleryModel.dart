class GalleryModel {
  int id;
  String url;

  GalleryModel({this.id, this.url});

  GalleryModel.fromJSON(Map<String,Object> json) {
    id = json['id'];
    url = json['url'];

  }

  Map<String,Object> toJson() {
    return {
      'id' : this.id,
      'url' : this.url
    };
  }


}
