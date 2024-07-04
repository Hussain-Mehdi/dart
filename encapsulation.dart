class Animal {
  int _animalId;
  String _animalName;
  String _animalSound;

  Animal(this._animalId, this._animalName, this._animalSound);

  set setName(String name) {
    _animalName = name;
  }

  set setSound(String sound) {
    _animalName = sound;
  }

  String get getName => _animalName;

  String get getSound => _animalSound;
}

void main() {
  Animal animal = Animal(12, "Cat", "Meow Meow");
  print("Animal: ${animal}");
  print("Get animal Name: ${animal.getName}");
  print("Get animal Sound: ${animal.getSound}");
  animal.setName = "Dog";
  print("Get animal Name: "+animal.getName);
}
