<%@page import="java.util.Vector"%>
<jsp:useBean id="home" class="bloodbank.HomeContent">
</jsp:useBean>
<%
	//upcoming camps
	home.getCamps();
	Vector<String> camp_date=home.campDate();
	Vector<String> camp_name=home.campName();
	Vector<String> camp_venue=home.campVenue();
	
	//inspiring stories
	home.getStories();
	Vector<String> story_username=home.storyUsername();
	Vector<String> story_content=home.storyContent();
	
	//top blood donors
	home.getTopDonors();
	Vector<String> donor_username=home.donorUsername();
	Vector<String> donor_times=home.donorTimes();
	
%>
<%@include file='Header.html' %>
    <%@ page import="java.sql.*" %>

        <div class="nav-content">
            <ul class="hide-on-med-and-down tabs tabs-transparent">
                <li class="tab"><a class="active" href="index.jsp" target="_self">Home</a></li>
                <li class="tab"><a href="aboutUs.jsp" target="_self">About Us</a></li>
                <li class="tab"><a href="contactUs.jsp" target="_self">Contact Us</a></li>
                <li class="tab"><a href="inquiry.jsp" target="_self">Inquiry</a></li>
                <li class="tab"><a href="faq.jsp" target="_self">FAQ</a></li>
            </ul>
        </div>
        </nav>
        </div>
        </div>
        <!--NavBar Ends-->
        <div class="slider-width">
            <div class="slider hide-on-med-and-down" id="mySlider">
                <ul class="slides">
                    <li><img src="images/Q1.jpg"></li>
                    <li><img src="images/Q3.jpg"></li>
                    <li><img src="images/Q4.jpg"></li>
                    <li><img src="images/Q6.jpg"></li>
                </ul>
            </div>
            <div class="center activity-content">
                <div class="center activity-head">
                    Upcoming Activities
                </div>
                 <marquee onmouseover="stop()" onmouseout="start()" direction="up" scrolldelay="100">
				<%
					for(int i=0;i<camp_date.size();i++)
					{
				%>
					<p style="text-align:justify">
					<i class="material-icons prefix tiny">radio_button_checked</i>
					<span style="color:red"><%=camp_date.get(i)+"-"+camp_name.get(i)%></span><br>
					<%=camp_venue.get(i) %>
					</p>
				<%		
					}
				 %>
                </marquee>
            </div>
        </div>
        <div id="homeContent">
            <div class=" center story-content">
                <div class="center story-head">
                    Inspiring Stories
                </div>
                <div style="margin:1% 3% 1% 3%;">
                    <marquee onmouseover="stop()" onmouseout="start()" direction="up" scrolldelay="100">
					<%
						for(int i=0;i<story_username.size();i++)
						{
					%>
						<p style="text-align:justify">
						<i class="material-icons prefix tiny">radio_button_checked</i>
						<span style="color:red"><%=story_username.get(i)%> writes: </span><%=story_content.get(i) %>
						</p>
					<%		
						}
					 %>
                    </marquee>
                </div>
            </div>
            <div class=" center donor-content">
                <div class="center donor-head">
                    Top Blood Donors
                </div>
                <div style="margin:1% 3% 1% 3%;">
                    <marquee onmouseover="stop()" onmouseout="start()" direction="up" scrolldelay="100">
                    <%
						for(int i=0;i<donor_username.size();i++)
						{
					%>
						<p style="text-align:justify">
						<i class="material-icons prefix tiny">radio_button_checked</i>
						<span style="color:red"><%=donor_username.get(i)%></span> donated <%=donor_times.get(i) %> times.
						</p>
					<%		
						}
					 %>
                    </marquee>
                </div>
            </div>


        </div>

        <%@include file='Footer.html' %>
            <script src="js/index.js"></script>