import 'package:flutter/material.dart';

class DaysSection extends StatelessWidget {
  final List<Map<String, dynamic>> days = [
    {'name': 'أحد', 'date': '11', 'active': false},
    {'name': 'إثنين', 'date': '12', 'active': false},
    {'name': 'ثلاثاء', 'date': '13', 'active': false},
    {'name': 'أربعاء', 'date': '14', 'active': true},
    {'name': 'خميس', 'date': '15', 'active': false},
    {'name': 'جمعة', 'date': '16', 'active': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'أيام التمرين',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Row(
              children: days.map((day) {
                bool isActive = day['active'];
                return Container(
                  margin: EdgeInsets.only(left: 8),
                  width: 55,
                  height: 75,
                  decoration: BoxDecoration(
                    color: isActive ? Color(0xFF00FF87) : Color(0xFF1B2838),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        day['name'],
                        style: TextStyle(
                          color: isActive ? Colors.black : Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        day['date'],
                        style: TextStyle(
                          color: isActive ? Colors.black : Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 8),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF1B2838),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(Icons.access_time, color: Color(0xFF00FF87), size: 18),
                SizedBox(width: 8),
                Text(
                  'الموعد التالي: اليوم 6:00 م - تمرين صدر وترايسبس',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}