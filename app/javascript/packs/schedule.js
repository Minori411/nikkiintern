$(function() {
    function readURL(input) {
        if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
    $('#news_image').attr('src', e.target.result);
        }
        reader.readAsDataURL(input.files[0]);
        }
    }
    $('#news_file').change(function(){
        console.log(3);
        readURL(this);
    });
});

$(function() {
    const submitTarget = document.getElementById('search_news')
    const aSelect = document.querySelector('#a_processarea')
    const bSelect = document.querySelector('#b_utilityarea')
    const cSelect = document.querySelector('#c_offsite')
    const civilSelect = document.querySelector('#civil')
    const buildingSelect = document.querySelector('#building')
    const mechanicalSelect = document.querySelector('#mechanical')
    const pipingSelect = document.querySelector('#piping')
    const erectricalSelect = document.querySelector('#erectrical')
    const submitButton = document.querySelector('#search-submit')

    $(aSelect).on('change', function() {
        submitTarget.submit()
    })
    $(bSelect).on('change', function() {
        submitTarget.submit()
    })
    $(cSelect).on('change', function() {
        submitTarget.submit()
    })
    $(civilSelect).on('change', function() {
        submitTarget.submit()
    })
    $(buildingSelect).on('change', function() {
        submitTarget.submit()
    })
    $(mechanicalSelect).on('change', function() {
    submitTarget.submit()
    })
    $(pipingSelect).on('change', function() {
    submitTarget.submit()
    })
    $(erectricalSelect).on('change', function() {
    submitTarget.submit()
    })
});

$(function(){
    function buildField(index) {  // 追加するフォームのｈｔｍｌを用意
      const html = `<div class="select-scope" data-index: "${index}">
                        <select id="area-select" class="area-control" name="news[areas][area_name]"><option value="" label=" "></option>
                            <option value="1">All Area</option>
                            <option value="2">A processarea</option>
                            <option value="3">B Utilityarea</option>
                            <option value="4">C Offsite</option></select>
                        <select id="section-select" class="section-control" name="news[areas][section_name]"><option value="" label=" "></option>
                            <option value="1">All Section</option>
                            <option value="2">Civil</option>
                            <option value="3">Building</option>
                            <option value="4">Mechanical</option>
                            <option value="5">Piping</option>
                            <option value="6">Erectrical</option>
                        </select>
                        <span class="delete-form-btn">
                            削除する
                        </span>
                        </div>`;
      return html;
    }
  
    let fileIndex = [1, 2, 3, 4] // 追加するフォームのインデックス番号を用意
    var lastIndex = $(".select-scope:last").data("index"); // 編集フォーム用（すでにデータがある分のインデックス番号が何か取得しておく）
    fileIndex.splice(0, lastIndex); // 編集フォーム用（データがある分のインデックスをfileIndexから除いておく）
    let fileCount = $(".hidden-destroy").length; // 編集フォーム用（データがある分のフォームの数を取得する）
    let displayCount = $(".select-scope").length // 見えているフォームの数を取得する
    $(".hidden-destroy").hide(); // 編集フォーム用（削除用のチェックボックスを非表示にしておく）
    if (fileIndex.length == 0) $(".add-form-btn").css("display","none"); // 編集フォーム用（フォームが５つある場合は追加ボタンを非表示にしておく）
  
    $(".add-form-btn").on("click", function() { // 追加ボタンクリックでイベント発火
      $(".areas").append(buildField(fileIndex[0])); // fileIndexの一番小さい数字をインデックス番号に使ってフォームを作成
      fileIndex.shift(); // fileIndexの一番小さい数字を取り除く
      if (fileIndex.length == 0) $(".add-form-btn").css("display","none"); // フォームが５つになったら追加ボタンを非表示にする
      displayCount += 1; // 見えているフォームの数をカウントアップしておく
    })
  })
