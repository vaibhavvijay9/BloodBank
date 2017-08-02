<jsp:useBean id="dashboard" class="admin.Dashboard">
</jsp:useBean>

<jsp:include page="adminHeader.jsp" />
    <div class="largeTable">
        <div class="dashboard-desktop">
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Users</div>
                <div class="dashBoardValue"><%=dashboard.getUsers()%></div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Donors</div>
                <div class="dashBoardValue"><%=dashboard.getDonors()%></div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Blood Requests</div>
                <div class="dashBoardValue"><%=dashboard.getRequests()%></div>
            </div>
        </div>
        <div class="dashboard-desktop">
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Camps This Month</div>
                <div class="dashBoardValue"><%=dashboard.getCamps()%></div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Appointments</div>
                <div class="dashBoardValue"><%=dashboard.getAppointments()%></div>
            </div>
            <div class=" dash-border z-depth-5">
                <div class="dashboardHead">Donations This Month</div>
                <div class="dashBoardValue"><%=dashboard.getDonations()%></div>
            </div>
        </div>
        <!-- mobile dashboard -->
        <div class="dashboard-mobile">
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Camps This Month</div>
                <div class="dashBoardValue"><%=dashboard.getCamps()%></div>
            </div>
            <div class=" dash-border z-depth-1">
                <div class="dashboardHead">Appointments</div>
                <div class="dashBoardValue"><%=dashboard.getAppointments()%></div>
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