import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

import 'package:visit_cart/Classes/slider_samples.dart';

class Samples extends StatefulWidget {
  const Samples({Key? key}) : super(key: key);

  @override
  State<Samples> createState() => _SamplesState();
}

class _SamplesState extends State<Samples> {
  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 3,
      child: GlassContainer(
        height: he,
        width: wi,
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.40),
            Colors.white.withOpacity(0.10)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderGradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.60),
            Colors.white.withOpacity(0.10),
            Colors.lightBlueAccent.withOpacity(0.05),
            Colors.lightBlueAccent.withOpacity(0.6)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [0.0, 0.39, 0.40, 1.0],
        ),
        blur: 1.0,
        borderRadius: BorderRadius.circular(15),
        borderWidth: 1.5,
        elevation: 3.0,
        isFrostedGlass: true,
        shadowColor: Colors.black.withOpacity(0.20),
        alignment: Alignment.center,
        frostedOpacity: 0.12,
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(2.0),
        child: const SliderSamples(),
      ),
    );
  }
}
