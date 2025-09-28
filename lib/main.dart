import 'package:flutter/material.dart';

void main() => runApp(const CvApp());

class CvApp extends StatelessWidget {
const CvApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'CV – Programador Senior',
debugShowCheckedModeBanner: false,
theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
home: const CvScreen(),
);
}
}

class CvScreen extends StatelessWidget {
const CvScreen({super.key});

// Avatar aleatorio (cambia al reconstruir la app)
String get randomAvatarUrl {
final ts = DateTime.now().millisecondsSinceEpoch;
return 'https://i.pravatar.cc/200?img=${(ts % 70) + 1}';
}

@override
Widget build(BuildContext context) {
// Paleta suave
final primary = Colors.indigo;
final soft = Colors.indigo.withOpacity(.06);

// ---------- ENCABEZADO (Image + Text + Row/Column dentro de Container) ----------
final header = Container(
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: soft,
borderRadius: BorderRadius.circular(16),
),
child: Row(
children: [
// Avatar (Image dentro de Container para redondear)
Container(
width: 88,
height: 88,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(16),
color: Colors.white,
),
child: Image.network(
randomAvatarUrl,
fit: BoxFit.cover,
errorBuilder: (_, __, ___) => const Center(child: Text('Avatar')),
),
),
const SizedBox(width: 16),
// Nombre + Rol + Resumen corto
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: const [
Text('Juan Pérez',
style:
TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
SizedBox(height: 4),
Text('Programador Senior • 14 años de experiencia'),
SizedBox(height: 6),
Text(
'Especializado en desarrollo de aplicaciones, integración de APIs y entrega de productos de alto impacto. '
'Consistente en cumplir objetivos de negocio y calidad.',
style: TextStyle(color: Colors.black87),
),
],
),
),
],
),
);

// ---------- SECCIÓN: EXPERIENCIA ----------
Widget experienceItem({
required String empresa,
required String periodo,
required String logros,
}) {
return Container(
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(14),
boxShadow: const [
BoxShadow(
blurRadius: 10,
offset: Offset(0, 4),
color: Color(0x11000000),
)
],
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
// Marca lateral de color
Container(width: 6, height: 64, color: primary),
const SizedBox(width: 12),
// Contenido
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(empresa,
style: const TextStyle(
fontWeight: FontWeight.w700, fontSize: 16)),
const SizedBox(height: 2),
Text(periodo, style: TextStyle(color: Colors.grey.shade700)),
const SizedBox(height: 8),
Text(logros),
],
),
),
],
),
);
}

final experiencia = Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text('Experiencia Profesional',
style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
const SizedBox(height: 10),
experienceItem(
empresa: 'Empresa A — Programador Senior',
periodo: '2012 – 2015',
logros:
'Lideró módulos clave y entregó funcionalidades a tiempo, mejorando la estabilidad del producto.',
),
const SizedBox(height: 10),
experienceItem(
empresa: 'Empresa B — Programador Senior',
periodo: '2015 – 2018',
logros:
'Integración de APIs críticas, optimización de rendimiento y reducción de errores en producción.',
),
const SizedBox(height: 10),
experienceItem(
empresa: 'Empresa C — Programador Senior',
periodo: '2018 – 2021',
logros:
'Diseñó componentes reutilizables, acelerando el time-to-market y cumpliendo objetivos de negocio.',
),
const SizedBox(height: 10),
experienceItem(
empresa: 'Empresa D — Programador Senior',
periodo: '2021 – Presente',
logros:
'Responsable de la entrega de features complejas con alto impacto; cumplimiento consistente de objetivos.',
),
],
);

// ---------- SECCIÓN: EDUCACIÓN ----------
Widget educationItem(String grado, String detalle) {
return Container(
padding: const EdgeInsets.all(12),
decoration: BoxDecoration(
color: Colors.grey.shade50,
borderRadius: BorderRadius.circular(12),
),
child: Row(
children: [
Container(
width: 10,
height: 10,
decoration: BoxDecoration(
color: primary,
borderRadius: BorderRadius.circular(20),
),
),
const SizedBox(width: 8),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(grado,
style: const TextStyle(
fontWeight: FontWeight.w700, fontSize: 14)),
const SizedBox(height: 4),
Text(detalle),
],
),
),
],
),
);
}

final educacion = Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text('Formación Académica',
style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
const SizedBox(height: 10),
educationItem('Estudios Básicos',
'Formación general en ciencias y matemática aplicada.'),
const SizedBox(height: 10),
educationItem('Estudios Superiores',
'Ingeniería en Computación / Sistemas — enfoque en desarrollo de software.'),
const SizedBox(height: 10),
educationItem('Máster',
'Máster en Ingeniería de Software — arquitectura, calidad y gestión de proyectos.'),
],
);

// ---------- SECCIÓN: HABILIDADES (solo Text/Row/Column/Container) ----------
Widget skillChip(String s) {
return Container(
padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
margin: const EdgeInsets.only(right: 8, bottom: 8),
decoration: BoxDecoration(
color: soft,
borderRadius: BorderRadius.circular(10),
),
child: Text(s),
);
}

final habilidades = Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text('Habilidades Clave',
style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
const SizedBox(height: 10),
Row(children: [skillChip('Flutter'), skillChip('Dart'), skillChip('REST')]),
Row(children: [skillChip('Arquitectura'), skillChip('Rendimiento')]),
Row(children: [skillChip('Limpieza de Código'), skillChip('Trabajo en equipo')]),
],
);

// ---------- LAYOUT PRINCIPAL ----------
return Scaffold(
appBar: AppBar(title: const Text('CV – Programador Senior')),
body: Padding(
padding: const EdgeInsets.all(16),
child: SingleChildScrollView( // para evitar overflow si el contenido crece
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
header,
const SizedBox(height: 16),
experiencia,
const SizedBox(height: 16),
educacion,
const SizedBox(height: 16),
habilidades,
const SizedBox(height: 28),
// Footer simple con datos de contacto (Text dentro de Container)
Container(
width: double.infinity,
padding: const EdgeInsets.all(14),
decoration: BoxDecoration(
color: soft,
borderRadius: BorderRadius.circular(12),
),
child: const Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text('Contacto',
style: TextStyle(
fontWeight: FontWeight.w800, fontSize: 16)),
SizedBox(height: 6),
Text('Email: juan.perez@example.com'),
Text('Tel: +503 7000 0000'),
Text('Ubicación: Remoto / On-site'),
],
),
),
],
),
),
),
);
}
}

