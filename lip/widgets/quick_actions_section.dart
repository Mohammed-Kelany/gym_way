import 'package:flutter/material.dart';

class QuickActionsSection extends StatelessWidget {
  final List<Map<String, dynamic>> actions = [
    {'icon': Icons.history, 'title': 'تاريخ التمارين'},
    {'icon': Icons.alarm, 'title': 'المواعيد والتذكير'},
    {'icon': Icons.water_drop, 'title': 'تذكير شرب الماء'},
    {'icon': Icons.music_note, 'title': 'الموسيقى'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: actions.map((action) {
          return Container(
            decoration: BoxDecoration(
              color: Color(0xFF1B2838),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  action['icon'],
                  color: Color(0xFF00FF87),
                  size: 22,
                ),
                SizedBox(height: 4),
                Text(
                  action['title'],
                  style: TextStyle(color: Colors.white70, fontSize: 8),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}