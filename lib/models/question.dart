class Question {
  final String question;
  final String extraQuestion;

  Question({
    required this.question,
    required this.extraQuestion,
  });
}

class Completion extends Question {
  Completion({
    required super.question,
    super.extraQuestion = '',
    required this.answer,
    this.fillingGaps = true,
    this.words = const [],
  });

  final List<Word> words;
  final bool fillingGaps;
  final String answer;
}

class Word {
  final String word;
  final bool isBold;

  const Word({
    required this.word,
    this.isBold = false,
  });
}

class Reorder extends Question {
  Reorder({
    required super.question,
    super.extraQuestion = '',
    required this.answer,
    required this.options,
  });

  final String answer;
  final List<String> options;
}

class MultipleChoice extends Question {
  MultipleChoice({
    required super.question,
    super.extraQuestion = '',
    required this.answer,
    required this.answers,
    this.multipleChoice = true,
  });

  final String answer;
  final bool multipleChoice;
  final List<String> answers;
}

class Matching extends Question {
  Matching({
    required super.question,
    super.extraQuestion = '',
    required this.options,
  });

  final List<Option> options;
}

class Option {
  final int id;
  final String text;

  const Option({
    required this.id,
    required this.text,
  });
}
