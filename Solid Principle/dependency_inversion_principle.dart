abstract class MessageService {
  void sendMessage();
}

class EmailService implements MessageService {
  @override
  void sendMessage() {
    print("This message is being send with email service");
  }
}

class SmsService implements MessageService {
  @override
  void sendMessage() {
    print("This message is being send with SMS service");
  }
}

class User {
  User(this._messageService);

  final MessageService _messageService;

  void sendMessage() {
    _messageService.sendMessage();
  }
}

void main() {
  User user = User(EmailService());
  user.sendMessage();
}
