class Event {
  final String id;
  final String title;
  final DateTime date;
  final String location;
  final String description;
  final String imageUrl;

  Event({
    required this.id,
    required this.title,
    required this.date,
    required this.location,
    required this.description,
    required this.imageUrl,
  });
}