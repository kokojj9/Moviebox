window.onload = function() {
    today = new Date();
    today = today.toISOString().slice(0, 10);
    bir = document.getElementById("today");
    bir.value = today;
}
$('#insertScreen').on('click',function(){
    let $screenName = $('#screenName');
    let $selectMovie = $('#selectMovie');
    let $watchTime = $('#watchTime');
    let $today = $('#today');
     $.ajax({
            url : 'insertScreen.admin',
            type : 'get',
            data : {
                screenName : $screenName.val(),
                theaterNo : theaterNo,
                selectMovie : $selectMovie.val(),
                watchTime : $watchTime.val(),
                watchDate : $today.val()
            },
            success : function(result){
                
                if(result == 1){
                    view($today);	
                }else{
                    alert('실패');
                }
                
            }
         });
});

$('#today').on('change' , function(){
    let $today = $(this);
    
    view($today);
              
});

function view(today){
    $.ajax({
        url : 'selectDate.admin',
        type : 'get',
        data : {
            watchDate : today.val(),
            theaterNo : theaterNo
        },
        success : function(result){
            let resultStr = '';
            let resultOption = '';
            $('#screenList-top').html('');
            resultStr += '<div class="row">';
            
            for(let i = 0;i< result.length; i++){
                resultOption = '';
                resultNameOption = '';
                resultStr += '<div class="screenList col-sm-6 " style="height: 250px;margin-top: 40px">' +
                                '<div class="screenList-title">'+ 
                                    result[i].screenName +'관' +
                                '</div>';
                for(let k = 0; k < result[i].movieNameList.length;k++){
                    resultNameOption += '<option value="' + result[i].movieNameList[k].movieNo + '">' + result[i].movieNameList[k].movieTitle + '</option>';  
                }
                for(let j = 0; j< result[i].movieList.length;j++){
                    resultOption +='<div>' + '<select name="movie" id="' + result[i].movieList[j].screenNo + '">'+ resultNameOption +
                                    '</select>' + 
                                        '<input type="time" value="'+ result[i].movieList[j].watchDate +'">'  +
                                    '</div>';
                }
                
                resultStr += resultOption + '</div>';                
                                
            }
            
            resultStr += '</div>';
            console.log(resultStr);
            $('#screenList-top').html(resultStr);
            
            
            
          for(let i= 0; i< result.length; i++){
               for(let j = 0; j< result[i].movieList.length;j++){
                   const aaa = '#' + result[i].movieList[j].screenNo;
                   const bbb = result[i].movieList[j].movieNo;
                   $(aaa).val(bbb).prop("selected",true);
                   
               }
           }
        }
        
    });
}