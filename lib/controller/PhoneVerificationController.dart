import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class PhoneVerificationController {
  String getSignature(
      String serviceId, String timeStamp, String accessKey, String secretKey) {
    var space = " "; // one space
    var newLine = "\n"; // new line
    var method = "POST"; // method
    var url = "/sms/v2/services/$serviceId/messages";

    var buffer = StringBuffer();
    buffer.write(method);
    buffer.write(space);
    buffer.write(url);
    buffer.write(newLine);
    buffer.write(timeStamp);
    buffer.write(newLine);
    buffer.write(accessKey);
    print('buffer.toString() => ${buffer.toString()}');

    /// signing key
    var key = utf8.encode(secretKey);
    var signingKey = Hmac(sha256, key);

    var bytes = utf8.encode(buffer.toString());
    var digest = signingKey.convert(bytes);
    String signatureKey = base64.encode(digest.bytes);
    print('signatureKey => $signatureKey');
    return signatureKey;
  }

  Future<String> sendSMS(String phoneNumber) async {
    // NaverCloudPlatform - 내 계정 관리 - 인증키 관리 - 인증키 발급 / 발급한 인증키 사용
    String AccessKey = "2cTUQFE8e3PYtPPVXq7d";

    //NaverCloudPlatform - 내 계정 관리 - 인증키 관리 - 발급한 인증키의 SecretKey 사용
    String SecretKey = "H4pyKHvgdXm4AlgycwmjevXQQ8rSnRPG1GxGi6C0";

    // String OpenApiKey = "ncp:sms:kr:267090247781:phishingkat_plus";
    String OpenApiKey = "ncp:sms:kr:267090278852:phishingkat_sms";

    int dateTime = DateTime.now().millisecondsSinceEpoch;
    String timeStamp = "$dateTime";
    // print('timeStamp: \'$timeStamp\'');

    String verificationNum = generateRandomNum();

    // print('verificationNum: $verificationNum');

    // for(var i=0;i<100;i++) { //100번 루프
    //   var password = generateRandomNum();
    //   print('[$i] password: $password');
    // }

    Map data = {
      "type": "SMS",
      "contentType": "COMM",
      "countryCode": "82",
      "from": "01065791301",
      "content": "ABCD", // ----[A]
      // "subject": "",
      "messages": [
        {
          "to": phoneNumber,
          // "to": "01072924045",
          "content": "[PhishingKat Plus]\n인증번호는 [$verificationNum]입니다.", // ----[B] 실제로 문자가 발송 되는 내용
        }
      ],
    };
    var result = await http.post(
        // Uri.parse(
        //     "https://sens.apigw.ntruss.com/sms/v2/services/${Uri.encodeComponent(SecretKey)}/messages"),
        Uri.parse(
            "https://sens.apigw.ntruss.com/sms/v2/services/${Uri.encodeComponent(OpenApiKey)}/messages"),
        headers: <String, String>{
          "accept": "application/json",
          'content-Type': "application/json; charset=UTF-8",
          'x-ncp-apigw-timestamp': timeStamp,
          'x-ncp-iam-access-key': AccessKey,
          'x-ncp-apigw-signature-v2': getSignature(
              Uri.encodeComponent(OpenApiKey),
              timeStamp, AccessKey, SecretKey)
        },
        body: json.encode(data));
    print('data => $data');
    print('result.body => ${result.body}');
    print('---');


    return verificationNum;

  }

  String generateRandomNum() {
    var _random = Random();
    var min = 0x30; //start ascii  사용할 아스키 문자의 시작
    var max = 0x39; //end ascii    사용할 아스키 문자의 끝
    var dat = [];   //비밀번호 저장용 리스트

    while(dat.length < 6) { //무작위로 32개를 생성한다
      var tmp = min + _random.nextInt(max - min); //랜덤으로 아스키값 받기

      //dat 리스트에 추가
      dat.add(tmp);
    }

    return String.fromCharCodes(dat.cast<int>());
  }
}
