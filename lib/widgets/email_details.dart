import 'package:flutter/material.dart';
import 'package:responsiveness/models/models.dart';
import 'package:responsiveness/widgets/widgets.dart';

class EmailDetails extends StatelessWidget {
  const EmailDetails({
    Key? key,
    required this.email,
  }) : super(key: key);

  final Email email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                SenderAvatar(
                  sender: email.sender,
                  radius: 30.0,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SenderDetails(sender: email.sender),
                  ),
                ),
                EmailDeliveryInfo(email: email),
              ],
            ),
            Text(
              email.subject,
              style: Theme.of(context).textTheme.headline6,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(email.body),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
