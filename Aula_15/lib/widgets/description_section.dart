import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String dummyText =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce id diam id ligula ultricies pulvinar. In neque lectus, sagittis eu libero et, venenatis lacinia nulla. Etiam eget purus leo. Nam consectetur ornare est eu lobortis. Morbi eu augue eu lectus condimentum vestibulum. Etiam id nibh luctus, porttitor arcu et, porttitor purus. Pellentesque vulputate nibh sit amet rutrum viverra. Nullam eget metus est. Integer condimentum, odio sed congue malesuada, ipsum nisi bibendum lectus, quis porttitor ante lacus in mi. Curabitur eget imperdiet ante. Aliquam magna tortor, volutpat sit amet mi a, cursus malesuada leo. Aenean dolor erat, gravida ut ultricies sed, convallis nec ipsum.';

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        dummyText,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          color: Colors.black87,
          height: 1.4,
        ),
      ),
    );
  }
}
