<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<style>
* {
    box-sizing: border-box;
}

/* ===== BACKGROUND ===== */
body {
    margin: 0;
    font-family: 'Segoe UI', Arial, sans-serif;
    min-height: 100vh;
    background:
        linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
        url("https://images.unsplash.com/photo-1522202176988-66273c2fd55f");
    background-size: cover;
    background-position: center;
    display: flex;
    align-items: center;
    justify-content: center;
}

/* ===== FORM CARD ===== */
.form-container {
    width: 95%;
    max-width: 850px;
    background: #fff;
    padding: 35px;
    border-radius: 15px;
    box-shadow: 0 25px 45px rgba(0,0,0,0.4);
    animation: fadeIn 0.7s ease-in-out;
}

/* ===== ANIMATION ===== */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(40px); }
    to { opacity: 1; transform: translateY(0); }
}

/* ===== HEADING ===== */
.form-container h2 {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
}

/* ===== GRID ===== */
.form-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 18px 25px;
}

/* ===== FORM GROUP ===== */
.form-group {
    display: flex;
    flex-direction: column;
}

.form-group.full {
    grid-column: span 2;
}

/* ===== LABEL ===== */
label {
    font-weight: 600;
    margin-bottom: 6px;
    color: #444;
}

/* ===== INPUTS ===== */
input, select, textarea {
    padding: 11px;
    border-radius: 6px;
    border: 1px solid #ccc;
    font-size: 14px;
    outline: none;
}

input:focus,
select:focus,
textarea:focus {
    border-color: #667eea;
    box-shadow: 0 0 5px rgba(102,126,234,0.5);
}

/* ===== RADIO ===== */
.radio-group {
    display: flex;
    gap: 25px;
    margin-top: 6px;
    font-weight: 500;
}

/* ===== BUTTON ===== */
button {
    grid-column: span 2;
    margin-top: 20px;
    padding: 13px;
    font-size: 16px;
    border: none;
    border-radius: 25px;
    cursor: pointer;
    font-weight: bold;
    color: white;
    background: linear-gradient(to right, #667eea, #764ba2);
    transition: 0.3s;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 12px 30px rgba(0,0,0,0.3);
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

<div class="form-container">
    <h2>Student Registration</h2>

    <form action="/saveStudent" method="post">

        <div class="form-grid">

            <div class="form-group">
                <label>Student Name</label>
                <input type="text" name="name" placeholder="Full name" required>
            </div>

            <div class="form-group">
                <label>Email</label>
                <input type="email" name="email" placeholder="Email address" required>
            </div>

            <div class="form-group">
                <label>Mobile Number</label>
                <input type="text" name="mobile" placeholder="Mobile number" required>
            </div>

            <div class="form-group">
                <label>Batch Time</label>
                <select name="batch">
                    <option value="">Select Batch</option>
                    <option>Morning</option>
                    <option>Afternoon</option>
                    <option>Evening</option>
                </select>
            </div>

            <!-- ✅ BATCH MODE -->
            <div class="form-group">
                <label>Batch Mode</label>
                <div class="radio-group">
                    <label>
                        <input type="radio" name="batchMode" value="Online" required>
                        Online
                    </label>
                    <label>
                        <input type="radio" name="batchMode" value="Offline">
                        Offline
                    </label>
                </div>
            </div>

            <!-- ✅ BATCH NUMBER -->
            <div class="form-group">
                <label>Batch Number</label>
                <select name="batchnumber">
                    <option value="">Select Batch Number</option>
                    <option>fdj196</option>
                    <option>fdj197</option>
                    <option>fdj198</option>
                    <option>Reg196</option>
                    <option>Reg197</option>
                    <option>Reg198</option>
                </select>
            </div>

            <div class="form-group">
                <label>Course</label>
                <select name="course">
                    <option value="">Select Course</option>
                    <option>Java Full Stack</option>
                    <option>Python Full Stack</option>
                    <option>Data Analytics</option>
                    <option>Web Development</option>
                </select>
            </div>

            <div class="form-group">
                <label>Fees Paid</label>
                <input type="number" name="feesPaid" placeholder="Paid amount">
            </div>

            <div class="form-group full">
                <label>Address</label>
                <textarea name="address" rows="3" placeholder="Full address"></textarea>
            </div>

            <div class="form-group full">
                <label>Payment Status</label>
                <div class="radio-group">
                    <label><input type="radio" name="paymentStatus" value="Paid"> Paid</label>
                    <label><input type="radio" name="paymentStatus" value="Pending"> Pending</label>
                </div>
            </div>

            <button type="submit">Save Student</button>

        </div>

    </form>
</div>

</body>
</html>
