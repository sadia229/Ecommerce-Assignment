import 'package:ecommerce/general/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class AddSpeedometer extends StatefulWidget {
  const AddSpeedometer({Key? key}) : super(key: key);

  @override
  State<AddSpeedometer> createState() => _AddSpeedometerState();
}

class _AddSpeedometerState extends State<AddSpeedometer> {
  RangeValues values = const RangeValues(0.0, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SfRadialGauge(
            axes: [
              RadialAxis(
                minimum: 0,
                maximum: 150,
                ranges: <GaugeRange>[
                  GaugeRange(
                      startValue: 0, endValue: 50, color: Colors.green),
                  GaugeRange(
                      startValue: 50, endValue: 100, color: Colors.orange),
                  GaugeRange(
                      startValue: 100, endValue: 150, color: Colors.red)
                ],
                pointers: <GaugePointer>[NeedlePointer(value: values.end.toDouble()*100)],
              )
            ],
          ),
          RangeSlider(
            values: values,
            activeColor: KColor.background,
            inactiveColor: KColor.background.withOpacity(0.4),
            labels: labels,
            divisions: 10,
            onChanged: (newValue) {
              setState(() {
                values = newValue;
              });
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
