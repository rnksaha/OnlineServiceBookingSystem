<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            body {
                background: grey;
                margin-top: 120px;
                margin-bottom: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <div class="row p-5">
                                <div class="col-md-6">
                                    <!-- logo here -->
                                </div>

                                <div class="col-md-6 text-right">
                                    <p class="font-weight-bold mb-1">Invoice #<span id="inv"></span></p>
                                    <script>
                                        var invo = Math.random() * (500 - 1) + 1;
                                        let finvo = Math.trunc(invo)
                                        document.getElementById('inv').innerHTML = finvo;
                                    </script>
                                    <p class="text-muted">Ordered Date: <span id="dt"></span></p>
                                    <script>
                                        var today = new Date();
                                        var dd = String(today.getDate()).padStart(2, '0');
                                        var mm = String(today.getMonth() + 1).padStart(2, '0');
                                        var yyyy = today.getFullYear();
                                        today = mm + '/' + dd + '/' + yyyy;
                                        let td = today;
                                        document.getElementById('dt').innerHTML = td;
                                    </script>
                                </div>
                            </div>


                            <hr class="my-5">

                            <div class="row pb-5 p-5">
                                <div class="col-md-6">

                                </div>

                                <div class="col-md-6 text-right">
                                    <p class="font-weight-bold mb-4">Payment Details</p>
                                    <p class="mb-1"><span class="text-muted">VAT: </span> <span id="vt"></span></p>
                                    <script>
                                        var vtt = Math.random() * (9999999 - 1) + 1;
                                        let fvtt = Math.trunc(vtt);
                                        document.getElementById('vt').innerHTML = fvtt;
                                    </script>
                                    <p class="mb-1"><span class="text-muted">VAT ID: </span> <span id="vtId"></span></p>
                                    <script>
                                        var vt = Math.random() * (99999999 - 1) + 1;
                                        let fvt = Math.trunc(vt);
                                        document.getElementById('vtId').innerHTML = fvt;
                                    </script>
                                    <p class="mb-1"><span class="text-muted">Payment Type: </span> Cash</p>
                                </div>
                            </div>



                            <div class="row p-5">
                                <div class="col-md-12">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="border-0 text-uppercase small font-weight-bold">Item</th>
                                                <th class="border-0 text-uppercase small font-weight-bold">Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${sessionScope.cartList}" var="item">
                                                <tr>
                                                    <td><c:out value="${item.getType()}"></c:out></td>
                                                    <td><c:out value="${item.getPrice()}"></c:out></td>
                                                    </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- final value here-->
                            <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                                <div class="py-3 px-5 text-right">
                                    <div class="mb-2">Grand Total </div>
                                    <p class="h2 font-weight-light"><span id="finalVal"></span><c:out value="${sessionScope.grandTotal}"/></p>
                                    <script>
                                        /*net value VAT functions here
                                         let total=;
                                         document.getElementById('finalVal').innerHTML = total;
                                         */
                                    </script>
                                    <div class="h2 font-weight-light">
                                    </div>
                                </div>

                                <div class="py-3 px-5 text-right">
                                    <div class="mb-2">VAT</div>
                                    <div class="h2 font-weight-light">5%</div>
                                </div>

                                <!-- Net value here-->
                                <div class="py-3 px-5 text-right">
                                    <div class="mb-2">Net amount</div>
                                    <p id="net" class="h2 font-weight-light"><c:out value="${sessionScope.total}"/></p>
                                </div>
                            </div>
                        </div>
                    </div>


                                <div>
                                    <a href="clearSession"><button>Home page</button></a>
                                </div>
                </div>        
                </body>
                </html>
