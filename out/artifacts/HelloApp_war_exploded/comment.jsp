<%--
  Created by IntelliJ IDEA.
  User: Arrow
  Date: 2019/4/20
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Dashboard</title>
    <script src="../../bower_components/jquery/dist/jquery.min.js"></script>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body>
<div class="col-md-6 col-md-offset-3">
    <div class="box-header">
        <i class="fa fa-comments-o"></i>

        <h3 class="box-title">Chat</h3>

        <div class="box-tools pull-right" data-toggle="tooltip" title="Status">
            <div class="btn-group" data-toggle="btn-toggle">
                <button type="button" class="btn btn-default btn-sm active"><i class="fa fa-square text-green"></i>
                </button>
                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-square text-red"></i></button>
            </div>
        </div>
    </div>
    <div class="box-body chat" id="chat-box">
        <!-- chat item -->
        <div class="item">
            <img src="dist/img/user4-128x128.jpg" alt="user image" class="online">

            <p class="message">
                <a href="#" class="name">
                    <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                    Mike Doe
                </a>
                I would like to meet you to discuss the latest news about
                the arrival of the new theme. They say it is going to be one the
                best themes on the market
            </p>
            <div class="attachment">
                <h4>Attachments:</h4>

                <p class="filename">
                    Theme-thumbnail-image.jpg
                </p>

                <div class="pull-right">
                    <button type="button" class="btn btn-primary btn-sm btn-flat">Open</button>
                </div>
            </div>
            <!-- /.attachment -->
        </div>
        <!-- /.item -->
        <!-- chat item -->
        <div class="item">
            <img src="dist/img/user3-128x128.jpg" alt="user image" class="offline">

            <p class="message">
                <a href="#" class="name">
                    <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:15</small>
                    Alexander Pierce
                </a>
                I would like to meet you to discuss the latest news about
                the arrival of the new theme. They say it is going to be one the
                best themes on the market
            </p>
        </div>
        <!-- /.item -->
        <!-- chat item -->
        <div class="item">
            <img src="dist/img/user2-160x160.jpg" alt="user image" class="offline">

            <p class="message">
                <a href="#" class="name">
                    <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:30</small>
                    Susan Doe
                </a>
                I would like to meet you to discuss the latest news about
                the arrival of the new theme. They say it is going to be one the
                best themes on the market
            </p>
        </div>
        <!-- /.item -->
    </div>
    <!-- /.chat -->
    <div class="box-footer">
        <div class="input-group">
            <input class="form-control" placeholder="Type message...">

            <div class="input-group-btn">
                <button type="button" class="btn btn-success"><i class="fa fa-plus"></i></button>
            </div>
        </div>
    </div>
</div>

<script>
    $.ajax({
        type: "GET",
        url: "/commentDisplay",
        dataType: "json",
        success: function (data) {
            console.log(data);
            console.log(data.length);
            var parent = $("#chat-box") ;
            for (var i = 0; i < data.length; i++) {

                // var div = $("<div class=\"item\"></div>") ;
                // var img = $("<img src=\"dist/img/user2-160x160.jpg\" alt=\"user image\" class=\"offline\">") ;
                // var paragragh = $("<p class=\"message\"></p>") ;
                var node = $(" <div class=\"item\">\n" +
                    "            <img src=\"dist/img/user2-160x160.jpg\" alt=\"user image\" class=\"offline\">\n" +
                    "\n" +
                    "            <p class=\"message\">\n" +
                    "                <a href=\"#\" class=\"name\">\n" +
                    "                    <small class=\"text-muted pull-right\"><i class=\"fa fa-clock-o\"></i> 5:30</small>\n" +
                                            data[i].userName +
                    "                </a>\n" +
                        data[i].userComment +
                    "            </p>\n" +
                    "        </div>");
                parent.append(node);

            }

            // var node = document.createElement("div");
            // var child = document.createElement("paragraph");
            // child.innerText = "testtttttttttt";
            // node.appendChild(child);
            // parent.appendChild(node);
        }

    });

</script>

</body>
</html>
