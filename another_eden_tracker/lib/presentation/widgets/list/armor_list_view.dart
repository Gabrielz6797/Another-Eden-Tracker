import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class ArmorListView extends StatefulWidget {
  const ArmorListView({super.key});

  @override
  State<ArmorListView> createState() => _ArmorListViewState();
}

class _ArmorListViewState extends State<ArmorListView> {
  @override
  void initState() {
    super.initState();
    context.read<ArmorCubit>().getArmors();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final armors = context.watch<ArmorCubit>().state.armors;

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
                'Armor list',
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
            itemCount: armors.length,
            itemBuilder: (context, index) {
              return CustomCard(
                title: '${armors[index].name}',
                elevation: 2,
                onPressedDelete: () {
                  context
                      .read<ArmorCubit>()
                      .deleteArmor(armors[index].id!)
                      .then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<ArmorCubit>().getArmors(),
                        ),
                      );
                },
                onPressedEdit: () {
                  context.push('/modify-armor/${armors[index].id}').then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<ArmorCubit>().getArmors(),
                        ),
                      );
                },
                onPressedView: () {
                  context.push('/armor/${armors[index].id}');
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
            context.push('/add-armor').then(
                  (value) => Future.delayed(
                    const Duration(milliseconds: 500),
                    () => context.read<ArmorCubit>().getArmors(),
                  ),
                );
          },
          icon: const Icon(Icons.add),
          label: const Text('Add armor'),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
