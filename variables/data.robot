*** Variables ***
#Browser and url selection
#Browser can be chrome, edge, firefox, safari. Just need to change the name below
${BROWSER}  chrome
${URL}  https://demo.inspera.no/

#Landing page language selection
# Can be changed to: no_no - en_us - no_no_ny - sv_se - pl_pl - es_co - nl_nl
${LANGUAGE}  en_us

#Login data for positive cases
${id_number}  0078
${login_id}  76260211
${pass}  hm87

#Change the precision of the image validation from 0-10
${PRECISION_IMAGE}  6