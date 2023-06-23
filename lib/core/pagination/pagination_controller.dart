import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ossos_test/core/widgets/scaffold_messenger.dart';

abstract class PaginationController<T> extends GetxController {
  List<T> data = [];
  List<T> get getData => data;
  int pageNumber = 1;
  bool loader = false;
  bool isFinish = false;
  int pageSize = 10;
  bool hasError = false;

  String errorMessage = "";

  bool get shouldLoadThePagingation => loader && pageNumber != 1;
  bool get shouldLoadTheMain => loader && pageNumber == 1;

  @protected
  Future<List<T>> apiCall();

  final ScrollController scrollController = ScrollController();

  Future<void> fetch() async {
    clearPage();
    await fetchData();
    scrollController.addListener(() async {
      if (scrollController.position.atEdge) {
        bool isTop = scrollController.position.pixels == 0;
        if (isTop) {
        } else {
          await fetchData();
        }
      }
    });
  }

  Future fetchData() async {
    try {
      if (!getLoader && !isFinish) {
        setLoader();
        List<T> response = await apiCall();
        if (response.length < pageSize) {
          isFinish = true;
        } else {
          pageNumber++;
        }
        data.addAll(response);
        disableLoader();
      }
    } catch (e) {
      disableLoader();
      setError();
      errorMessage = e.toString();
      
      toastErrorMessage(e.toString());
    }
  }

  Future refreshData() async {
    loader = false;
    isFinish = false;
    pageNumber = 1;
    data = [];
    hasError = false;
    update();
  }

  void setError() {
    hasError = true;
    update();
  }

  void setLoader() {
    loader = true;
    update();
  }

  bool get getLoader => loader;

  void disableLoader() {
    loader = false;
    update();
  }

  void clearPage() {
    pageNumber = 1;
    loader = false;
    isFinish = false;
    hasError = false;
    data.clear();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
