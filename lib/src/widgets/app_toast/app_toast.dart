import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_health_assistant/src/styles/font_styles.dart';

class AppToasts {
  static void showToast({
    required BuildContext context,
    required String title,
  }) {
    FToast().init(context);
    FToast().showToast(
      positionedToastBuilder: (context, child) {
        return Positioned(top: 44.0, left: 24.0, right: 24.0, child: child);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 161, 230, 163),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.green,
            )),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Image.asset('assets/images/common/ic_check.png'),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: MyFontStyles.mainColorH1.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromARGB(255, 4, 101, 8)),
                ),
              ),
              // Image.asset(AppAssets.icCross),
            ],
          ),
        ),
      ),
    );
  }

  // static void showErrorToast({
  //   required String title,
  //   required BuildContext context,
  // }) {
  //   FToast().init(context);
  //   FToast().showToast(
  //     positionedToastBuilder: (context, child) {
  //       return Positioned(top: 44.0, left: 24.0, right: 24.0, child: child);
  //     },
  //     child: Container(
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //           color: ThemePalatte.darkThemePalatte.corePalatte.redStatusBg,
  //           borderRadius: BorderRadius.circular(10),
  //           border: Border.all(
  //             color:
  //                 ThemePalatte.darkThemePalatte.corePalatte.redNotificationBg,
  //           )),
  //       child: Padding(
  //         padding: const EdgeInsets.all(18),
  //         child: Row(
  //           children: [
  //             Expanded(
  //               child: Text(
  //                 title,
  //                 style: AppTextStyles.textBlackColorS16W400,
  //                 textAlign: TextAlign.center,
  //               ),
  //             ),
  //             Image.asset(AppAssets.icCross),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
