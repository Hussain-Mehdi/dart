class Singleton {
  Singleton._privateConstructor();

  static Singleton _instance = Singleton._privateConstructor();

  factory Singleton() {
    return _instance;
  }
}

void main() {
  Singleton a = Singleton._privateConstructor();
  Singleton b = Singleton();

  print(a == b);
}
