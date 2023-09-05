import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qanuni_app/presentation/screens/boarding_screen/widgets/custom_radio.dart';
import 'package:qanuni_app/presentation/screens/login_screen/view.dart';
import 'package:qanuni_app/presentation/widgets/custom_button.dart';
import 'package:qanuni_app/providers/boarding/cubit/boarding_cubit.dart';
import 'package:qanuni_app/utils/colors.dart';
import 'package:qanuni_app/utils/images.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoardingCubit, BoardingState>(
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 0.15.sh,
                ),
                SizedBox(
                  width: 0.4.sw,
                  height: 0.4.sw,
                  child: Image.asset(ImageConstants.logo),
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstants.qan,
                      color: Colors.black,
                    ),
                    3.horizontalSpace,
                    Image.asset(
                      ImageConstants.uni,
                      color: Colors.black,
                    ),
                  ],
                ),
                40.verticalSpace,
                CustomRadioButton(
                    value: 0,
                    groupValue:
                        BoardingCubit.get(context).selectedOption != null
                            ? BoardingCubit.get(context).selectedOption!
                            : 2,
                    onChangeFunction: BoardingCubit.get(context).selectOption,
                    title: 'أنا مستفيد',
                    content: 'أبحث عن استشارة مع محامي'),
                10.verticalSpace,
                CustomRadioButton(
                    value: 1,
                    groupValue:
                        BoardingCubit.get(context).selectedOption != null
                            ? BoardingCubit.get(context).selectedOption!
                            : 2,
                    onChangeFunction: BoardingCubit.get(context).selectOption,
                    title: 'أنا محامي',
                    content: 'أود تقديم الاستشارات القانونية'),
                Spacer(),
                ElevatedButton(
                    onPressed: () {
                      if (BoardingCubit.get(context).selectedOption != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: Size(1.sw, 50),
                        backgroundColor:
                            BoardingCubit.get(context).selectedOption != null
                                ? ColorConstants.primaryColor
                                : ColorConstants.primaryColor.withOpacity(0.5)),
                    child: Text(
                      'ابدأ',
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  height: 0.1.sh,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
