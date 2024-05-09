let resvAdult = ['', 0];
let resvTeen = ['', 0]; 
let selectSeat = [];
let mousedrag = false;
let selectPeople = 0;
let peopleCount = 0;
let adultCount = 0;
let teenCount = 0;

const init = () => {

    $.ajax({
        url : 'reservations/' + selectScreenNo,
        type : 'get',
        success : result => {
            result.forEach(seat => {
                $('.seats').each((i, e) => {
                    if ($(e).html() === seat.seatNo) {
                        $(e).addClass('disabled');
                        $(e).html('X');
                    };
                });
            });
        },
        error : () => {
            console.log(selectScreenNo);
            alert('잘못된 상영관 정보입니다. 상영관을 다시 선택해주세요!');
            location.href = '/moviebox/movie.reservation';
        }
    });
    
    $('#movie-select>div').css('text-align', 'center');
    $('#reservation-info>div>div').last().css('margin-top', '50px');
};

$('.people-Count').on('click', e => {
    let ageType = $(e.currentTarget).parent().prev().children().eq(0);

    if(ageType.html() == '청소년'){
        teenCount = Number($(e.currentTarget).html());
        $('.people-teen').addClass('clicked');

        if($(e.currentTarget).hasClass('clicked')) {
            $('.teenBtn').removeClass('clicked');
            ageType.removeClass('clicked');
            
            teenCount = 0;
        }
        else{
            $('.teenBtn').removeClass('clicked');
            $(e.currentTarget).addClass('clicked');
            ageType.addClass('clicked');
        };
        countPeople(ageType);
    }
    else{
        adultCount = Number($(e.currentTarget).html());
        $('.people-adult').addClass('clicked');

        if($(e.currentTarget).hasClass('clicked')) {
            $('.adultBtn').removeClass('clicked');
            ageType.removeClass('clicked');
            
            adultCount = 0;
        }
        else{
            $('.adultBtn').removeClass('clicked');
            $(e.currentTarget).addClass('clicked');
            ageType.addClass('clicked');
        };
        countPeople(ageType);
    };
    
    peopleCount = teenCount + adultCount;
    selectSeat = [];
    
    $('.seats').removeClass('clicked');
    $("#check-area").hide();
    
    printPeople();
});

const countPeople = ageType => {
    let ageBtns = (ageType.html().trim() === '청소년') ? $('.adultBtn') : $('.teenBtn');
    let maxCount = (ageType.html().trim() === '청소년') ? (8 - teenCount) : (8 - adultCount);

    ageBtns.each((i, e) => {
        if ($(e).html() > maxCount) {
            $(e).prop('disabled', true);
        } else {
            $(e).prop('disabled', false);
        }
    });
};

const printPeople = () => {
    selectPeople = teenCount + adultCount;

    if(selectPeople < 9) {
        $('#select-people').html(
            '<div>청소년 : ' + teenCount + '명</div>'
           +'<div>  성인 : ' + adultCount + '명</div>'
           +'<div>  전체 : ' + selectPeople + '명</div>'
        );
    } 
    else {
        alert('선택 가능한 인원은 최대 8명입니다!');
        $('.people-Count').removeClass('clicked');
        $('.ageBtn').removeClass('clicked');
        $('#select-people').html('');

        teenCount = 0;
        adultCount = 0;
    };
    
    peopleCount = 0;
};

$('.seats').on('mousedown', (e) => {
    mousedrag = true;
    
    selectSeats(e.currentTarget);
    arrangeSeat();
});

$('.seats').on('mouseenter', (e) => {
    if(mousedrag){
        selectSeats(e.currentTarget);
        arrangeSeat();
    }
});

$(document).on('mouseup', () => {
    mousedrag = false;
});

const selectSeats = e => {
    let index = selectSeat.indexOf($(e).html());

    if($(e).hasClass('clicked')) {
        $(e).removeClass('clicked');
        $("#check-area").hide();

        selectSeat.splice(index, 1);
        selectPeople += 1;
    } 
    else {
        if(selectPeople < 1 ) {
            if(!$('.people-Count').hasClass('clicked')) alert('인원을 먼저 선택해주세요.');
            else alert('좌석을 모두 선택하셨습니다.'); mousedrag = false;
        }
        else {
            $(e).addClass('clicked');
            selectSeat.push($(e).html());
            selectPeople -= 1;
        };
    };
};

const arrangeSeat = () => {
    selectSeat.sort((a, b) => {
        let strA = a.match(/[A-F]/);
        let strB = b.match(/[A-F]/);
        
        if (strA < strB) return -1;
        else if (strA > strB) return 1;
        
        let numA = parseInt(a.match(/\d+/));
        let numB = parseInt(b.match(/\d+/));

        return numA - numB;
    });
};

$('#print-resv-info').click(() => {
    $.ajax({
        url : 'reservations/' + selectMovieNo + '/' + selectScreenNo + '/' + teenCount + '/' + adultCount,
        type : 'post',
        /*
        data : {
            screenNo : selectScreenNo,
            movieNo : selectMovieNo,
            teenAge : teenCount,
            adultAge : adultCount 
        },
        */
        success : result => {
            if(!(selectSeat.length == 0) && selectPeople == 0){
                
                let selectSeats = selectSeat.join(', ');
                
                let MovieItems = [
                    result.movieTitle,
                    result.movie.movieRelease,
                    result.movie.genreName + ' / ' + result.movie.movieRt + '분'
                ];
                
                let resvItems = [
                    result.watchDate,
                    result.theaterName,
                    result.screenName,
                    Number(teenCount + adultCount) + '인',
                    selectSeats,
                    result.price.totalPrice + '원'
                ];

                let inputval = [
                    selectMovieNo, 
                    selectScreenNo, 
                    memberNo,
                    teenCount, 
                    adultCount, 
                    selectSeats
                ];

                $('#poster-select > img').attr('src', path + '/'+ result.movie.filePath + '/' + result.movie.changeName);
                
                $('#movie-select').children().each((i, e) => {
                    $(e).html(MovieItems[i]);
                });
                
                $('#print-reservation-info').children().each((i, e) => {
                    $(e).html(resvItems[i]);
                });

                $('#payment-form').children().each((i, e) => {
                    $(e).val(inputval[i]);
                });
                
                $("#check-area").removeAttr("hidden");
                $("#check-area").show();
            }
            else {
                alert('좌석을 모두 선택해주세요!');
                $("#check-area").hide();
            };
        },
        error : () => {
            alert('예매정보 오류!');
            location.href = '\moviebox';
        }
    });
});

const payment = () => {
    if(confirm('현재 예매 정보로 결제하시겠습니까?')) {
        return true;
    };

    return false;
};

init();