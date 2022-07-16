import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:visit_cart/Classes/CostumCard.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

// final Uri _url = Uri.parse('https://flutteriha.com');
  void _launchUrl(Uri url) async {
    if (!await launchUrl(url)) throw 'Could not launch $url';
  }

  @override
  Widget build(BuildContext context) {
    var wi = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Expanded(
      flex: 1,
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
          stops: [0.0, 0.39, 0.40, 1.0],
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
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CostumCard(
              title: 'tel',
              icon: const Icon(Icons.phone),
              onTap: () => _launchUrl(Uri.parse('tel:+989358079144')),
            ),
            CostumCard(
              title: 'whatsapp',
              icon: const Icon(Icons.whatsapp),
              onTap: () => _launchUrl(Uri.parse(
                  'https://api.whatsapp.com/send?phone=+989358079144')),
            ),
            CostumCard(
              title: 'insta',
              icon: const Icon(Icons.telegram),
              onTap: () =>
                  _launchUrl(Uri.parse('https://instagram.com/meysamtabriz')),
            ),
          ],
        ),
      ),
    );
  }
}
