abstract class Transport {
  void deliver();
}

class Truck implements Transport {
  @override
  void deliver() {
    print("Delivery through Truck");
  }
}

class Ship implements Transport {
  @override
  void deliver() {
    print("Delivery through Ship");
  }
}

class TransportFactory {
  Transport? CreateTransport(String type) {
    if (type == "Truck" || type == "truck") {
      return Truck();
    } else if (type == "Ship" || type == "ship") {
      return Ship();
    }
    return null;
  }
}

void main() {
  TransportFactory _transportFactory = TransportFactory();
  Transport? selectedTransport = _transportFactory.CreateTransport("Sip");
  selectedTransport?.deliver();
}
