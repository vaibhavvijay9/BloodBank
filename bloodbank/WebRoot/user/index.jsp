<jsp:useBean id="user_dashboard" class="user.Dashboard">
</jsp:useBean>
<%
	String username=(String)session.getAttribute("username");
 %>

<jsp:include page="userHeader.jsp" />
    <div class="largeTable">
        <div class="dashboard-desktop">
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">No. of Donations</div>
                <div class="dashBoardValue"><%=user_dashboard.getDonations(username)%></div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Last Donation</div>
                <div><h3><%=user_dashboard.getLastDate(username)%></h3></div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Camps This Month</div>
                <div class="dashBoardValue"><%=user_dashboard.getCamps()%></div>
            </div>
        </div>
        <div class="dashboard-desktop">
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">XXX</div>
                <div class="dashBoardValue">X</div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">XXX</div>
                <div class="dashBoardValue">X</div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">XXX</div>
                <div class="dashBoardValue">X</div>
            </div>
        </div>
        <div class="dashboard-mobile">
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Camps This Month</div>
                <div class="dashBoardValue">6</div>
            </div>
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Appointments</div>
                <div class="dashBoardValue">23</div>
            </div>
        </div>
        <div class="dashboard-mobile">
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Camps This Month</div>
                <div class="dashBoardValue">6</div>
            </div>
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Appointments</div>
                <div class="dashBoardValue">23</div>
            </div>
        </div>
        <div class="dashboard-mobile">
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Camps This Month</div>
                <div class="dashBoardValue">6</div>
            </div>
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Appointments</div>
                <div class="dashBoardValue">23</div>
            </div>
        </div>
    </div>
    </div>