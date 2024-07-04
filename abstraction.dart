abstract class Machine {
  void printDocument();
}

class Printer implements Machine {
  @override
  void printDocument() {
    print("Document is being printed using printer");
  }
}

class Scanner implements Machine {
  @override
  void printDocument() {
    print("Document is being printed using Scanner");
  }
}

void main() {
  Machine obj = Printer();
  obj.printDocument();

  Machine obj1 = Scanner();
  obj1.printDocument();
}
