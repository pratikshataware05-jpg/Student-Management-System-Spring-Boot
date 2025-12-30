<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Update Fees</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, sans-serif;
    min-height: 100vh;
    background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
                url("https://images.unsplash.com/photo-1522202176988-66273c2fd55f");
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
}

.fees-container {
    background: white;
    padding: 30px 35px;
    border-radius: 15px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.3);
    width: 90%;
    max-width: 700px;
}

h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #333;
}

/* ===== GRID FORM ===== */
.form-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px 20px;
}

.form-group {
    display: flex;
    flex-direction: column;
}

.form-group.full {
    grid-column: span 2;
}

label {
    margin-bottom: 6px;
    font-weight: 600;
    color: #444;
}

input, select, textarea {
    padding: 10px 12px;
    font-size: 14px;
    border-radius: 6px;
    border: 1px solid #ccc;
    outline: none;
}

input:disabled, select:disabled, textarea:disabled {
    background-color: #f0f0f0;
    color: #555;
}

input:focus,
select:focus,
textarea:focus {
    border-color: #667eea;
    box-shadow: 0 0 5px rgba(102,126,234,0.5);
}

button {
    grid-column: span 2;
    padding: 12px;
    font-size: 16px;
    font-weight: bold;
    color: white;
    background: linear-gradient(to right, #667eea, #764ba2);
    border: none;
    border-radius: 25px;
    cursor: pointer;
    transition: 0.3s;
    margin-top: 15px;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 12px 25px rgba(0,0,0,0.3);
}

/* ===== RESPONSIVE ===== */
@media (max-width: 768px) {
    .form-grid {
        grid-template-columns: 1fr;
    }

    .form-group.full,
    button {
        grid-column: span 1;
    }
}
</style>
</head>

<body>

<div class="fees-container">
    <h2>Update Fees</h2>

    <form action="updateFees" method="get">
        <input type="hidden" name="id" value="${student.id}">

        <div class="form-grid">

            <div class="form-group">
                <label>Student Name</label>
                <input type="text" value="${student.name}" disabled>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" value="${student.email}" disabled>
            </div>

            <div class="form-group">
                <label>Mobile</label>
                <input type="text" value="${student.mobile}" disabled>
            </div>

            <div class="form-group">
                <label>Course</label>
                <input type="text" value="${student.course}" disabled>
            </div>

            <div class="form-group">
                <label>Batch Mode</label>
                <input type="text" value="${student.batchMode}" disabled>
            </div>

            <div class="form-group">
                <label>Batch</label>
                <input type="text" value="${student.batch}" disabled>
            </div>

            <div class="form-group">
                <label>Batch Number</label>
                <input type="text" value="${student.batchnumber}" disabled>
            </div>

            <div class="form-group">
                <label>Payment Status</label>
                <input type="text" value="${student.paymentStatus}" disabled>
            </div>

            <div class="form-group full">
                <label>Address</label>
                <textarea rows="2" disabled>${student.address}</textarea>
            </div>

            <div class="form-group full">
                <label>Fees Paid</label>
               <input type="number" name="feesPaid" value="${student.feesPaid}" required>

            </div>

            <button type="submit">Update Fees</button>
        </div>
    </form>
</div>

</body>
</html>
