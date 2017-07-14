<%@include file="adminHeader.html" %>
    <main>
        <div class="row reg-dimension">
            <h4 class="left">Manage Blood Stock</h4>
            <table class="striped centered">
                <thead>
                    <tr>
                        <th>Blood Group</th>
                        <th>Units</th>
                        <th>Add Stock</th>
                    </tr>

                    <tbody>
                        <tr>
                            <td>A+</td>
                            <td>40</td>
                            <td>
                                <a class="waves-effect waves-light btn-floating" href="#modal2"><i class="material-icons">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal2" class="modal">
                                    <div class="modal-content">
                                        <h4>Blood Details</h4>
                                        <form name="myForm" onsubmit="return validate()">
                                            <input type="text" required name="quantity" onkeypress='return event.charCode >= 48 && event.charCode <= 57' placeholder="No. of Units">
                                            <div>
                                                <button type="submit" class="modal-action waves-effect waves-green btn-flat">Add</button>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>A</td>
                            <td>10</td>
                            <td><a class="waves-effect waves-light btn-floating" href="#modal1"><i class="material-icons ">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal1" class="modal">
                                    <div class="modal-content">
                                        <h4>Modal Header</h4>
                                        <p>A bunch of text</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>50</td>
                            <td><a class="waves-effect waves-light btn-floating" href="#modal1"><i class="material-icons ">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal1" class="modal">
                                    <div class="modal-content">
                                        <h4>Modal Header</h4>
                                        <p>A bunch of text</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>50</td>
                            <td><a class="waves-effect waves-light btn-floating" href="#modal1"><i class="material-icons ">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal1" class="modal">
                                    <div class="modal-content">
                                        <h4>Modal Header</h4>
                                        <p>A bunch of text</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>50</td>
                            <td><a class="waves-effect waves-light btn-floating" href="#modal1"><i class="material-icons ">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal1" class="modal">
                                    <div class="modal-content">
                                        <h4>Modal Header</h4>
                                        <p>A bunch of text</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>50</td>
                            <td><a class="waves-effect waves-light btn-floating" href="#modal1"><i class="material-icons ">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal1" class="modal">
                                    <div class="modal-content">
                                        <h4>Modal Header</h4>
                                        <p>A bunch of text</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>50</td>
                            <td><a class="waves-effect waves-light btn-floating" href="#modal1"><i class="material-icons ">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal1" class="modal">
                                    <div class="modal-content">
                                        <h4>Modal Header</h4>
                                        <p>A bunch of text</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>50</td>
                            <td><a class="waves-effect waves-light btn-floating" href="#modal1"><i class="material-icons ">add</i></a>

                                <!-- Modal Structure -->
                                <div id="modal1" class="modal">
                                    <div class="modal-content">
                                        <h4>Modal Header</h4>
                                        <p>A bunch of text</p>
                                    </div>
                                    <div class="modal-footer">
                                        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
            </table>
        </div>
    </main>