import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/feature/user/service/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;


part 'user_view_model.g.dart';


@riverpod
Stream<List<types.User>>  usersStream (Ref ref) {
   return ref.read(userServiceProvider).usersStream();
}





