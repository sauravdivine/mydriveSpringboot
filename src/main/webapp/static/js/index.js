function validateRegistrationForm() {
	// e.preventDefault();
	
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
	var fname = $("#firstname").val(), lname = $("#lastname").val(), femail =$("#registeremail").val(),

	fpassword = $("#registerpassword").val(), fconfirmpassword = $("#registerconfirmpassword").val(), fmonth = $("#month").val(), fday = $("#day").val(), fyear = $("#year").val();
		
     $("#firstname").css("border-color","#ccc");
	 $("#lastname").css("border-color","#ccc");
	 $("#registeremail").css("border-color","#ccc");
	 $("#registerpassword").css("border-color","#ccc");
	 $("#registerconfirmpassword").css("border-color","#ccc");
	 $("#month").css("border-color","#ccc");
	 $("#day").css("border-color","#ccc");
	 $("#year").css("border-color","#ccc");
	
	
	if (fname === "") {
		$("#firstname").focus();
		$("#firstname").css("border-color","red");
		$("#firstname").attr('placeholder','first name- required');
		$("#errordiv").empty();
		$("#errordiv").html("enter the first name");
		return false;
	}
	if (lname == "") {
		$("#lastname").focus();
		$("#lastname").css("border-color","red");
		$("#lastname").attr('placeholder','last name- required');
		$("#errordiv").empty();
		$("#errordiv").html("enter the last name");
		
		return false;
	}

	if (femail == "") {
		$("#registeremail").focus();
		$("#registeremail").css("border-color","red");
		$("#registeremail").attr('placeholder','email name- required');
		$("#errordiv").empty();
		$("#errordiv").html("enter the email");
		
		return false;
	} else if (!emailRegex.test(femail)) {
		$("#registeremail").focus();
		$("#registeremail").css("border-color","red");
		$("#registeremail").attr('placeholder',' valid email- required');
		$("#errordiv").empty();
		$("#errordiv").html("enter the valid email");
		
		return false;
	}

	if (fpassword == "") {
		$("#registerpassword").focus();
		$("#registerpassword").css("border-color","red");
		$("#registerpassword").attr('placeholder',' password- required');
		$("#errordiv").empty();
		$("#errordiv").html("enter the password");
		
		return false;
	}
	if (fconfirmpassword == "") {
		$("#registerconfirmpassword").focus();
		$("#registerconfirmpassword").css("border-color","red");
		$("#registerconfirmpassword").attr('placeholder',' confirm password- required');
		$("#errordiv").empty();
		$("#errordiv").html("enter the password");
		
		return false;
	}
	if (fpassword != fconfirmpassword) {
		$("#registerconfirmpassword").focus();
		$("#registerconfirmpassword").css("border-color","red");
		$("#registerconfirmpassword").attr('placeholder',' confirm password- required');
		$("#errordiv").empty();
		$("#errordiv").html("password do not match");
		
		return false;
	}

	if (fmonth == "") {
		$("#month").focus();
		$("#month").css("border-color","red");
		$("#errordiv").empty();
		$("#errordiv").html("select month");
		
		return false;
	}
	if (fday == "") {
		$("#day").focus();
		$("#day").css("border-color","red");
		$("#errordiv").empty();
		$("#errordiv").html("select day");
		
		return false;
	}
	if (fyear == "") {
		$("#year").focus();
		$("#year").css("border-color","red");
		$("#errordiv").empty();
		$("#errordiv").html("select year");
		
		return false;
	}

	if (!isValidDate(fmonth + "/" + fday + "/" + fyear)) {
		$("#day").focus();
		$("#month").css("border-color","red");
		$("#day").css("border-color","red");
		$("#year").css("border-color","red");
		$("#errordiv").empty();
		$("#errordiv").html("invalid date");
		
		return false;
	}
	
	

}

function validateLoginForm(e) {
	 
	 $("#login_email").css("border-color","#ccc");
	 $("#login_password").css("border-color","#ccc");
	var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;

	var femail = $("#login_email").val(), fpassword = $("#login_password").val();

	if (femail == "") {
		$("#login_email").focus();
		$("#login_email").css("border-color","red");
		$("#login_email").attr('placeholder','email- required');
		$("#login_email").className+="placeholdererror";
		
		return false;
	} else if (!emailRegex.test(femail)) {
		$("#login_email").focus();
		$("#login_email").css("border-color","red");		
		$("#login_email").attr('placeholder','enter the valid email');
		$("#login_email").className+="placeholdererror";
		
		return false;
	}

	if (fpassword == "") {
		$("#login_password").focus();
		$("#login_password").css("border-color","red");
		$("#login_password").attr('placeholder','password- required');
		$("#login_password").className+="placeholdererror";
		return false;
	}

}

function isValidDate(dateString) {
	// First check for the pattern
	if (!/^\d{1,2}\/\d{1,2}\/\d{4}$/.test(dateString))
		return false;

	// Parse the date parts to integers
	var parts = dateString.split("/");
	var day = parseInt(parts[1], 10);
	var month = parseInt(parts[0], 10);
	var year = parseInt(parts[2], 10);

	// Check the ranges of month and year
	if (year < 1000 || year > 3000 || month == 0 || month > 12)
		return false;

	var monthLength = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

	// Adjust for leap years
	if (year % 400 == 0 || (year % 100 != 0 && year % 4 == 0))
		monthLength[1] = 29;

	// Check the range of the day
	return day > 0 && day <= monthLength[month - 1];
	
};

















