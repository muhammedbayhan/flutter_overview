//implements=> method copy change

import 'dart:io';


abstract class IFileDownload{
  bool? downloadItem(FileItem? fileItem);

    void toShare(String path){}
}

class FileDownload extends IFileDownload{
  @override
  bool? downloadItem(FileItem? fileItem){
      if (fileItem==null) throw FileDownloadException();
      return true;


   }
   
     @override
     void toShare(String path) {
    // TODO: implement toShare
     }
}

class FileItem{
  final String  name;
  final File file;

  FileItem(this.name, this.file);

}




//newpage
class FileDownloadException implements Exception {

  @override
  String toString() {
    return "File download has failed";
  }
  
}



mixin ShareMixin on IFileDownload{

  
}
