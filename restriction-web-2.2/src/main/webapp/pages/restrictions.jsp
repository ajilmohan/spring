<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
    <head>
       	<jsp:include page="common.jsp"></jsp:include>
    </head>
    <body>

	<div style="height:45px">
		  <jsp:include page="restrictionNavbar.jsp"></jsp:include>
	</div>


	<div id="wrap">
		<div id="main" class="container">


			<div class="panel-group" id="accordion" role="tablist"
				aria-multiselectable="true">
				<div class="panel panel-primary">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								Filters </a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<form:form id="restrictionFilterForm" method="GET" commandName="searchForm"  class="form-horizontal">
						<div class="panel-body">
							<div class="row">
								<div class="col-md-12">
									<div class="row">
										<div class="col-md-2">
											Restriction Type <br /> <select multiple size="3" size="3"
												class="form-control col-md-2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
										<div class="col-md-2">
											Fund Major <br /> <select multiple size="3"
												class="form-control col-md-2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
										<div class="col-md-2">
											Fund Indicator <br /> <select multiple size="3"
												class="form-control col-md-2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>

										<div class="col-md-2">
											User Security <br /> <select multiple size="3"
												class="form-control col-md-2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
										<div class="col-md-2">
											User Security <br /> <select multiple size="3"
												class="form-control col-md-2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
										<div class="col-md-2">
											Market <br /> <select multiple size="3"
												class="form-control col-md-2">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
												<option>5</option>
											</select>
										</div>
										
										<div class="col-md-4">
											<!-- Date <br /> 
											<div class="input-append date form_datetime">
											    <input size="16" type="text" value="" readonly>
											    <span class="add-on"><i class="icon-th"></i></span>
											</div>
 
											<script type="text/javascript">
											    $(".form_datetime").datetimepicker({
											        format: "dd MM yyyy",
											        autoclose: true,
											        todayBtn: true,
											        pickerPosition: "bottom-right"
											    });
											</script>   -->
											Date <br/>
											<div data-date-format="dd-mm-yyyy" data-date="12-02-2012" class="input-append date myDatepicker">
											    <input type="text" value="" size="16" class="span2">
											    <span class="add-on"><i class="icon-calendar"></i></span>
										    </div>
										    
										    <script type="text/javascript">
												    $('.myDatepicker').each(function() {
												        var minDate = new Date();
												        minDate.setHours(0);
												        minDate.setMinutes(0);
												        minDate.setSeconds(0,0);
												        
												        var $picker = $(this);
												        $picker.datepicker();
												        
												        var pickerObject = $picker.data('datepicker');
												        
												        $picker.on('changeDate', function(ev){
												            $picker.datepicker('hide');
												        });
												    });
										    
										    </script>
											
										</div>
										
									</div>
									<br />
									<div class="row">
										<div class="col-md-3">
											<button class="btn btn-small btn-primary" onclick="doRestrictionSearch()" type="button">Apply
												Filter</button>
											<button class="btn btn-small btn-primary" type="button">Reset
												Filter</button>
										</div>
									</div>
								</div>
							</div>
						</div>

					</form:form>
					</div>
				</div>

			</div>
			
			<div class="row" >
					<div class="col-md-12" >
					
					<!-- add table here -->
					
						<form:form id="searchResultForm" class="form-horizontal"
										method="POST" commandName="searchForm"
										action="searchDetail.rsn">
										
										
							<table class="table table-striped table-bordered"
										id="searchresults">
								<thead>
									<tr>
											<th> Status </th>
											<th> Restriction Type </th>
											<th> Fund ID </th>
											<th> Fund Name </th>
											<th> Fund Major </th>
											<th> User Security </th>
											<th> Security </th>
											<th> Short Name </th>
											<th> Security Mismatch </th>
											<th> Market </th>
											<th> Class </th>
											<th> No Main Code </th>
											<th> Special Instruction Type </th>
											<th> Last Updated By </th>
											<th> Lendable/Restriction </th>
											<th> Buffer </th>
											<th> Shares </th>
											<th> From Date </th>
											<th> To Date </th>
											<th> Comments </th>
											<th> Override </th>
											<th> Restriction ID </th>
									
								    </tr>	
								 </thead>	
								 <tbody>
								<%--  <c:out value="${restrictions}"/>  --%>
								 		<c:forEach items="${restrictions}" var="restriction"
													varStatus="status">
													<tr>

														<td>${restriction.restrictionId}</td>
														<td>${restriction.restrictionType}</td>
														<td>${restriction.fundMajor}</td>
														<td>${restriction.userSecurity}</td>
														<td>${restriction.restrictionId}</td>
														<td>${restriction.restrictionType}</td>
														<td>${restriction.fundMajor}</td>
														<td>${restriction.userSecurity}</td>
														<td>${restriction.restrictionId}</td>
														<td>${restriction.restrictionType}</td>
														<td>${restriction.fundMajor}</td>
														<td>${restriction.userSecurity}</td>
														<td>${restriction.restrictionId}</td>
														<td>${restriction.restrictionType}</td>
														<td>${restriction.fundMajor}</td>
														<td>${restriction.userSecurity}</td>
														<td>${restriction.restrictionId}</td>
														<td>${restriction.restrictionType}</td>
														<td>${restriction.fundMajor}</td>
														<td>${restriction.userSecurity}</td>
														<td>${restriction.fundMajor}</td>
														<td>${restriction.userSecurity}</td>
														
													</tr>
										</c:forEach>	
										<c:if test="${fn:length(restrictions) == 0}">
											<tr>
													<td colspan="8">
														<h5 class="noDataFound">No data is available for the search criteria</h5>
													</td>
											</tr>
											
										
										</c:if>
										
										<c:if test="${fn:length(restrictions) != 0}">
											 <form:hidden id="pageNumVar" path="pageNum" />
										<tr>
											<td colspan="24" id="bgImg"
												style="margin: 0; padding: 3px; background: #ebebeb;">
												<table width="100%" border="0" style="border-bottom: 0;">
													<tr>
														<c:if test="${searchForm.pageNum gt 2}">
															<td width="3%"><a href="javascript:void(0)"
																onclick="updatePageNumAndSubmitForm(1)"><img
																	src="<%=request.getContextPath()%>/resources/img/aerow1.png"
																	width="24" height="24" border="0" alt=""></a></td>
														</c:if>
														<c:if test="${searchForm.pageNum != 1}">
															<td width="3%"><a href="javascript:void(0)"
																onclick="updatePageNumAndSubmitForm(${searchForm.pageNum - 1})"><img
																	src="<%=request.getContextPath()%>/resources/img/aerow2.png"
																	width="24" height="24" border="0" alt=""></a></td>
														</c:if>
														<td width="30%">
															<ul id="nobs">
																<c:forEach begin="${startPage}" end="${endPage}"
																	var="i">
																	<c:choose>
																		<c:when test="${searchForm.pageNum eq i}">
																			<li><a href="javascript:void(0)"
																				class="active">${i}</a></li>
																		</c:when>
																		<c:otherwise>
																			<li><a href="javascript:void(0)"
																				onclick="updatePageNumAndSubmitForm(${i})">${i}</a></li>
																		</c:otherwise>
																	</c:choose>
																</c:forEach>
															</ul> <c:if test="${searchForm.pageNum lt noOfPages}">
																<div class="pagination-button">
																	<a href="javascript:void(0)"
																		onclick="updatePageNumAndSubmitForm(${searchForm.pageNum + 1})"><img
																		src="<%=request.getContextPath()%>/resources/img/aerow3.png"
																		width="24" height="24" border="0" alt=""></a>
																</div>
															</c:if> <c:if test="${(noOfPages - searchForm.pageNum) gt 1}">
																<div class="pagination-button">
																	<a href="javascript:void(0)"
																		onclick="updatePageNumAndSubmitForm(${noOfPages})"><img
																		src="<%=request.getContextPath()%>/resources/img/aerow4.png"
																		width="24" height="24" border="0" alt=""></a>
																</div>
															</c:if>


														</td>
														<td width="3%">																	
														</td>
														<td width="3%">																	
														</td>
														<td width="30%"></td>
														<td width="19%" class="pageBar">${pgnStats}</td>
														<td width="1%">
															
														</td>
													</tr>
												</table>
											</td>
										</tr>
										
										</c:if>
										
										
								 </tbody>	
							</table>
										
										
						</form:form>
					
					
					</div>
			</div>


		</div>

	</div>

	<jsp:include page="footer.html"></jsp:include>
		
	</body>
</html>