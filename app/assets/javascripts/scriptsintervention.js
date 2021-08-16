Document.ready
var build = $("#buildingDiv");
var batt = $("#batteryDiv");
var col = $("#columnDiv");
var elev = $("#elevatorDiv");
build.hide()
batt.hide()
col.hide()
elev.hide()
$("#intervention_buildingID").prop("disabled", true);
$("#intervention_customerID").change(function(){
    var customer = $(this).val();
    if(customer == ''){
        $("#intervention_buildingID").prop("disabled", true);
		build.hide()
		batt.hide()
		col.hide()
		elev.hide()
		$("#intervention_buildingID").empty();
		$("#intervention_batteryID").empty();
		$("#intervention_columnID").empty();
		$("#intervention_elevatorID").empty();

    }else{
        $("#intervention_buildingID").prop("disabled", false);
		build.show()
		batt.hide()
		col.hide()
		elev.hide()
		$("#intervention_batteryID").empty();
		$("#intervention_columnID").empty();
		$("#intervention_elevatorID").empty();
    }
	if(customer !== ""){
    $.ajax({
	    url: "/building_select/" + customer,
	    method: "GET",  
	    dataType: "json",
	    error: function (xhr, status, error) {
	      	console.error('AJAX Error: ' + status + error);
	    },
	    success: function (response) {
	      	console.log(response);
	      	var tasks = response;
	      	$("#intervention_buildingID").empty();
            $("#intervention_buildingID").append('<option value="">None</option>');
	      	for(var i = 0; i < tasks.length; i++){
	      		$("#intervention_buildingID").append('<option value="' + tasks[i]["id"] + '">' + tasks[i]["id"] + '</option>');
                  console.log(tasks.length);
	      		}
	    	}
  		});
	}
});
$("#intervention_batteryID").prop("disabled", true);
$("#intervention_buildingID").change(function(){
    var building = $(this).val();
    if(building == ''){
        $("#intervention_batteryID").prop("disabled", true);
		batt.hide();
		col.hide();
		elev.hide();
		$("#intervention_batteryID").empty();
		$("#intervention_columnID").empty();
		$("#intervention_elevatorID").empty();
    }else{
        $("#intervention_batteryID").prop("disabled", false);
		batt.show();
		col.hide();
		elev.hide();
		$("#intervention_columnID").empty();
		$("#intervention_elevatorID").empty();
    }
	if(building !== ""){
    $.ajax({
	    url: "/battery_select/" + building,
	    method: "GET",  
	    dataType: "json",
	    error: function (xhr, status, error) {
	      	console.error('AJAX Error: ' + status + error);
	    },
	    success: function (response) {
	      	console.log(response);
	      	var tasks = response;
	      	$("#intervention_batteryID").empty();
            $("#intervention_batteryID").append('<option value="">None</option>');
	      	for(var i = 0; i < tasks.length; i++){
	      		$("#intervention_batteryID").append('<option value="' + tasks[i]["id"] + '">' + tasks[i]["id"] + '</option>');
                  console.log(tasks.length);
	      		}
	    	}
  		});
	}
});
$("#intervention_columnID").prop("disabled", true);
$("#intervention_batteryID").change(function(){
    var column = $(this).val();
    if(column == ''){
        $("#intervention_columnID").prop("disabled", true);
		col.hide();
		elev.hide();
		$("#intervention_columnID").empty();
		$("#intervention_elevatorID").empty();
    }else{
        $("#intervention_columnID").prop("disabled", false);
		col.show();
		elev.hide();
		$("#intervention_elevatorID").empty();
    }
	if(column !== ""){
    $.ajax({
	    url: "/column_select/" + column,
	    method: "GET",  
	    dataType: "json",
	    error: function (xhr, status, error) {
	      	console.error('AJAX Error: ' + status + error);
	    },
	    success: function (response) {
	      	console.log(response);
	      	var tasks = response;
	      	$("#intervention_columnID").empty();
            $("#intervention_columnID").append('<option value="">None</option>');
	      	for(var i = 0; i < tasks.length; i++){
	      		$("#intervention_columnID").append('<option value="' + tasks[i]["id"] + '">' + tasks[i]["id"] + '</option>');
                  console.log(tasks.length);
	      		}
	    	}
  		});
	}
});
$("#intervention_elevatorID").prop("disabled", true);
$("#intervention_columnID").change(function(){
    var elevator = $(this).val();
    if(elevator == ''){
        $("#intervention_elevatorID").prop("disabled", true);
		elev.hide();
		$("#intervention_elevatorID").empty();
    }else{
        $("#intervention_elevatorID").prop("disabled", false);
		elev.show();
    }
	if(elevator !== "None"){
    $.ajax({
	    url: "/elevator_select/" + elevator,
	    method: "GET",  
	    dataType: "json",
	    error: function (xhr, status, error) {
	      	console.error('AJAX Error: ' + status + error);
	    },
	    success: function (response) {
	      	console.log(response);
	      	var tasks = response;
	      	$("#intervention_elevatorID").empty();
            $("#intervention_elevatorID").append('<option value="">None</option>');
	      	for(var i = 0; i < tasks.length; i++){
	      		$("#intervention_elevatorID").append('<option value="' + tasks[i]["id"] + '">' + tasks[i]["id"] + '</option>');
                  console.log(tasks.length);
				  
	      		}
	    	}
  		});
	}
});

$("textarea").each(function () {
	this.setAttribute("style", "height:" + (this.scrollHeight) + "px;overflow-y:hidden;");
  }).on("input", function () {
	this.style.height = "auto";
	this.style.height = (this.scrollHeight) + "px";
  });