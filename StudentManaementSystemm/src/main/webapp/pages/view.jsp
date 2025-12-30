<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>View Students</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
/* ===== BODY WITH BG IMAGE ===== */
body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    min-height: 100vh;
    background:
        linear-gradient(rgba(0,0,0,0.55), rgba(0,0,0,0.55)),
        url("https://images.unsplash.com/photo-1524995997946-a1c2e315a42f");
    background-size: cover;
    background-position: center;
}

/* ===== PAGE TITLE ===== */
.page-title {
    text-align: center;
    color: white;
    font-size: 32px;
    font-weight: 700;
    margin: 25px 0;
}

/* ===== SEARCH BAR ===== */
.search-box{
    width:95%;
    margin:0 auto 20px;
    display:flex;
    gap:12px;
    justify-content:flex-end;
    flex-wrap: wrap;
}

.search-box input,
.search-box select{
    padding:12px 18px;
    border-radius:25px;
    border:none;
    width:230px;
    font-size:15px;
    font-weight:600;
    outline:none;
}

.search-box button{
    padding:12px 28px;
    border:none;
    border-radius:25px;
    background:#667eea;
    color:white;
    font-size:15px;
    font-weight:600;
    cursor:pointer;
}

/* ===== TABLE CONTAINER ===== */
.table-container {
    width: 95%;
    margin: auto;
    background: rgba(255,255,255,0.96);
    border-radius: 15px;
    padding: 22px;
    box-shadow: 0 25px 50px rgba(0,0,0,0.4);
    overflow-x: auto;
}

table {
    width:100%;
    border-collapse: collapse;
}

/* ===== HEADER ===== */
th {
    background:#667eea;
    color:white;
    padding:14px;
    font-size:15px;
    font-weight:700;
    letter-spacing:0.5px;
}

/* ===== ROWS ===== */
td {
    padding:12px;
    font-size:14px;
    font-weight:600;
    text-align:center;
    color:#222;
}

tbody tr:nth-child(even){
    background:#f4f6ff;
}

tbody tr:hover{
    background:#eef1ff;
}

/* ===== ACTION BUTTONS ===== */
.action-btn{
    padding:8px 16px;
    border-radius:22px;
    color:white;
    text-decoration:none;
    font-size:13px;
    font-weight:600;
    display:inline-block;
}

.edit{ background:#28a745; }
.delete{ background:#dc3545; }
.pay{ background:#17a2b8; }
.shift{ background:#ff9800; }

/* ===== RESPONSIVE ===== */
@media(max-width:768px){
    th{ font-size:13px; }
    td{ font-size:12px; }
}
</style>
</head>

<body>

<div class="page-title">Student Details</div>

<!-- ===== SEARCH SECTION ===== -->
<div class="search-box">
    <form action="searchByBatchNumber" method="get">
        <input type="text" name="batchnumber" placeholder="Batch Number">

        <select name="batchMode">
            <option value="">Select Mode</option>
            <option value="Online">Online</option>
            <option value="Offline">Offline</option>
        </select>

        <button type="submit">Search</button>
    </form>
</div>

<!-- ===== TABLE ===== -->
<div class="table-container">
<table>
<thead>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>Course</th>
    <th>Batch</th>
    <th>Batch Mode</th>
    <th>Batch No</th>
    <th>Fees Paid</th>
    <th>Pay Fees</th>
    <th>Payment</th>
    <th>Shift Batch</th>
    <th>Address</th>
    <th>Action</th>
</tr>
</thead>

<tbody>
<c:forEach var="s" items="${Data}">
<tr>
    <td>${s.id}</td>
    <td>${s.name}</td>
    <td>${s.email}</td>
    <td>${s.mobile}</td>
    <td>${s.course}</td>
    <td>${s.batch}</td>
    <td>${s.batchMode}</td>
    <td>${s.batchnumber}</td>
    <td>${s.feesPaid}</td>

    <td>
        <a href="payFees?id=${s.id}" class="action-btn pay">Pay Fees</a>
    </td>

    <td>${s.paymentStatus}</td>

    <td>
        <a href="shiftBatch?id=${s.id}" class="action-btn shift">Shift</a>
    </td>

    <td>${s.address}</td>

    <td>
        <a href="editStudent?id=${s.id}" class="action-btn edit">Edit</a>
        <a href="deleteStudent?id=${s.id}" class="action-btn delete"
           onclick="return confirm('Are you sure?');">Delete</a>
    </td>
</tr>
</c:forEach>
</tbody>
</table>
</div>

</body>
</html>
