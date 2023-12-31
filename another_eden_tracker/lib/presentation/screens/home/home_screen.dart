import 'package:flutter/material.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeScreen();
  }
}

class _HomeScreen extends StatefulWidget {
  const _HomeScreen();

  @override
  State<_HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<_HomeScreen> {
  int _selectedIndex = 1;
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Eden Tracker'),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          CharacterListView(),
          GrastaListView(),
          WeaponListView(),
          ArmorListView(),
          BadgeListView(),
        ],
        onPageChanged: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: colors.primary,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Characters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school_rounded),
            label: 'Grasta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Weapons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Armors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: 'Badges',
          ),
        ],
        onTap: (value) => _pageController.jumpToPage(value),
      ),
    );
  }
}
