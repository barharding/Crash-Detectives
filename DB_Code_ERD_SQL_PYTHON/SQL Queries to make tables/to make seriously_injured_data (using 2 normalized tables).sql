
select a.*, b.* from  [uot].[dbo].[accident_objects] a left join [uot]. [dbo].[unique_accidents] b
on a.accnum = b.accnum 

