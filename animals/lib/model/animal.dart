class Animal {
  final int id;
  final String name, description, animalImage;

  Animal(this.id, {
    required this.name,
    required this.description,
    required this.animalImage
  });
}

List<Animal> animalList = [
  Animal(
    1, 
    name: 'King Crab', 
    description: 'King crabs are generally thought to be derived from hermit crab-like ancestors within the Paguridae, which may explain the asymmetry still found in the adult forms.', 
    animalImage: 'assets/images/c_crab.png'
  ),
  Animal(
    2, 
    name: 'Elephant', 
    description: 'Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. They are an informal grouping within the proboscidean family Elephantidae.', 
    animalImage: 'assets/images/c_elephant.png'
  ),
];