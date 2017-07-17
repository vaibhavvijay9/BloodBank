<%@include file="adminHeader.html" %>
    <main>
        <div class="row reg-dimension">
            <h4 class="left">Delete Stock</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th style="width:10%">Blood Group</th>
                        <th style="width:10%">Units</th>
                        <th style="width:10%">Quantity</th>
                        <th style="width:10%">Delete Stock</th>
                    </tr>

                    <tbody>
                        <tr>
                            <%
                                String bg="ritik";
                            %>
                                <td>
                                    <%=bg%>
                                </td>
                                <td>40</td>
                                <td>
                                    3
                                </td>
                                <td>
                                    <a href=""><i class="material-icons">delete</i></a>
                                </td>
                        </tr>

                    </tbody>
            </table>
        </div>
    </main>