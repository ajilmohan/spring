<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
									</div>
									<br />
									<div class="row">
										<div class="col-md-3">
											<button class="btn btn-small btn-primary" type="button">Apply
												Filter</button>
											<button class="btn btn-small btn-primary" type="button">Reset
												Filter</button>
										</div>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>

			</div>
			
			<div class="row" >
					<div class="col-md-12" >
					
					
						<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
						        <thead>
						            <tr>
						                <th>Restriction Type</th>
						                <th>Fund Major</th>
						                <th>Fund Indicator</th>
						                <th>User Security</th>
						                <th>Market</th>
						                <th>Buffer</th>
						            </tr>
						        </thead>
						 
						        <tfoot>
						            <tr>
						                <th>Restriction Type</th>
						                <th>Fund Major</th>
						                <th>Fund Indicator</th>
						                <th>User Security</th>
						                <th>Market</th>
						                <th>Buffer</th>
						            </tr>
						        </tfoot>
						 
						        <tbody>
						            <tr>
						                <td>Tiger Nixon</td>
						                <td>System Architect</td>
						                <td>Edinburgh</td>
						                <td>61</td>
						                <td>2011/04/25</td>
						                <td>$320,800</td>
						            </tr>
						            <tr>
						                <td>Garrett Winters</td>
						                <td>Accountant</td>
						                <td>Tokyo</td>
						                <td>63</td>
						                <td>2011/07/25</td>
						                <td>$170,750</td>
						            </tr>
						            <tr>
						                <td>Ashton Cox</td>
						                <td>Junior Technical Author</td>
						                <td>San Francisco</td>
						                <td>66</td>
						                <td>2009/01/12</td>
						                <td>$86,000</td>
						            </tr>
						            <tr>
						                <td>Cedric Kelly</td>
						                <td>Senior Javascript Developer</td>
						                <td>Edinburgh</td>
						                <td>22</td>
						                <td>2012/03/29</td>
						                <td>$433,060</td>
						            </tr>
						            <tr>
						                <td>Airi Satou</td>
						                <td>Accountant</td>
						                <td>Tokyo</td>
						                <td>33</td>
						                <td>2008/11/28</td>
						                <td>$162,700</td>
						            </tr>
						            <tr>
						                <td>Brielle Williamson</td>
						                <td>Integration Specialist</td>
						                <td>New York</td>
						                <td>61</td>
						                <td>2012/12/02</td>
						                <td>$372,000</td>
						            </tr>
						            <tr>
						                <td>Herrod Chandler</td>
						                <td>Sales Assistant</td>
						                <td>San Francisco</td>
						                <td>59</td>
						                <td>2012/08/06</td>
						                <td>$137,500</td>
						            </tr>
						            <tr>
						                <td>Rhona Davidson</td>
						                <td>Integration Specialist</td>
						                <td>Tokyo</td>
						                <td>55</td>
						                <td>2010/10/14</td>
						                <td>$327,900</td>
						            </tr>
						            <tr>
						                <td>Colleen Hurst</td>
						                <td>Javascript Developer</td>
						                <td>San Francisco</td>
						                <td>39</td>
						                <td>2009/09/15</td>
						                <td>$205,500</td>
						            </tr>
						            <tr>
						                <td>Sonya Frost</td>
						                <td>Software Engineer</td>
						                <td>Edinburgh</td>
						                <td>23</td>
						                <td>2008/12/13</td>
						                <td>$103,600</td>
						            </tr>
						            
						            
						        </tbody>
						    </table>
					
					
					
					</div>
			</div>


		</div>

	</div>

	<jsp:include page="footer.html"></jsp:include>
		
	</body>
</html>