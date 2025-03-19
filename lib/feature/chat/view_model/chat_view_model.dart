import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/feature/chat/service/chat_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
part 'chat_view_model.g.dart';


@riverpod
class ChatViewModel extends _$ChatViewModel {
  @override
  FutureOr<void> build()  {}


  // AsyncData,AsyncError/AsyncLoading

  Future<void> createRoom (types.User user) async{
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(chatServiceProvider).createRoom(user));

  }

  Future<void> sendMessage ( types.PartialText message, types.Room room) async{
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(chatServiceProvider).sendMessage(message, room));

  }
  
}



@riverpod
Stream<List<types.Room>> getRooms (Ref ref) {
  return ref.read(chatServiceProvider).getRooms();

}


@riverpod
Stream<List<types.Message>> streamMessages(Ref ref, {required types.Room room }) {
  return ref.read(chatServiceProvider).getMessage(room);
}

