import 'package:flutter/material.dart';

void main() {
runApp(const MainApp());
}

class MainApp extends StatelessWidget {
const MainApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Mi CV',
debugShowCheckedModeBanner: false,
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: CvScreen(),
);
}
}

class CvScreen extends StatelessWidget {
const CvScreen({
super.key,
});

String get randomAvatarUrl {
final ts = DateTime.now().millisecondsSinceEpoch;
return 'https://i.pravatar.cc/200?img=${(ts % 70) + 1}';
}


@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Mi primera app'),
),
body: Container(
padding: EdgeInsets.all(16),
decoration: BoxDecoration(
color: Colors.indigo,
borderRadius: BorderRadius.circular(16),
),
child: Row(
children: [
Container(
width: 80,
height: 80,
clipBehavior:Clip.antiAlias,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(16),
color: Colors.white
),
child: Image.network(randomAvatarUrl, fit: BoxFit.cover, errorBuilder: (_,__, ___)=> const Center( child: Text('Avatar'),),),
),
],
),
)
);
}
}
