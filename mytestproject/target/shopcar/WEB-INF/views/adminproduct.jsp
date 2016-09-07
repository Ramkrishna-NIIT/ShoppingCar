<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>  
 <html>  
 <head>  
   <title>Admin Product </title>  
   <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">  
   <script src="http://code.angularjs.org/1.4.8/angular.js"></script>  
   <script src="http://code.angularjs.org/1.4.8/angular-resource.js"></script>  
   <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.11.0.js"></script>  
   <script>  
     var app = angular.module('MyForm', ['ui.bootstrap', 'ngResource']);  
     app.controller('myCtrl', function ($scope) {  
       $scope.predicate = 'name';  
       $scope.reverse = true;  
       $scope.currentPage = 1;  
       $scope.order = function (predicate) {  
         $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;  
         $scope.predicate = predicate;  
       };  
       $scope.students = ${myJson};  
       $scope.totalItems = $scope.students.length;  
       $scope.numPerPage = 5;  
       $scope.paginate = function (value) {  
         var begin, end, index;  
         begin = ($scope.currentPage - 1) * $scope.numPerPage;  
         end = begin + $scope.numPerPage;  
         index = $scope.students.indexOf(value);  
         return (begin <= index && index < end);  
       };  
     });  
   </script>  
   <style>  
     .odd {  
       background-color: antiquewhite;  
       color: #008b8b;  
     }  
     td th {  
       height: 30px;  
       min-width: 100px;  
     }  
     thead {  
       background-color: darkgray;  
       color: white;  
       height: 30px;  
     } 
     .error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
} 
<!-- form center -->
 body {
   
    margin: 0;
    padding: 0;
}
h1 {
    color : #000000;
    text-align : center;
    font-family: "SIMPSON";
}
form {
    width: 300px;
    margin: 0 auto;
}

input {
 width: 100%;
 border-radius: 10px;
    background-color: #f2f2f2;
    padding: 10px;
}

   </style>  
 </head>  
<%@ include file="headercar.jsp" %>
 <h2>Add Product</h2>

<c:url var="addAction" value="/marutidatatable/add" ></c:url>
<form:form action="${addAction}" commandName="product" enctype="multipart/form-data" method="POST">
<table>
    <c:if test="${!empty product.name}">
    <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
    </tr>
    </c:if>
    <tr>
        <td>
            <form:label path="name">
                <spring:message text="NAME"/>
            </form:label>
        </td>
        <td>
            <form:input path="name" />
        </td>
        <td align="left"><form:errors path="name" cssClass="error" /></td> 
    </tr>
    <tr>
        <td>
            <form:label path="price">
                <spring:message text="PRICE"/>
            </form:label>
        </td>  
        <td>
            <form:input path="price" />
        </td>
         <td align="left"><form:errors path="price" cssClass="error" /></td> 
    </tr>
    <tr>
        <td>
            <form:label path="category">
                <spring:message text="CATEGORY"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td>
        <td align="left"><form:errors path="category" cssClass="error" /></td> 
    </tr>
    <tr>
        <td>
            <form:label path="milage">
                <spring:message text="MILAGE"/>
            </form:label>
        </td>
        <td>
            <form:input path="milage" />
        </td>
        <td align="left"><form:errors path="milage" cssClass="error" /></td> 
    </tr>
    <tr>
        <td>
            <form:label path="displacement">
                <spring:message text="DISPLACEMENT"/>
            </form:label>
        </td>
        <td>
            <form:input path="displacement" />
        </td>
        <td align="left"><form:errors path="displacement" cssClass="error" /></td> 
    </tr>
     <tr>
        <td>
            <form:label path="description">
                <spring:message text="DESCRIPTION"/>
            </form:label>
        </td>
        <td>
            <form:input path="description" />
        </td>
         <td align="left"><form:errors path="description" cssClass="error" /></td> 
    </tr>
    <tr>
    	<td>
    		<form:label path="image">
    			<spring:message text="Upload Image"/>
    		</form:label>
    	</td>
    	<td>
    		<form:input path="image" type="file"/>
    	</td>
    </tr> 
    <tr>
        <td colspan="2">
            <c:if test="${!empty product.name}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty product.name}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>"/>
            </c:if>
        </td>
    </tr>
</table>  
</form:form> 
<br> 
 <body ng-app="MyForm">  
   <div ng-controller="myCtrl">  
     <h3>List Products</h3>  
     <div class="container-fluid">  
       <pre>Click header link to sort, input into filter text to filter</pre>  
       <hr />  
       <table class="table table-striped">  
         <thead>  
           <tr>  
             <th>Edit</th>
             <th>  
               <a href="" ng-click="order('id')">Id</a>  
             </th>   
             <th>  
               <a href="" ng-click="order('name')">Name</a>  
             </th>  
             <th><a href="" ng-click="order('price')"> price</a> </th>  
             <th><a href="" ng-click="order('category')">category</a> </th>
                <th><a href="" ng-click="order('milage')"> milage</a> </th>  
             <th><a href="" ng-click="order('displacement')">displacement</a> </th>  
                <th><a href="" ng-click="order('description')"> description</a> </th>
           </tr>  
         </thead>  
         <tbody>  
           <tr>  
             <td>Filter =>></td>  
             <td> <input type="text" ng-model="search.id" /></td>  
             <td> <input type="text" ng-model="search.name" /></td>  
             <td> <input type="text" ng-model="search.price" /> </td>  
             <td><input type="text" ng-model="search.category" /> </td>  
             <td> <input type="text" ng-model="search.milage" /></td>  
             <td> <input type="text" ng-model="search.displacement" /> </td>  
             <td><input type="text" ng-model="search.description" /> </td> 
           </tr>  
           <tr ng-repeat="user in students | orderBy:predicate:reverse | filter:paginate| filter:search" ng-class-odd="'odd'">  
             <td>  
               <button class="btn">  
                 Edit  
               </button>  
             </td>
             <td>{{user.id}}</td>  
             <td>{{user.name}}</td>  
             <td>{{user.price}}</td>  
             <td> {{user.category}}</td> 
             <td>{{user.milage}}</td>  
             <td>{{user.displacement}}</td>  
             <td>{{user.description}}</td> 
             <td><a href="<c:url value='/edit/{{user.id}}' />" >Edit</a></td>
            <td><a href="<c:url value='/remove/{{user.id}}' />" >Delete</a></td>
             

           </tr>  
         </tbody>  
       </table>  
       <pagination total-items="totalItems" ng-model="currentPage"  
             max-size="5" boundary-links="true"  
             items-per-page="numPerPage" class="pagination-sm">  
       </pagination>  
     </div>  
   </div>  
   
${myJson}
<br>
     <%@ include file="footercar.jsp" %>
 </body>  
 </html>  