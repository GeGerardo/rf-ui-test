*** Variables ***

# Login page locators
${REGISTERED_USER}  id=loginWithLocalUserTrigger
${USERNAME}  css=.input.userName.form-control
${PASSWORD}  css=.input.password.form-control.show-pw
${DROP_LANGUAGE}  id=languageIdSelect
${LOGIN_BUTTON}  css=.btn.btn-primary.login-btn

# User information locator
${USER_ID}  css=.user-name

# Assessment flow locators
${START_ASSESSMENT}  css=.btn.btn-primary.startExam
${HEADER_ASSESSMENT}  css=.header__name___1Cw2x
${NEXT_BUTTON}  id=footer-nav-button-next
${BACK_BUTTON}  id=footer-nav-button-previous
${REVIEW_BUTTON}  xpath=//a[contains(@title,'Review')]
${VISIBLE_PAGE}  css=.selected.multiple a
${QUESTION_1}  xpath=//a[(@title='Question 1')]
${QUESTION_10}  xpath=//a[(@title='Question 10')]
#${VISIBLE_PAGE}  xpath=//div[contains(@class,'selected multiple')]//a[@title]
#${VISIBLE_PAGE}  css=div[class*='selected multiple']

#Questions Locators
${RADIO_QUESTION_1_1}  xpath=//span[text()='Rationalization']
${RADIO_QUESTION_1_2}  xpath=//span[text()='Diversification']
${BOX_QUESTION_10_1}  xpath=//span[text()='Maple']
${BOX_QUESTION_10_2}  xpath=//span[text()='Oak']
${BOX_QUESTION_10_3}  xpath=//span[text()='Pine']