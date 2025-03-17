import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_view_model.g.dart';


@riverpod
class ChatViewModel extends _$ChatViewModel {
  @override
  FutureOr<void> build()  {}

  // Future<void> createRoom (types.User user) async{
  //   try{
  //     await chatCore.createRoom(user);
  //
  //   }on FirebaseException catch (err){
  //     throw err.message ?? 'something went wrong';
  //   }
  //
  // }
  
}
