typedef StringCallback(String message);

void printMessage(String message, StringCallback callBack) {
  callBack(message);
}

void upperCaseCallback(String message) {
  print(message.toUpperCase());
}

void lowerCaseCallback(String message) {
  print(message.toLowerCase());
}

typedef stringList = List<String>;

typedef void toASSCI(String message);

typedef assciList = List<int>;
void convertToASSCI(String message, toASSCI callback) {
  assciList list = [];
  for (int i = 0; i < message.length; i++) {
    list.add(message.codeUnitAt(i));
  }
  print(list);
}

typedef number = int;

void sumTwoNumbers(number num1, number num2) {
  print(num1 + num2);
}

void printASSCI(String message, toASSCI callback) {
  callback(message);
}

typedef kokra = String;
typedef kia = String;
typedef hindsa = int;

typedef kokraMaar(kokra kook);
typedef dassOye(kia kiaDassan);

void MarKook(kokra kokra, kokraMaar kookra) {
  kookra(kokra);
}

void mariKook(kia kia) {
  print(kia);
}

void main() {
  MarKook("Oye,Hassan oye", mariKook);
}
