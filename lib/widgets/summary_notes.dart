import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget summaryRow(
    String label,
    TextEditingController controller, {
      TextEditingController? percentController,
      bool isTotal = false,
    }) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Label
        SizedBox(
          height: 40,
          width: 120, // fixed label width
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),



        // Fields area
        Expanded(
          child: Row(
            children: [
              if (percentController != null) ...[
                // Left TextField
                SizedBox(
                  height: 40,
                  width: 40,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      isDense: true,
                    ),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(width: 4),

                // % Text in center (no TextField)
                SizedBox(
                  width: 10,
                  height: 40,
                  child: Text(
                    '%',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(width: 4),

                // Right TextField
                SizedBox(
                  height: 40,
                  width: 60,
                  child: TextField(
                    controller: percentController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      isDense: true,
                    ),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ] else
              // Single field if no percent
                SizedBox(
                  height: 40,
                  width: 120,
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.grey[300]!),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      isDense: true,
                    ),
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
            ],
          ),
        ),

      ],
    ),
  );
}
