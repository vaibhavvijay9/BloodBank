<jsp:include page="adminHeader.jsp" />
    <main>
        <div class="row reg-dimension">
            <div class="row">
                <a class="right" href="deleteStock.jsp" style="padding:2% 0% 0% 0%;"><i class="material-icons right">settings</i>Delete Stock</a>
                <h4 class="left">Blood Stock</h4>
            </div>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th style="width:10%">Blood Group</th>
                        <th style="width:10%">Units</th>
                        <th style="width:10%">Quantity</th>
                        <th style="width:10%">Add Stock</th>
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
                                    <input class="inputHeight" type="text" style="width:30%;text-align:center;" maxlength="3">
                                </td>
                                <td>
                                    <a href=""><i class="material-icons">done</i></a>
                                </td>
                        </tr>

                    </tbody>
            </table>
        </div>
    </main>