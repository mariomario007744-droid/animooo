import 'dart:async';
import 'package:flutter/material.dart';

class ResendCodeTimer extends StatefulWidget {

  const ResendCodeTimer({
    super.key,
  });

  @override
  State<ResendCodeTimer> createState() => _ResendCodeTimerState();
}

class _ResendCodeTimerState extends State<ResendCodeTimer> {
  late int _secondsLeft;
  Timer? _timer;

  bool get _isCounting => _secondsLeft > 0;

  @override
  void initState() {
    super.initState();
    _secondsLeft = 60;
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsLeft <= 1) {
          _secondsLeft = 0;
          timer.cancel();
        } else {
          _secondsLeft--;
        }
      });
    });
  }

  void _handleResendTap() {
    setState(() => _secondsLeft = 60);
    _startTimer();
  }

  String get _formattedTime {
    final minutes = (_secondsLeft ~/ 60).toString().padLeft(2, '0');
    final seconds = (_secondsLeft % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _isCounting ? null : _handleResendTap,
      child: Center(
        child: Text(
          _isCounting ? 'Resend Code In $_formattedTime' : 'Resend Code',
        ),
      ),
    );
  }
}
