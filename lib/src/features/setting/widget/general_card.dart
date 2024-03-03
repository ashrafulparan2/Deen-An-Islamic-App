import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/sirat_card.dart';
import '../model/general_option.dart';
import 'general_option_card.dart';

class GeneralCard extends StatelessWidget {
  const GeneralCard();

  @override
  Widget build(BuildContext context) {
    return SiratCard(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              8.r,
            ),
            child: Image.asset(
              'assets/images/core/svg/app_logo.png',
              width: 64.w,
            ),
          ),
          Text(
            'Deen',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(
            height: 8.h,
          ),
         
          SizedBox(
            height: 8.h,
          ),
          Text(
            'The \'Deen\' app is a spiritual compass for muslims',
            textAlign: TextAlign.center,
          ),
          ...List.generate(
            generalOptions.length,
            (index) => Column(
              children: [
                Divider(
                  height: 16.h,
                ),
                GeneralOptionCard(
                  imagePath: generalOptions[index].imagePath,
                  onTap: generalOptions[index].onTap ??
                      () {
                        Navigator.of(context)
                            .pushNamed(generalOptions[index].routeName!);
                      },
                  title: generalOptions[index].title,
                  subtitle: generalOptions[index].subtitle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
