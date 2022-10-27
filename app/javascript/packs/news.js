// TODO: 「料金の幅」選択が変更されたら、JS 側の制御で 自動的に submit する
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