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
      categories: ['c1', 'c2', 'c3', 'c4', "c5"],
      title: "Pizza",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR97-QhiLJaQgaXJ7adg4v0kGIrXGlqBHMUPw&usqp=CAU",
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
