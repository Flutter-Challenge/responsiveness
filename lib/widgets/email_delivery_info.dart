import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsiveness/models/models.dart';

class EmailDeliveryInfo extends StatelessWidget {
  const EmailDeliveryInfo({
    Key? key,
    required this.email,
  }) : super(key: key);

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          DateFormat('yyyy-MM-dd').format(email.date),
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(
          DateFormat('kk:mm').format(email.date),
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ],
    );
  }
}
