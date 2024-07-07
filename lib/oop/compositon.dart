class Director {
  int? id;
  String? name;

  Director({required this.id, required this.name});
}

class Category {
  int? id;
  String? name;

  Category({required this.id, required this.name});
}

class Movie {
  int? id;
  String? name;
  int? year;
  Director? director;
  Category? category;

  Movie({required this.id, required this.name, required this.year, required this.director, required this.category});
}

void main(List<String> args) {
  Category drama = Category(id: 1, name: "Drama");
  Category comedy = Category(id: 2, name: "Comedy");
  Category sciFi = Category(id: 3, name: "Science Fiction");

  Director nuri = Director(id: 1, name: "Nuri Bilge Ceylan");
  Director quentin = Director(id: 2, name: "Quentin Tarantino");
  Director unknownDirector = Director(id: 3, name: "Unknown Director");

  Movie django = Movie(id: 1, name: "Django", year: 2013, director: quentin, category: drama);
  Movie inception = Movie(id: 2, name: "Inception", year: 2010, director: unknownDirector, category: sciFi);

  print(django.category?.name); // Output: Drama
}
