import 'package:digital_gold/utils/app_assets.dart';
import 'package:digital_gold/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class ReferAndEarnScreen extends StatefulWidget {
  const ReferAndEarnScreen({super.key});

  @override
  State<ReferAndEarnScreen> createState() => _ReferAndEarnScreenState();
}

class _ReferAndEarnScreenState extends State<ReferAndEarnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    height: 450,
                    decoration: const BoxDecoration(
                        color: AppColors.secondaryTextColor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Column(
                      children: [
                        LottieBuilder.asset(AppAssets.referAndEarn),
                        const Text(
                          'Refer & earn up to ₹ 50,000',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColors.secondaryTextColor),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Invite all your friends!',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondaryTextColor),
                        ),
                        Icon(
                          Icons.facebook,
                          color: AppColors.secondaryTextColor,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: AppColors.secondaryTextColor),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'FAQ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondaryTextColor),
                        ),
                        const SizedBox(height: 20),
                        const ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Text(
                            'How can i refer a friend?',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.secondaryTextColor),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AppColors.secondaryTextColor,
                            size: 32,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: AppColors.secondaryTextColor.withOpacity(0.2),
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Text(
                            'What is a successful referral?',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.secondaryTextColor),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AppColors.secondaryTextColor,
                            size: 32,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: AppColors.secondaryTextColor.withOpacity(0.2),
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Text(
                            'How many friends can i refer?',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.secondaryTextColor),
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: AppColors.secondaryTextColor,
                            size: 32,
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: AppColors.secondaryTextColor.withOpacity(0.2),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 80,
              left: 20,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.bottomAppBarColor),
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: AppColors.secondaryTextColor,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
