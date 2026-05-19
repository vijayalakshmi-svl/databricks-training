--Q1. Extract numeric characters from the beginning of mixed_value

| mixed_value | result |
| ----------- | ------ |
| ABC123      | NULL   |
| 456XYZ      | 456    |
| A1B2C3      | NULL   |

--Q2. Extract numeric characters from the end of mixed_value

| mixed_value | result |
| ----------- | ------ |
| ABC123      | 123    |
| 456XYZ      | NULL   |
| A1B2C3      | 3      |

--Q3. Extract only the first character from mixed_value

| mixed_value | result |
| ----------- | ------ |
| ABC123      | A      |
| 456XYZ      | 4      |
| A1B2C3      | A      |


--Q4. Extract only the last character from mixed_value

| mixed_value | result |
| ----------- | ------ |
| ABC123      | 3      |
| 456XYZ      | Z      |
| A1B2C3      | 3      |

--Q5. Extract exactly two consecutive numeric characters

| mixed_value | result |
| ----------- | ------ |
| ABC123      | 12     |
| 456XYZ      | 45     |
| A1B2C3      | NULL   |

--Q6. Extract exactly one numeric character

| mixed_value | result |
| ----------- | ------ |
| ABC123      | 1      |
| 456XYZ      | 4      |
| A1B2C3      | 1      |

--Q7. Extract country code from phone number

| phone          | country_code |
| -------------- | ------------ |
| +91-9876543210 | 91           |
| +1-1234567890  | 1            |
| +44-9988776655 | 44           |

--Q8. Extract numeric portion between alphabetic characters

| mixed_value | result |
| ----------- | ------ |
| ABC123      | 123    |
| 456XYZ      | 456    |
| A1B2C3      | 1      |

--Q9. Extract text before @ symbol from email

| email                                         | username |
| --------------------------------------------- | -------- |
| [karthik@gmail.com](mailto:karthik@gmail.com) | karthik  |
| [veena@yahoo.com](mailto:veena@yahoo.com)     | veena    |
| [ravi@hotmail.com](mailto:ravi@hotmail.com)   | ravi     |

--Q10. Extract text after @ symbol including domain

| email                                         | domain_part  |
| --------------------------------------------- | ------------ |
| [karthik@gmail.com](mailto:karthik@gmail.com) | @gmail.com   |
| [veena@yahoo.com](mailto:veena@yahoo.com)     | @yahoo.com   |
| [ravi@hotmail.com](mailto:ravi@hotmail.com)   | @hotmail.com |

--Q11. Extract domain name without @ symbol

| email                                         | domain_name |
| --------------------------------------------- | ----------- |
| [karthik@gmail.com](mailto:karthik@gmail.com) | gmail.com   |
| [veena@yahoo.com](mailto:veena@yahoo.com)     | yahoo.com   |
| [ravi@hotmail.com](mailto:ravi@hotmail.com)   | hotmail.com |

--Q12. Extract text after last dot in email

| email                                         | extension |
| --------------------------------------------- | --------- |
| [karthik@gmail.com](mailto:karthik@gmail.com) | com       |
| [veena@yahoo.com](mailto:veena@yahoo.com)     | com       |
| [ravi@hotmail.com](mailto:ravi@hotmail.com)   | com       |

--Q13. Extract continuous alphabetic characters

| mixed_value | alphabets |
| ----------- | --------- |
| ABC123      | ABC       |
| 456XYZ      | XYZ       |
| A1B2C3      | A         |

--Q14. Extract continuous numeric characters

| mixed_value | numbers |
| ----------- | ------- |
| ABC123      | 123     |
| 456XYZ      | 456     |
| A1B2C3      | 1       |

--Q15. Extract first three characters from full_text

| full_text     | result |
| ------------- | ------ |
| EMP_101_IND   | EMP    |
| STAFF_202_USA | STA    |
| WORK_303_UK   | WOR    |

--Q16. Extract last two characters from full_text

| full_text     | result |
| ------------- | ------ |
| EMP_101_IND   | ND     |
| STAFF_202_USA | SA     |
| WORK_303_UK   | UK     |

--Q17. Extract employee number between prefix and underscore

| full_text     | emp_number |
| ------------- | ---------- |
| EMP_101_IND   | 101        |
| STAFF_202_USA | 202        |
| WORK_303_UK   | 303        |

--Q18. Extract country code at end of full_text

| full_text     | country_code |
| ------------- | ------------ |
| EMP_101_IND   | NULL         |
| STAFF_202_USA | NULL         |
| WORK_303_UK   | NULL         |

--Q19. Extract alphabetic text between underscores

| full_text     | result |
| ------------- | ------ |
| EMP_101_IND   | IND    |
| STAFF_202_USA | USA    |
| WORK_303_UK   | UK     |

--Q20. Extract country code after plus sign in phone

| phone          | country_code |
| -------------- | ------------ |
| +91-9876543210 | 91           |
| +1-1234567890  | 1            |
| +44-9988776655 | 44           |
