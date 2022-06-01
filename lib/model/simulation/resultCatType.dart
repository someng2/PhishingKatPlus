// ignore_for_file: file_names

class ResultCatType {
  String catID;

  // String under50Type; // 0~50점
  // String over50Type; //  51~100점
  String catName;
  String catDescription;
  String catExtraDescription; // ㅍㅏ트너일 때 설명
  String catImage;
  String titleDescription;
  double titleDescriptionSize;
  List<String> descriptionList;
  String exampleScenario;
  String worstPartnerID;
  String bestPartnerID;

  ResultCatType(
      {required this.catID,

      required this.catName,
        required this.catDescription,
        required this.catExtraDescription,
      required this.catImage,
      required this.titleDescription,
      required this.titleDescriptionSize,
      required this.descriptionList,
        required this.exampleScenario,
      required this.worstPartnerID,
      required this.bestPartnerID});
}
