select cc.ID company_id,cc.company_name,gu.login,cont.main_given_name||' '||cont.main_family_name,cont.main_mails,cont.main_telephone,cont.main_mobile
from aidatauser.crm_company cc
inner join aidatauser.cust_contact cont
on cc.ID=cont.cust_id
inner join aidatauser.crm_sales_in_charge csic
on cont.cust_id=csic.company_id
inner join aidatauser.crm_company_user ccu
on cc.ID=ccu.company_id
inner join aidatauser.general_user gu
on ccu.user_id=gu.id
where  csic.sales_id='B9DCA7E3B6C449F54825766500551010' -- SIC user_id
and  cc.create_time >= '01/01/2021'
and gu.status='2E85EB875CB7F11AE050A8C00600456F' --  Active status
order by 2
