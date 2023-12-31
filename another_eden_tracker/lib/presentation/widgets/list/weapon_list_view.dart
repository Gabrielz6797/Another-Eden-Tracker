import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class WeaponListView extends StatefulWidget {
  const WeaponListView({super.key});

  @override
  State<WeaponListView> createState() => _WeaponListViewState();
}

class _WeaponListViewState extends State<WeaponListView> {
  @override
  void initState() {
    super.initState();
    context.read<WeaponCubit>().getWeapons();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final weapons = context.watch<WeaponCubit>().state.weapons;

    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text(
                'Weapon list',
                style: TextStyle(
                  fontSize: 22,
                  color: colors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: weapons.length,
            itemBuilder: (context, index) {
              return CustomCard(
                title: '${weapons[index].name}',
                elevation: 2,
                onPressedDelete: () {
                  context
                      .read<WeaponCubit>()
                      .deleteWeapon(weapons[index].id!)
                      .then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<WeaponCubit>().getWeapons(),
                        ),
                      );
                },
                onPressedEdit: () {
                  context.push('/modify-weapon/${weapons[index].id}').then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<WeaponCubit>().getWeapons(),
                        ),
                      );
                },
                onPressedView: () {
                  context.push('/weapon/${weapons[index].id}');
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        FilledButton.icon(
          onPressed: () {
            context.push('/add-weapon').then(
                  (value) => Future.delayed(
                    const Duration(milliseconds: 500),
                    () => context.read<WeaponCubit>().getWeapons(),
                  ),
                );
          },
          icon: const Icon(Icons.add),
          label: const Text('Add weapon'),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
