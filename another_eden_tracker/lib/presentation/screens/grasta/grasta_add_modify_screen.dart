import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:another_eden_tracker/domain/schemas.dart';
import 'package:another_eden_tracker/presentation/blocs.dart';
import 'package:another_eden_tracker/presentation/widgets.dart';

class GrastaAddModifyScreen extends StatelessWidget {
  final int? id;

  const GrastaAddModifyScreen({
    super.key,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return _GrastaAddModifyScreen(
      id: id,
    );
  }
}

class _GrastaAddModifyScreen extends StatefulWidget {
  final int? id;

  const _GrastaAddModifyScreen({
    this.id,
  });

  @override
  State<_GrastaAddModifyScreen> createState() => _GrastaAddModifyScreenState();
}

class _GrastaAddModifyScreenState extends State<_GrastaAddModifyScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.id != null) {
      context.read<GrastaCubit>().getGrasta(widget.id!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final name = context.watch<GrastaCubit>().state.name;

    return Scaffold(
      appBar: AppBar(
        title: (widget.id == null) ? const Text('Add Grasta') : Text(name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              _GrastaFormView(id: widget.id),
            ],
          ),
        ),
      ),
    );
  }
}

class _GrastaFormView extends StatefulWidget {
  final int? id;

  const _GrastaFormView({
    this.id,
  });

  @override
  State<_GrastaFormView> createState() => _GrastaFormViewState();
}

class _GrastaFormViewState extends State<_GrastaFormView> {
  final GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.id != null) {
      Future.delayed(const Duration(milliseconds: 500), () {
        String name = context.read<GrastaCubit>().state.name;

        _nameController.text = name;
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _clearForm() {
    _nameController.clear();
  }

  String? _validate(String? value) {
    if (value == null) return 'Cannot be empty';
    if (value.trim().isEmpty) return 'Cannot be empty';
    if (value.trim().length < 3) return 'Must have at least 3 characters';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final grastaCubit = context.watch<GrastaCubit>();

    return Form(
      key: _keyForm,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _nameController,
            label: 'Nombre',
            hintText: 'Agregue el nombre',
            icon: Icons.person,
            validator: _validate,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(
                onPressed: () {
                  bool isValid = _keyForm.currentState!.validate();
                  if (isValid) {
                    Grasta grasta = Grasta()..name = _nameController.text;
                    if (widget.id != null) grasta.id = widget.id;
                    grastaCubit.addGrasta(grasta);
                    _clearForm();
                    context.pop();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.save),
                      const SizedBox(
                        width: 10,
                      ),
                      Text((widget.id == null) ? 'Guardar' : 'Modificar')
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
