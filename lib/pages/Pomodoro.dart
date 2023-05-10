// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_app/components/Cronometro.dart';
import 'package:pomodoro_app/components/EntradaTempo.dart';
import 'package:pomodoro_app/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Cronometro(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                EntradaTempo(
                  titulo: 'Trabalho',
                  valor: store.tempoTrabalho,
                  inc: store.estaTrabalhando() && store.iniciado ? null : store.incrementarTempoTrabalho,
                  dec: store.estaTrabalhando() && store.iniciado ? null : store.decrementarTempoTrabalho,
                  color: Colors.red,

                ),
                EntradaTempo(
                  titulo: 'Descanso',
                  valor: store.tempoDescanso,
                  inc: store.estaDescansando() && store.iniciado ? null : store.incrementarTempoDescanso,
                  dec: store.estaDescansando() && store.iniciado ? null : store.decrementarTempoDescanso,
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
