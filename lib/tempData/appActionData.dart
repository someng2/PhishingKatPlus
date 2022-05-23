// ignore_for_file: file_names

import 'package:voskat/model/simulation/appAction.dart';

List<AppAction> appActionList = [A1a, A1b, A2c, A2d, A3b, A3c, Result];

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

AppAction Result = AppAction(
    aa_id: 'Result',
    widget: 'SimulationResultPage'
);