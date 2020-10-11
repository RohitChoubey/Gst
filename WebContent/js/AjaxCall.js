$(document).ready(function () {

        var name = $("#name").val();
        var image = $("#image").val();
        var content =$("#content").val();
        $.ajax({
            // The URL for the request
            url: "JsonSender",
            // The data to send (will be converted to a query string)
            data: {
                name: name
                image: image
                content : content
            },
            // Whether this is a POST or GET request
            type: "GET",

            // The type of data we expect back
            dataType: "json",
            success: function (data2) {
                alert(data2[0]);

            },
            error: function (data) {
                alert("Failed");
            }
        })

});
