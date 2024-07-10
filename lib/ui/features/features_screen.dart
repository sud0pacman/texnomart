import 'package:flutter/material.dart';
import 'package:texnomart/data/source/remote/response/detail/detail_responce.dart';
import 'package:texnomart/presentation/theme/ui_components.dart';

class FeaturesScreen extends StatefulWidget {
  final List<DataCharacter>? characters;

  const FeaturesScreen({super.key, required this.characters});

  @override
  State<FeaturesScreen> createState() => _FeaturesScreenState();
}

class _FeaturesScreenState extends State<FeaturesScreen> {
  @override
  Widget build(BuildContext context) {
    print("********************************* feature screen ${widget.characters?.length}");
    return Scaffold(
      appBar: myAppBar("Xususiyatlar"),
      body: SafeArea(
        child: widget.characters?.isEmpty ?? [].isEmpty ?
        const Center(
          child: BoldText(text: "IsEmpty",),
        )   :
          Column(
          children: [
            for (var character in widget.characters ?? [])
              title(character)
          ],
        ),
      ),
    );
  }

  Widget title(DataCharacter character) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BoldText(text: character.name, fontSize: 16),
          for (var ch in character.characters)
            description(ch.name ?? "Empty", ch.value ?? "Empty")
        ],
      ),
    );
  }

  Widget description(String name, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NormalText(
            text: name,
            color: Colors.black87,
          ),
          NormalText(
            text: info,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
