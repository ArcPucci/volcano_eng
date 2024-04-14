import 'package:volcano_eng/models/models.dart';
import 'package:volcano_eng/repositories/repositories.dart';
import 'package:volcano_eng/utils/utils.dart';

final List<Lesson> advancedLessons = [
  Lesson(
    id: 6,
    name: "Predicting Volcanic Eruptions",
    image: "$lessons/adv_less_1.png",
    pages: [
      [
        Paragraph(title: "Lesson 1: Predicting Volcanic Eruptions"),
        SubParagraph(
          title: "Reading: Predicting Volcanic Eruptions",
          subTexts: [
            SubText(
              text:
                  """Predicting volcanic eruptions is one of the main goals and challenges of volcanology. Volcanic eruptions can have devastating effects on the environment and human society, such as destroying land, buildings, and lives, polluting the air and water, and disrupting the climate and the economy. Therefore, being able to forecast when and how a volcano will erupt can help to reduce the risks and impacts of volcanic hazards, and to prepare and protect the people and the places that are threatened by volcanoes. However, predicting volcanic eruptions is not easy or accurate. Volcanoes are complex and dynamic systems that behave in different and unpredictable ways. There are many factors and variables that influence the eruption process, such as the type, composition, and amount of magma, the pressure and temperature of the magma chamber, the structure and strength of the volcanic edifice, the tectonic setting and the seismic activity of the region, and the interaction of the volcano with the atmosphere, the hydrosphere, and the biosphere. Therefore, volcanologists need to use various methods and tools to monitor and analyze the volcanoes, and to look for the signs that indicate a possible eruption.
Some of the signs that precede an eruption are:""",
              examples: [
                "Changes in the shape or the size of the volcano, such as swelling, tilting, or cracking. These changes are caused by the movement or the accumulation of magma and gas inside the volcano. They can be measured by using instruments such as GPS, tiltmeters, or lasers.",
                "Changes in the gas emissions or the temperature of the volcano, such as increasing, decreasing, or varying the amount or the composition of the gas, or rising or falling the temperature of the surface or the vents. These changes are caused by the degassing or the heating of the magma and the rocks inside the volcano. They can be measured by using instruments such as spectrometers, thermometers, or cameras.",
                "Changes in the seismic activity or the sound of the volcano, such as increasing, decreasing, or varying the frequency, the intensity, or the type of the earthquakes or the vibrations, or producing or stopping the noise or the rumbling of the volcano. These changes are caused by the breaking or the shifting of the rocks or the magma inside the volcano. They can be measured by using instruments such as seismographs, microphones, or infrasound detectors.",
              ],
            ),
            SubText(
              text:
                  "However, these signs are not always reliable or consistent. Sometimes, they can occur without leading to an eruption, or they can be too subtle or too late to be detected or interpreted. Sometimes, they can vary depending on the volcano, the eruption, or the situation. Sometimes, they can be affected or obscured by other factors, such as the weather, the vegetation, or the human activity. Therefore, volcanologists need to use multiple sources of information and evidence, and to combine different methods and techniques, such as fieldwork, laboratory, remote sensing, modeling, and historical records, to improve their understanding and prediction of volcanic eruptions.",
              examples: [],
            ),
          ],
        ),
        SubParagraph(
          title: "Vocabulary:",
          subTexts: [
            SubText(
              text: '',
              examples: [
                "Precursor: A sign or a symptom that indicates or warns of a future event or condition.",
                "Magma chamber: A large underground reservoir that contains magma and gas under high pressure and temperature.",
                "Seismic activity: The occurrence and the measurement of the earthquakes and the vibrations of the Earth.",
                "Evacuation: The process of moving people or animals away from a dangerous or harmful place to a safer place.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: "Grammar: Future Perfect and Future Continuous Tenses",
          subTexts: [
            SubText(
              text:
                  """We use the future perfect tense to talk about actions or situations that will be completed before a certain point in the future. For example, "I will have finished my homework by 10 p.m." or "She will have lived in this house for 20 years next month." We use the future continuous tense to talk about actions or situations that will be happening at a specific time or over a period in the future. For example, "I will be sleeping at 10 p.m." or "She will be working on her project all weekend." To form the future perfect tense, we use the modal verb will and the verb have and the past participle of the main verb. For example, "He will have studied volcanoes for a long time." or "They will have seen the eruption from a distance." To form the future continuous tense, we use the modal verb will and the verb be and the -ing form of the main verb. For example, "He will be studying volcanoes for a long time." or "They will be watching the eruption from a distance." However, there are some exceptions and rules to remember when forming the future perfect and the future continuous tenses:""",
              examples: [],
            ),
            SubText(
              text: '',
              examples: [
                'Some verbs are irregular and have different past participles. For example, "go" becomes "gone", "do" becomes "done", "see" becomes "seen", etc. ',
                'We often use the future perfect and the future continuous tenses with words or phrases that indicate the time of the future actions or situations, such as by, at, in, on, for, until, etc. For example, "By next year, he will have visited 10 volcanoes." or "At this time tomorrow, they will be flying over the volcano."',
                'We also use the future perfect and the future continuous tenses to show the contrast or the connection between the future actions or situations, or to express the expectation or the assumption of the future actions or situations. For example, "When I arrive, he will have left." or "While you are studying, I will be cooking."',
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title:
              'Exercise: Fill in the blanks with the correct form of the verb in brackets. The verb should be in the future perfect or the future continuous tense.',
          titleColor: AppTheme.emerald,
          taskPart: true,
          subTexts: [
            SubText(
              text:
                  '1. Volcanologists __________ (use) various methods and tools to monitor and analyze the volcanoes, and to look for the signs that indicate a possible eruption.',
              examples: [],
            ),
            SubText(
              text:
                  '2. By the end of this year, they __________ (collect) enough data and samples from the volcano.',
              examples: [],
            ),
            SubText(
              text:
                  '3. Next week, they __________ (analyze) the data and samples in the laboratory.',
              examples: [],
            ),
            SubText(
              text:
                  '4. At 9 a.m. tomorrow, they __________ (present) their findings and predictions to the authorities.',
              examples: [],
            ),
            SubText(
              text:
                  '5. If the volcano erupts, they __________ (help) with the evacuation and the rescue operations.',
              examples: [],
            ),
            SubText(
              text:
                  '6. By the time the eruption is over, they __________ (learn) a lot about the volcano and its behavior.',
              examples: [],
            ),
            SubText(
              text:
                  '7. While the volcano is erupting, they __________ (record) and __________ (observe) the eruption process and phenomena.',
              examples: [],
            ),
            SubText(
              text:
                  '8. After the eruption, they __________ (compare) their predictions with the actual outcomes.',
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. Will be using 2. will have collected 
3. will be analyxing 4. will be presenting 5. will be helping 
6. will have learned 7. will be recording, will be observing. 
8. will be comparing""",
  ),
  Lesson(
    id: 7,
    name: "Volcanoes and Climate Change",
    image: "$lessons/adv_less_2.png",
    pages: [
      [
        Paragraph(title: 'Lesson 2: Volcanoes and Climate Change'),
        SubParagraph(
          title: 'Reading: Volcanoes and Climate Change',
          subTexts: [
            SubText(
              text:
                  """Climate change is a long-term change in the average weather patterns of the Earth, which can be caused by natural or human factors, such as volcanic eruptions or greenhouse gas emissions. Volcanic eruptions can have both short-term and long-term effects on the Earth's climate, depending on the type, size, and frequency of the eruptions, and the location, altitude, and direction of the volcanic plumes. Volcanic eruptions can affect the climate by injecting large amounts of gas, dust, and ash into the atmosphere. Some of these substances can block or reflect the sunlight, making the Earth cooler. Others can trap the heat, making the Earth warmer. The most important gas that affects the climate is sulfur dioxide (SO2), which can react with water and oxygen to form sulfuric acid aerosols. These aerosols can stay in the stratosphere, the second layer of the atmosphere, for months or years, and can spread around the globe by the wind. They can reduce the amount of solar radiation that reaches the Earth's surface, causing global cooling and changing the precipitation patterns. They can also affect the chemistry and the circulation of the stratosphere, depleting the ozone layer and altering the jet stream. The cooling effect of volcanic eruptions can be significant and lasting, especially if the eruptions are large, explosive, and frequent, and if they occur in the tropics or the high latitudes. For example, the eruption of Tambora in 1815, the largest and the deadliest in recorded history, lowered the global temperature by about 0.5°C for a year, and caused the "year without a summer" in 1816, leading to crop failures, famines, diseases, and social unrest around the world. The eruption of Pinatubo in 1991, the second largest of the 20th century, lowered the global temperature by about 0.4°C for two years, and affected the El Niño and La Niña cycles, causing droughts and floods in different regions. The cooling effect of volcanic eruptions can also trigger or enhance other natural phenomena, such as ice ages, glacial advances, or volcanic winters, which can have further impacts on the climate and the environment. However, volcanic eruptions can also have a warming effect on the climate, depending on the type and the location of the eruptions, and the interaction of the volcanic gases with other substances in the atmosphere. For example, some volcanic eruptions can release large amounts of carbon dioxide (CO2), methane (CH4), or water vapor (H2O), which are greenhouse gases that can absorb and re-emit the infrared radiation from the Earth, enhancing the greenhouse effect and increasing the global temperature. This warming effect can be more noticeable and persistent for eruptions that occur on the ocean floor or on the continents, where the volcanic gases can mix with the lower layer of the atmosphere, the troposphere, and can stay there for longer periods. The warming effect can also be amplified by the feedback mechanisms, such as the melting of ice and snow, which can reduce the albedo, or the reflectivity, of the Earth's surface, and can release more greenhouse gases from the frozen soils or the oceans. The warming effect of volcanic eruptions can be less significant and shorter than the cooling effect, especially if the eruptions are small, effusive, and infrequent, and if they occur in the midlatitudes or the equatorial regions. However, the warming effect can still have important implications for the climate and the environment, especially in the long term and in the geological scale. For example, some studies have suggested that the massive and prolonged volcanic eruptions that occurred about 250 million years ago, known as the Siberian Traps, increased the atmospheric CO2 concentration by about 2000 ppm, and raised the global temperature by about 6°C, contributing to the Permian-Triassic extinction event, the largest mass extinction in the history of life on Earth, which wiped out about 95% of the species. Another example is the ongoing volcanic activity in Iceland, which has been releasing about 21 million tons of CO2 per year, and has been offsetting the carbon sequestration efforts of the country, making it harder to achieve the goals of the Paris Agreement on climate change.""",
              examples: [],
            ),
          ],
        ),
        SubParagraph(
          title: 'Vocabulary:',
          subTexts: [
            SubText(
              text: '',
              examples: [
                "Sulfur dioxide: A colorless and pungent gas that is produced by burning fossil fuels or by volcanic eruptions. It can react with water and oxygen to form sulfuric acid, which can cause acid rain or aerosols.",
                "Global cooling: A decrease in the average temperature of the Earth's surface and atmosphere, which can be caused by natural or human factors, such as volcanic eruptions or aerosol emissions.",
                "Volcanic winter: A period of cold and dry weather that can last for months or years, caused by the reduction of the solar radiation due to the volcanic aerosols in the stratosphere.",
                "Greenhouse gas: A gas that can absorb and re-emit the infrared radiation from the Earth, enhancing the greenhouse effect and increasing the global temperature. Some examples are carbon dioxide, methane, and water vapor.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Grammar: Conditionals',
          subTexts: [
            SubText(
              text:
                  'We use conditionals to talk about hypothetical situations and their consequences. There are different types of conditionals, depending on the time and the probability of the situations. Some of the types of conditionals are:',
              examples: [],
            ),
            SubText(
              text: '',
              examples: [
                'Zero conditional: We use the zero conditional to talk about general truths or facts that are always true or possible. We use the present simple tense in both the if-clause and the main clause. For example, "If water boils, it turns into steam." or "If you touch lava, you get burned."',
                'First conditional: We use the first conditional to talk about real or possible situations and their consequences in the present or the future. We use the present simple tense in the if-clause and the modal verb will and the base form of the main verb in the main clause. For example, "If the volcano erupts, we will evacuate." or "If you study hard, you will pass the test."',
                'Second conditional: We use the second conditional to talk about unreal or improbable situations and their consequences in the present or the future. We use the past simple tense in the if-clause and the modal verb would and the base form of the main verb in the main clause. For example, "If I were a volcanologist, I would study volcanoes." or "If you won the lottery, what would you do?"',
                'Third conditional: We use the third conditional to talk about unreal or impossible situations and their consequences in the past. We use the past perfect tense in the if-clause and the modal verb would and the verb have and the past participle of the main verb in the main clause. For example, "If they had known about the eruption, they would have left earlier." or "If you had studied harder, you would have passed the test."',
                'Mixed conditional: We use the mixed conditional to talk about unreal or impossible situations in the past and their consequences in the present or the future, or vice versa. We use the past perfect tense in the if-clause and the modal verb would and the base form of the main verb in the main clause, or the present simple tense in the if-clause and the modal verb would and the verb have and the past participle of the main verb in the main clause. For example, "If they had listened to the warning, they would be safe now." or "If the volcano were not active, it would not have erupted."',
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title:
              'Exercise: Fill in the blanks with the correct form of the verb in brackets. The verb should be in the appropriate conditional tense.',
          taskPart: true,
          subTexts: [
            SubText(
              text:
                  '1. If the volcano __________ (erupt) tomorrow, what __________ you __________ (do)?',
              examples: [],
            ),
            SubText(
              text:
                  '2. If the eruption __________ (be) larger, it __________ (have) a bigger impact on the climate.',
              examples: [],
            ),
            SubText(
              text:
                  '3. If they __________ (see) the signs of the eruption, they __________ (can) prepare and protect themselves.',
              examples: [],
            ),
            SubText(
              text:
                  '4. If you __________ (want) to become a volcanologist, you __________ (need) to study geology and physics.',
              examples: [],
            ),
            SubText(
              text:
                  '5. If the volcanic gases __________ (mix) with the rain, they __________ (form) acid rain.',
              examples: [],
            ),
            SubText(
              text:
                  '6. If the eruption __________ (occur) in the tropics, it __________ (affect) the whole world.',
              examples: [],
            ),
            SubText(
              text:
                  '7. If I __________ (have) more time, I __________ (visit) more volcanoes.',
              examples: [],
            ),
            SubText(
              text:
                  '8. If the ash cloud __________ (block) the sunlight, the temperature __________ (drop).',
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. will you do 2. had been, 
would have 
3. had seen, could have 
4. want, need 5. mix, form 
6. occured, would affect 
7. had, would visit 
8. blocks, will drop""",
  ),
  Lesson(
    id: 8,
    name: "Volcanic Hazards and Management",
    image: "$lessons/adv_less_3.png",
    pages: [
      [
        Paragraph(title: 'Lesson 3: Volcanic Hazards and Management'),
        SubParagraph(
          title: 'Reading: Volcanic Hazards and Management',
          subTexts: [
            SubText(
              text:
                  'Volcanic eruptions can pose various hazards to the environment and human society, such as lava flows, pyroclastic flows, ash fall, gas emissions, landslides, tsunamis, and climate change. These hazards can cause damage, injury, or death to people, animals, and plants, as well as disruption, loss, or contamination of infrastructure, resources, and services. Therefore, it is important to manage the risks associated with volcanic eruptions, and to reduce the vulnerability and increase the resilience of the affected communities. Volcanic hazards and management can be divided into four phases: prevention, preparedness, response, and recovery. Each phase involves different strategies and actions, such as:',
              examples: [],
            ),
            SubText(
              text: '',
              examples: [
                "Prevention: This phase aims to prevent or minimize the occurrence or the impact of volcanic hazards, by using scientific knowledge, technology, and policy. Some of the prevention strategies are: monitoring and predicting volcanic activity, assessing and mapping the volcanic hazards and risks, establishing and enforcing the land use and building regulations, and implementing the mitigation measures, such as diverting the lava flows, reinforcing the structures, or removing the ash deposits.",
                "Preparedness: This phase aims to prepare and equip the communities for the potential or imminent volcanic hazards, by using education, communication, and planning. Some of the preparedness strategies are: raising the awareness and the knowledge of the volcanic hazards and risks, developing and disseminating the early warning systems and the alert levels, creating and testing the emergency plans and the evacuation routes, and providing and storing the emergency supplies and equipment. ",
                "Response: This phase aims to respond and cope with the ongoing or the immediate volcanic hazards, by using coordination, cooperation, and assistance. Some of the response strategies are: activating and implementing the emergency plans and the evacuation procedures, mobilizing and deploying the emergency personnel and resources, providing and distributing the humanitarian aid and the medical care, and ensuring the safety and the security of the affected people and areas.",
                "Recovery: This phase aims to recover and rebuild from the aftermath of the volcanic hazards, by using assessment, evaluation, and reconstruction. Some of the recovery strategies are: assessing and evaluating the damage and the impact of the volcanic hazards, restoring and improving the infrastructure, resources, and services, supporting and empowering the affected people and communities, and learning and improving from the experience and the feedback.",
              ],
            ),
            SubText(
              text:
                  'Volcanic hazards and management require the collaboration and the participation of various stakeholders, such as the scientists, the authorities, the media, the organizations, and the public. They also require the integration and the adaptation of the strategies and the actions, according to the context and the situation of each volcanic eruption.',
              examples: [],
            ),
          ],
        ),
        SubParagraph(
          title: 'Vocabulary:',
          subTexts: [
            SubText(
              text: '',
              examples: [
                "Risk assessment: The process of identifying, analyzing, and evaluating the volcanic hazards and risks, and their potential consequences and probabilities.",
                "Disaster preparedness: The process of planning, organizing, and training for the possible or the imminent volcanic hazards, and their prevention and response.",
                "Mitigation strategies: The actions or measures that are taken to reduce or eliminate the volcanic hazards and risks, or their negative effects.",
                "Resilience: The ability or capacity of the communities to withstand, recover, and adapt from the volcanic hazards and their impacts.",
              ],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title: 'Grammar: Passive Voice',
          subTexts: [
            SubText(
              text:
                  'We use the passive voice to describe processes and actions where the doer of the action is unknown, unimportant, or obvious from the context. We use the passive voice to focus on the action or the result, rather than the doer. We form the passive voice by using the verb to be and the past participle of the main verb. For example, "The volcano was monitored by the scientists." or "The ash was removed by the workers."',
              examples: [],
            ),
          ],
        ),
      ],
      [
        SubParagraph(
          title:
              'Exercise: Rewrite the sentences in the passive voice. Use the agent (the doer of the action) only if necessary.',
          taskPart: true,
          fillGaps: false,
          subTexts: [
            SubText(
              text: '1. The authorities evacuated the people from the danger zone.',
              examples: [],
            ),
            SubText(
              text: '2. The media reported the eruption and the alert level.',
              examples: [],
            ),
            SubText(
              text: '3. The scientists collected and analyzed the data and the samples from the volcano.',
              examples: [],
            ),
            SubText(
              text: '4. The organizations provided and distributed the food and the water to the refugees.',
              examples: [],
            ),
            SubText(
              text: '5. The workers restored and improved the infrastructure and the services.',
              examples: [],
            ),
          ],
        ),
      ],
    ],
    answers: """1. The people were evacuated from the danger zone by the authorities. 
2. The eruption and the alert level were reported by the media. 
3. The data and the samples from the volcano were collected and analyzed by the scientists. 
4. The food and the water were provided and distributed to the refugees by the organizations. 
5. The infrastructure and the services were restored and improved by the workers""",
  ),
];
