

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:shoppy11/constants/constant.dart';
import 'package:shoppy11/utilities/snackbar_utils.dart';

class InternetChecker {
  checkInternetStatus() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (!connectivityResult.contains(ConnectivityResult.mobile) &&
        !connectivityResult.contains(ConnectivityResult.wifi)) {
      SPSnackBarUtilities().showSnackBar(
          message: kInternetErrorMessage, snackbarType: SNACKBARTYPE.error);
      return;
    }
  }
}
