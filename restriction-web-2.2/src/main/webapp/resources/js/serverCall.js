/**
 * 
 */

	
	function doRestrictionSearch() {
	       /* $.ajax({
	            type: "GET",
	            url: "http://localhost:8080/restriction-web-2.2/restrictions.rsn",
	            success: function(response) {
	            	debugger;
	                $("#searchResultForm").html( response );
	            }
	        });*/
		
		document.getElementById('restrictionFilterForm').action = '/restriction-web-2.2/restrictions.rsn';
		document.getElementById('restrictionFilterForm').submit();
	}
	
	
	function updatePageNumAndSubmitForm(){
		
	}
