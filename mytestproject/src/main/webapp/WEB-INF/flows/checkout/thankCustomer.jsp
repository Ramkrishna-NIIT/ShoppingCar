<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div>
                    <h2>Thank you for shopping.</h2>

                    <p>Your order will be shipped in two days!</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p><a href="<spring:url value="/" />" class="btn btn-default">OK</a></p>
        </section>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>