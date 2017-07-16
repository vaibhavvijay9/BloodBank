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
                <marquee direction="down">
                    Hello<br> vaibhav vijay<br>
                </marquee>
            </div>
        </div>
        <div id="homeContent">
            <div class=" center story-content">
                <div class="center story-head">
                    Inspiring Stories
                </div>
                <div style="margin:1%;">
                    <marquee onmouseover="stop()" onmouseout="start()" direction="up">

                        <%
                    Class.forName("com.mysql.jdbc.Driver");
			        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz_db","root","rat");
                    String query="select ques from quiz where qno in(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)";
                    PreparedStatement ps=con.prepareStatement(query);
                    ResultSet res=ps.executeQuery();
                    
                    while(res.next())
                    {
                    %>
                            <%=res.getString(1)%><br><br>
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
                <div class="logoWatermark">
                    <marquee direction="down">
                        Hello<br> vaibhav vijay<br>
                    </marquee>
                </div>
            </div>


        </div>

        <%@include file='Footer.html' %>
            <script src="js/index.js"></script>