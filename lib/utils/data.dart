import 'package:animation/model/data_model.dart';
import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';

List<DataModel> data = [
  DataModel(
    id: "1a",
    image: 'asset/beach.jpg',
    name: "beach",
    description:
        LoremIpsumGenerator.generate(paragraphs: 3, wordsPerParagraph: 12),
  ),
  DataModel(
    id: "2a",
    image: 'asset/city.jpg',
    name: "city",
    description:
        LoremIpsumGenerator.generate(paragraphs: 3, wordsPerParagraph: 12),
  ),
  DataModel(
    id: "3a",
    image: 'asset/ski.jpg',
    name: "ski",
    description:
        LoremIpsumGenerator.generate(paragraphs: 3, wordsPerParagraph: 12),
  ),
  DataModel(
    id: "4a",
    image: 'asset/space.jpg',
    name: "space",
    description:
        LoremIpsumGenerator.generate(paragraphs: 3, wordsPerParagraph: 12),
  ),
];
