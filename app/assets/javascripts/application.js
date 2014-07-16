


//function validate()
//{
//	if (document.new.firstname.value =="")
//	{
//		alert("plc provide your name")
//		document.new.firstname.focus();
//		return false;
//		
//	} 
//}




// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree 
function validate()
{
	var fname = document.getElementById("book_firstname").value;
	if (fname == "")
	{
		alert("plc provide your name")
		return false;
		
	} 
	return true;
	var lname = document.getElementById("book_lastname").value;
	if(lname == "")
	{
		alert("please fill the lastname")
		return false;
	}
	return true;
	var email= document.getElementById("book_emailid").value;
	var len = email.length;
	var 

}

function ajax(firstname)
{
	var pathxml;
	var answer;
	var result;
	if(firstname.length== 0)
	{
		document.getElementById("hh").innerHTML = "";
		return;
	}
	if (window.XMLHttpRequest) {
      pathxml = new XMLHttpRequest();
	}
	else
	{
		pathxml = new ActiveXObject("Microsoft.XMLHTTP");
	}

	pathxml.onreadystatechange= function()
	{
		if (pathxml.readyState==4 && pathxml.status==200) 
		{
			 answer = JSON.parse(pathxml.responseText);
          document.getElementById("hh").innerHTML = "";
        for (var i=0; i<=answer.length; i++)
		{
			result = answer[i].firstname + " " +answer[i].lastname + "\n";
			document.getElementById("hh").innerHTML += result;
		}
		}
		
	}
	pathxml.open("GET","books/ax?firstname=" + firstname, true);
	pathxml.send();
}
/*
function ajax()
{
	alert("kavi")
}
*/