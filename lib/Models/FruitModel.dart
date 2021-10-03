class Fruit {
  String genus;
  String name;
  int id;
  String family;
  String order;
  Nutritions nutritions;

  Fruit(
      {this.genus,
   this.name,
        this.id,
        this.family,
        this.order,
        this.nutritions});

  Fruit.fromJson(Map<String, dynamic> json) {
    genus = json['genus'];
    name = json['name'];
    id = json['id'];
    family = json['family'];
    order = json['order'];
    nutritions = json['nutritions'] != null
        ? new Nutritions.fromJson(json['nutritions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['genus'] = this.genus;
    data['name'] = this.name;
    data['id'] = this.id;
    data['family'] = this.family;
    data['order'] = this.order;
    if (this.nutritions != null) {
      data['nutritions'] = this.nutritions.toJson();
    }
    return data;
  }
}

class Nutritions {
  double carbohydrates;
  double protein;
  double fat;
  int calories;
  double sugar;

  Nutritions(
      {this.carbohydrates, this.protein, this.fat, this.calories, this.sugar});

  Nutritions.fromJson(Map<String, dynamic> json) {
    carbohydrates = json['carbohydrates'];
    protein = json['protein'];
    fat = json['fat'];
    calories = json['calories'];
    sugar = json['sugar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['carbohydrates'] = this.carbohydrates;
    data['protein'] = this.protein;
    data['fat'] = this.fat;
    data['calories'] = this.calories;
    data['sugar'] = this.sugar;
    return data;
  }
}
