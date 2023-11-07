import 'package:alubank_alura_project/components/box_card.dart';
import 'package:alubank_alura_project/components/color_dot.dart';
import 'package:alubank_alura_project/components/content_division.dart';
import 'package:alubank_alura_project/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da Conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(
              boxContent: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Pontos totais:"),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 2, 0, 5),
                child:
                    Text("3000", style: Theme.of(context).textTheme.bodyLarge),
              ),
              const ContentDivision(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Text("Objetivos:",
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ColorDot(
                      color: ThemeColors.accountPoints['deliver'],
                    ),
                  ),
                  const Text("Entrega grátis: 15000pts"),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: ColorDot(
                      color: ThemeColors.accountPoints['streaming'],
                    ),
                  ),
                  const Text("1 mês de streaming: 30000pts"),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
