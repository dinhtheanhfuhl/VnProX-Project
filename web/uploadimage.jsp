<%-- 
    Document   : uploadimage
    Created on : Oct 7, 2022, 10:01:10 PM
    Author     : ductd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">        
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="css/uploadimage.css" rel="stylesheet" type="text/css"/>
    </head>
    <body id="bodyavatar">
        <main>
            <input id="image" type="file" name="image" id="image" accept="image/*" />
            <div id="preview">
                <div id="avatar"></div>
                <button id="btnUpload"
                    id="upload-button"
                    aria-labelledby="image"
                    aria-describedby="image"
                    >
                    🙂
                </button>
            </div>
        </main>
        <script>const UPLOAD_BUTTON = document.getElementById("upload-button");
            const FILE_INPUT = document.querySelector("input[type=file]");
            const AVATAR = document.getElementById("avatar");

            UPLOAD_BUTTON.addEventListener("click", () => FILE_INPUT.click());

            FILE_INPUT.addEventListener("change", event => {
                const file = event.target.files[0];

                const reader = new FileReader();
                reader.readAsDataURL(file);

                reader.onloadend = () => {
                    AVATAR.setAttribute("aria-label", file.name);
                    AVATAR.style.background = `url(${reader.result}) center center/cover`;
                };
            });
        </script>
    </body>

</html>
