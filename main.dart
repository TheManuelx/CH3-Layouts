import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PEA VOLTA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.network('https://cdn6.aptoide.com/imgs/8/b/4/8b43a6a80d45a3e5d2eb1747a76474b7_fgraphic.png'),
            SizedBox(height: 30),
            const Text(
              'ขอบคุณที่ใช้บริการ',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
            ),
            const Text(
              'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'รายละเอียดการชาร์จ',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                ),
                SizedBox(height: 50),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'วันที่ชาร์จ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 180),
                Text(
                  '9 กันยายน 2560',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                SizedBox(height: 30),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'สถานีชาร์จ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 130),
                Text(
                  'PEA VOLTA บางจาก',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                SizedBox(height: 30),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ประเภทหัวชาร์จ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 220),
                Text(
                  'CCS2',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                SizedBox(height: 30),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ระยะเวลาการชาร์จ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 160),
                Text(
                  '00:12:32',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                SizedBox(height: 30),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'จำนวนหน่วย',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 200),
                Text(
                  '9.314kWh',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
                SizedBox(height: 30),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 200),
                Text(
                  'ค่าบริการรวมทั้งสิ้น',
                  style: TextStyle(color: Colors.purple,fontSize: 30),
                ),
                SizedBox(width: 30),
                Text(
                  '49.36 บาท',
                  style: TextStyle(color: Colors.purple,fontSize: 30),
                ),
              ],
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
