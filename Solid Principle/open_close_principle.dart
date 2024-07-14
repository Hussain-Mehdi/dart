abstract class IPaymentMethod {
  void pay();
}

class CashPayment implements IPaymentMethod {
  @override
  void pay() {
    print("Paid through Cash payment method");
  }
}

class CreditCardPayment implements IPaymentMethod {
  @override
  void pay() {
    print("Payment is paid through Credit card method");
  }
}

class PayPayPayment implements IPaymentMethod {
  @override
  void pay() {
    print("Payment is paid through paypal method");
  }
}

class PaymentService {
  void pay(IPaymentMethod paymentMethod) {
    paymentMethod.pay();
  }
}

void main() {
  PaymentService _paymentService = PaymentService();
  _paymentService.pay(PayPayPayment());
}
