// Change the selector if needed
var $table = $('table'),
    $tableBody = $('table tbody'),
    $bodyCells = $table.find('tbody tr:first').children(),
    colWidth;

function changeTableHead ( JQuery ) {
    colWidth = $bodyCells.map(function() {
        return $(this).width();
    }).get();
    
    // Set the width of thead columns
    $table.find('thead tr').children().each(function(i, v) {
        $(v).width(colWidth[i]);
    });
}

function tryUpdate () {
    colWidth = $bodyCells.map(function() {
        return $(this).width();
    }).get();

    if(colWidth[0] == 0){
        console.log(colWidth);
        setTimeout(tryUpdate, 500);
    } else {
        console.log('entrei aqui')
        changeTableHead();
    }

}

$( window ).resize(changeTableHead);

$( window ).on('load', tryUpdate );
