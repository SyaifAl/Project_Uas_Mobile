import 'package:try_firebase/model/mentalModel.dart';
import 'package:flutter/material.dart';

import 'mentalItemcard.dart';

class MentalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MentalItemCard(index: key);
        },
      ),
    );
  }
}
