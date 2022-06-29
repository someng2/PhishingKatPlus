// ignore_for_file: file_names

class ResultCatType {
  String cat_id;
  // String under50Type; // 0~50점
  // String over50Type; //  51~100점
  String catName;
  String catDescription;
  String descriptionAsPartner; // ㅍㅏ트너일 때 설명
  String catImage;
  String titleDescription;
  double titleDescriptionSize;
  List<String> catDescriptionList;
  String exampleScenario;
  String worstPartnerID;
  String bestPartnerID;

  ResultCatType(
      {required this.cat_id,

      required this.catName,
        required this.catDescription,
        required this.descriptionAsPartner,
      required this.catImage,
      required this.titleDescription,
      required this.titleDescriptionSize,
      required this.catDescriptionList,
        required this.exampleScenario,
      required this.worstPartnerID,
      required this.bestPartnerID});
}
