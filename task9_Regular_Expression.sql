select * from flipcart_products

-- 1)first degit  N ,after that 3 char should be anything ,then  3 char should be anything then 'M'and one char should be 'a'or 'h' then 1 char should be
	--should be a-z and last should be 270


select productname from flipcart_products where productname ~* '^N[a-z]{3}\s[a-z]{3}\s[M](a|h)[a-z]\s270$'

--2)first 0-9 , second is eithre 0 or 1 and last any number

select stockquantity from flipcart_Products where stockquantity::varchar ~* '^[0-9][0|1][0-9]$'

--2)start from L , 5 digit should be anything 

select seller from flipcart_Products where seller ~* '^L[a-z]{5}'

--4)start from W then 7 digit should be char , then space Start with T , 8 char should be anything ,last should be y or z 

select * from flipcart_Products where category ~* '^W[a-z]{7}\s[T][a-z]{8}(y|z)'

--5)from dateadded start with 2 , then 3 ditgit should be  [020], then - , 2 digit between 0-5 and 0-9 , then - , 27

select * from flipcart_products

select dateadded from flipcart_Products where dateadded::varchar ~ '^2[0-9]{3}-[0-5][0-9]-27'

--6)select brand ,select first a to z , then m or a , then 3 char should be a-z and end with n 

select brand from flipcart_Products where brand ~* '^[a-z](m|a)[a-z]{3}n$'


