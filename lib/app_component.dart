import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'heroes_component.dart';
import 'hero_service.dart';
import 'dashboard_component.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService, ROUTER_PROVIDERS]
)

@RouteConfig( const [
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent),
  const Route(path: '/dashboard', name: 'Dashboard', component: DashboardComponent, useAsDefault: true)
  ])

class AppComponent {
  String title = "Tour of Heroes";
}