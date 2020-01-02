// 因為要使用超文件表單, 因此導入 html 程式庫
import "dart:html";

kgtolb(num kg){
return kg*2.2046223;
}

lbtokg(num lb){
return lb*0.45359243;
}
main() {
    InputElement tempInput = querySelector("#weight");
    querySelector("#submit").onClick.listen((e) => convert(tempInput.value));
}
convert(String data){
  int len;
  var type;
  var number;
  LabelElement output = querySelector("#output");
  len = data.length;
  type = data[len-2];
  number = data.substring(0, len-2);
  number = int.parse(number);
  if (type == "k"){
      output.innerHtml =" $number 公斤 =  ${kgtolb(number).toStringAsFixed(2)} 磅";
    }else if (type == "l"){
     output.innerHtml =" $number 磅 =  ${kgtolb(number).toStringAsFixed(2)} 公斤";
    } else {
     output.innerHtml = "請輸入數字加上 kg 或 lb!";
  }
} 