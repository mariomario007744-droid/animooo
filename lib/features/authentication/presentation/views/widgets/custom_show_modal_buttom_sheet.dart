import 'package:animooo/features/authentication/presentation/manager/add_image_cubit/add_image_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomShowModalButtomSheet extends StatelessWidget {
  const CustomShowModalButtomSheet({
    super.key,
    required this.addImageCubit,
  });

  final AddImageCubit addImageCubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: addImageCubit,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: const Text('Photo Gallery')),
                ),
              ),
              onTap: () {
                addImageCubit.getImagesGallery();
                context.pop();
              },
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: Center(child: const Text('Camera')),
                ),
              ),
              onTap: () {
                addImageCubit.getImagesCamera();
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
