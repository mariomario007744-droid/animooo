import 'package:animooo/features/authentication/presentation/manager/add_image_cubit/add_image_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddImageCubit extends Cubit<AddImageState> {
  AddImageCubit() : super(AddImageInitial());
  final ImagePicker picker = ImagePicker();
  String? image;
  void getImagesGallery() async {
    final XFile? imageFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (imageFile != null) {
      image = imageFile.path.toString();
      emit(AddImageInitial());
    }
  }

  void getImagesCamera() async {
    final XFile? imageFile = await picker.pickImage(source: ImageSource.camera);
    if (imageFile != null) {
      image = imageFile.path.toString();
      emit(AddImageInitial());
    }
  }
}
