import 'package:aplikasi_al_quran/contant/api_url.dart';
import 'package:aplikasi_al_quran/model/list_surat_response.dart';
import 'package:dio/dio.dart';

class SuratService {
  Future<ListSuratResponse> getSurat() async {
    try {
      final response = await Dio().get(
        "$url/surah",
      );

      return ListSuratResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception("Failed get data surat $e");
    }
  }
}
