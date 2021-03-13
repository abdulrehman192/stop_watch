

import 'dart:async';

import 'package:flutter/material.dart';

class Stop_Watch extends StatefulWidget {
  @override
  _Stop_WatchState createState() => _Stop_WatchState();
}

class _Stop_WatchState extends State<Stop_Watch> {
  Stopwatch watch = new Stopwatch();
  Timer timer;
  String elapsedtime = '00:00:00';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stop Watch'),

        ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('$elapsedtime',style: TextStyle(fontSize: 25),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                      tooltip: 'Start',
                      backgroundColor: Colors.green,
                      child: Icon(Icons.play_circle_fill_outlined),
                      onPressed: _startWatch
                      ),
                  SizedBox(width: 20,),
                  FloatingActionButton(
                      tooltip: 'Stop',
                      backgroundColor: Colors.red,
                      child: Icon(Icons.stop),
                      onPressed: _stopwatch
                  ),
                  SizedBox(width: 20,),
                  FloatingActionButton(
                      tooltip: 'Reset',
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.replay_outlined),
                      onPressed: _resetwatch
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void updateTime(Timer timer)
  {
    setState(() {
      elapsedtime = transformMilliseconds(watch.elapsedMilliseconds);
    });
  }
  _startWatch()
  {
    watch.start();
    timer = Timer.periodic(Duration(milliseconds: 100),updateTime);
  }
  _stopwatch()
  {
    watch.stop();
    _setTime();
  }
  _resetwatch()
  {
    watch.stop();
    watch.reset();
    _setTime();
  }

  _setTime()
  {
    var timeSoFor = watch.elapsedMilliseconds;
    setState(() {
      elapsedtime = transformMilliseconds(timeSoFor);
    });
  }
  transformMilliseconds(int milliseconds)
  {
    int hunderds = (milliseconds / 10).truncate();
    int seconds = (hunderds / 100).truncate();
    int minutes = (seconds / 60).truncate();

    String minute_string = (minutes % 60).toString().padLeft(2, '0');
    String second_string = (seconds % 60).toString().padLeft(2,'0');
    String hunderd_string = (hunderds % 100).toString().padLeft(2,'0');

    return '$minute_string:$second_string:$hunderd_string';
  }

}
