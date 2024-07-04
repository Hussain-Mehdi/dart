class Point {
  final int x;
  final int y;

  Point(this.x, this.y);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Point) return false;
    return x == other.x && y == other.y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}

void main() {
  var point1 = Point(12, 23);
  var point2 = Point(12, 23);
  var point3 = Point(4, 5);

  print(point1 == point2);
  print(point1 == point3);

  print("HashCode Value of point1: ${point1.hashCode}");
  print("HashCode value of Point2: ${point2.hashCode}");

  int num1 = 10;
  int num2 = 10;
  int num3 = num1 + num2;
  print(num3);
  Point pt1;
  String name = "Hussain Mehdi";
  String brother = "Ali Yaqteen";

  int i = 0;
  int j = 2;

  print("Checking hashvalue of i and j: ${i^j}");
}
