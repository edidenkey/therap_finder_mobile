abstract class AppRoles {
  static const String client = 'client';
  static const String therapeute = 'therapeute';
}

abstract class AppMeetingStatuses {
  static const String pending = 'en cours de validation';
  static const String accepted = 'acceptée';
  static const String rejected = 'rejetée';
  static const String completed = 'terminée';
  static const String cancelled = 'annulée';
}

abstract class AppPaymentTypes {
  static const String stripe = 'stripe';
  static const String paypal = 'paypal';
}
