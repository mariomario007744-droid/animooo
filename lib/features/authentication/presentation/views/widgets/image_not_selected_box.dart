import 'package:animooo/const.dart';
import 'package:animooo/core/utils/assets_data.dart';
import 'package:animooo/core/utils/styles.dart';
import 'package:animooo/features/authentication/presentation/manager/add_image_cubit/add_image_cubit.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_show_modal_buttom_sheet.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ImageNotSelectedBox extends StatelessWidget {
  const ImageNotSelectedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final addImageCubit = BlocProvider.of<AddImageCubit>(context);
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (BuildContext context) {
            return CustomShowModalButtomSheet(addImageCubit: addImageCubit);
          },
        );
      },
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          radius: Radius.circular(12),
          borderPadding: EdgeInsets.symmetric(vertical: 12),
          color: kPrimaryColor,
          strokeWidth: 2,
          dashPattern: const [6, 4],
        ),
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 88.0,
                horizontal: 8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(AssetsData.addImageIcon),
                  SizedBox(height: 16),
                  Text('Select file', style: Styles.fontSize12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

