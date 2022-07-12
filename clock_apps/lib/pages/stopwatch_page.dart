import 'package:clock_apps/pages/widget/buttonwidget.dart';
import 'package:clock_apps/provider/timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MystopWatch extends StatefulWidget {
  const MystopWatch({Key? key}) : super(key: key);

  @override
  State<MystopWatch> createState() => _MystopWatchState();
}

class _MystopWatchState extends State<MystopWatch> {
  var timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Provider.of<TimerProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    timer = Provider.of<TimerProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1A1F38),
        body: Center(
          child: Consumer<TimerProvider>(
            builder: (context, timerProvider, child) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${timer.digithour} : ' +
                      '${timer.digitminute} : ' +
                      '${timer.digitsecond} ',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFE500),
                    shadows: [
                      Shadow(
                        blurRadius: 10,
                        color: Color(0xffFFE500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    (timer.startEnable)
                        ? InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: timer.startTimer,
                            child: WidgetBtn("Start", 0xffFFE500),
                          )
                        : InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: null,
                            child: WidgetBtn("Restart", 0xff1A1F38),
                          ),
                    (timer.stopEnable)
                        ? InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: timer.stopTimer,
                            child: WidgetBtn("Stop", 0xffFFE500),
                          )
                        : InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: null,
                            child: WidgetBtn("Stop", 0xff1A1F38),
                          ),
                    (timer.continueEnable)
                        ? InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: timer.continueTimer,
                            child: WidgetBtn("Continue", 0xffFFE500),
                          )
                        : InkWell(
                            borderRadius: BorderRadius.circular(24),
                            onTap: null,
                            child: WidgetBtn("Continue", 0xff1A1F38),
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
