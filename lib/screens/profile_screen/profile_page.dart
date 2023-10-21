import 'package:digital_gold/screens/refer_and_earn_screen/view/refer_and_earn.dart';
import 'package:digital_gold/utils/app_colors.dart';
import 'package:digital_gold/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        title: Text(''),
        toolbarHeight: 30,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppDimensions.screenOverAllPadding),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(AppDimensions.screenOverAllPadding),
              decoration: BoxDecoration(
                  color: AppColors.bottomAppBarColor,
                  borderRadius: BorderRadius.circular(12)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blue),
                  child: const Center(
                    child: Text(
                      'R',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Rahul Kumar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryTextColor),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'rahulasher0@gmail.com',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.secondaryTextColor),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        '918709791441',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.secondaryTextColor),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.bottomAppBarColor,
                  border: Border.all(
                      width: 1,
                      color: AppColors.secondaryTextColor.withOpacity(0.2))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'My Investments',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.secondaryTextColor),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'No active investments yet',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.secondaryTextColor),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: AppColors.secondaryTextColor),
                            child: const Text(
                              'Get started today',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primaryColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.bottomAppBarColor,
                  border: Border.all(
                      width: 1,
                      color: AppColors.secondaryTextColor.withOpacity(0.2))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Support & FAQ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: AppColors.secondaryTextColor),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Rest assured, we\'re available 24 x 7',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: AppColors.secondaryTextColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Get.to(() => const ReferAndEarnScreen());
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.bottomAppBarColor,
                    border: Border.all(
                        width: 1,
                        color: AppColors.secondaryTextColor.withOpacity(0.2))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Refer & Earn',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondaryTextColor),
                            ),
                            Spacer(),
                            Icon(
                              Icons.chevron_right_sharp,
                              color: AppColors.secondaryTextColor,
                              size: 28,
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Earn upto ₹ 200 cash back on your friend purchase.',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: AppColors.secondaryTextColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.logout_rounded,
                  color: AppColors.secondaryTextColor,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColors.secondaryTextColor,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'Read our ',
                  style: TextStyle(color: AppColors.secondaryTextColor)),
              TextSpan(
                  text: 'Privacy policy ',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColors.primaryTextColor)),
              TextSpan(
                  text: 'and ',
                  style: TextStyle(color: AppColors.secondaryTextColor)),
              TextSpan(
                  text: 'TnC ',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: AppColors.primaryTextColor)),
              TextSpan(
                  text: 'here.',
                  style: TextStyle(color: AppColors.secondaryTextColor))
            ])),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
