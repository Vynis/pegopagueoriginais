
/*BUSCA DE VOLUMES DOS PRODUTOS*/
Select * from tb_produtos
Inner Join tb_ponte_categoria_produtos ON pcp_pro_id = pro_id
Inner Join tb_categorias_produtos ON pcp_cap_id = cap_id
Where pro_status = 'A'
And cap_status = 'A';

/*BUSCA DE CATEGORIAS DOS PRODUTOS*/
Select * from tb_produtos
Inner Join tb_ponte_categoria_produtos ON pcp_pro_id = pro_id
Inner Join tb_categorias_produtos ON pcp_cap_id = cap_id
Where pro_status = 'A'
And cap_status = 'A';

/*BUSCA DE CATEGORIAS DE MARCAS DOS PRODUTOS*/
Select * from tb_produtos
Inner Join tb_categoria_marcas ON cam_pro_id = pro_id
Inner Join tb_marcas ON cam_mar_id = mar_id
Where pro_status = 'A'
And mar_status = 'A';

/*BUSCA DOS ASSISTENTES POR ESTABELECIMENTO*/
Select * from tb_assistentes
Inner Join tb_estabelecimentos_assistente ON esa_ass_id = ass_id
Inner Join tb_estabelecimentos ON esa_est_id = est_id