import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyles.poppins24BlackSemiBold,
        text: "Regis",
        children: [
          TextSpan(
            text: "t",
            style: TextStyles.courgette24TurquoiseRegular
          ),
          const TextSpan(text: "ration")
        ]
      )
    );
  }
}
