//Get All user Details
$(document).ready(function(){
	
	$("#signuperror").hide();
	
	// load on UserDetailsView.jsp page only
		if($("#pageselector").val().trim() === "userdetailspage") {
			$.ajax(
			{
				url:	"Electro_Grid_System/User/user/ViewUser",
				type:	"GET",
				dataType:	"text",
				complete:	function(response,status){
					OnComplete(response.responseText,status);
				}
			}
		)	
	}
	// view oncomplete
	function OnComplete(response,status){
		if(status == "success"){
			var result = JSON.parse(response);
			if(result.status.trim()== "success"){
				console.log (result)
				let tBody = document.getElementById("usermanagement");
				
				result.data.map((data)=>{
					let row = document.createElement("tr");
					row.className = "usertr";
					
					let id = document.createElement("td");
					id.className = "usertd";
					id.innerHTML = data.id;
					let FirstName = document.createElement("td");
					FirstName.className = "usertd";
					FirstName.innerHTML = data.FirstName;
					let LastName = document.createElement("td");
					LastName.className = "usertd";
					LastName.innerHTML = data.LastName;
					let Mobile = document.createElement("td");
					Mobile.className = "usertd";
					Mobile.innerHTML = data.Mobile;
					let Email = document.createElement("td");
					Email.className = "usertd";
					Email.innerHTML = data.Email;
					let Nic = document.createElement("td");
					Nic.className = "usertd";
					Nic.innerHTML = data.Nic;
					let phone = document.createElement("td");
					phone.className = "usertd";
					phone.innerHTML = data.phone;
					let Address = document.createElement("td");
					Address.className = "usertd";
					Address.innerHTML = data.Address;
					let AccountNumber = document.createElement("td");
					AccountNumber.className = "usertd";
					AccountNumber.innerHTML = data.AccountNumber;
					let Password = document.createElement("td");
					Password.className = "usertd";
					Password.innerHTML = data.Password;
					
					
					let form = document.createElement("form");
					form.action = "editUser.jsp";
					form.method = "POST";
					form.id = "updateform";
	
					//update Button
					let updateBtn = document.createElement("input");
					updateBtn.classList.add("btn","btn-success","mb-3");
					updateBtn.value = "UPDATE";
					updateBtn.type = "button";
					updateBtn.onclick =(e)=>{
						senduidForUpdate(data.id);
					}
					
					//Delete Button
					let deleteBtn = document.createElement("input");
					deleteBtn.classList.add("btn","btn-danger");
					deleteBtn.value = "DELETE";
					deleteBtn.type = "button";
					deleteBtn.onclick =(e)=>{
						DeleteRow(data.id);
					}
					
					form.appendChild(updateBtn);
					
					let updateForm = document.createElement("td");
					updateForm.className = "usertd";
					updateForm.appendChild(form);
					updateForm.appendChild(deleteBtn);
					
					
					row.appendChild(id);
					row.appendChild(FirstName);
					row.appendChild(LastName);
					row.appendChild(Mobile);
					row.appendChild(Email);
					row.appendChild(Nic);
					row.appendChild(Address);
					row.appendChild(AccountNumber);
					row.appendChild(Password);
					row.appendChild(updateForm);
					
					tBody.appendChild(row);
				})
			}
			//Display error message
			else{
				alert(result.data)
			}
		}
	}
	
})

//send id for update
function senduidForUpdate(id){
	
	//send id for update
	let uidValue = document.createElement("input");
	uidValue.hidden = true;
	uidValue.name = "ID";
	uidValue.value = id;
	
	let form = document.getElementById("updateform");
	
	//console.log(form)
	
	form.appendChild(uidValue);
	
	//$("#updateform").submit();
	
	window.location.href = "userUpdate.jsp?id="+id;
	
}

//delete user function
function DeleteRow(id){
	
	let method = "delete";
	
	var deleteData = { id, method};
	
	
	
	console.log(deleteData)
	$.ajax(
		{
			url:	"/Electro_Grid_System/User/user/AddUser",
			type:	"POST",
			data:	deleteData,
			dataType:	"json",
			complete:	function(response,status){
				OnDelete(response.responseText,status);
			}
		}
			
	)
	function OnDelete(responseText,status){
		var result = JSON.parse(responseText);
		console.log(result)
		if(result.status === "success") {
			console.log(status)
			alert ("successfull deleted!!!")
			window.location.reload();	
		} else {
			alert (result.data)
			window.location.reload();
		}
	
	}
}	

$(document).ready(() => {
	
	//function for button Create Account
	$("#createaccount").click(function() {
		let FirstName = document.getElementById("cusFirstName");
		let LastName = document.getElementById("cusLastName");
		let Mobile = document.getElementById("cusMobile");
		let Email = document.getElementById("cusEmail");
		let Nic = document.getElementById("cusNice");
		let Address = document.getElementById("cusAddress");
		let AccountNumber = document.getElementById("cusAccountNumber");
		let Password = document.getElementById("cusPassword");
		
		
		
		// Signup form validations
		if(FirstName.value === "") {
			$("#signupnameerror").text("Enter Your First Name").show();
			FirstName.classList.add("pmf")
			FirstName.focus();
		}
		else if(LastName.value === "") {
			$("#signupnameerror").hide();
			LastName.classList.remove("pmf")
			LastName.classList.add("pmf")
			LastName.focus();
			$("#signupaddresserror").text("Enter Your Last Name").show();
		}
	    else if(Mobile.value === "") {
		$("#signupaddresserror").hide();
			Mobile.classList.remove("pmf")
			Mobile.classList.add("pmf")
			Mobile.focus();
			$("#signupaccnoerror").text("Enter Your Mobile").show();
		}
		else if(Email.value === "") {
			$("#signupaccnoerror").hide();
			Email.classList.remove("pmf")
			Email.classList.add("pmf")
			Email.focus();
			$("#signupnicerror").text("Enter Your Email").show();
		}
		else if(Nic.value === "") {
			$("#signupnicerror").hide();
			Nic.classList.remove("pmf")
			Nic.classList.add("pmf")
			Nic.focus();
			$("#signupemailerror").text("Nic").show();
		}
		else if(Address.value === "") {
			$("#signupemailerror").hide();
			Address.classList.remove("pmf")
			Address.classList.add("pmf")
			Address.focus();
			$("#signuppnumerror").text("Enter Your Phone Address").show();
		}
		else if (AccountNumber.value === "") {
			$("#signuppnumerror").hide();
			AccountNumber.classList.remove("pmf")
			AccountNumber.classList.add("pmf")
			AccountNumber.focus();
			$("#signuptypeerror").text("Enter your Account Number").show();
		}
		else if(Password.value === "") {
			$("#signuptypeerror").hide();
			Password.classList.remove("pmf")
			Password.classList.add("pmf")
			Password.focus();
			$("#signupunameerror").text("Enter Your Password").show();
		}
		 else {
			$("#signuppasserror").hide();
			
			// send data to servlet
			$.ajax(
				{
					url:	"/Electro_Grid_System/User/user/AddUser",
					type:	"POST",
					dataType:	"text",
					data:	$("#insertUserDetailsForm").serialize(),
					complete:	(response, status) => {
						onInsertComplete(response.responseText, status);
					}
				}
			)
		}
		
	 })
})

// if insert successful
function onInsertComplete(responseText, status) {
	if(status == "success") {
		var result = JSON.parse(responseText);
		if (result.status === "success") {
			alert("You are registered customer now. Use login page.");
			window.location.replace("/Electro_Grid_System/");
		} else {
			alert(result.data);
		}
	}
}

$(document).ready(() => {
	
	if($("#method").val().trim() === "singlecusdetails") {
		
		let method = $("#method").val();
		let uidtobeupdate = $("#uidtobeupdate").val();
		
		var dataset = { method, uidtobeupdate };
		
		$.ajax(
			{
				url:	"/Electro_Grid_System/User/user/AddUser",
				type:	"POST",
				data: dataset,
				dataType:	"json",
				complete:	function(response,status){
					onSingleUserLoaded(response.responseText,status);
				}
			}
		)
		
		function onSingleUserLoaded(responseText, status) {
			if(status === "success") {
				var result = JSON.parse(responseText);
				
				if(result.status === "success") {
					console.log(result)
					userID.value = result.data.id;
					cusFirstName.value = result.data.FirstName;
					cusLastName.value = result.data.LastName;
					cusMobile.value = result.data.Mobile;
					cusEmail.value = result.data.Email;
					cusNic.value = result.data.Nic;
					cusAddress.value = result.data.Address;
					cusAccountNumber.value = result.data.AccountNumber;
					cusPassword.value = result.data.Password;
					
				}
			}
		}
		
	}
	
	$("#updateCusBtn").click(function() {
		let id = userID.value;
		let FirstName = cusFirstName.value;
		let LastName = cusLastName.value;
		let Mobile = cusMobile.value;
		let Email = cusEmail.value;
		let Nic = cusNIC.value;
		let Address = cusAddress.value;
		let AccountNumber = cusAccountNumber.value;
		let Password = cusPassword.value;
		
		
		var updateset = { FirstName,LastName,Mobile,Email,NIC,Address,AccountNumber,Password };
		
		$.ajax(
			{
				url: "/Electro_Grid_System/User/user/UpdateUser",
				type:	"PUT",
				data:	JSON.stringify(updateset),
				dataType: "json",
				complete: function(response, status) {
					onUserUpdateComplete(response.responseText, status);
				}
			}
		)
		
		// when updated
		function onUserUpdateComplete(responseText, status) {
			if(status == "success") {
				var result = JSON.parse(responseText);
				
				if(result.status == "success") {
					alert(result.data)
					window.location.reload();
				} else {
					alert(result.data)
					window.location.reload();
				}
			}
		}
		
	})
	
})



