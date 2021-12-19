import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text(
            'Weather Forecast',
            style: TextStyle(color: Colors.white70),
          ),
          elevation: 0.0,
          bottomOpacity: 0.0,
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _inputSearchCity(),
                _headerCity(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                _temperarutaNow(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
                _otherDataNow(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                ),
                Text(
                  '7-day weather forecast'.toUpperCase(),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                ),
                _widgetWeekForecast(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _inputSearchCity() {
  return TextField(
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      prefixIcon: Icon(
        Icons.search,
        color: Colors.white,
      ),
      hintText: 'Enter City Name',
      hintStyle: TextStyle(color: Colors.white),
      border: InputBorder.none,
    ),
  );
}

Column _headerCity() {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
      ),
      Text(
        'Zhukovskij, MO, RU',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
      ),
      Text(
        'Saturday, 18, December, 2021',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ],
  );
}

Widget _temperarutaNow() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.wb_sunny,
          size: 90,
          color: Colors.white,
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
        ),
        Column(
          children: [
            Text(
              '14 \u2109',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            Text(
              'light snow'.toUpperCase(),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _otherDataNow() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: 30,
            child: Column(
              children: [
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 25.0,
                ),
                Text(
                  '5',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'km/h',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 30,
            child: Column(
              children: [
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 25.0,
                ),
                Text(
                  '3',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  '%',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: 30,
            child: Column(
              children: [
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 25.0,
                ),
                Text(
                  '20',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  '%',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _widgetWeekForecast() {
  const double blockHeigt = 130;
  const double blockWidth = 162;
  const double dayWeekSize = 27;
  const double temperatureData = 25;

  return Center(
    child: Container(
      height: blockHeigt,
      child: ListView(
        scrollDirection: Axis.horizontal,
        itemExtent: blockWidth,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Friday',
                    style:
                        TextStyle(fontSize: dayWeekSize, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '12 \u2109',
                        style: TextStyle(
                          fontSize: temperatureData,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                      ),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                        size: temperatureData,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Saturday',
                    style:
                        TextStyle(fontSize: dayWeekSize, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '6 \u2109',
                        style: TextStyle(
                          fontSize: temperatureData,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                      ),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.white,
                        size: temperatureData,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Sunday',
                    style:
                        TextStyle(fontSize: dayWeekSize, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2 \u2109',
                        style: TextStyle(
                          fontSize: temperatureData,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5,
                        ),
                      ),
                      Icon(
                        Icons.cloud,
                        color: Colors.white,
                        size: temperatureData,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
