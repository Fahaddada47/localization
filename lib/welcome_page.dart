import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:localization/settings_page.dart';
import 'package:rating_summary/rating_summary.dart';

class WelComePage extends StatefulWidget {
  const WelComePage({super.key});

  @override
  State<WelComePage> createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  double rating = 3.7;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(AppLocalizations.of(context)!.counterMsg),
            const RatingSummary(
              counter: 13,
              average: 4.146,
              showAverage: true,
              counterFiveStars: 5,
              counterFourStars: 4,
              counterThreeStars: 3,
              counterTwoStars: 2,
              counterOneStars: 2,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()),
                  );
                },
                child: Text(AppLocalizations.of(context)!.nextPage)),
            PannableRatingBar(
              rate: rating,
              items: List.generate(
                  5,
                  (index) => const RatingWidget(
                        selectedColor: Colors.yellow,
                        unSelectedColor: Colors.grey,
                        child: Icon(
                          Icons.star,
                          size: 48,
                        ),
                      )),
              onChanged: (value) {
                // the rating value is updated on tap or drag.
                setState(() {
                  rating = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
