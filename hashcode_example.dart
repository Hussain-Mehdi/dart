class Person {
  int id;
  String? username;
  String email;

  Person(this.id, this.username, this.email);

  String get name => username ?? "";

  set setName(String name) {
    if (username == null || username!.isEmpty) {
      print("Condition true");
      username = name;
    }
  }

  @override
  bool operator ==(Object other) {
    print("other object value: ${other}");
    if (identical(this, other)) return true;
    print("Identical Result: ${this.username}");
    if (other is! Person) return false;
    return id == other.id && username == other.username && email == other.email;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ email.hashCode;
}

void main() {
  Person p1 = Person(1, null, "Alice@example.com");
  Person p2 = Person(1, "Alice", "Alice@example.com");
  print("Person: ${p1 == p2}");
  print("Getter value: ${p1.username}");
  print("Setter value: ${p1.setName = "Areeb"}");
  print("Name after setter: ${p1.username}");

  print("===================>");
  print("HashValue: ${p1.hashCode}");
  print("HashValue: ${p2.hashCode}");
  print("Name: ${p1.username}");
}
