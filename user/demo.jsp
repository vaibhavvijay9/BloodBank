<!DOCTYPE>
<%@ page import="java.sql.*" %>

    <html lang="en" prefix="og: http://ogp.me/ns#">

    <head>
        <title>Ritik Patni</title>
        <meta name="viewport" content="width=device-width, initial-scale=1 ">
        <link rel='stylesheet' href='css/style.css '>
    </head>
    <select id="selectMe">
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
    <%
            String query1="select city,venue from cities";
            PreparedStatement ps1=con.prepareStatement(query1);
            ResultSet res1=ps1.executeQuery();
    
            while(res1.next())
            {
        %>
        <div id="<%=res1.getString(1)%>" class="group">
            <%=res1.getString(2)%>
        </div>
        <%
            }
        %>

            <body>
                <main>
                </main>
                <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
                <script>
                    $(document).ready(function() {
                        $('.group').hide();
                        $('#selectMe').change(function() {
                            $('.group').hide();
                            $('#' + $(this).val()).show();
                        })
                    });
                </script>
            </body>