
   var planService = (function(){
	 
	   function insert(plan, callback){
		   
		   console.log("insert" + plan)
		   
		   $.ajax({
			   type:"post",
			   url:"/plan/insert",
			   data:JSON.stringify(plan),
			   contentType:"application/json; charset=utf-8",
			   
			   success: function(result, status, xhr){
				  if(callback){
					  callback(result)
				  }   
			   },
			   error: function(xhr, status,er){
				   if(error){
					   error(er)
				   }
			   }
            
		   }) 
       }//end insert

       function deleted(tcontent_id, callback){
        console.log("delete" + tcontent_id)

        $.ajax({
            type:"delete",
            url:"/plan/delete/" + tcontent_id,

            success: function(result, status, xhr){
                if(callback){
                    callback(result)
                }
            },
            error:function(xhr, status, er){
                if(error){
                    error(er)
                }
            }
        })
       }
		
		function getList(param, callback, error){
		console.log("plan_id" , param.plan_id)
		
		var plan_id = param.plan_id;
		
		$.ajax({
		type: "get",
		url:"/plan/content/" + plan_id,
		
		success:function(data, status, xhr){
		
		if(callback){
            callback(data)
        }
    },
    error:function(xhr, status, err){
        if(error){
            error();
        }
    }	
		})
		
		
		   
	   }

       function drop(plan_id, callback, error){
        console.log("plan_id" + plan_id)

        var plan_id = plan_id;

        $.ajax({
            type:"delete",
            url:"/plan/drop/" + plan_id,
            
            success:function(result, status, xhr){
                if(callback){
                    callback(result)
                }
            },
            error:function(xhr, status, err){
                if(error){
                    error();
                }
            }
        })


       }

	   return {
	   insert:insert,
       getList:getList,
       deleted:deleted,
       drop:drop
	   }
	   })();
	   
	   