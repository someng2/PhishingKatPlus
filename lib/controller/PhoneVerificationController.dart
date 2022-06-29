import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';

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
    print(buffer.toString());

    /// signing key
    var key = utf8.encode(secretKey);
    var signingKey = Hmac(sha256, key);

    var bytes = utf8.encode(buffer.toString());
    var digest = signingKey.convert(bytes);
    String signatureKey = base64.encode(digest.bytes);
    print('signatureKey: $signatureKey');
    return signatureKey;

  }

  void sendSMS(String phoneNumber) async {
    // NaverCloudPlatform - 내 계정 관리 - 인증키 관리 - 인증키 발급 / 발급한 인증키 사용
    String AccessKey = "2cTUQFE8e3PYtPPVXq7d";

    //NaverCloudPlatform - 내 계정 관리 - 인증키 관리 - 발급한 인증키의 SecretKey 사용
    String SecretKey = "H4pyKHvgdXm4AlgycwmjevXQQ8rSnRPG1GxGi6C0";

    String OpenApiKey = "ncp:sms:kr:267090247781:phishingkat_plus";

    Map data = {
      "type": "SMS",
      "contentType": "COMM",
      "countryCode": "82",
      "from": "01065791301",
      "content": "ABCD", // ----[A]
      "messages": [
        {
          "to": phoneNumber,
          "content": "[PhishingKat Plus] 인증번호 1234" // ----[B] 실제로 문자가 발송 되는 내용
        }
      ],
    };
    var result = await http.post(
        Uri.parse(
            "https://sens.apigw.ntruss.com/sms/v2/services/${Uri.encodeComponent('SecretKey')}/messages"),
        headers: <String, String>{
          "accept": "application/json",
          'content-Type': 'application/json; charset=UTF-8',
          'x-ncp-apigw-timestamp': DateTime.now().toString(),
          'x-ncp-iam-access-key': AccessKey,
          'x-ncp-apigw-signature-v2': getSignature(
              Uri.encodeComponent(OpenApiKey),
              DateTime.now().toString(),
              AccessKey,
              SecretKey)
        },
        body: json.encode(data));
    print(result.body);
    print('---');
  }
}
