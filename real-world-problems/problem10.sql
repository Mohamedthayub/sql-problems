USE PRACTICE;

-- count how many products are active and inactive

select count(*) active_products from products 
where is_active = 1;
select count(*) inactive_products from products 
where is_active = 0;