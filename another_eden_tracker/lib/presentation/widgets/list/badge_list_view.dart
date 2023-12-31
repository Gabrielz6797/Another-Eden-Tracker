import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class BadgeListView extends StatefulWidget {
  const BadgeListView({super.key});

  @override
  State<BadgeListView> createState() => _BadgeListViewState();
}

class _BadgeListViewState extends State<BadgeListView> {
  @override
  void initState() {
    super.initState();
    context.read<BadgeCubit>().getBadges();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final badges = context.watch<BadgeCubit>().state.badges;

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
                'Badge list',
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
            itemCount: badges.length,
            itemBuilder: (context, index) {
              return CustomCard(
                title: '${badges[index].name}',
                elevation: 2,
                onPressedDelete: () {
                  context
                      .read<BadgeCubit>()
                      .deleteBadge(badges[index].id!)
                      .then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<BadgeCubit>().getBadges(),
                        ),
                      );
                },
                onPressedEdit: () {
                  context.push('/modify-badge/${badges[index].id}').then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<BadgeCubit>().getBadges(),
                        ),
                      );
                },
                onPressedView: () {
                  context.push('/badge/${badges[index].id}');
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
            context.push('/add-badge').then(
                  (value) => Future.delayed(
                    const Duration(milliseconds: 500),
                    () => context.read<BadgeCubit>().getBadges(),
                  ),
                );
          },
          icon: const Icon(Icons.add),
          label: const Text('Add badge'),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
