import 'package:recipo/models/meal.dart';

import './models/category.dart';
import 'package:flutter/material.dart';

const DUMMY_DATA = const [
  Category("c1", "Itaian", Colors.lightGreen),
  Category("c2", "Indian", Colors.blue),
  Category("c3", "Arabic", Colors.indigo),
  Category("c4", "Mexican", Colors.orangeAccent),
  Category("c5", "Fast Food", Colors.red),
  Category("c6", "Chicken", Colors.yellow),
  Category("c7", "Itaian", Colors.lightGreen),
  Category("c8", "Indian", Colors.blue),
  Category("c9", "Arabic", Colors.indigo),
  Category("c10", "Mexican", Colors.orangeAccent),
  Category("c11", "Fast Food", Colors.red),
  Category("c12", "Chicken", Colors.yellow),
];

const MEALS_DATA = const [
  Meal(
      id: "m1",
      categories: ["c1", "c2", "c4"],
      title: "Biryani",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR97-QhiLJaQgaXJ7adg4v0kGIrXGlqBHMUPw&usqp=CAU",
      ingredients: ["ingred", "ingred", "ingred", "ingred"],
      steps: ["1", "2", "sdz", "adsc"],
      duration: 30,
      complexity: Complexity.Hard,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegeterian: false,
      isVegan: false),
  Meal(
      id: "m2",
      categories: ["c3", "c4", "c5"],
      title: "Pizza",
      imageUrl:
          "data:image/jpeg;base64,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",
      ingredients: ["ingred", "ingred", "ingred", "ingred"],
      steps: ["1", "2", "sdz", "adsc"],
      duration: 30,
      complexity: Complexity.Simple,
      affordability: Affordability.Affordable,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegeterian: false,
      isVegan: false),
  Meal(
      id: "m3",
      categories: ["c1", "c2", "c4"],
      title: "Burger",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR97-QhiLJaQgaXJ7adg4v0kGIrXGlqBHMUPw&usqp=CAU",
      ingredients: ["ingred", "ingred", "ingred", "ingred"],
      steps: ["1", "2", "sdz", "adsc"],
      duration: 30,
      complexity: Complexity.Hard,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegeterian: false,
      isVegan: false),
  Meal(
      id: "m4",
      categories: ["c1", "c2", "c4"],
      title: "Pulao",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR97-QhiLJaQgaXJ7adg4v0kGIrXGlqBHMUPw&usqp=CAU",
      ingredients: ["ingred", "ingred", "ingred", "ingred"],
      steps: ["1", "2", "sdz", "adsc"],
      duration: 30,
      complexity: Complexity.Hard,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegeterian: false,
      isVegan: false),
  Meal(
      id: "m5",
      categories: ["c1", "c2", "c4"],
      title: "Korma",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR97-QhiLJaQgaXJ7adg4v0kGIrXGlqBHMUPw&usqp=CAU",
      ingredients: ["ingred", "ingred", "ingred", "ingred"],
      steps: ["1", "2", "sdz", "adsc"],
      duration: 30,
      complexity: Complexity.Hard,
      affordability: Affordability.Pricey,
      isGlutenFree: false,
      isLactoseFree: false,
      isVegeterian: false,
      isVegan: false),
];
