class CategoryModel {

  int id;
  String name;


  CategoryModel({
    this.id,
    this.name
  });

  CategoryModel.fromJSON(Map<String,Object> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, Object> toJson() {
    return {
      'id' : this.id,
      'name' : this.name
    };
  }

  
}