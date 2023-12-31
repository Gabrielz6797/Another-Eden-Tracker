import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';

class GrastaDetailsScreen extends StatelessWidget {
  final int id;

  const GrastaDetailsScreen({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return _GrastaDetailsView(
      id: id,
    );
  }
}

class _GrastaDetailsView extends StatefulWidget {
  final int id;

  const _GrastaDetailsView({
    required this.id,
  });

  @override
  State<_GrastaDetailsView> createState() => _GrastaDetailsViewState();
}

class _GrastaDetailsViewState extends State<_GrastaDetailsView> {
  @override
  void initState() {
    super.initState();
    context.read<GrastaCubit>().getGrasta(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    final String name = context.watch<GrastaCubit>().state.name;

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details about $name'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Datos personales',
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
          ListTile(
            leading: const Icon(Icons.person_rounded),
            title: const Text('Nombre'),
            subtitle: Text(name),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
