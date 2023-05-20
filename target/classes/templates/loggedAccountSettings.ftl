<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>RiftStatistics</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://riftstatistics.ddns.net/file/css/accSett">
    <link rel="stylesheet" href="https://riftstatistics.ddns.net/file/css/loader">
    <link rel="stylesheet" href="https://riftstatistics.ddns.net/file/css/style">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <script src="https://riftstatistics.ddns.net/file/js/Jquery"></script>
</head>
<body>

<div id="loader-content">

    <div id="loader-wrapper">
        <div id="" class="entry-header">
            <h1 id="entry-title" class="entry-title disabled">Loading</h1>
        </div>
        <div id="pageLoader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>

</div>

<div id="page" class="page">
    <div class="outPopup" id="outPopup">
        <div class="close-btn noselection" id="close-btn">&times;</div>
        <div class="form">
            <h2>Log out</h2>
            <h1>Are you sure you want to log out?</h1>
            <div class="form_element">
                <button type="button" id="logout-accept">Accept</button>
            </div>
            <div class="form_element">
                <button type="button" id="logout-cancel">Cancel</button>
            </div>
        </div>
    </div>

    <!-- Comienzo del header -->
    <div class="blur-toggle" id="blurrDiv">
        <header class="header">

            <div class="header_Browser" id="header_Browser">
                <textarea class="header_Browser_ta" id="header_Browser_ta" placeholder="Search summoners, champions..." readonly></textarea>
            </div>

            <!-- Botones de cuenta y ventanas -->
            <div class="accountArea  noselection">
                <button type="button" class="accountButton" id="show-logout">Log out</button>
            </div>
        </header>
        <!-- Fin del header-->
    </div>

    <!-- Comienzo del sidebar -->
    <div class="sidebar noselection" id="sidebar">
        <div class="sidebar-top">
            <div class="sidebar-logo">
                <img src="https://riftstatistics.ddns.net/file/assets/logo/RiftStatisticsHorizontal.png" width="200" height="54.09" alt="RiftStatistics">
            </div>
            <svg id="sidebar-button" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
            </svg>
        </div>
        <div id="interactiveSidebar">
            <div class="sidebar-user" id="show-login">
                <img id="profileImage" src="${UsernamePhoto}" alt="AccountName" class="user-img pointerCursor">
                <div>
                    <p id="username" class="bold">${Username}</p>
                </div>
            </div>
            <ul class="sidebarList">
                <#if haslolAccount??>
                    <li>
                        <a href="#" id="lolAccountButton">
                            <img id="${lolPUUID}@&@${lolRegion}" class="userLolAccount" src="https://riftstatistics.ddns.net/file/assets/summIcon/${lolPhoto}.png">
                            <span class="sidebar-nav-item">${lolName}</span>
                        </a>
                    </li>
                </#if>
                <li>
                    <a href="#" id="homePageButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-fill" viewBox="0 0 16 16">
                            <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L8 2.207l6.646 6.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5Z"/>
                            <path d="m8 3.293 6 6V13.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5V9.293l6-6Z"/>
                        </svg>
                        <span class="sidebar-nav-item">Home</span>
                    </a>
                </li>
                <li>
                    <a href="#" id="championsPageButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-grid-fill" viewBox="0 0 16 16">
                            <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zm8 0A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm-8 8A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm8 0A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3z"/>
                        </svg>
                        <span class="sidebar-nav-item">Champions</span>
                    </a>
                </li>
                <li>
                    <a href="#" id="itemsPageButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box" viewBox="0 0 16 16">
                            <path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5 8 5.961 14.154 3.5 8.186 1.113zM15 4.239l-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/>
                        </svg>
                        <span class="sidebar-nav-item">Items</span>
                    </a>
                </li>
                <li>
                    <a href="#" id="settingsPageButton">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill-gear" viewBox="0 0 16 16">
                            <path d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0Zm-9 8c0 1 1 1 1 1h5.256A4.493 4.493 0 0 1 8 12.5a4.49 4.49 0 0 1 1.544-3.393C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4Zm9.886-3.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382l.045-.148ZM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0Z"/>
                        </svg>
                        <span id="SettingsSpan" class="sidebar-nav-item">Settings</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="blur-toggle" id="blurrDiv2">

        <div class="main-container">
            <div class="main-inner-container">
                <div class="accountCard">
                    <div class="user-profile">
                        <div class="user-avatar">
                            <img class="user-photo" id="user-photo" src="${UsernamePhoto}" alt="${accountName}">
                        </div>
                        <div class="user-info">
                            <h5 id="user-name" class="user-name">${accountName}</h5>
                            <h6 id="user-email" class="user-email">${accountEmail}</h6>
                        </div>
                    </div>
                    <button type="button" id="deleteAcc" name="submit" class="deleteAccButton">Delete account</button>
                </div>
                <div class="formCard">
                    <div class="personalContainer">
                        <div class="titleContainer">
                            <h1 class="titleText">Personal Details</h1>
                        </div>
                        <div class="informationContainer">
                            <div class="form-element">
                                <label class="AccSettingsLabel">Username:</label>
                                <div style="position: relative;">
                                    <input type="text" class="form-control effect-8" id="usernameInput" value="${accountName}" placeholder="Your username here...">
                                    <span class="focus-border"><i></i></span>
                                </div>
                            </div>
                            <div class="form-element">
                                <label class="AccSettingsLabel">Email:</label>
                                <div style="position: relative;">
                                    <input type="text" class="form-control effect-8" id="emailInput" value="${accountEmail}" placeholder="Your email here...">
                                    <span class="focus-border"><i></i></span>
                                </div>
                            </div>
                            <div class="form-element">
                                <#if accountBirthday??>
                                <label class="AccSettingsLabel">Birthday date:</label>
                                <input type="date" class="form-control" id="birthdayInput" value="${accountBirthday}">
                                <#else>
                                <label class="AccSettingsLabel">Birthday date:</label>
                                <input type="date" class="form-control noselection" id="birthdayInput" value="0000-00-00">
                                </#if>
                            </div>
                            <div class="form-element">
                                <label class="AccSettingsLabel">Member since:</label>
                                <input type="date" class="form-control noselection" id="creationDateInput" value="${accountMember}" disabled>
                            </div>
                        </div>
                        <div class="informationContainerPass">
                            <div class="form-element-pass">
                                <label class="AccSettingsLabel">Password:</label>
                                <div id="pass1Container" class="passContainer">
                                    <div style="position: relative;">
                                        <input type="password" class="form-control" id="pass1Input" placeholder="Your password here">
                                        <span class="focus-border"><i></i></span>
                                    </div>
                                    <svg id="pass1ShowS"  xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                        <path id="pass1ShowS-activeShow" d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
                                    </svg>
                                </div>
                            </div>
                            <div class="form-element-pass">
                                <label class="AccSettingsLabel">Repeat Password:</label>
                                <div id="pass2Container" class="passContainer">
                                    <div style="position: relative;">
                                        <input type="password" class="form-control" id="pass2Input" placeholder="Your password here">
                                        <span class="focus-border"><i></i></span>
                                    </div>
                                    <svg id="pass2ShowS" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-eye" viewBox="0 0 16 16">
                                        <path d="M16 8s-3-5.5-8-5.5S0 8 0 8s3 5.5 8 5.5S16 8 16 8zM1.173 8a13.133 13.133 0 0 1 1.66-2.043C4.12 4.668 5.88 3.5 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.133 13.133 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755C11.879 11.332 10.119 12.5 8 12.5c-2.12 0-3.879-1.168-5.168-2.457A13.134 13.134 0 0 1 1.172 8z"/>
                                        <path d="M8 5.5a2.5 2.5 0 1 0 0 5 2.5 2.5 0 0 0 0-5zM4.5 8a3.5 3.5 0 1 1 7 0 3.5 3.5 0 0 1-7 0z"/>
                                        <path id="pass2ShowS-activeShow" d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708z"/>
                                    </svg>
                                </div>
                            </div>
                            <a href="#" class="passChange">
                                <p>Forgot your password?</p>
                            </a>
                        </div>
                        <div class="buttonContainer">
                            <button type="button" id="cancelButton" name="cancel" class="cancelButton">Cancel</button>
                            <button type="button" id="submitButton" name="submit" class="saveButton">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script type="module" src="https://riftstatistics.ddns.net/file/js/Utilities"></script>
<script src="https://riftstatistics.ddns.net/file/js/AccSett"></script>
</body>
</html>
