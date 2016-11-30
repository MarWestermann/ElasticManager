// Copyright (c) 2016, Marco Westermann. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'hero.dart';
import 'hero_detail_component.dart';
import 'hero_service.dart';
import 'dart:async';

@Component(
    selector: 'my-heroes',
    styleUrls: const ['heroes_component.css'],
    templateUrl: 'heroes_component.html',
    directives: const [HeroDetailComponent]
)


class HeroesComponent implements OnInit{

  final HeroService _heroService;
  Hero selectedHero;
  List<Hero> heroes;

  HeroesComponent(this._heroService);

  Future<Null> getHeroes() async {
    heroes = await _heroService.getHeroesSlowly();
  }


  onSelect(Hero hero) {
    selectedHero = hero;
  }
  @override
  ngOnInit() {
    getHeroes();
  }
}
