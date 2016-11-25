// Copyright (c) 2016, Marco Westermann. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'hero.dart';
import 'hero_detail_component.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: const [HeroDetailComponent]
)


class AppComponent {
  String title = "Tour of Heroes";
  Hero selectedHero;
  final List<Hero> heroes = mockHeroes;

  onSelect(Hero hero) {
    selectedHero = hero;
  }
}



final List<Hero> mockHeroes = [
  new Hero(11, 'Mr. Nice'),
  new Hero(12, 'Narco'),
  new Hero(13, 'Bombasto'),
  new Hero(14, 'Celeritas'),
  new Hero(15, 'Magneta'),
  new Hero(16, 'RubberMan'),
  new Hero(17, 'Dynama'),
  new Hero(18, 'Dr IQ'),
  new Hero(19, 'Magma'),
  new Hero(20, 'Tornado')
];