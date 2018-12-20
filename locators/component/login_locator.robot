*** Variables ***
${login_link}                        //a[@id="link-login"]
${forgot_link}                       //a[@id="link-forgot-password"]
${msg_welcome}                       //h1[text()="Welcome, Please Sign In!"]
${txt_username}                      //input[@id="email"]
${txt_password}                      //input[@id="password"]
${chk_remember}                      //input[@id="remember-me"]
${btn_login}                         //input[@id="btn-login"]

${errmsg_credentials_wrongpass}      //div[@id="message-error"]
${errmsg_credentials_nouser}         //div[@id="message-error"]
//span[@id="email-error"]