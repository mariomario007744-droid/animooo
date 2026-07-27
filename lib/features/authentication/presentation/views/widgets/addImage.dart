import 'dart:io';

import 'package:animooo/features/authentication/presentation/manager/add_image_cubit/add_image_cubit.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/custom_show_modal_buttom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddImage extends StatelessWidget {
  const AddImage({Key? key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    if (image.isEmpty) return const SizedBox.shrink();
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
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Image.file(File(image), fit: BoxFit.cover, width: double.infinity),
      ),
    );
  }
}
