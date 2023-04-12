import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterWidget extends StatefulWidget {
  final String filterText;
  final bool isClicked;
  const FilterWidget({Key? key, required this.filterText, required this.isClicked}) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      child: Container(
        decoration: BoxDecoration(
          color: widget.isClicked ? Colors.blueAccent : Colors.white70,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 50,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(widget.filterText,
                style: GoogleFonts.manrope(
                fontSize: 14,
                    color: widget.isClicked ? Colors.white70 : Colors.blueAccent,
                fontWeight: FontWeight.w600)
              ),
            ),
        ),
      ),
    );
  }
}
