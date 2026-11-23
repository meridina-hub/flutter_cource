import 'package:flutter/material.dart';
import 'package:flutter_cource/quiz_app/quiz_button.dart';
import 'package:flutter_cource/quiz_app/quiz_data.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int questionIndex = 0;
  int correctAnswersCount = 0;
  List<Widget> scoreKeeper = [];
  void chekAnswer(bool userPickedAnswer) {
    final bool correctAnswer = quizQuestions[questionIndex].answer;
    final bool isCorrect = (userPickedAnswer == correctAnswer);

    setState(() {
      if (isCorrect) {
        correctAnswersCount++;
        scoreKeeper.add(
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(Icons.check, color: Color(0xff4cb050)),
          ),
        );
      } else {
        scoreKeeper.add(
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(Icons.check, color: Color(0xffef443a)),
          ),
        );
      }
      if (questionIndex < quizQuestions.length - 1) {
        questionIndex++;
      }
    });
    if (scoreKeeper == quizQuestions.length) {
      Future.delayed(const Duration(microseconds: 300), () {
        if (mounted) {
          showResultDialog();
        }
      });
    }
  }

  void showResultDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, // муну фолс кылып койбосо чыккан терезе экрандын баарын жаап калат.

      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: const Text(
            'Тест аягына чыкты',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Text(
            'Сиздин жыйынтык: $correctAnswersCount / ${quizQuestions.length}\n\n'
            '${correctAnswersCount >= (quizQuestions.length / 2) ? "Азаматсыз, эң жакшы көрсөткүч!" : "Жакшы, дагы бир жолу аракет кылып көрүңүз"}',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff2563eb),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pop(context); // Диалог терезени жабуу
                // Буга чейин болгон иш аракеттин баарын кайра башына түшүрүп салабыз (Reset)
                setState(() {
                  questionIndex = 0;
                  correctAnswersCount = 0;
                  scoreKeeper.clear();
                });
              },
              child: const Text(
                'Кайра баштоо',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Тапшырма 7',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    quizQuestions[questionIndex].questionText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            QuizButton(
              text: 'Туура',
              color: Color(0xff4cb050),
              onPressed: () => chekAnswer(true),
            ),
            QuizButton(
              text: 'Ката',
              color: Color(0xffef443a),
              onPressed: () => chekAnswer(false),
            ),
            const SizedBox(height: 20),
            Container(
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              alignment: Alignment.bottomLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: scoreKeeper),
              ),
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
