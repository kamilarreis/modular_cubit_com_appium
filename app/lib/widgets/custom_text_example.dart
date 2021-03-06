import 'package:flutter/material.dart';

class CustomTextExample extends StatefulWidget {
  final VoidCallback onTap;

  const CustomTextExample({Key? key, required this.onTap}) : super(key: key);

  @override
  _CustomTextExampleState createState() => _CustomTextExampleState();
}

class _CustomTextExampleState extends State<CustomTextExample> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: const [
            Icon(Icons.sanitizer),
            Spacer(),
            Text('Custom Widget'),
          ],
        ),
      ),
    );
  }
}
