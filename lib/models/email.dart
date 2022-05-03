import 'package:responsiveness/models/models.dart';

class Email {
  Email({
    required this.sender,
    required this.subject,
    required this.date,
    required this.body,
  });
  final Sender sender;
  final String subject;
  final DateTime date;
  final String body;
}
