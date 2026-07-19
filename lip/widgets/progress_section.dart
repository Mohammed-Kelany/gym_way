import 'package:flutter/material.dart';

class ProgressSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'تقدمك هذا الأسبوع',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 12),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              // دائرة النسبة
              Expanded(
                flex: 2,
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFF1B2838),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '78%',
                        style: TextStyle(
                          color: Color(0xFF00FF87),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'من هدفك',
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              // البطاقات الرقمية
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    _buildStatCard(
                      title: 'السعرات المحروقة',
                      value: '2,350',
                      unit: 'سعرة',
                      color: Colors.orange,
                      icon: Icons.local_fire_department,
                    ),
                    SizedBox(height: 8),
                    _buildStatCard(
                      title: 'إجمالي الأوزان',
                      value: '12,450',
                      unit: 'كغ',
                      color: Colors.blue,
                      icon: Icons.fitness_center,
                    ),
                    SizedBox(height: 8),
                    _buildStatCard(
                      title: 'التمارين المكتملة',
                      value: '4/5',
                      unit: 'مكتملة',
                      color: Color(0xFF00FF87),
                      icon: Icons.directions_run,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard({
    required String title,
    required String value,
    required String unit,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF1B2838),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Icon(icon, color: color, size: 20),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
                Row(
                  textDirection: TextDirection.rtl,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                        color: color,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      unit,
                      style: TextStyle(color: Colors.white54, fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}