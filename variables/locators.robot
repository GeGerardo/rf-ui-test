*** Variables ***

# Login page locators
${REGISTERED_USER}  id=loginWithLocalUserTrigger
${USERNAME}  css=.input.userName.form-control
${PASSWORD}  css=.input.password.form-control.show-pw
${DROP_LANGUAGE}  id=languageIdSelect
${LOGIN_BUTTON}  css=.btn.btn-primary.login-btn

# User information page locators
${USER_ID}  css=.user-name

# Assessment flow locators
${START_ASSESSMENT}  css=.btn.btn-primary.startExam
${HEADER_ASSESSMENT}  css=.header__name___1Cw2x
${NEXT_BUTTON}  id=footer-nav-button-next
${BACK_BUTTON}  id=footer-nav-button-previous
${REVIEW_BUTTON}  xpath=//a[contains(@title,'Review')]

#Questions Locators
${RADIO_QUESTION_1}  xpath=//span[text()='Rationalization']