console.log("Reply Module...");

var replyService =  (function(){
    function add(reply, callback, error){
        console.log("reply...");
        $.ajax({
            type : 'post',                                          //전송타입 주의
            url : '/boardDiary/replies/new',
            data : JSON.stringify(reply),
            contentType : "application/json; charset=utf-8",        //전송

            success : function(result, status, xhr){                //전송 성공. 
                if(callback){                   
                    callback(result);                     //넘겨받은 함수
                }
            },
            
            error : function(xhr, status, er){                      //전송 실패
                if(error){
                    error(er);
                }
            }
        });
    }                                                      //end add

    function getList(param, callback, error){
        var boardNum = param.boardNum;
        var page = param.page || 1;
		console.log("getList ajax start");
		console.log(boardNum);
		console.log(page);
        $.ajax({
            type : "get",
            url : "/boardDiary/replies/pages/" + boardNum + "/" + page,           //data와 contentType이 없으면 생략
            
            success : function(data, status, xhr){                
                if(callback){                   
                    callback(data.replyCount, data.list);                     
                }
            },
            
            error : function(xhr, status, er){                     
                if(error){
                    error(er);
                }
            }
        });                                             
    }                                                       //end get List 

    function remove(replyNum, replyWriter, callback, error){
        $.ajax({
            type : "delete",
            url : "/boardDiary/replies/" + replyNum,
			data : JSON.stringify({replyNum:replyNum, replyWriter:replyWriter}),
            contentType : "application/json; charset=utf-8", 
            success : function(result, status, xhr){
                if(callback){
                    callback(result);
                }
            },

            error : function(xhr, status, er){
                if(error){
                    error(er);
                }
            }
        });
    }                                                       //end remove

    function update(reply, callback, error){
        console.log("ReplyNum : " + reply.replyNum);

        $.ajax({
            type : "put",
            url : "/boardDiary/replies/" + reply.replyNum,
            data : JSON.stringify(reply),
            contentType : "application/json; charset=utf-8",

            success : function(result, status, xhr){
                if(callback){
                    callback(result);
                }
            },

            error : function(xhr, status, er){
                if(error){
                    error(er);
                }
            }

        });
    }                                                       //end update

    function get(replyNum, callback, error){
        console.log("get : " + replyNum);

        $.ajax({
            type: "get",
            url: "/boardDiary/replies/"+replyNum,

            success : function(result, status, xhr){
                if(callback){
                    callback(result);
                }
            },

            error : function(xhr, status, er){
                if(error){
                    error(er);
                }
            }
        });
    }                                                       //end get

    function displayTime(timeValue){
        var today = new Date();
        
		var time = new Date(timeValue);
		console.log("time>>"+time);
			
        var gap = today.getTime() - time;
     	console.log("today>>"+today.getTime());
     	console.log("timeV>>"+timeValue);
     	console.log("gap">>>+gap)
     	
        var dateObj = new Date(timeValue);

        console.log("dateObj : " + dateObj);
     
        var str = "";

        if(gap<(1000*60*60*24)){                    //24시간(밀리초*초*분*시)
            var hh = dateObj.getHours();
            var mi = dateObj.getMinutes();
            var ss = dateObj.getSeconds();

            return [(hh>9? '' : '0') + hh, ":", (mi>9? '' : '0') + mi, ":", (ss>9? '' : '0') + ss].join("");
        } else {
            var yy = dateObj.getFullYear();
            var mm = dateObj.getMonth() + 1;        //getMonth : zero-based
            var dd = dateObj.getDate();

            return [yy, "/", (mm>9? '' : '0') + mm, "/", (dd>9? '' : '0') + dd].join("");
        }
    }                                                       //end displayTime

    return {
        add : add,
        getList : getList,
        remove : remove,
        update : update,
        get : get,
        displayTime : displayTime
    };
})();