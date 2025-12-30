<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Edit Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Segoe UI', Tahoma, sans-serif;
}

/* ===== BODY ===== */
body {
    min-height: 100vh;
    background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)),
                url("https://images.unsplash.com/photo-1524995997946-a1c2e315a42f");
    background-size: cover;
    background-position: center;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 20px;
}

/* ===== FORM CARD ===== */
.form-container {
    background: #fff;
    padding: 30px 25px;
    border-radius: 12px;
    max-width: 600px;
    width: 100%;
    box-shadow: 0 20px 40px rgba(0,0,0,0.3);
}

/* ===== FORM TITLE ===== */
.form-container h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #1e3a8a;
}

/* ===== FORM GROUP ===== */
.form-group {
    margin-bottom: 15px;
    display: flex;
    flex-direction: column;
}

label {
    font-weight: 600;
    margin-bottom: 5px;
    color: #333;
}

input, select, textarea {
    padding: 10px 12px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
    outline: none;
    width: 100%;
}

input:focus, select:focus, textarea:focus {
    border-color: #2563eb;
    box-shadow: 0 0 5px rgba(37,99,235,0.3);
}

textarea {
    resize: vertical;
}

/* ===== RADIO GROUP ===== */
.radio-group {
    display: flex;
    gap: 20px;
}

.radio-group input {
    margin-right: 5px;
}

/* ===== BUTTON ===== */
button {
    width: 100%;
    padding: 12px;
    font-size: 16px;
    font-weight: bold;
    color: white;
    background: linear-gradient(135deg, #2563eb, #4f46e5);
    border: none;
    border-radius: 25px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
}

/* ===== RESPONSIVE ===== */
@media(max-width: 500px){
    .form-container {
        padding: 20px;
    }
}
</style>
</head>

<body>

<div class="form-container">
    <h2>✏️ Edit Student</h2>

    <form action="updateStudent" method="post">
        <input type="hidden" name="id" value="${student.id}">

        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" value="${student.name}">
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" value="${student.email}">
        </div>

        <div class="form-group">
            <label>Mobile</label>
            <input type="text" name="mobile" value="${student.mobile}">
        </div>

        <div class="form-group">
            <label>Batch Time</label>
            <select name="batch">
                <option ${student.batch=='Morning'?'selected':''}>Morning</option>
                <option ${student.batch=='Afternoon'?'selected':''}>Afternoon</option>
                <option ${student.batch=='Evening'?'selected':''}>Evening</option>
            </select>
        </div>

        <div class="form-group">
            <label>Batch Number</label>
            <select name="batchnumber">
                <option ${student.batchnumber=='fdj196'?'selected':''}>fdj196</option>
                <option ${student.batchnumber=='fdj197'?'selected':''}>fdj197</option>
                <option ${student.batchnumber=='fdj198'?'selected':''}>fdj198</option>
            </select>
        </div>

        <div class="form-group">
            <label>Course</label>
            <select name="course">
                <option ${student.course=='Java Full Stack'?'selected':''}>Java Full Stack</option>
                <option ${student.course=='Python Full Stack'?'selected':''}>Python Full Stack</option>
                <option ${student.course=='Data Analytics'?'selected':''}>Data Analytics</option>
                <option ${student.course=='Web Development'?'selected':''}>Web Development</option>
            </select>
        </div>

        <div class="form-group">
            <label>Fees Paid</label>
            <input type="number" name="feesPaid" value="${student.feesPaid}">
        </div>

        <div class="form-group">
            <label>Payment Status</label>
            <div class="radio-group">
                <label><input type="radio" name="paymentStatus" value="Paid" ${student.paymentStatus=='Paid'?'checked':''}> Paid</label>
                <label><input type="radio" name="paymentStatus" value="Pending" ${student.paymentStatus=='Pending'?'checked':''}> Pending</label>
            </div>
        </div>

        <div class="form-group">
            <label>Address</label>
            <textarea name="address" rows="3">${student.address}</textarea>
        </div>

        <button type="submit">Update Student</button>
    </form>
</div>

</body>
</html>
