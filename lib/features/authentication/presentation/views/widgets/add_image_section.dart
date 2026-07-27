import 'package:animooo/features/authentication/presentation/manager/add_image_cubit/add_image_cubit.dart';
import 'package:animooo/features/authentication/presentation/manager/add_image_cubit/add_image_state.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/addImage.dart';
import 'package:animooo/features/authentication/presentation/views/widgets/image_not_selected_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddImageSection extends StatelessWidget {
  const AddImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddImageCubit, AddImageState>(
                builder: (context, state) {
    return BlocProvider.of<AddImageCubit>(context).image !=null
        ? AddImage(image: BlocProvider.of<AddImageCubit>(context).image!)
        : ImageNotSelectedBox();
                },
              );
  }
}




