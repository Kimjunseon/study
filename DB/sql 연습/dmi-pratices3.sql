-- 함수: 문자열

-- upper
select upper ('seoul'), ('sEouL');
select upper (first_name) from employees;

-- lower
select lower (first_name) from employees;

-- substring
-- substring(문자열, index, length)
select substring('hello world', 3, 2);

-- 예제) 1989년에 입사한 사원들의 이름, 입사일을 출력
select first_name, hire_date
	from employees
	where '1989' = substring(hire_date, 1, 4);
    
-- lpad(오른쪽 정렬), rpad(왼쪽 정렬)
select lpad('123', 4, '-');
select rpad('123', 4, '-');

-- 예제) 직원들의 월급을 오른쪽 정렬(빈공간은 *)
select lpad(salary, 10 , '*')
	from salaries;

-- trim, ltrim(왼쪽), rtrim(오른쪽) (공백제거)
select concat('---', ltrim('   hello   '), '---'),
		concat('---', rtrim('   hello   '), '---'),
		concat('---', trim(both 'x' from'xxxhelxloxxx'), '---');


