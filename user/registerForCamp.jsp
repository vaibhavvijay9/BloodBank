<%@include file='userHeader.html' %>
    <%@ page import="java.sql.*" %>

        <main>
            <div class="row reg-dimensions">
                <div class="row">
                    <h4 class="left">Register For Camp</h4>
                </div>
                <table class="table-width">
                    <tr>
                        <td class="firstCol">Camp Name</td>
                        <td>
                            <form>
                                <select id="selectMe">
                                    <option value="" disabled selected>Select</option>
        <!--Options Start-->
                                    <%
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","rat");
                                            String query="select city from cities";
                                            PreparedStatement ps=con.prepareStatement(query);
                                            ResultSet res=ps.executeQuery();
                                    
                                            while(res.next())
                                            {
                                            
                                        %>
                                                <option value="<%=res.getString(1)%>"><%=res.getString(1)%></option>
                                        <%
                                            }

                                        %>
                                </select>
                        </td>
                    </tr>
                </table>

                <!--OptionsEnd-->
                <!--<Content Start(Date VEnue fields)>-->

                <%
                    String query1="select city,date,venue from cities"; PreparedStatement ps1=con.prepareStatement(query1); ResultSet res1=ps1.executeQuery(); while(res1.next()) { %>
                    <div id="<%=res1.getString(1)%>" class="group">
                        <table class="table-width">
                            <tr>
                                <td class="firstCol">Date</td>
                                <td><input class="inputHeight" value="<%=res1.getString(2)%>" type="text" readonly></td>
                            </tr>
                            <tr>
                                <td class="firstCol">Venue</td>
                                <td><input class="inputHeight" value="<%=res1.getString(3)%>" type="text" readonly></td>
                            </tr>
                        </table>
                    </div>
                    <%
            }
        %>
                        <button class="btn waves-effect waves-light" id="inquiryBtn" type="submit" name="action">Register
                        <i class="material-icons right">send</i>
                
        </div>
    </main>