import 'package:eggs/blocs/app.bloc.dart';
import 'package:eggs/widgets/action-buttons.widget.dart';
import 'package:eggs/widgets/eggs.widget.dart';
import 'package:eggs/widgets/progress.widget.dart';
import 'package:eggs/widgets/type-buttons.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              "Perfect Eggs",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Eggs(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TypeButtons(),
            ),
            Progress(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: ActionButtons(),
            ),
          ],
        ),
      ),
    );
  }
}
