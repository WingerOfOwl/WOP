<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>What's On Pads Admin</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark  fixed-top" style="background-color: #82AAE3;">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.html"
        style="color: #f7f7f7; font-weight: bold; margin-left: 20%; font-size: 40px;">
        What's On
        Pad
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-right" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0" style="margin-right: 25%;">
          <li class="nav-item ">
            <a class="nav-link" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="book.jsp">Book</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="order.jsp">Order</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="user.jsp">User</a>
          </li>
          <li class="nav-item" style="background-color:#E8A0BF; border-radius: 30px;">
            <a class="nav-link" href="account.html">Account</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <section class="agent section-padding" id="menu">
    <div class="container" style="margin-top: 10%;">
      <div class="row">
        <div class="col-12 col-md-12 col-lg-4">
          <div class="card text-light text-center bg-white pb-2">
            <div class="card-body text-dark">
              <div class="img-area mb-4"><a href="book.jsp"><img alt="" class="img-fluid"
                    src="https://img.freepik.com/free-vector/hand-drawn-flat-design-stack-books-illustration_23-2149341898.jpg?size=626&ext=jpg&uid=R98512913&ga=GA1.2.1578873345.1680630005&semt=robertav1_2_sidr">
              </div></a>
              <h3 class="card-title">Book</h3>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-12 col-lg-4">
          <div class="card text-light text-center bg-white pb-2">
            <div class="card-body text-dark">
              <div class="img-area mb-4"><a href="order.jsp"><img alt="" class="img-fluid"
                    src="https://img.freepik.com/free-vector/order-confirmed-concept-illustration_114360-1545.jpg?size=626&ext=jpg&uid=R98512913&ga=GA1.2.1578873345.1680630005&semt=robertav1_2_sidr">
              </div></a>
              <h3 class="card-title">Order</h3>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-12 col-lg-4">
          <div class="card text-light text-center bg-white pb-2">
            <div class="card-body text-dark">
              <div class="img-area mb-4"><a href="user.jsp"><img alt="" class="img-fluid"
                    src="https://img.freepik.com/free-vector/profile-icons-pack-hand-drawn-style_52683-72294.jpg?size=626&ext=jpg&uid=R98512913&ga=GA1.2.1578873345.1680630005&semt=robertav1_2_sid">
              </div></a>
              <h3 class="card-title">User</h3>
            </div>
          </div>
        </div>
      </div>
  </section>
  <footer class="bg-dark p-2 text-center" style="margin-top: 15%;">
    <div class="container" style=" position: sticky;">
      <p class="text-white">All Right Reserved By @WOP Media</p>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>