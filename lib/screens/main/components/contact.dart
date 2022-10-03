/*

Future openFile({required String url, String? fileName}) async {
  final name = fileName ?? url.split('/').last;
  final file = await pickFile();
  if (file == null) return;

  print('Path: ${file.path}');
  OpenFile.open(file.path);
}

Future<File?> pickFile() async {
  final result = await FilePicker.platform.pickFiles();
  if (result == null) return null;
  return File(result.files.first.path!);
}

Future<Object> downloadFile(String url, String name) async {
  final appStrorage = await getApplicationDocumentsDirectory();
  final file = File('${appStrorage.path}/$name');

  try {
    final response = await Dio().get(
      url,
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: false,
        receiveTimeout: 0,
      ),
    );

    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(response.data);
    await raf.close();

    return file;
  } catch (e) {
    return Null;
  }
}*/
