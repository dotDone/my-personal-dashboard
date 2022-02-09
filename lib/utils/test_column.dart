import 'package:flutter/material.dart';

class TestColumn extends StatelessWidget {
  final Color colors;

  const TestColumn({Key? key, required this.colors}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(color: colors),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: colors,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(index.toString()),
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
