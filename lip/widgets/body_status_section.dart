import 'package:flutter/material.dart';

class BodyStatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'حالتي البدنية',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
          ),
          SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFF1B2838),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                // معلومات الجسم
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      // الوزن
                      _buildInfoRow('الوزن', '82.5 كغ', Colors.orange),
                      SizedBox(height: 12),
                      // الطول
                      _buildInfoRow('الطول', '180 سم', Colors.white),
                      SizedBox(height: 12),
                      // مؤشر كتلة الجسم
                      _buildInfoRow('مؤشر الكتلة', '24.5 - طبيعي', Color(0xFF00FF87)),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                // الرسم التشريحي
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color(0xFF0D1B2A),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.accessibility_new,
                          color: Color(0xFF00FF87),
                          size: 60,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'عرض التفاصيل',
                          style: TextStyle(
                            color: Color(0xFF00FF87),
                            fontSize: 10,
                          ),
                        ),
                      ],
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

  Widget _buildInfoRow(String label, String value, Color color) {
    return Row(
      textDirection: TextDirection.rtl,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        Text(
          value,
          style: TextStyle(
            color: color,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
