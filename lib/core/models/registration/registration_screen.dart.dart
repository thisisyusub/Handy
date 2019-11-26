import 'package:heathier/presentation/presentation.dart';
import 'package:flutter/widgets.dart';

import 'registration_actions.dart';
import 'registration_bloc.dart';
import 'registration_state.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  RegistrationBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = RegistrationBloc();
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocStreamBuilder<RegistrationState>(
      controller: _bloc.controller,
      builder: (context, state) {
        return _buildUI(state);
      },
    );
  }

  Widget _buildUI(AlertsState state) {
    return Container();
  }
}
