import 'dart:async';

import 'package:aplikasi_al_quran/provider/time_provider.dart';
import 'package:aplikasi_al_quran/service/surat_service.dart';
import 'package:flutter/material.dart';

class DashboardSceeen extends StatelessWidget {
  const DashboardSceeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("surat"),
      ),
      body: const Text("Text"),
    );
  }
}

// FutureBuilder(
      //   future: SuratService().getSurat(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       var data = snapshot.data;
      //       return ListView.builder(
      //         itemCount: data?.data.length,
      //         itemBuilder: (context, index) {
      //           var surat = data?.data[index].name;
      //           // return Text(surat?.transliteration.id ?? "");
      //           return ListTile(
      //             leading: Text(
      //               surat?.transliteration.id ?? "",
      //               style: const TextStyle(fontSize: 18),
      //             ),
      //             trailing: Text(
      //               surat?.long ?? "",
      //               style: const TextStyle(fontSize: 20),
      //             ),
      //           );
      //         },
      //       );
      //     } else if (snapshot.hasError) {
      //       return const Center(
      //         child: Text("Error"),
      //       );
      //     } else {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //   },
      // ),