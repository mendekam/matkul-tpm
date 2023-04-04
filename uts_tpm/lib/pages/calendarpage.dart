import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:uts_tpm/config/colors.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  late DateTime _selectedDateTime;
  late String _timezoneName;
  late Duration _timezoneOffset;

  @override
  void initState() {
    super.initState();
    _selectedDateTime = DateTime.now();
    _timezoneName = 'UTC';
    _timezoneOffset = const Duration(hours: 0);
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDateTime,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDateTime) {
      setState(() {
        _selectedDateTime = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_selectedDateTime),
    );
    if (picked != null) {
      setState(() {
        _selectedDateTime = DateTime(
          _selectedDateTime.year,
          _selectedDateTime.month,
          _selectedDateTime.day,
          picked.hour,
          picked.minute,
          _selectedDateTime.second,
        );
      });
    }
  }

  void _changeTimezone(Duration offset, String timezone) async {
    await initializeDateFormatting(timezone, null);
    setState(() {
      _timezoneOffset = offset;
      _timezoneName = timezone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
        backgroundColor: primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selected date and time:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              DateFormat.yMMMMEEEEd().add_Hms().format(_selectedDateTime.toUtc().add(_timezoneOffset)),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: () => _selectDate(context),
                  child: const Text('Select date'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: () => _selectTime(context),
                  child: const Text('Select time'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Current timezone: $_timezoneName',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: () => _changeTimezone(const Duration(hours: 7), 'Asia/Jakarta'),
                  child: const Text('WIB'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: () => _changeTimezone(const Duration(hours: 8), 'Asia/Singapore'),
                  child: const Text('WITA'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                  ),
                  onPressed: () => _changeTimezone(const Duration(hours: 9), 'Asia/Tokyo'),
                  child: const Text('WIT'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
                  
