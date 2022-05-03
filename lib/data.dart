import 'package:faker/faker.dart';
import 'package:responsiveness/models/models.dart';

final emails = [
  for (var i = 0; i < 100; i++)
    Email(
      sender: Sender(
        name: faker.person.name(),
        email: faker.internet.email(),
        avatarUrl: faker.image.image(
          height: 320,
          width: 320,
          keywords: ['nature', 'people', 'animal'],
          random: true,
        ),
      ),
      subject: faker.lorem.sentence(),
      date: faker.date.dateTime(minYear: 2021, maxYear: 2022),
      body: faker.lorem
          .sentences(faker.randomGenerator.integer(10, min: 5))
          .join('\n'),
    ),
]..sort((a, b) => b.date.compareTo(a.date));
