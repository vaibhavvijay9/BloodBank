<jsp:include page="adminHeader.jsp" />
    <main>
        <div class="row reg-dimensions">
            <h4>Update Camp</h4>
        </div>
        <form action="updateCampDone.jsp" method="post" onsubmit="return checkDate()">
        <table class="table-width">
            <tr>
                <td class="firstCol">Name</td>
                <td><input type="text" name="name" value="<%=(String)request.getParameter("name")%>" class="inputHeight" readonly></td>
            </tr>
            <tr>
                <td class="firstCol">Date</td>
                <td><input type="date" name="date" value="<%=(String)request.getParameter("date")%>" class="datepicker defaultDate inputHeight check"></td>
            </tr>
            <tr>
                <td class="firstCol">Venue</td>
                <td class="firstCol"><input type="text" name="venue" value="<%=(String)request.getParameter("venue")%>" class="validate inputHeight" required></td>
            </tr>
            <tr>
                <td></td>
                <td><button class="btn waves-effect waves-light right" type="submit">Update</td>
            </tr>
        </table>
        </form>
        </div>
    </main>