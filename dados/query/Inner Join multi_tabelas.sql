CREATE TABLE union_data AS SELECT 
 A.person_age, 
 A.person_income, 
 A.person_home_ownership, 
 A.person_emp_length, 
 C.loan_intent, 
 C.loan_grade, 
 C.loan_amnt, 
 C.loan_int_rate, 
 C.loan_status, 
 C.loan_percent_income,
 D.cb_person_default_on_file, 
 D.cb_person_cred_hist_length
FROM dados_mutuarios A
INNER JOIN ids B ON A.person_id = B.person_id
INNER JOIN emprestimos C ON B.loan_id = C.loan_id
INNER JOIN historicos_banco D ON B.cb_id = D.cb_id;



SELECT person_age, person_income, person_home_ownership, person_emp_length FROM dados_mutuarios
UNION
SELECT loan_intent, loan_grade, loan_amnt, loan_int_rate, loan_status, loan_percent_income FROM emprestimos; 

