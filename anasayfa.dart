import 'package:flutter/material.dart';
import 'package:flutteradvance/internetten_vericekme.dart/string_const.dart';
import 'package:flutteradvance/internetten_vericekme.dart/view_moddel.dart';

class AnasafaServices extends StatefulWidget {
  const AnasafaServices({super.key});

  @override
  State<AnasafaServices> createState() => _AnasafaServicesState();
}

class _AnasafaServicesState extends ViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SbtString().appbarBaslik),
      ),
      body: ListView.builder(
        itemCount: responsList.length,
        itemBuilder: (context, index) {
          final item = responsList[index];
          return Card(
            child: ListTile(
              leading: Text(item.id.toString(),
                  style: SbtTextStyle().baslikTextStyle),
              title: Text(item.title, style: SbtTextStyle().baslikTextStyle),
              subtitle: Text(item.body),
            ),
          );
        },
      ),
    );
  }
}
