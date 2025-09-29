import 'package:myapp/models/event.dart';

final List<Event> kEvents = [
  Event(
    id: '1',
    title: 'Concierto Indie',
    date: DateTime(2025, 10, 5, 19, 30),
    location: 'Teatro Presidente',
    description: 'Bandas locales y food trucks.',
    imageUrl: 'https://picsum.photos/400/200?random=1',
  ),
  Event(
    id: '2',
    title: 'Expo Emprendedores',
    date: DateTime(2025, 10, 12, 10, 0),
    location: 'CIFCO',
    description: 'Networking y charlas de startups.',
    imageUrl: 'https://picsum.photos/400/200?random=2',
  ),
  Event(
    id: '3',
    title: 'Taller UX',
    date: DateTime(2025, 10, 20, 14, 0),
    location: 'ESEN',
    description: 'Hands-on: research y prototipado.',
    imageUrl: 'https://picsum.photos/400/200?random=3',
  ),
];