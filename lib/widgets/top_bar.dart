import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget topToolBar(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
    ),
    child: Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.first_page,
              size: 18,
              color: Colors.teal,
            )
        ),
        SizedBox(width: 2),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.chevron_left, size: 16, color: Colors.teal),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.chevron_right, size: 16, color: Colors.teal),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.last_page, size: 16, color: Colors.teal),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
        Container(width: 1, height: 20, color: Colors.grey[300]),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),

        Container(width: 1, height: 20, color: Colors.grey[300]),

        Container(
          width: 200,
          height: 28,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: Colors.grey[300]!),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.search, size: 16, color: Colors.black),
          label: Text("Find", style: TextStyle(fontSize: 12, color: Colors.black)),
          style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4)),
        ),
        
        // Separator
        Container(width: 1, height: 20, color: Colors.grey[300]),
        
        // Attach File button
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.attach_file_outlined, size: 14, color: Colors.black),
          label: Text("Attach File", style: TextStyle(fontSize: 12, color: Colors.black)),
          style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4)),
        ),
        
        // Separator
        Container(width: 1, height: 20, color: Colors.grey[300]),
        
        // Document action icons
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.print, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.description, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.table_rows_outlined, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
        Container(width: 1, height: 20, color: Colors.grey[300]),
        // IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.add, size: 16, color: Colors.grey[700]),
        //   padding: EdgeInsets.all(4),
        //   constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        // ),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.copy, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
        
        // Separator
        Container(width: 1, height: 20, color: Colors.grey[300]),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.description, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),

        IconButton(
          onPressed: (){},
          icon: Icon(Icons.attach_money_rounded, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),

        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.attachment, size: 14, color: Colors.grey[700]),
          label: Text("Payment", style: TextStyle(fontSize: 12, color: Colors.grey[700])),
          style: TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4)),
        ),
        
        // Action dropdown
        Text('Action', style: TextStyle(fontSize: 12, color: Colors.grey[700])),
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_drop_down, size: 16, color: Colors.grey[700]),
          padding: EdgeInsets.all(4),
          constraints: BoxConstraints(minWidth: 24, minHeight: 24),
        ),
      ],
    ),
  );
}