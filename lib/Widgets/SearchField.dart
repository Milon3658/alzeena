import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Searchfield extends StatefulWidget {
  const Searchfield({super.key});

  @override
  State<Searchfield> createState() => _SearchfieldState();
}

class _SearchfieldState extends State<Searchfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search',
        filled: true,
        fillColor: Colors.grey[200],
        prefixIcon: Icon(
          MdiIcons.magnify,
          color: Colors.grey[600],
        ),
        suffixIcon: Icon(
          MdiIcons.tune,
          color: Colors.grey[600],
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
