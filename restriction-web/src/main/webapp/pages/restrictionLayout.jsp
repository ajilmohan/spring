<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
    	<meta name="author" content="Geoffroy Warin">
        
        <title>Restriction</title>
        
        <link href="resources/css/bootstrap.min.css" rel="stylesheet">
        <style type="text/css">
			body {
				padding-top: 60px;
		        padding-bottom: 40px;
			}
			.sidebar-nav {
				padding: 9px 0;
			}
		</style>
        <!-- See http://twitter.github.com/bootstrap/scaffolding.html#responsive -->
        <link href="resources/css/bootstrap-responsive.min.css" rel="stylesheet" />

		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
      		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    	<![endif]-->
    	
    	<!-- Fav and touch icons 
		<link rel="apple-touch-icon-precomposed" sizes="144x144" href="resources/ico/apple-touch-icon-144-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="114x114" href="resources/ico/apple-touch-icon-114-precomposed.png">
		<link rel="apple-touch-icon-precomposed" sizes="72x72" href="resources/ico/apple-touch-icon-72-precomposed.png">
		<link rel="apple-touch-icon-precomposed" href="resources/ico/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="resources/ico/favicon.png">
		-->

    </head>
    <body>

        <%@include file="restrictionNavbar.jsp"%>
		
		<div id="message" class="alert alert-info">
			
		</div>
    
		<div class="container-fluid">
			<div class="row-fluid">
				
				<%-- <div class="span3">
                    <%@include file="restrictionMenu.jsp"%>
				</div> <!--/span-->
				
				<div class="span9">
					<!--Body content-->
					<dec:body />
				</div> --%>
			
				<div class="span12">
						<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
						        <thead>
						            <tr>
						                <th>RestrictionId</th>
						                <th>RestrictionType</th>
						                <th>FundMajor</th>
						                <th>UserSecurity</th>
						            </tr>
						        </thead>
						 
						        <tfoot>
						            <tr>
						                <th>RestrictionId</th>
						                <th>RestrictionType</th>
						                <th>FundMajor</th>
						                <th>UserSecurity</th>
						            </tr>
						        </tfoot>
    					</table>
				</div>
			
			</div>
			
			<hr>
			<footer>
			  <p>&copy; bbh 2014</p>
			</footer>
			
		</div><!--/.container-fluid-->
		
		<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
		<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>
		
		
		<script type="text/javascript">
					
		var editor; // use a global for the submit and return data rendering in the examples
		 
		$(document).ready(function() {
		    /* editor = new $.fn.dataTable.Editor( {
		        ajax: "restrictions.rsn",
		        table: "#example",
		        fields: [ {
		                label: "RestrictionId",
		                name: "restrictionId"
		            }, {
		                label: "RestrictionType",
		                name: "restrictionType"
		            }, {
		                label: "FundMajor",
		                name: "position"
		            }, {
		                label: "UserSecurity",
		                name: "userSecurity"
		            }
		        ]
		    } ); */
		 
		    var table = $('#example').DataTable( {
		        lengthChange: false,
		        ajax: "restrictions.rsn",
		        columns: [
		            { data: "restrictionId" },
		            { data: "restrictionType" },
		            { data: "position" },
		            { data: "userSecurity" }
		        ]
		    } );
		 
		    var tableTools = new $.fn.dataTable.TableTools( table, {
		        sRowSelect: "os",
		        aButtons: [
		            { sExtends: "editor_create", editor: editor },
		            { sExtends: "editor_edit",   editor: editor },
		            { sExtends: "editor_remove", editor: editor }
		        ]
		    } );
		    $( tableTools.fnContainer() ).appendTo( '#example_wrapper .col-xs-6:eq(0)' );
		} );
		
		
		
		
		
		
		</script>
		
		
		
	</body>
</html>