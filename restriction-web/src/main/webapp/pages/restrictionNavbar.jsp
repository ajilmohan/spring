    
     <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
           <a class="navbar-brand" href="<%=request.getContextPath()%>/pages/home.jsp">BBH-RESTRICTION</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="<%=request.getContextPath()%>/pages/restrictions.jsp">Restrictions</a></li>
            <li><a href="#about">Entry</a></li>
            <li><a href="#contact">Approval</a></li>
            <li><a href="#contact">Monitoring</a></li>
            <li><a href="#contact">Admin</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
 
 