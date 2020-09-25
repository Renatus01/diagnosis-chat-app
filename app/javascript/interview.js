// ページ全部が読み込まれた後に実行する
window.onload = (function () {
  // 指定ボタンを押下すると処理を開始する
  $(".btn").on("click", function () {
      // 質問に答えると次の質問に移動する
      $(this).closest("div").css("display", "none"); //質問画面にあたらる親要素divをdisplay:none;にする
      id = $(this).attr("href");                     //次の質問hrefをidに格納
      $(id).addClass("fit").show("slow");            //次の質問にfitをつけて出力。
    });

//選択ボタンデータを配列に入れてカウントする関数
// debugger
      var countA;            //data-value="a"を選択した数を入れる変数
      var countB;            //data-value="b"を選択した数を入れる変数
      var countC;            //data-value="c"を選択した数を入れる変数
      var box =[];           //それぞれのデータを配列に入れるための変数box
      

    $(".btn").each(function(){
      $(this).on('click',function(){
        var value = $(this).data("value");
         box.push(value);

        countA = box.filter(function(x){
                      return x === "a"
                    }).length;             //aの数を変数countAへ入れる
        countB = box.filter(function(y){
                      return y === "b"
                    }).length;             //bの数を変数countBへ入れる
        countC = box.filter(function(z){
                      return z === "c"
                    }).length;             //cの数を変数countCへ入れる
      });
    });

//結果を出力する関数
    $('.end').on('click',function(){
      if( countA >= 3 ) {
        $('#answer_01').css("display",""); //回答1
      } else if ( countC >= 3 ){
        $('#answer_03').css("display",""); //回答3
      } else {
        $('#answer_02').css("display",""); //回答2
      }
    });
});