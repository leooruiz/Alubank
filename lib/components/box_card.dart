import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  const BoxCard({super.key, required this.boxContent});
  final Widget boxContent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
        boxShadow: kElevationToShadow[3],
      ),
      child: Column(children: [
        const Row(
          children: [
            Column(
              children: [Text("Saída"), Text("\$9900.97")],
            ),
            Column(
              children: [Text("Entrada"), Text("\$9332.35")],
            )
          ],
        ),
        const Text("Limite de gastos: \$432.93"),
        LinearProgressIndicator(
          value: 0.5,
          color: Colors.purple,
          minHeight: 10,
          borderRadius: BorderRadius.circular(5),
        ),
        const Text(""),
        const Text("")
      ]),
    );
  }
}
