import 'package:volcano_eng/models/models.dart';

const materials = 'assets/png/materials';

final List<StudyMaterial> studyMaterials = [
  const StudyMaterial(
    id: 0,
    asset: 'assets/png/elem_materials.png',
    title: 'Elementary Materials',
    complexity: 1,
    materials: [
      "$materials/material1.png",
      "$materials/material2.png",
      "$materials/material3.png",
      "$materials/material4.png",
    ],
  ),
  const StudyMaterial(
    id: 1,
    asset: 'assets/png/intermed_materials.png',
    title: 'Intermediate Materials',
    complexity: 2,
    materials: [
      "$materials/material5.png",
      "$materials/material6.png",
      "$materials/material7.png",
    ],
  ),
  const StudyMaterial(
    id: 2,
    asset: 'assets/png/adv_materials.png',
    title: 'Advanced Materials',
    complexity: 3,
    isPremium: true,
    materials: [
      "$materials/material8.png",
      "$materials/material9.png",
      "$materials/material10.png",
      "$materials/material11.png",
      "$materials/material12.png",
      "$materials/material13.png",
      "$materials/material14.png",
      "$materials/material15.png",
      "$materials/material16.png",
      "$materials/material17.png",
      "$materials/material18.png",
      "$materials/material19.png",
    ],
  ),
];
