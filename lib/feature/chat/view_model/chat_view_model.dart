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



  Future<void> sendMessage ( types.PartialText message, types.Room room) async{
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(chatServiceProvider).sendMessage(message, room));

  }
  
}


@riverpod
class RoomViewModel extends _$RoomViewModel {
  @override
  FutureOr<types.Room?> build() {
    return null;
  }

  Future<void> createRoom (types.User user) async{
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(chatServiceProvider).createRoom(user));
  }
}



@riverpod
Stream<List<types.Room>> getRooms (Ref ref) {
  return ref.read(chatServiceProvider).getRooms();

}


@riverpod
Stream<types.Room> getRoom (Ref ref, {required String roomId}) {
  ref.keepAlive();
  return ref.read(chatServiceProvider).getRoom(roomId);

}


@Riverpod(keepAlive: true)
Stream<List<types.Message>> streamMessages(Ref ref, {required types.Room room }) {
  ref.keepAlive();
  return ref.read(chatServiceProvider).getMessage(room);
}

