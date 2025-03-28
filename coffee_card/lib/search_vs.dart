import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:super_app/localization/Constants.dart';
import 'package:super_app/utils/text_styles.dart';
import 'package:super_app/generated/assets.dart';
import 'package:super_app/utils/app_colors/app_colors.dart';
import 'package:super_app/widgets/common_svg_image_viewer.dart';
import 'package:super_app/widgets/gap.dart';

import '../utils/asset_paths.dart';
import 'common_button.dart';

class SearchVsCard extends StatelessWidget {
  final String date;
  final String time;
  final String team1;
  final String team2;
  final String location;
  final String image1;
  final String image2;

  const SearchVsCard({
    super.key,
    required this.date,
    required this.time,
    required this.team1,
    required this.team2,
    required this.location,
    required this.image1,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:EdgeInsets.only(left: 8.r, right: 8.r, top: 9.r, bottom: 9.r),
          margin: EdgeInsets.only(top: 4.h),
          decoration: BoxDecoration(
            color: AppColors.dark500Color,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 2.h, bottom: 2.h),
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(8.r)),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(date,
                            style: TypographyConstant.rethinkSans10w400Style
                                .copyWith(
                              color: AppColors.neutral300Color,
                            ))),
                    Expanded(
                        child: Text(
                      time,
                      style: TypographyConstant.rethinkSans10w400Style.copyWith(
                        color: AppColors.neutral300Color,
                      ),
                      textAlign: TextAlign.end,
                    )),
                  ],
                ),
              ),
              Gap(11.r),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          image1,
                          width: 55.w,
                          height: 55.h,
                        ),
                      ),
                      Gap(8.h),
                      Text(
                        team1,
                        style: TypographyConstant.rethinkSans10w400Style
                            .copyWith(
                                color: AppColors.whiteColor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )),
                  Gap(20.h),
                  Text(Constants.VS, style: TypographyConstant.rethinkSans10w400Style.copyWith(
                      color: AppColors.neutral400Color,
                      fontSize:14.sp,
                      fontWeight: FontWeight.w400
                  )),
                  Gap(20.h),
                  Expanded(child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          image1,
                          width: 55.w,
                          height: 55.h,
                        ),
                      ),
                      Gap(8.h),
                      Text(team2, style: TypographyConstant.rethinkSans10w400Style.copyWith(
                          color: AppColors.whiteColor,
                          fontSize:15.sp,
                          fontWeight: FontWeight.w600
                      ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),)
                ],
              ),
              Gap(11.h),
              Container(
                padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 3.h,bottom: 3.h),
                decoration:BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(8.r)),
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Icon(Icons.location_on, color: Colors.grey, size: 16.h),
                        CommonSvgImageViewer(
                          imagePath: Assets.onboardingIcLocationIcon,
                          width: 14.w,
                          height: 14.h,
                        ),
                        Gap(4.h),
                        Text(
                          'Los Angeles Elementary School',
                          style: TypographyConstant.rethinkSans10w400Style.copyWith(
                            color: AppColors.neutral300Color,
                            fontSize: 12.sp,
                          ),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Gap(2.h),
                    Text(
                      location,
                      style: TypographyConstant.rethinkSans10w400Style.copyWith(
                        color: AppColors.neutral300Color,
                        fontSize: 12.sp,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Gap(8.h),
              CommonButton(
                buttonText: Constants.viewListing,
                icon: CommonSvgImageViewer(imagePath: AssetPaths.icEye),
                height: 34.h,
                width: MediaQuery.of(context).size.width,
                borderRadius: BorderRadius.circular(8.r),
                borderColor: AppColors.red500Color,
                backgroundColor: AppColors.red800Color,
                onTap: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
