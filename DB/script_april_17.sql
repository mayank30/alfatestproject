CREATE proc sp_get_services_details_by_service_id
@id int
as
select * from tbl_services where services_id=@id



select * from tbl_services

update tbl_services set img_url = 'tab-'+CAST(id as varchar(max))+'.jpg'
