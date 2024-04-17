import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/utils/utils.dart';

const lessons = 'assets/png/lessons';

// •
// •
// •

final List<Lesson> elementaryLessons = [
  Lesson(
    id: 0,
    name: 'Introduction to Volcanoes',
    image: '$lessons/elem_less_1.png',
    pages: [
      [
        Paragraph(title: 'Lesson 1. Introduction to Volcanoes'),
        SubParagraph(
          title: 'Present Uses',
          subTexts: [
            SubText(
              text:
                  '1: We use the present simple when something is generally or always true',
              examples: [
                "People need food.",
                "It snows in winter here.",
                "Two and two make four.",
              ],
            ),
            SubText(
              text:
                  '2: Similarly, we need to use this tense for a situation that we think is more or less permanent. (See the present continuous for temporary situations.)',
              examples: [
                "Where do you live?",
                "She works in a bank.",
                "I don't like mushrooms.",
              ],
            ),
            SubText(
              text:
                  "3: The next use is for habits or things that we do regularly. We often use adverbs of frequency (such as 'often', 'always' and 'sometimes') in this case, as well as expressions like 'every Sunday' or 'twice a month'. (See the present continuous for new, temporary or annoying habits).",
              examples: [
                "Do you smoke?",
                "I play tennis every Tuesday.",
                "I don't travel very often",
              ],
            ),
            SubText(
              text:
                  "4: We can also use the present simple for short actions that are happening now. The actions are so short that they are finished almost as soon as you've said the sentence. This is often used with sports commentary.",
              examples: [
                "He takes the ball, he runs down the wing, and he scores!",
              ],
            ),
          ],
        ),
        SubParagraph(
          title: 'Future Uses',
          subTexts: [
            SubText(
              text:
                  '5: We use the present simple to talk about the future when we are discussing a timetable or a fixed plan. Usually, the timetable is fixed by an organisation, not by us.',
              examples: [
                "School begins at nine tomorrow.",
                "What time does the film start?",
                "The plane doesn't arrive at seven. It arrives at seven thirty.",
              ],
            ),
            SubText(
              text:
                  "6: We also use the present simple to talk about the future after words like ' 'when', 'until', 'after', 'before' and 'as soon as'. These are sometimes called subordinate clauses of time.",
              examples: [
                "I will call you when I have time. (Not 'will have'.)",
                "I won't go out until it stops raining.",
                "I'm going to make dinner after I watch the news",
              ],
            ),
          ],
        ),
        SubParagraph(
          title: 'Conditional Uses',
          subTexts: [
            SubText(
              text:
                  "7: We use the present simple in the first and the zero conditionals. (Check more about conditionals in materials section)",
              examples: [
                "If it rains, we won't come.",
                "If you heat water to 100 degrees, it boils",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Task 1: Reading\nWhat are volcanoes and how do they form?',
          subTexts: [
            SubText(
              text:
                  "Volcanoes are mountains with holes. Hot rocks, gas, and lava come out of the holes. Lava is melted rock. When lava comes out, it is an eruption. Volcanoes happen when the Earth's crust breaks. The crust is the hard part of the Earth. Under the crust, there is hot and soft rock. This is magma. Magma can push the crust and make holes. This is how volcanoes happen. There are different volcanoes. Some volcanoes erupt a lot. Some volcanoes do not erupt for a long time. Some volcanoes never erupt again. Volcanoes can be dangerous or beautiful. They can make new land and good soil. They can also teach us about the Earth.",
              examples: [],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Task 2: Grammar',
          subTexts: [
            SubText(
              text: """Read and remember 
 • Eruption: When lava, gas, and rocks come out of a volcano.
 • Lava: Melted rock that is very hot and red or orange. 
 • Crater: A crater is a hole or a dent at the top or the side of a volcano. It is where the lava, gas, and rocks come out of the volcano. 
 • Magma: Magma is rock that is so hot that it melts. It is under the hard part of the Earth. It can go up and come out of a volcano. When it comes out, it is called lava.""",
              examples: [],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Task 3: Grammar',
          hint:
              "Task: fill in the blanks with the correct form of the verb in brackets. The verb should be in the present simple tense.",
          taskPart: true,
          subTexts: [
            SubText(
              text: '1. Volcanoes __________ (be) mountains with holes.',
              examples: [],
            ),
            SubText(
              text:
                  '2. Hot rocks, gas, and lava __________ (come) out of the holes.',
              examples: [],
            ),
            SubText(
              text: '3. Lava __________ (be) melted rock.',
              examples: [],
            ),
            SubText(
              text:
                  '4. When lava __________ (come) out, it __________ (be) an eruption.',
              examples: [],
            ),
            SubText(
              text:
                  "5. Volcanoes __________ (happen) when the Earth's crust __________ (break).",
              examples: [],
            ),
            SubText(
              text: "6. The crust __________ (be) the hard part of the Earth.",
              examples: [],
            ),
            SubText(
              text:
                  "7. Under the crust, there __________ (be) hot and soft rock.",
              examples: [],
            ),
            SubText(
              text: "8. This __________ (be) magma.",
              examples: [],
            ),
            SubText(
              text:
                  "9. Magma __________ (can) push the crust and __________ (make) holes.",
              examples: [],
            ),
            SubText(
              text:
                  "10. This __________ (be) how volcanoes __________ (happen)",
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. are 2. come 3. is 
4. happen 
5. is 6. is 7. is 
8. can 9. is, happen 10. are""",
  ),
  Lesson(
    id: 1,
    name: 'Types of Volcanoes',
    image: '$lessons/elem_less_2.png',
    pages: [
      [
        Paragraph(title: 'Lesson 2: Types of Volcanoes'),
        SubParagraph(
          title: 'Reading: Types of Volcanoes',
          subTexts: [
            SubText(
              text:
                  "There are different types of volcanoes. They have different shapes and sizes. They also erupt in different ways. Some volcanoes are more dangerous than others. Let's learn about three types of volcanoes: shield, composite, and cinder cone. Shield volcanoes are large and flat. They look like shields. They erupt fluid lava that flows far from the hole. They do not explode very often. They have gentle eruptions. An example of a shield volcano is Mauna Loa in Hawaii. Composite volcanoes are tall and cone-shaped. They look like triangles. They erupt thick lava and ash that do not flow very far. They explode more often. They have violent eruptions. An example of a composite volcano is Mount Fuji in Japan. Cinder cone volcanoes are small and steep. They look like hills. They erupt small pieces of rock and ash that fall near the hole. They do not erupt for a long time. They have short eruptions. An example of a cinder cone volcano is Paricutin in Mexico.",
              examples: [],
            ),
          ],
        ),
        SubParagraph(
          title: 'Vocabulary:',
          subTexts: [
            SubText(
              text: 'Read and remember ',
              examples: [
                "Shield: A large, flat piece of metal or wood that protects someone or something.",
                "Composite: Made of different parts or materials.",
                "Cinder cone: A small cone of volcanic ash or cinders.",
                "Dormant: Not active or growing, but able to become active or grow in the future.",
                "Active: Doing something or causing something to happen or exist.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Grammar: Comparative and Superlative Adjectives',
          subTexts: [
            SubText(
              text:
                  """We use comparative adjectives to compare two things. We use superlative adjectives to compare more than two things. We usually add -er and -est to one-syllable adjectives to make comparatives and superlatives. For example: 
 • Big - Bigger - Biggest 
 • Hot - Hotter - Hottest 
We use more and most to make comparatives and superlatives for most two-syllable adjectives and for all adjectives with three or more syllables. For example:
 • Dangerous - More dangerous - Most dangerous 
 • Beautiful - More beautiful - Most beautiful Some adjectives have irregular forms. For example: 
 • Good - Better - Best 
 • Bad - Worse - Worst
There are more examples in materials section.""",
              examples: [],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title:
              'Exercise: Fill in the blanks with the correct form of the adjective in brackets.',
          taskPart: true,
          titleColor: AppTheme.emerald,
          subTexts: [
            SubText(
              text:
                  "1. Shield volcanoes are __________ (large) than cinder cone volcanoes.",
              examples: [],
            ),
            SubText(
              text:
                  "2. Composite volcanoes are __________ (violent) than shield volcanoes",
              examples: [],
            ),
            SubText(
              text:
                  "3. Cinder cone volcanoes are __________ (short) than composite volcanoes.",
              examples: [],
            ),
            SubText(
              text:
                  "4. Mauna Loa is the __________ (big) shield volcano in the world.",
              examples: [],
            ),
            SubText(
              text: "5. Mount Fuji is the __________ (high) mountain in Japan.",
              examples: [],
            ),
            SubText(
              text:
                  "6. Paricutin is the __________ (young) cinder cone volcano in the world.",
              examples: [],
            ),
            SubText(
              text:
                  "7. Which type of volcano do you think is the __________ (dangerous)?",
              examples: [],
            ),
            SubText(
              text:
                  "8. Which type of volcano do you think is the __________ (beautiful)?",
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. larger 2. more violent 
3. shorter 4. biggest 
5.highest 6. youngest 
7. most dangerous 
8. most beautiful""",
  ),
  Lesson(
    id: 2,
    name: 'Volcanic Eruptions',
    image: '$lessons/elem_less_3.png',
    answers: """1. erupted 2. cause 
3. flowed 4. covered 5. had 
6. studied 7. learned 
8. ended 9. became 
10. changed List of irregular 
verbs in materials""",
    pages: [
      [
        Paragraph(title: 'Lesson 3: Volcanic Eruptions'),
        SubParagraph(
          title: "Reading: Volcanic Eruptions",
          subTexts: [
            SubText(
              text:
                  "A volcanic eruption is when a volcano explodes and releases hot rocks, gas, and melted rock. The melted rock is called lava. Lava can flow out of the volcano or shoot up into the air. Volcanic eruptions happen because of pressure. Under the Earth, there is a lot of hot and soft rock. This rock is called magma. Magma can move and push the hard rock above it. The hard rock is called the crust. The crust has cracks or holes in it. These cracks or holes are where volcanoes are. Sometimes, magma can rise up and reach the surface. When this happens, the pressure is released. This causes the volcano to erupt. The magma becomes lava when it comes out of the volcano. The lava can be very fast or very slow. It depends on how thick or thin it is. Volcanic eruptions can be very dangerous or very beautiful. They can destroy or create land. They can also make the air dirty or the soil rich. They can teach us a lot about the Earth and how it changes.",
              examples: [],
            ),
          ],
        ),
        SubParagraph(
          title: "Vocabulary:",
          subTexts: [
            SubText(
              text: "",
              examples: [
                "Erupt: To explode or burst out.",
                "Explosion: A loud and violent release of energy.",
                "Lava flow: A stream of melted rock that comes out of a volcano.",
                "Ash cloud: A large mass of dust and gas that rises from a volcano.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Grammar: Simple Past Tense',
          subTexts: [
            SubText(
              text:
                  """We use the simple past tense to talk about actions or events that happened in the past and are finished. For example, "I ate pizza yesterday." or "She sang a song." To form the simple past tense, we usually add -ed to regular verbs. For example, "walk" becomes "walked", "study" becomes "studied", etc. However, there are some exceptions and rules to remember when forming the simple past tense: """,
              examples: [
                """If the verb ends with -e, we only add -d. For example, "live" becomes "lived", "hope" becomes "hoped", etc.""",
                """If the verb ends with a consonant and -y, we change the -y to -ied. For example, "cry" becomes "cried", "try" becomes "tried", etc.""",
                """If the verb has one syllable and ends with a vowel and a consonant, we double the consonant and add -ed. For example, "stop" becomes "stopped", "plan" becomes "planned", etc. """,
                """Some verbs are irregular and do not follow these rules. They have different forms in the past tense. For example, "go" becomes "went", "do" becomes "did", "see" becomes "saw", etc.""",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title:
              "Exercise: Fill in the blanks with the correct form of the verb in brackets. The verb should be in the simple past tense. Write short answers with maximum 3 words.",
          titleColor: AppTheme.emerald,
          taskPart: true,
          subTexts: [
            SubText(
              text: "1. The volcano __________ (erupt) last week.",
              examples: [],
            ),
            SubText(
              text: "2. It __________ (cause) a lot of damage.",
              examples: [],
            ),
            SubText(
              text: "3. The lava __________ (flow) very fast.",
              examples: [],
            ),
            SubText(
              text: "4. The ash cloud __________ (cover) the sky.",
              examples: [],
            ),
            SubText(
              text: "5. The people __________ (have) to evacuate.",
              examples: [],
            ),
            SubText(
              text: "6. The scientists __________ (study) the eruption.",
              examples: [],
            ),
            SubText(
              text: "7. They __________ (learn) many things.",
              examples: [],
            ),
            SubText(
              text: "8. The eruption __________ (end) after two days.",
              examples: [],
            ),
            SubText(
              text: "9. The volcano __________ (become) dormant.",
              examples: [],
            ),
            SubText(
              text: "10. The land __________ (change) a lot.",
              examples: [],
            ),
          ],
        ),
      ],
    ],
  ),
];
