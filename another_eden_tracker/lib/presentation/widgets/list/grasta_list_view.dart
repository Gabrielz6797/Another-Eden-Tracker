import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class GrastaListView extends StatefulWidget {
  const GrastaListView({super.key});

  @override
  State<GrastaListView> createState() => _GrastaListViewState();
}

class _GrastaListViewState extends State<GrastaListView> {
  @override
  void initState() {
    super.initState();
    context.read<GrastaCubit>().getGrastas();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final grastas = context.watch<GrastaCubit>().state.grastas;

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
                'Grasta list',
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
            itemCount: grastas.length,
            itemBuilder: (context, index) {
              return CustomCard(
                title: '${grastas[index].name}',
                elevation: 2,
                onPressedDelete: () {
                  context
                      .read<GrastaCubit>()
                      .deleteGrasta(grastas[index].id!)
                      .then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<GrastaCubit>().getGrastas(),
                        ),
                      );
                },
                onPressedEdit: () {
                  context.push('/modify-grasta/${grastas[index].id}').then(
                        (value) => Future.delayed(
                          const Duration(milliseconds: 500),
                          () => context.read<GrastaCubit>().getGrastas(),
                        ),
                      );
                },
                onPressedView: () {
                  context.push('/grasta/${grastas[index].id}');
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
            context.push('/add-grasta').then(
                  (value) => Future.delayed(
                    const Duration(milliseconds: 500),
                    () => context.read<GrastaCubit>().getGrastas(),
                  ),
                );
          },
          icon: const Icon(Icons.add),
          label: const Text('Add grasta'),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
