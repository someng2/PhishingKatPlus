
// ignore_for_file: file_names

import 'package:voskat/model/simulation/appPage.dart';

List<AppPage> appActionList = [A1a, A1b, A2c, A2d, A3b, A3c, result, A0h, A0a, A1i, A3e];

AppPage A1a = AppPage(
    ap_id: 'A1-a',
    // sid: 'A0-a', contents: '',
    widget: 'A1aPage'
);

AppPage A1b = AppPage(
    ap_id: 'A1-b',
    widget: 'A1bPage'
);


//수신차단
AppPage A2c = AppPage(
    ap_id: 'A2-c',
    widget: 'CustomDialog'
);

AppPage A2d = AppPage(
    ap_id: 'A2-d',
    widget: 'CustomDialog'
);

AppPage A3b = AppPage(
    ap_id: 'A3-b',
    widget: 'A3bPage'
);

AppPage A3c = AppPage(
    ap_id: 'A3-c',
    widget: 'A3cPage'
);

AppPage result = AppPage(
    ap_id: 'result',
    widget: 'SimulationResultPage'
);


AppPage A0a = AppPage(
    ap_id: 'A0-a',
    widget: 'SimulationPage'
);

AppPage A0h = AppPage(
    ap_id: 'A0-h',
    widget: 'AcquaintanceImpersonationPage'
);

AppPage A1i = AppPage(
    ap_id: 'A1-i',
    widget: 'AcquaintanceImpersonationPage'
);

AppPage A3e = AppPage(
    ap_id: 'A3-e',
    widget: 'AcquaintanceImpersonationPage'
);

// // ignore_for_file: file_names
//
//
//
//
//
//
//
//
//
// AppAction A1a = AppAction(aa_id: 'A1-a', widget: 'A1aPage');
//
// AppAction A1s = AppAction(aa_id: 'A1-s', widget: 'A1sPage');
//
// AppAction A1b = AppAction(aa_id: 'A1-b', widget: 'A1bPage');
//
// AppAction A2a = AppAction(aa_id: 'A2-a', widget: 'A2aPage');
//
// AppAction Result = AppAction(aa_id: 'result', widget: 'SimulationResultPage');
//
// AppAction A2b = AppAction(aa_id: 'A2-b', widget: 'A2bPage');
//
// //수신차단
// AppAction A2c = AppAction(
//     aa_id: 'A2-c',
//     widget: 'CustomDialog'
// );
//
// AppAction A2d = AppAction(
//     aa_id: 'A2-d',
//     widget: 'CustomDialog'
// );
//
// AppAction A3b = AppAction(
//     aa_id: 'A3-b',
//     widget: 'A3bPage'
// );
//
// AppAction A3c = AppAction(
//     aa_id: 'A3-c',
//     widget: 'A3cPage'
// );
//
//
// List<AppAction> appActionList = [A1a, A1s, A1b, A2a, Result, A2b,
//                                  A2c, A2d, A3b, A3c
//                                 ];
//

