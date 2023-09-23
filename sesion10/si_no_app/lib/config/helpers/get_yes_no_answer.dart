import 'package:dio/dio.dart';
import 'package:si_no_app/config/infrastructure/model/yes_no_model.dart';
import 'package:si_no_app/domain/entities/message.dart';

class GetYesNoAnswer{
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesnomodel = YesNoModel.fromJsonMap(response.data);

    return Message(
      text: yesnomodel.answer,
      fromWho: FromWho.other,
      imageUrl: yesnomodel.imageUrl,
    );

    // return  response.data['answer'] == 'yes'
    //     ? Message(text: 'Si', fromWho: FromWho.other, imageUrl: response.data['image'])
    //     : Message(text: 'No', fromWho: FromWho.other, imageUrl: response.data['image']);
  }

}