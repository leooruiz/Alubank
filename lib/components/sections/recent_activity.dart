import 'package:alubank_alura_project/components/box_card.dart';
import 'package:alubank_alura_project/components/color_dot.dart';
import 'package:alubank_alura_project/components/content_division.dart';
import 'package:alubank_alura_project/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saída"),
                    Text("\$9900.97",
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child:
                      ColorDot(color: ThemeColors.recentActivity['incoming']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Entrada"),
                    Text("\$9332.35",
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text("Limite de gastos: \$432.93"),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: LinearProgressIndicator(
            value: 0.5,
            color: Colors.purple,
            minHeight: 8,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: ContentDivision(),
        ),
        const Text(
            "Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!"),
        TextButton(
          child: const Text("Diga-me como!", style: TextStyle(fontSize: 16)),
          onPressed: () {},
        )
      ],
    );
  }
}
