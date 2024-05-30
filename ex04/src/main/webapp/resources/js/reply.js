console.log("Reply Module..........")

var replyService = (function(){

	function add(reply, callback){
		console.log(" add reply............" + reply)
		//비동기 통신
		$.ajax({
			type: "post",
			url: "/reply/new",
			data: JSON.stringify(reply),  		//{reply:"JS Test2", replyer: "tester2", bno:bnoValue},
			contentType: "application/json; charset=utf-8",

			success : function(result, status, xhr){
				if(callback){
					callback(result)
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er)
				}
			}
		})
	}; // end add

	function getList(param, callback, error){
	
		console.log("bno & page......... : " ,param.bno , "," , param.page)
		 
		var bno = param.bno;
		var page = param.page || 1

		$.ajax({
			type: "get",
			url: "/reply/pages/" + bno + "/" + page,

			success: function(data, status,xhr){
				
				if(callback){
					callback(data.replyCnt, data.list)
				}
			},
			error: function(xhr, status, err){
				if(error){
					error();
				}
			}
		})
	}   // end getList

	function remove(rno, callback, error){
	
		console.log("remove Rno : " + rno)
		$.ajax({
			type: "delete",
			url: "/reply/" +rno,
			success: function(msg, status, xhr){
				if(callback){
					callback(msg)
				}
			},
			error: function(xhr, status, er){
				if(error){
					error(er)
				}
			}
		})
	} // end remove

	function update(reply, callback, error){

		console.log("update Rno : " + reply.rno)
			
		$.ajax({
			type: 'put',
			url: '/reply/' + reply.rno,
			data: JSON.stringify(reply),
			contentType: "application/json; charset=utf-8",
			
			success: function(result, status, xhr){
				if(callback){
					callback(result)
				}
			},
			error: function(xhr,status, er){
				if(error){
					error(er)
				}
			}
		})

	} //end update


	function get(rno,callback, error){
		console.log("get..............")

		$.ajax({
			type: "get",
			url: "/reply/" + rno,

			success: function(data, status, xhr){
				if(callback){
					callback(data)
				}
			},
			error: function(status, xhr, err){
				if(error){
					error(err)
				}
			}
		})
	} //end get
	
	function displayTime(timeValue){
		var today = new Date();
		
		var gap = today.getTime() - timeValue;
		
		var dateObj = new Date(timeValue)
		var str = "";
		
		if(gap < (1000 * 60 * 60 * 24)) {
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [ (hh > 9 ? '' : '0') + hh, ':', (mi>9 ? '' : '0')	+ mi, 
					':', (ss>9? '' : '0') + ss ].join('');
		}else{
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1;
			var dd = dateObj.getDate();
			
			return [ (yy > 9 ? '' : '0') + yy, ':', (mm>9 ? '' : '0')	+ mm, 
					':', (dd>9? '' : '0') + dd ].join('');
		}
	}  // End displayTime

	return {
		add: add,
		getList: getList,
		remove: remove,
		update: update,
		get: get,
		displayTime: displayTime,
	}
})();














