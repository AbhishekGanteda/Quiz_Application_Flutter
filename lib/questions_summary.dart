import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(children: [
              Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: data["user_option"] == data["correct_option"]
                        ? Color.fromARGB(255, 150, 198, 241)
                        : Color.fromARGB(255, 249, 133, 241),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    data["index"].toString(),
                    style: const TextStyle(color: Colors.black),
                  )),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data["question"].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data["user_option"] as String,
                      style:
                          TextStyle(color: Color.fromARGB(205, 211, 69, 224)),
                    ),
                    Text(
                      data["correct_option"] as String,
                      style: TextStyle(color: Color.fromARGB(205, 69, 224, 87)),
                    ),
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
