import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import 'package:dio/dio.dart';

class NotificationService{

 static final Dio dio = Dio();

 static  Future<void>  sendNotification(String title, String body, String friendId, String roomId) async {
     try{
       await dio.post('https://api.onesignal.com/notifications?c=push',
           data: {
             "app_id": "8d40620a-e8e0-491a-b772-5bc5cad16deb",
             "headings": {"en": title},
             "contents": {
               "en": body
             },
             "android_channel_id": "8851bbbf-d9ea-44f8-ae8a-ef26b23d4234",
             "include_external_user_ids": [friendId],
             "priority": "URGENT",
             "data": {
               "room_id": roomId
             },
             "included_segments": [
               "Active Users"
             ],
           },
           options: Options(
             headers: {
               'Authorization': 'key os_v2_app_rvagecxi4bervn3slpc4vuln5moeapuq7ocu77fgxzzhs3d6a7gqowczzrx7ec2c57yekf4bmpxhxl3x6wmrrafl5p3l3n4xgzwgdlq'
             }
           )
       );

     }on DioException catch(err){
       throw  '${err.response}';
     }

  }

}