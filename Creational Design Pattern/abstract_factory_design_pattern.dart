abstract class Shape {
  void draw();
}

class RoundedRectangle implements Shape {
  @override
  void draw() {
    print("Rounded Rectangle is being drew");
  }
}

class RoundedSquare implements Shape {
  @override
  void draw() {
    print("Rounded Square is being drew");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("Simple Rectangle is being drew");
  }
}

class Square implements Shape {
  @override
  void draw() {
    print("Simple Square is being drew");
  }
}

abstract class AbstractFactory {
  Shape? getShape(String shape);
}

class ShapeFactory implements AbstractFactory {
  @override
  Shape? getShape(String shape) {
    if (shape == "Rectangle" || shape == "rectangle") {
      return Rectangle();
    } else if (shape == "Square" || shape == "square") {
      return Square();
    }
    return null;
  }
}

class RoundedShapeFactory implements AbstractFactory {
  @override
  Shape? getShape(String shape) {
    if (shape == "Rounded Rectangle") {
      return RoundedRectangle();
    } else if (shape == "Rounded Square") {
      return RoundedSquare();
    }
    return null;
  }
}

class FactoryProducer {
  static AbstractFactory getFactory(bool rounded) {
    if (rounded) {
      return RoundedShapeFactory();
    } else {
      return ShapeFactory();
    }
  }
}

void main() {
  AbstractFactory shapeFactory = FactoryProducer.getFactory(false);
  Shape? shape1 = shapeFactory.getShape('Square');
  shape1?.draw();

  AbstractFactory roundedFactory = FactoryProducer.getFactory(true);
  Shape? shape2 = roundedFactory.getShape('Rounded Rectangle');
  shape2?.draw();
}
