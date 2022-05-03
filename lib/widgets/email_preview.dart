import 'package:flutter/material.dart';
import 'package:responsiveness/models/models.dart';

class EmailPreview extends StatelessWidget {
  const EmailPreview({
    Key? key,
    required this.email,
  }) : super(key: key);

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          email.sender.name,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          email.subject,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
