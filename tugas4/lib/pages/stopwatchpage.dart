import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tugas4/const/colors.dart';

class StopwatchPage extends StatefulWidget {
  const StopwatchPage({super.key});

  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  bool _isRunning = false;
  int _elapsedMilliseconds = 0;
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startStopwatch() {
    if (_isRunning) return;

    setState(() {
      _isRunning = true;
      _timer = Timer.periodic(Duration(milliseconds: 10), (_) {
        setState(() {
          _elapsedMilliseconds += 10;
        });
      });
    });
  }

  void _stopStopwatch() {
    if (!_isRunning) return;

    setState(() {
      _isRunning = false;
      _timer?.cancel();
      _timer = null;
    });
  }

  void _resetStopwatch() {
    setState(() {
      _isRunning = false;
      _elapsedMilliseconds = 0;
      _timer?.cancel();
      _timer = null;
    });
  }

  String _formatMilliseconds(int milliseconds) {
    int minutes = (milliseconds / 60000).truncate();
    int seconds = ((milliseconds % 60000) / 1000).truncate();
    int hundredths = ((milliseconds % 1000) / 10).truncate();
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}.${hundredths.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _formatMilliseconds(_elapsedMilliseconds),
              style: TextStyle(fontSize: 60.0),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: _isRunning ? _stopStopwatch : _startStopwatch,
                  child: Text(_isRunning ? 'Stop' : 'Start'),
                ),
                SizedBox(width: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: _resetStopwatch,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
