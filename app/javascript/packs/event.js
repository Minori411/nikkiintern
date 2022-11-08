$(function() {
    console.log('jQuery!');
  })
$(function(){
    function buildField(index) { 
        console.log(index)
      const html = `<div class="select-scope-event" data-index:"${index}">
                        <select id="area-select" class="area-control" name="schedule[schedule_area_sections_attributes][${index}]][area_id]"><option value="" label=" "></option>
                            <option value="4">All Area</option>
                            <option value="1">A processarea</option>
                            <option value="2">B Utilityarea</option>
                            <option value="3">C Offsite</option></select>
                            <select id="section-select" class="section-control" name="schedule[schedule_area_sections_attributes][${index}]][section_id]"><option value="" label=" "></option>
                            <option value="6">All Section</option>
                            <option value="1">Civil</option>
                            <option value="2">Building</option>
                            <option value="3">Mechanical</option>
                            <option value="4">Piping</option>
                            <option value="6">Erectrical</option>
                        </select>
                        <a class="delete-form-btn-event" data-deletefiled="true" data-index="${index}">
                            <i class="fas fa-times-circle"></i>
                        </a>
                        </div>`;
    return html;
    }

    let fileIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] // 追加するフォームのインデックス番号を用意
    var lastIndex = $(".select-scope-event:last").data("index"); // 編集フォーム用（すでにデータがある分のインデックス番号が何か取得しておく）
    fileIndex.splice(0, lastIndex); // 編集フォーム用（データがある分のインデックスをfileIndexから除いておく）
    let fileCount = $(".hidden-destroy").length; // 編集フォーム用（データがある分のフォームの数を取得する）
    let displayCount = $(".select-scope-event").length // 見えているフォームの数を取得する
    $(".hidden-destroy").hide(); // 編集フォーム用（削除用のチェックボックスを非表示にしておく）
    if (fileIndex.length == 0) $(".add-form-btn-event").css("display","none"); // 編集フォーム用（フォームが５つある場合は追加ボタンを非表示にしておく）

    $(".add-form-btn-event").on("click", function() { // 追加ボタンクリックでイベント発火
      $(".areas-event").append(buildField(fileIndex[0])); // fileIndexの一番小さい数字をインデックス番号に使ってフォームを作成
      fileIndex.shift(); // fileIndexの一番小さい数字を取り除く
    //   if (fileIndex.length == 0) $(".add-form-btn").css("display","none"); // フォームが５つになったら追加ボタンを非表示にする
      displayCount += 1; // 見えているフォームの数をカウントアップしておく
    })
    $(document).on("click", ".delete-form-btn-event", function (e) {
        // $(this)でイベントが発生した要素を取得して削除する

        let index = e.target.getAttribute('data-index')
        e.target.parentElement.parentElement.remove()
    });
});