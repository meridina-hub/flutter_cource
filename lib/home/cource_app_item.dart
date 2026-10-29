import 'package:flutter/material.dart';
import 'package:flutter_cource/counter_app/counter_screen.dart';
import 'package:flutter_cource/im_rich/im_rich.dart';
import 'package:flutter_cource/visit_card/visit_card_screen.dart';

class CourceAppItem {
  final int id;
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final WidgetBuilder pageBuilder;

  const CourceAppItem({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.pageBuilder,
  });
  static List<CourceAppItem> get courceApps => [
    CourceAppItem(
      id: 1,
      title: "Counter app",
      subtitle: "1-сабак. Эсептегич колдонмо",
      icon: Icons.add_circle_rounded,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 2,
      title: "I'm Rich",
      subtitle: "2-сабак. Мен баймын",
      icon: Icons.diamond_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const ImRichScreen(),
    ),
    CourceAppItem(
      id: 3,
      title: "Visit Card",
      subtitle: "3-сабак. Жеке визиттик карточкаң",
      icon: Icons.badge_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const VisitCardScreen(),
    ),
    CourceAppItem(
      id: 4,
      title: "Dice App",
      subtitle: "4-сабак. Кубик ыргытуу",
      icon: Icons.casino_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 5,
      title: "Xylophone",
      subtitle: "5-сабак. Ксилофон",
      icon: Icons.music_note_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 6,
      title: "Quiz App",
      subtitle: "6-сабак. Тест виктрина",
      icon: Icons.quiz_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 7,
      title: "BMI calculator",
      subtitle: "7-сабак. Дене салмактын индекси",
      icon: Icons.monitor_weight_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 8,
      title: "The weather app",
      subtitle: "8-сабак. Аба ырайы",
      icon: Icons.wb_sunny_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 9,
      title: "Flash Chat",
      subtitle: "9-сабак. Онлайн чат",
      icon: Icons.chat_bubble_outline,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 10,
      title: "Country test ",
      subtitle: "10-сабак. Дүйнө өлкөлөрүнүн тестти",
      icon: Icons.public_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
    CourceAppItem(
      id: 11,
      title: "News App",
      subtitle: "11-сабак. Жаңылыктар порталы",
      icon: Icons.newspaper_outlined,
      color: Color(0xff2563eb),
      pageBuilder: (_) => const CounterScreen(),
    ),
  ];
}
