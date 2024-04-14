import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/utils/utils.dart';

final List<Lesson> intermediateLessons = [
  Lesson(
    id: 3,
    name: "The Science of Volcanology",
    image: "$lessons/inter_less_1.png",
    pages: [
      [
        Paragraph(title: "Lesson 1: The Science of Volcanology"),
        SubParagraph(
          title: "Reading: The Science of Volcanology",
          subTexts: [
            SubText(
              text:
                  "Volcanology is the study of volcanoes, their eruptions, and their effects on the environment and society. Volcanologists are scientists who research and monitor volcanoes. They try to understand how and why volcanoes erupt, and how to predict and prevent volcanic disasters. Volcanologists use different methods and tools to study volcanoes. Some of these methods and tools are:",
              examples: [
                "Fieldwork: Volcanologists visit volcanoes and collect samples of rocks, lava, ash, and gas. They also measure the temperature, pressure, and chemistry of the volcano. They use special equipment and clothing to protect themselves from the heat and danger of the volcano.",
                "Laboratory: Volcanologists analyze the samples and data they collected from the fieldwork. They use microscopes, computers, and other instruments to study the properties and composition of the volcanic materials. They also conduct experiments to simulate volcanic eruptions and test their hypotheses.",
                "Remote sensing: Volcanologists use satellites, drones, cameras, and sensors to observe volcanoes from a distance. They can see the shape, size, and activity of the volcano. They can also detect changes in the volcano, such as gas emissions, ground deformation, and thermal anomalies.",
                "Seismology: Volcanologists use seismographs to record the earthquakes and vibrations caused by the movement of magma and rocks inside the volcano. They can use the seismograms to determine the location, depth, and magnitude of the volcanic activity. They can also use the seismic waves to create images of the volcano's structure and plumbing system.",
                "Modeling: Volcanologists use mathematical equations and computer programs to create models of volcanic processes and phenomena. They can use the models to explain and predict the behavior and effects of volcanoes. They can also use the models to evaluate the risks and impacts of volcanic eruptions on the environment and society",
              ],
            ),
          ],
        ),
        SubParagraph(
          title: "Vocabulary:",
          subTexts: [
            SubText(
              text: "",
              examples: [
                "Seismograph: A device that measures and records the earthquakes and vibrations of the Earth.",
                "Pyroclastic flow: A fast and hot mixture of gas, ash, and rock that flows along the ground during a volcanic eruption.",
                "Tephra: The solid material that is ejected from a volcano during an eruption. It includes ash, pumice, bombs, and blocks.",
                "Pumice: A light and porous type of volcanic rock that is formed from frothy lava. It can float on water.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Grammar: Present Continuous Tense',
          subTexts: [
            SubText(
              text:
                  """We use the present continuous tense to talk about actions or situations that are happening now or around now. For example, "I am writing a lesson." or "She is studying volcanoes." We also use the present continuous tense to talk about future plans or arrangements that are already decided or confirmed. For example, "We are visiting a volcano tomorrow." or "They are taking a test next week." To form the present continuous tense, we use the verb to be and the -ing form of the main verb. For example, "He is running." or "She is singing." However, there are some exceptions and rules to remember when forming the present continuous tense:""",
              examples: [],
            ),
            SubText(
              text: 'text',
              examples: [
                """If the verb ends with -e, we drop the -e and add -ing. For example, "live" becomes "living", "make" becomes "making", etc.""",
                """If the verb has one syllable and ends with a vowel and a consonant, we double the consonant and add -ing. For example, "run" becomes "running", "sit" becomes "sitting", etc.""",
                """ If the verb has two syllables and ends with a vowel and a consonant, we double the consonant and add -ing if the stress is on the last syllable. For example, "begin" becomes "beginning", "admit" becomes "admitting", etc.""",
                """Some verbs are not used in the present continuous tense, even if they refer to the present time. These verbs are usually verbs of the senses, emotions, thoughts, possession, or states. For example, "I see a volcano." or "She likes volcanoes.\"""",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title:
              "Exercise: Fill in the blanks with the correct form of the verb in brackets. The verb should be in the present continuous tense. Write short answers with maximum 3 words.",
          titleColor: AppTheme.emerald,
          taskPart: true,
          subTexts: [
            SubText(
              text: "1. She __________ (study) volcanology at the university.",
              examples: [],
            ),
            SubText(
              text: "2. He __________ (work) as a volcanologist.",
              examples: [],
            ),
            SubText(
              text: "3. They __________ (visit) a volcano today.",
              examples: [],
            ),
            SubText(
              text: "4. We __________ (watch) a documentary about volcanoes.",
              examples: [],
            ),
            SubText(
              text: "5. I __________ (write) a report on volcanic eruptions.",
              examples: [],
            ),
            SubText(
              text: "6. She __________ (not go) to the laboratory this week.",
              examples: [],
            ),
            SubText(
              text: "7. He __________ (not like) pyroclastic flows.",
              examples: [],
            ),
            SubText(
              text:
                  "8. They __________ (not take) any samples from the volcano.",
              examples: [],
            ),
            SubText(
              text: "9. What __________ you __________ (do) right now?",
              examples: [],
            ),
            SubText(
              text:
                  "10. What __________ they __________ (plan) to do tomorrow?",
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. is studying 2. is working 
3. are visiting 4. are watching 
5. am writing 6. is not doing 
7. does not taking 8. are not taking 
9. are you doing 10. are they planning""",
  ),
  Lesson(
    id: 4,
    name: "Volcanoes and the Environment",
    image: "$lessons/inter_less_2.png",
    pages: [
      [
        Paragraph(title: "Lesson 2: Volcanoes and the Environment"),
        SubParagraph(
          title: "Reading: Volcanoes and the Environment",
          subTexts: [
            SubText(
              text:
                  "Volcanoes are natural phenomena that can have both positive and negative effects on the environment. They can affect the climate, the landscapes, and the ecosystems of the Earth. Let's see how volcanoes do that. Volcanoes can affect the climate by changing the temperature and the composition of the atmosphere. When volcanoes erupt, they release large amounts of gas, dust, and ash into the air. Some of these substances can block or reflect the sunlight, making the Earth cooler. For example, the eruption of Mount Pinatubo in 1991 lowered the global temperature by about 0.5°C for a year. Other substances can trap the heat, making the Earth warmer. For example, the eruption of Laki in 1783 increased the greenhouse effect and caused droughts and famines in Europe and Asia. Volcanoes can affect the landscapes by creating or destroying landforms and features. When volcanoes erupt, they can produce lava flows, pyroclastic flows, tephra, and calderas. These can shape the land in different ways. For example, lava flows can create new islands or add land to existing ones. Pyroclastic flows can bury or flatten everything in their path. Tephra can form layers of volcanic rock or soil. Calderas can form large depressions or lakes. Volcanoes can also cause earthquakes, landslides, and tsunamis, which can damage or alter the land. Volcanoes can affect the ecosystems by providing or taking away resources and habitats for living organisms. When volcanoes erupt, they can release nutrients and minerals that can enrich the soil and the water. This can increase the fertility and the biodiversity of the area. For example, volcanic soils are often fertile and support diverse crops and plants. Volcanic waters can also host various aquatic life forms. Volcanoes can also create new habitats or niches for organisms to adapt and evolve. For example, some bacteria and archaea can live in extreme conditions near volcanic vents or hot springs. However, volcanoes can also destroy or harm the existing ecosystems by killing or displacing the organisms, polluting the environment, or altering the climate. For example, volcanic eruptions can cause acid rain, which can damage the plants and animals. Volcanic eruptions can also cause mass extinctions, such as the one that killed the dinosaurs 65 million years ago.",
              examples: [],
            ),
            SubText(
              text: "Vocabulary:",
              examples: [
                "Acid rain: Rain that has a low pH and can harm the environment because of the sulfur and nitrogen compounds that come from volcanic eruptions or human activities.",
                "Climate change: A long-term change in the average weather patterns of the Earth, which can be caused by natural or human factors, such as volcanic eruptions or greenhouse gas emissions.",
                "Fertility: The ability of the soil or the water to support the growth of plants and animals by providing nutrients and minerals.",
                "Biodiversity: The variety and richness of life forms in an ecosystem or on the Earth, which can be affected by natural or human factors, such as volcanic eruptions or habitat loss.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: "Grammar: Modal Verbs for Possibility and Certainty",
          subTexts: [
            SubText(
              text:
                  "We use modal verbs to express different degrees of possibility or certainty about something. Some of the modal verbs we use are may, might, must, and can. Here are some examples of how we use them:",
              examples: [],
            ),
            SubText(
              text: '',
              examples: [
                "We use may and might to express that something is possible, but not certain. For example, \"It may rain tomorrow.\" or \"She might be late.\" ",
                "We use must to express that something is very likely or certain, based on evidence or logic. For example, \"He must be tired. He worked all day.\" or \"There must be a mistake. This can't be true.\" ",
                "We use can to express that something is possible or allowed, based on ability or permission. For example, \"I can speak three languages.\" or \"You can use my phone.\"",
              ],
            ),
          ],
        ),
        SubParagraph(
          title: "Check modal verbs explanation in a material section.",
          subTexts: [],
        ),
      ],
      [
        SubParagraph(
          title:
              "Exercise: Fill in the blanks with the correct modal verb (may, might, must, or can). Provide answers.",
          titleColor: AppTheme.emerald,
          taskPart: true,
          subTexts: [
            SubText(
              text:
                  "1. Volcanoes __________ affect the climate by changing the temperature and the composition of the atmosphere.",
              examples: [],
            ),
            SubText(
              text:
                  "2. The eruption of Mount Pinatubo __________ have lowered the global temperature by about 0.5°C for a year.",
              examples: [],
            ),
            SubText(
              text:
                  "3. Lava flows __________ create new islands or add land to existing ones.",
              examples: [],
            ),
            SubText(
              text:
                  "4. Some bacteria and archaea __________ live in extreme conditions near volcanic vents or hot springs.",
              examples: [],
            ),
            SubText(
              text:
                  "5. Volcanic eruptions __________ cause acid rain, which __________ damage the plants and animals.",
              examples: [],
            ),
            SubText(
              text:
                  "6. Volcanic eruptions __________ also cause mass extinctions, such as the one that killed the dinosaurs 65 million years ago.",
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. can 2. may 
3. can 4. can 
5. can 6. can""",
  ),
  Lesson(
    id: 5,
    name: "Volcanoes in Culture and History",
    image: "$lessons/inter_less_3.png",
    pages: [
      [
        Paragraph(title: "Lesson 3: Volcanoes in Culture and History"),
        SubParagraph(
          title: "Reading: Volcanoes in Culture and History",
          subTexts: [
            SubText(
              text:
                  """Volcanoes have fascinated and terrified people for thousands of years. They have inspired many stories and myths from different cultures around the world. They have also influenced the course of history and the fate of human societies. Check modal verbs explanation in a material section. Some cultures have believed that volcanoes are the homes or the symbols of gods, spirits, or ancestors. They have created legends and rituals to explain, worship, or appease the volcanic forces. For example, the ancient Greeks believed that Hephaestus, the god of fire and metalworking, had his forge under Mount Etna, a volcano in Sicily. The ancient Hawaiians believed that Pele, the goddess of fire and volcanoes, lived in the crater of Kilauea, a volcano on the Big Island of Hawaii. The ancient Romans believed that Vulcan, the god of fire and volcanoes, was the cause of the volcanic eruptions and earthquakes. They named a type of volcano after him: a vulcanian eruption is a violent explosion of gas and ash. Some cultures have also used volcanoes as sources of inspiration, art, and literature. They have told stories and myths about the origins, the meanings, and the effects of volcanoes. For example, the Maori people of New Zealand have a legend about how the volcanoes of the North Island were formed. They say that the volcanoes were once mountains that could move and talk. They competed for the love of a beautiful hill named Pihanga. The strongest and the bravest mountain, named Tongariro, won her heart and became her husband. The other mountains were angry and tried to take her away. Tongariro fought them and threw fire and rocks at them. He made them flee to different places and became the only mountain near Pihanga. He also became the first volcano of the land. Volcanoes have also played an important role in history. They have caused catastrophes that have destroyed or changed civilizations and cultures. They have also created opportunities for new beginnings and developments. For example, one of the most famous volcanic eruptions in history is the eruption of Mount Vesuvius in 79 AD. This eruption buried the Roman cities of Pompeii and Herculaneum under ash and lava. It killed thousands of people and preserved their bodies and buildings for centuries. It also gave us a glimpse of the ancient Roman life and culture. Another example is the eruption of Tambora in 1815. This eruption was the largest and the deadliest in recorded history. It affected the global climate and caused the "year without a summer" in 1816. It led to crop failures, famines, diseases, and social unrest around the world. It also inspired some famous works of literature, such as Frankenstein by Mary Shelley and The Rime of the Ancient Mariner by Samuel Taylor Coleridge.""",
              examples: [],
            ),
            SubText(
              text: "Vocabulary:",
              examples: [
                "Mythology: A collection of stories and beliefs that explain the origin and the nature of the world and the people.",
                "Legend: A story that is based on historical facts but has been exaggerated or changed over time.",
                "Catastrophe: A sudden and terrible event that causes a lot of damage or suffering.",
                "Pompeii: An ancient Roman city that was destroyed by the eruption of Mount Vesuvius in 79 AD.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: "Grammar: Past Perfect Tense",
          subTexts: [
            SubText(
              text:
                  """We use the past perfect tense to talk about actions or situations that were completed before a certain point in the past. For example, "I had finished my homework before I went to bed." or "She had already left when he arrived." To form the past perfect tense, we use the verb had and the past participle of the main verb. For example, "He had studied volcanoes for a long time." or "They had seen the eruption from a distance." However, there are some exceptions and rules to remember when forming the past perfect tense:""",
              examples: [],
            ),
            SubText(
              text: '',
              examples: [
                """Some verbs are irregular and have different past participles. For example, "go" becomes "gone", "do" becomes "done", "see" becomes "seen", etc.""",
                """We often use the past perfect tense with words or phrases that indicate the time order of the past events, such as before, after, already, by, until, etc. For example, "She had lived in Pompeii until the volcano erupted." or "After they had escaped, they looked back and saw the ash cloud.\"""",
                """We also use the past perfect tense with the past simple tense to show the cause and effect of the past events, or the condition and result of the past situations. For example, "He was happy because he had passed the test." or "If they had known about the eruption, they would have left earlier.\"""",
              ],
            ),
          ],
        ),
        SubParagraph(
          title: 'Past perfect tense lifehacks are in the materials section.',
          subTexts: [],
        ),
      ],
      [
        SubParagraph(
          title:
              'Exercise: Fill in the blanks with the correct form of the verb in brackets. The verb should be in the past perfect tense.',
          taskPart: true,
          titleColor: AppTheme.emerald,
          subTexts: [
            SubText(
              text:
                  "1. The ancient Greeks __________ (believe) that Hephaestus __________ (have) his forge under Mount Etna.",
              examples: [],
            ),
            SubText(
              text:
                  "1. The ancient Greeks __________ (believe) that Hephaestus __________ (have) his forge under Mount Etna.",
              examples: [],
            ),
            SubText(
              text:
                  "2. The Maori people __________ (say) that the volcanoes of the North Island __________ (be) once mountains that __________ (can) move and talk.",
              examples: [],
            ),
            SubText(
              text:
                  "3. The eruption of Mount Vesuvius __________ (bury) the Roman cities of Pompeii and Herculaneum under ash and lava.",
              examples: [],
            ),
            SubText(
              text:
                  "4. The eruption of Tambora __________ (affect) the global climate and __________ (cause) the \"year without a summer\" in 1816.",
              examples: [],
            ),
            SubText(
              text:
                  "5. She __________ (not see) a volcano before she __________ (visit) Hawaii.",
              examples: [],
            ),
            SubText(
              text:
                  "6. He __________ (not hear) the explosion because he __________ (wear) headphones.",
              examples: [],
            ),
            SubText(
              text:
                  "7. They __________ (already leave) when the lava __________ (reach) their house.",
              examples: [],
            ),
            SubText(
              text:
                  "8. If they __________ (listen) to the warning, they __________ (not stay) near the volcano.",
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. had believed, had had 
2. had said, had been, 
had been able 
3. had buried 
4. had affected, had caused 
5. had not seen, visited 
6. had not heard, been wearing 
7. had already left, reached 
8. had listened, 
would not have stayed""",
  ),
];
