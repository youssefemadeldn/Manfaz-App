import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manfaz/core/routes/routes.dart';
import 'package:manfaz/core/theme/app_colors.dart';
import 'package:manfaz/core/theme/app_styles.dart';
import 'package:manfaz/core/widgets/cus_text_button.dart';

class WelcomeToOurAppView extends StatelessWidget {
  const WelcomeToOurAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to Our App",
                style: AppStyles.font32Black700,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Enjoy our many services",
                style: AppStyles.font20BlackRegular,
              ),
              SizedBox(
                height: 200.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Choose your language',
                  style: AppStyles.font32Black700,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CusTextButton(
                verticalPadding: 10.h,
                buttonText: 'العربية',
                onPressed: () {},
                textStyle: AppStyles.font24whiteRegular,
                backgroundColor: AppColors.brown,
              ),
              SizedBox(
                height: 20.h,
              ),
              CusTextButton(
                verticalPadding: 10.h,
                buttonText: 'English',
                onPressed: () {},
                textStyle: AppStyles.font24blackRegular,
                backgroundColor: AppColors.white,
              ),
              Spacer(),
              CusTextButton(
                verticalPadding: 10.h,
                buttonText: 'Next',
                onPressed: () {
                  Navigator.pushNamed(context, Routes.yourTurnView);
                },
                textStyle: AppStyles.font24whiteRegular,
                backgroundColor: AppColors.black,
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
