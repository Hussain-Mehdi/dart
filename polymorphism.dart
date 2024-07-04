abstract class Animal {
  void animalSound();
}

class Cat implements Animal {
  @override
  void animalSound() {
    print("Meow Meow");
  }

  void nameOfAnimal() {
    print("Cat");
  }
}

class Dog implements Animal {
  @override
  void animalSound() {
    print("Bow Bow");
  }
}

void main() {
  Animal cat = Cat();
  cat.animalSound();
  Animal dog = Dog();
  dog.animalSound();

  Cat cat1 = Cat();
  cat1.animalSound();
  cat1.nameOfAnimal();
}

