import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          // الصورة الشخصية
          CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFF00FF87).withOpacity(0.2),
            child: Icon(
              Icons.person,
              color: Color(0xFF00FF87),
              size: 30,
            ),
          ),
          SizedBox(width: 12),
          // رسالة الترحيب
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'مرحباً محمد',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'جاهز لتحقيق هدفك اليوم؟',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}