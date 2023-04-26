import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_app_2/monitor_entity.dart';
import 'package:my_app_2/stat_box.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    getData();
  }

  Future<Monitor> getData() async {
    var url = Uri.parse('https://api.pulsegrow.com/devices/18497/recent-data');
    var response = await http.get(url, headers: {
      'x-api-key': 'RLsm4IS9cQQ0KYxdCLSxr2mwDZREsFWmuwslIfBUOxe50xC5'
    });

    var result = monitorFromJson(response.body);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Room 1'),
        backgroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<Monitor> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var result = snapshot.data;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                StatBox(
                    title: 'Temperature',
                    value: result?.temperatureC,
                    backgroundColor: const Color(0xff303030)),
                const SizedBox(height: 10),
                StatBox(
                    title: 'Humidity',
                    value: result?.humidityRh,
                    backgroundColor: const Color(0xff303030)),
                const SizedBox(height: 10),
                StatBox(
                    title: 'VPD',
                    value: result?.vpd,
                    backgroundColor: const Color(0xff303030))
              ]),
            );
          }
          return const LinearProgressIndicator();
        },
      ),
    );
  }
}
