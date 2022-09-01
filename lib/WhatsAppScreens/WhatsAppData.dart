
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget labels(String label, {Color color= Colors.white, double size = 14.0}) => Text(
  label.toUpperCase(),
  style: TextStyle(
    fontWeight: FontWeight.bold,
    color: color,
    fontSize: size,
  ),
);


List<Map> data=[{
  'image':'abc.jpg',
  'title':'Real Estate Advetiser',
  'subtitle':'Bhavani trades',
  'date':'yesterday'

},
  {
    'image':'food.jpeg',
    'title':'Foodies',
    'subtitle':'Whats do you want to eat',
    'date':'22/1/2022'

  },
  {
    'image':'img.png',
    'title':'Think Quotient software pvt ',
    'subtitle':'Hello EveryOne ',
    'date':'9.10Am'

  },
  {
    'image':'img_1.png',
    'title':'Shaurya technosoft',
    'subtitle':'It Company',
    'date':'yesterday'

  },
  {
    'image':'abc.jpg',
    'title':'Real Estate Advetiser',
    'subtitle':'Bhavani trades',
    'date':'yesterday'

  },
  {
    'image':'abc.jpg',
    'title':'Tanna Associates Mumbai',
    'subtitle':'Mumbai',
    'date':'10/3/2020'

  },
  {
    'image':'abc.jpg',
    'title':'Real Estate Advetiser',
    'subtitle':'Bhavani trades',
    'date':'yesterday'

  },
  {
    'image':'food.jpg',
    'title':'Foodies',
    'subtitle':'Whats do you want to eat',
    'date':'22/1/2022'

  },
  {
    'image':'abc.jpg',
    'title':'Think Quotient software pvt ',
    'subtitle':'Hello EveryOne ',
    'date':'9.10Am'

  },
  {
    'image':'abc.jpg',
    'title':'Shaurya technosoft',
    'subtitle':'It Company',
    'date':'yesterday'

  },
  {
    'image':'abc.jpg',
    'title':'Real Estate Advetiser',
    'subtitle':'Bhavani trades',
    'date':'yesterday'

  },
  {
    'image':'abc.jpg',
    'title':'Tanna Associates Mumbai',
    'subtitle':'Mumbai',
    'date':'10/3/2020'

  }];