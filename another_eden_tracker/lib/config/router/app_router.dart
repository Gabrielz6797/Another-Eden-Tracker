import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/presentation/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/add-armor',
      builder: (context, state) => const ArmorAddModifyScreen(),
    ),
    GoRoute(
      path: '/modify-armor/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return ArmorAddModifyScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/armor/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return ArmorDetailsScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/add-badge',
      builder: (context, state) => const BadgeAddModifyScreen(),
    ),
    GoRoute(
      path: '/modify-badge/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return BadgeAddModifyScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/badge/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return BadgeDetailsScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/add-character',
      builder: (context, state) => const CharacterAddModifyScreen(),
    ),
    GoRoute(
      path: '/modify-character/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return CharacterAddModifyScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/character/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return CharacterDetailsScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/add-grasta',
      builder: (context, state) => const GrastaAddModifyScreen(),
    ),
    GoRoute(
      path: '/modify-grasta/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return GrastaAddModifyScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/grasta/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return GrastaDetailsScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/add-weapon',
      builder: (context, state) => const WeaponAddModifyScreen(),
    ),
    GoRoute(
      path: '/modify-weapon/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return WeaponAddModifyScreen(
          id: id,
        );
      },
    ),
    GoRoute(
      path: '/weapon/:id',
      builder: (context, state) {
        int id = int.parse(state.pathParameters['id']!);
        return WeaponDetailsScreen(
          id: id,
        );
      },
    ),
  ],
);
