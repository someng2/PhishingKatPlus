// ignore_for_file: file_names

import 'package:voskat/model/simulation/appAction.dart';

List<AppAction> appActionList = [A1a, A1b, A2c, A2d, A3b, A3c, result, A0h, A0a, A1i, A3e];

AppAction A1a = AppAction(
    aa_id: 'A1-a',
    // sid: 'A0-a', contents: '',
    widget: 'A1aPage'
);

AppAction A1b = AppAction(
    aa_id: 'A1-b',
    widget: 'A1bPage'
);


//수신차단
AppAction A2c = AppAction(
    aa_id: 'A2-c',
    widget: 'CustomDialog'
);

AppAction A2d = AppAction(
    aa_id: 'A2-d',
    widget: 'CustomDialog'
);

AppAction A3b = AppAction(
    aa_id: 'A3-b',
    widget: 'A3bPage'
);

AppAction A3c = AppAction(
    aa_id: 'A3-c',
    widget: 'A3cPage'
);

AppAction result = AppAction(
    aa_id: 'result',
    widget: 'SimulationResultPage'
);


AppAction A0a = AppAction(
    aa_id: 'A0-a',
    widget: 'SimulationPage'
);

AppAction A0h = AppAction(
    aa_id: 'A0-h',
    widget: 'AcquaintanceImpersonationPage'
);

AppAction A1i = AppAction(
    aa_id: 'A1-i',
    widget: 'AcquaintanceImpersonationPage'
);

AppAction A3e = AppAction(
    aa_id: 'A3-e',
    widget: 'AcquaintanceImpersonationPage'
);
