const swiper = new Swiper('.swiper', {
    loop : true,
    slidesPerView : 4,
    pagination: {
        el: '.swiper-pagination',
        clickable: true
    },
    navigation: {
        prevEl: '.swiper-button-prev',
        nextEl: '.swiper-button-next'
    }
}); 

let movieTitle = '';

window.onload = () => {
    let today = new Date();
    let year = today.getFullYear();
    let month = String(today.getMonth() + 1).padStart(2, '0');
    let day = String(today.getDate()).padStart(2, '0');
    document.getElementById('printToday').innerHTML = year + '-' + month + '-' + day;
};

$('.poster').click(e => {
    const $event = $(e.currentTarget);
    
    $('.poster').not($event).removeAttr('style');
    $($event).css('transform', 'scale(1.1)');
    $('#movieNo').val($($event).children().eq(1).val());

    movieTitle = $($event).children().eq(2).val();
    
    $('#movieTitle').val(movieTitle);
});

const selectScreenNo = e => {
    if($(e).hasClass('clicked')){
        $('.screenName').removeClass('clicked');
        $('#screenNo').removeAttr('value');
        $('#screenName').removeAttr('value');
       
        return '';
    } 
    else {
        $('.screenName').removeClass('clicked');
        $(e).addClass('clicked');
    }

    $('#select-screen').children().eq(0).html($(e).parent().prev().html());
    $('#select-screen').children().eq(1).html(movieTitle);
    $('#select-screen').children().eq(2).html($(e).children().eq(3).val());
    $('#select-screen').children().eq(3).html($(e).children().eq(1).html());
    $('#screenNo').val(e.children[2].value);
    $('#screenName').val(e.children[3].value);
    $('#theaterName').val($(e).parent().parent().children().eq(0).html());
};

const selectScreen = () => {
    $.ajax({
        url : 'reservations',
        type : 'post',
        data : {
            date : $('#screenDate').val(),
            location : $('#locationOption').val(),
            movieNo : $('#movieNo').val(),
            theaterName : $('#input-theaterName').val()
        },
        success : result => {
            let resultStr = '';

            if(result.length != 0){

                for(let i = 0; i < result.length; i++){
                    resultStr += '<div class="screen">'
                               +    '<div class="theaterName">' + result[i].theaterName + '</div>'
                               +        '<div class="selectScreen">';
                    
                    for(let j = 0; j < result[i].screenList.length; j++){
                        resultStr +=        '<div class="screenName" onclick="selectScreenNo(this)">'
                                   +            '<div style="color: black; height: 35px">' + result[i].screenList[j].screenName + '</div>'
                                   +            '<span style="color: black;">' + result[i].screenList[j].watchDate + '</span>'
                                   +            '<input type="hidden" value="' + result[i].screenList[j].screenNo + '">'
                                   +            '<input type="hidden" value="' + result[i].screenList[j].screenName + '">'
                                   +        '</div>';
                    };
                    
                    resultStr +=        '</div>'
                               +    '</div>'
                               + '</div>';
                };
                
            }
            else {
                resultStr = '<div class="resultMsg">조회된 상영관이 없습니다</div>';
            }

            $('#printScreen').html(resultStr);
        },
        error : () => {
            $('#printScreen').html('조회된 영화관이 없습니다.');
        }
    });
};
    
$("#input-theaterName").keypress(e => {
    if (e.keyCode === 13) {
        e.preventDefault();
        selectScreen();
    }
})

$('#locationOption').change(() => { selectScreen(); });

$('#search-theaterName').click(() =>{ selectScreen(); });

$('#screenDate').change(() => { selectScreen(); });    

$('.poster').click(() => { selectScreen(); });    

$('#submit-btn').click(() => {
    if(!$('#screenNo').val()) alert('상영관을 선택해주세요!');
    else $('form').submit();
});
