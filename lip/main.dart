import 'package:flutter/material.dart';

void main() {
  runApp(GymWayApp());
}

class GymWayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GYM WAY',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xFF0D1B2A),
        primaryColor: Color(0xFF00FF87),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2; // الرئيسية مفعلة

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ========== شريط العنوان ==========
      appBar: AppBar(
        title: Text(
          'GYM WAY',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Color(0xFF00FF87),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1B2838),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ),

      // ========== جسم التطبيق ==========
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 👤 قسم الترحيب
            HeaderSection(),

            SizedBox(height: 16),

            // 📅 قسم أيام التمرين
            DaysSection(),

            SizedBox(height: 16),

            // 📊 قسم تقدم الأسبوع
            ProgressSection(),

            SizedBox(height: 16),

            // 🏋️ قسم الحالة البدنية
            BodyStatusSection(),

            SizedBox(height: 16),

            // 💧 قسم تذكير الماء
            WaterSection(),

            SizedBox(height: 16),

            // 📱 أزرار الاختصارات السريعة
            QuickActionsSection(),

            SizedBox(height: 20),
          ],
        ),
      ),

      // ========== شريط التنقل السفلي ==========
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF00FF87),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF1B2838),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'المزيد'),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant), label: 'تغذية'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'تمارين'),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: 'تطور'),
        ],
      ),
    );
  }
}
