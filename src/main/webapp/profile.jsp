<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.entities.User" %>
<%@ include file="header.jsp" %>
<%

    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>

<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8 text-center heading-section">
                <h2 class="mb-4">User Profile</h2>
            </div>
        </div>


        <div class="row">
            <div class="col-md-12">
                <form action="user?action=updateProfile" method="post" id="profileForm">
                    <input type="hidden" name="id" value="<%=user.getId()%>" />

                    <!-- Form Fields for user data -->
                    <div class="form-group">
                        <label>Name:</label>
                        <span id="userName" class="view-mode"><%=user.getName()%></span>
                        <input type="text" id="editName" name="editName" class="form-control edit-mode" style="display: none;" value="<%=user.getName()%>" />
                    </div>

                    <div class="form-group">
                        <label>Password:</label>
                        <span id="userPassword" class="view-mode">*************</span>
                        <input type="password" id="editPassword" name="editPassword" class="form-control edit-mode" style="display: none;" value="<%=user.getPassword()%>" />
                    </div>

                    <div class="form-group">
                        <label>Email:</label>
                        <span id="userEmail" class="view-mode"><%=user.getEmail()%></span>
                        <input type="email" id="editEmail" name="editEmail" class="form-control edit-mode" style="display: none;" value="<%=user.getEmail()%>" />
                    </div>

                    <div class="form-group">
                        <label>Job:</label>
                        <span id="userJob" class="view-mode"><%=user.getJob()%></span>
                        <input type="text" id="editJob" name="editJob" class="form-control edit-mode" style="display: none;" value="<%=user.getJob()%>" />
                    </div>

                    <div class="form-group">
                        <label>Credit:</label>
                        <span id="userCredit" class="view-mode"><%=user.getCredit()%></span>
                        <input type="text" id="editCredit" name="editCredit" class="form-control edit-mode" style="display: none;" value="<%=user.getCredit()%>" />
                    </div>

                    <div class="form-group">
                        <label>City:</label>
                        <span id="userCity" class="view-mode"><%=user.getCity()%></span>
                        <input type="text" id="editCity" name="editCity" class="form-control edit-mode" style="display: none;" value="<%=user.getCity()%>" />
                    </div>

                    <div class="form-group">
                        <label>Street:</label>
                        <span id="userStreet" class="view-mode"><%=user.getStreet()%></span>
                        <input type="text" id="editStreet" name="editStreet" class="form-control edit-mode" style="display: none;" value="<%=user.getStreet()%>" />
                    </div>

                    <!-- Buttons -->
                    <div class="form-group">
                        <button type="button" id="editButton" class="btn btn-primary">Edit</button>
                        <button type="submit" id="saveButton" class="btn btn-success" style="display: none;">Save</button>
                        <button type="button" id="cancelButton" class="btn btn-secondary" style="display: none;">Cancel</button>
                    </div>
                </form>

                <!-- Logout Button -->
                <div class="form-group text-right">
                    <form action="user?action=logout" method="post">
                        <button type="submit" class="btn btn-danger">Logout</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        // Toggle edit mode
        $('#editButton').click(function() {
            $('.view-mode').hide();
            $('.edit-mode').show();
            $('#editButton').hide();
            $('#saveButton, #cancelButton').show();
        });

        // Cancel edit
        $('#cancelButton').click(function() {
            $('.view-mode').show();
            $('.edit-mode').hide();
            $('#editButton').show();
            $('#saveButton, #cancelButton').hide();
        });
    });
</script>

<%@ include file="footer.jsp" %>
