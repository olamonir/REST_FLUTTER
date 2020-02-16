
import 'package:flutter/cupertino.dart';

class LoadingState{

  LoadingState();
  LoadingState.loading({this.loading = true , this.error = false , this.retry = false , this.retryCallback});
  LoadingState.errorWithRetry({this.loading = false , this.error = true , this.retry = true , this.message = "Error please try again", this.retryCallback});
  LoadingState.errorNoRetry({this.loading = false , this.error = true , this.retry = false , this.message = "Error please try again", this.retryCallback});
  LoadingState.success({this.loading = false , this.error = false , this.retry = false , this.message = "Success"});


  bool loading = false;
  bool error = false;
  bool retry = false;
  VoidCallback retryCallback;
  String message ="";
}