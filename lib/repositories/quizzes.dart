import 'package:volcano_eng/models/models.dart';

final List<Quiz> quizzes = [
  Quiz(
    id: 0,
    name: "Game 1",
    level: 'Elementary',
    complexity: 1,
    questions: [
      MultipleChoice(
        multipleChoice: false,
        question: "1. What is a volcano? (Matching)",
        answer: 'A',
        answers: [
          '• A) A mountain that can explode and release hot rocks, gas, and melted rock.',
          '• B) A hole in the ground that can shoot out water and steam.',
          '• C) A rock that can float on water and make bubbles.',
          '• D) A plant that can grow very fast and make fire.',
        ],
      ),
      Reorder(
        question:
            '2. What is the name of the melted rock that comes out of a volcano? (Reorder)',
        answer: 'C,A,B,D',
        options: [
          'A) A',
          'B) V',
          'C) L',
          'D) A',
        ],
      ),
      MultipleChoice(
        question: '3. What is the opposite of hot? (Multiple choice)',
        answer: 'A',
        answers: [
          'A) Cold',
          'B) Wet',
          'C) Big',
          'D) Loud',
        ],
      ),
      Completion(
        question: '4. What do we use to measure the temperature? (Completion)',
        answer: "thermometer",
      ),
      Completion(
        question: '5. What is the past tense of erupt? (Transformation)',
        extraQuestion:
            "Change the sentence from present tense to past tense. -The volcano erupts.",
        fillingGaps: false,
        answer: 'The volcano erupted / Erupted',
      ),
    ],
  ),
  Quiz(
    id: 1,
    name: "Game 2",
    level: 'Intermediate',
    complexity: 2,
    questions: [
      MultipleChoice(
        question:
            '1. What are the two layers of the atmosphere that are affected by volcanic eruptions? (Multiple answer)',
        answer: 'A and B',
        answers: [
          'A) Troposphere',
          'B) Stratosphere',
          'C) Mesosphere',
          'D) Thermosphere',
        ],
      ),
      Completion(
        question:
            '2. What is the name of the device that measures and records the earthquakes and vibrations of the Earth? (Error correction)',
        extraQuestion: """Correct the spelling mistake in the sentence. 
- The seismograf is very sensitive.""",
        answer: 'The seismograph is very sensitive.',
        fillingGaps: false,
      ),
      Completion(
        question:
            '3. What is the difference between a legend and a myth? (Rewrite)',
        words: [
          const Word(word: 'Rewrite the sentence using a synonym for the word'),
          const Word(word: ' in bold.', isBold: true),
          const Word(word: '\n- A legend is a'),
          const Word(word: ' story ', isBold: true),
          const Word(
              word:
                  'that is based on historical facts but has been exaggerated or changed over time.'),
        ],
        extraQuestion:
            """Rewrite the sentence using a synonym for the word in bold.\n- A legend is a story that is based on historical facts but has been exaggerated or changed over time.""",
        answer:
            'A legend is a tale that is based on historical facts but has been embellished or altered over time.',
        fillingGaps: false,
      ),
      MultipleChoice(
        question:
            '4. What is the name of the ancient Roman city that was destroyed by the eruption of Mount Vesuvius in 79 AD? (Multiple choice)',
        answer: 'B',
        answers: [
          'A) Rome',
          'B) Pompeii',
          'C) Athens',
          'D) Alexandria',
        ],
      ),
      Completion(
        question: '5. How do we form the present continuous tense? (Reorder)',
        extraQuestion:
            'Reorder the words to make a rule. the verb / the main verb. / the -ing form of / use / and / to be / We',
        answer: 'We use the verb to be and the -ing form of the main verb.',
        fillingGaps: false,
      ),
    ],
  ),
  Quiz(
    id: 2,
    name: "Game 3",
    level: 'Advanced',
    complexity: 3,
    questions: [
      Reorder(
        question:
            '1. What are the four phases of volcanic hazards and management? (Reorder)',
        answer: 'D,B,C,A',
        options: [
          'A) Recovery',
          'B) Preparedness',
          'C) Response',
          'D) Prevention',
        ],
      ),
      Completion(
        question:
            '2.What is the name of the gas that reacts with water and oxygen to form sulfuric acid aerosols? (Completion)',
        extraQuestion: 'Complete the sentence with the missing letters.',
        answer: 'Sulfur dioxide',
      ),
      Matching(
        question:
            '3.What is the difference between the future perfect and the future continuous tenses? (Matching)',
        extraQuestion: 'Match the sentences with the correct tense.',
        answer: '1-B, 2-A',
        options: [
          const Option(
            id: 1,
            text: '1) By next year, he will have visited 10 volcanoes.',
          ),
          const Option(
            id: 3,
            text:
                '2) At this time tomorrow, they will be flying over the volcano.',
          ),
          const Option(
            id: 6,
            text: 'A) Future continuous',
          ),
          const Option(
            id: 2,
            text: 'B) Future perfect',
          ),
        ],
      ),
      MultipleChoice(
        question:
            '4. What is the name of the massive and prolonged volcanic eruptions that occurred about 250 million years ago, and contributed to the largest mass extinction in the history of life on Earth? (Multiple choice)',
        answer: 'B',
        answers: [
          'A) The Deccan Traps',
          'B) The Siberian Traps',
          'C) The Columbia River Basalts',
          'D) The Yellowstone Hotspot',
        ],
      ),
      Completion(
        question: '5. How do we form the present continuous tense? (Reorder)',
        extraQuestion:
            """Change the sentence from active voice to passive voice. 
-The workers removed the ash by the trucks.""",
        answer: 'The ash was removed by the trucks by the workers.',
        fillingGaps: false,
      ),
    ],
    premium: true,
  ),
];
