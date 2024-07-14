abstract class Printer {
  void executePrinter();
}

abstract class Scanner {
  void executeScanner();
}

abstract class Fax {
  void executeFax();
}

class InkPrinter implements Printer {
  @override
  void executePrinter() {
    print("Print documents with Ink printer");
  }
}

class LaserPrinter implements Printer, Scanner {
  @override
  void executeScanner() {
    print("Scan document with Laser Printer");
  }

  @override
  void executePrinter() {
    print("Print document with laser printer");
  }
}

class AllInOnePrinter implements Printer, Scanner, Fax {
  @override
  void executeFax() {
    print("Fax the document");
  }

  @override
  void executePrinter() {
    print("Print the document");
  }

  @override
  void executeScanner() {
    print("Scan the document");
  }
}

void main() {
  LaserPrinter laserPrinter = LaserPrinter();
  laserPrinter.executePrinter();
  laserPrinter.executeScanner();

  AllInOnePrinter allinone = AllInOnePrinter();
  allinone.executeFax();
  allinone.executePrinter();
  allinone.executeScanner();
}
