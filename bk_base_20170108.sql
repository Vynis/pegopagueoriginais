# Host: localhost  (Version 5.7.20-log)
# Date: 2018-01-10 17:11:16
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "tb_assistentes"
#

DROP TABLE IF EXISTS `tb_assistentes`;
CREATE TABLE `tb_assistentes` (
  `ass_id` int(11) NOT NULL AUTO_INCREMENT,
  `ass_nome` varchar(60) DEFAULT NULL,
  `ass_status` varchar(1) DEFAULT NULL,
  `ass_dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`ass_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_assistentes"
#

/*!40000 ALTER TABLE `tb_assistentes` DISABLE KEYS */;
INSERT INTO `tb_assistentes` VALUES (1,'Vinícius de Oliveira Sousa','A','2018-10-01 00:00:00'),(2,'Kheuren Paula','A','2018-10-01 00:00:00');
/*!40000 ALTER TABLE `tb_assistentes` ENABLE KEYS */;

#
# Structure for table "tb_categoria_marcas"
#

DROP TABLE IF EXISTS `tb_categoria_marcas`;
CREATE TABLE `tb_categoria_marcas` (
  `cam_id` int(11) NOT NULL AUTO_INCREMENT,
  `cam_pro_id` int(11) NOT NULL,
  `cam_mar_id` int(11) NOT NULL,
  PRIMARY KEY (`cam_id`),
  KEY `fk_tb_categoria_marcas_tb_produtos1_idx` (`cam_pro_id`),
  KEY `fk_tb_categoria_marcas_tb_marcas1_idx` (`cam_mar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_categoria_marcas"
#

/*!40000 ALTER TABLE `tb_categoria_marcas` DISABLE KEYS */;
INSERT INTO `tb_categoria_marcas` VALUES (1,1,1),(2,2,1),(3,3,5);
/*!40000 ALTER TABLE `tb_categoria_marcas` ENABLE KEYS */;

#
# Structure for table "tb_categorias_produtos"
#

DROP TABLE IF EXISTS `tb_categorias_produtos`;
CREATE TABLE `tb_categorias_produtos` (
  `cap_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Categorias são: Limpeza, Bebidas, Carnes, Bebês, Alimentos, Perfumaria, Feira e etc.',
  `cap_nome` varchar(60) DEFAULT NULL,
  `cap_dt_cadastro` datetime DEFAULT NULL,
  `cap_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cap_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "tb_categorias_produtos"
#

/*!40000 ALTER TABLE `tb_categorias_produtos` DISABLE KEYS */;
INSERT INTO `tb_categorias_produtos` VALUES (1,'Limpeza','2017-01-10 00:00:00','A'),(2,'Bebidas','2017-01-10 00:00:00','A'),(3,'Carnes','2017-01-10 00:00:00','A'),(4,'Alimentos','2017-01-10 00:00:00','A'),(5,'Perfumaria','2017-01-10 00:00:00','A'),(6,'Feira','2017-01-10 00:00:00','A'),(7,'Padaria','2017-01-10 00:00:00','A'),(8,'Peixaria','2017-01-10 00:00:00','A');
/*!40000 ALTER TABLE `tb_categorias_produtos` ENABLE KEYS */;

#
# Structure for table "tb_clientes"
#

DROP TABLE IF EXISTS `tb_clientes`;
CREATE TABLE `tb_clientes` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Cadastro do cliente',
  `cli_nome` varchar(60) DEFAULT NULL,
  `cli_email` varchar(100) DEFAULT NULL,
  `cli_senha` varchar(50) DEFAULT NULL,
  `cli_status` varchar(1) DEFAULT NULL COMMENT 'A - Ativo; I - Inativo;',
  `cli_dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "tb_clientes"
#

/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` VALUES (1,'Vinicius','vynis2005@gmail.com','202cb962ac59075b964b07152d234b70','A','2018-01-08 00:00:00');
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;

#
# Structure for table "tb_estabelecimentos"
#

DROP TABLE IF EXISTS `tb_estabelecimentos`;
CREATE TABLE `tb_estabelecimentos` (
  `est_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Estabelicimento são: Carrefour, Tatico, Pão de Açucar e etc.',
  `est_nome` varchar(60) DEFAULT NULL,
  `est_endereco` varchar(100) DEFAULT NULL,
  `est_numero` varchar(10) DEFAULT NULL,
  `est_bairro` varchar(60) DEFAULT NULL,
  `est_estado` varchar(2) DEFAULT NULL,
  `est_pais` varchar(60) DEFAULT NULL,
  `est_tel_contato` varchar(20) DEFAULT NULL,
  `est_dt_cadastro` datetime DEFAULT NULL,
  `est_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`est_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "tb_estabelecimentos"
#

/*!40000 ALTER TABLE `tb_estabelecimentos` DISABLE KEYS */;
INSERT INTO `tb_estabelecimentos` VALUES (1,'TATICO - PAPILLON','AV. PEDRO LUIZ RIBEIRO, QD. 04 LT.02,','0','JARDIM BELA MORADA','GO','BRASIL','62 3414 2090','2018-01-10 00:00:00','A'),(2,'TATICO - CAMPINAS','RUA DO COMÉRCIO S/N QUADRA 02','0','CAMPINAS','GO','BRASIL','62 3414 2000','2018-01-10 00:00:00','A'),(3,'CARREFOUR - SUDOESTE','AV T9','3874','VILA BELA','GO','BRASIL',NULL,'2018-01-10 00:00:00','A');
/*!40000 ALTER TABLE `tb_estabelecimentos` ENABLE KEYS */;

#
# Structure for table "tb_estabelecimentos_assistente"
#

DROP TABLE IF EXISTS `tb_estabelecimentos_assistente`;
CREATE TABLE `tb_estabelecimentos_assistente` (
  `esa_id` int(11) NOT NULL AUTO_INCREMENT,
  `esa_ass_id` int(11) NOT NULL,
  `esa_est_id` int(11) NOT NULL,
  PRIMARY KEY (`esa_id`),
  KEY `fk_tb_estabelecimentos_assistente_tb_assistentes1_idx` (`esa_ass_id`),
  KEY `fk_tb_estabelecimentos_assistente_tb_estabelecimentos1_idx` (`esa_est_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_estabelecimentos_assistente"
#

/*!40000 ALTER TABLE `tb_estabelecimentos_assistente` DISABLE KEYS */;
INSERT INTO `tb_estabelecimentos_assistente` VALUES (1,1,1),(2,1,2),(3,1,3);
/*!40000 ALTER TABLE `tb_estabelecimentos_assistente` ENABLE KEYS */;

#
# Structure for table "tb_faturas"
#

DROP TABLE IF EXISTS `tb_faturas`;
CREATE TABLE `tb_faturas` (
  `fat_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tabela usada para realizar a fatura e geração da forma de pagto.',
  `fat_fop_id` int(11) NOT NULL,
  `fat_cli_id` int(11) NOT NULL,
  `fat_ser_id` int(11) NOT NULL,
  `fat_data_solicitacao` datetime DEFAULT NULL,
  `fat_data_vencimento` date DEFAULT NULL,
  `fat_valor` double DEFAULT NULL,
  `fat_status` varchar(2) DEFAULT NULL COMMENT 'NC - NÃO CONFIRMADA; CO - CONFIRMADA; CA - CANCELADA;',
  PRIMARY KEY (`fat_id`),
  KEY `fk_tb_faturas_tb_formas_pgto1_idx` (`fat_fop_id`),
  KEY `fk_tb_faturas_tb_clientes1_idx` (`fat_cli_id`),
  KEY `fk_tb_faturas_tb_servicos1_idx` (`fat_ser_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_faturas"
#


#
# Structure for table "tb_formas_pgto"
#

DROP TABLE IF EXISTS `tb_formas_pgto`;
CREATE TABLE `tb_formas_pgto` (
  `fop_id` int(11) NOT NULL AUTO_INCREMENT,
  `fop_nome` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`fop_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_formas_pgto"
#

/*!40000 ALTER TABLE `tb_formas_pgto` DISABLE KEYS */;
INSERT INTO `tb_formas_pgto` VALUES (1,'Pag Seguro');
/*!40000 ALTER TABLE `tb_formas_pgto` ENABLE KEYS */;

#
# Structure for table "tb_imagens_produto"
#

DROP TABLE IF EXISTS `tb_imagens_produto`;
CREATE TABLE `tb_imagens_produto` (
  `imp_id` int(11) NOT NULL AUTO_INCREMENT,
  `imp_pro_id` int(11) NOT NULL,
  PRIMARY KEY (`imp_id`),
  KEY `fk_tb_imagens_produto_tb_produtos1_idx` (`imp_pro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_imagens_produto"
#


#
# Structure for table "tb_interacao_compra_cliente"
#

DROP TABLE IF EXISTS `tb_interacao_compra_cliente`;
CREATE TABLE `tb_interacao_compra_cliente` (
  `icc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Grava a interação em tempo real do cliente mais compra.',
  `icc_ass_id` int(11) NOT NULL COMMENT 'Id do assistente',
  `icc_plf_id` int(11) NOT NULL COMMENT 'Id do produto da lista fechada',
  `icc_valor_real` double DEFAULT NULL COMMENT 'Valor real da compra',
  `icc_qtd` double DEFAULT NULL COMMENT 'Quantidade real da compra',
  PRIMARY KEY (`icc_id`),
  KEY `fk_tb_interacao_compra_cliente_tb_assistentes1_idx` (`icc_ass_id`),
  KEY `fk_tb_interacao_compra_cliente_tb_produtos_lista_fechada1_idx` (`icc_plf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_interacao_compra_cliente"
#


#
# Structure for table "tb_lancamentos"
#

DROP TABLE IF EXISTS `tb_lancamentos`;
CREATE TABLE `tb_lancamentos` (
  `lan_id` int(11) NOT NULL AUTO_INCREMENT,
  `lan_fat_id` int(11) NOT NULL,
  PRIMARY KEY (`lan_id`),
  KEY `fk_tb_lancamentos_tb_faturas1_idx` (`lan_fat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_lancamentos"
#


#
# Structure for table "tb_lista_fechada"
#

DROP TABLE IF EXISTS `tb_lista_fechada`;
CREATE TABLE `tb_lista_fechada` (
  `lif_id` int(11) NOT NULL AUTO_INCREMENT,
  `lif_ass_id` int(11) NOT NULL,
  `lif_fat_id` int(11) NOT NULL,
  `lif_est_id` int(11) NOT NULL,
  `lif_nome_lista` varchar(60) DEFAULT NULL,
  `lif_data_solicitacao` datetime DEFAULT NULL,
  `lif_data_programada` datetime DEFAULT NULL,
  PRIMARY KEY (`lif_id`),
  KEY `fk_tb_lista_fechada_tb_assistentes1_idx` (`lif_ass_id`),
  KEY `fk_tb_lista_fechada_tb_faturas1_idx` (`lif_fat_id`),
  KEY `fk_tb_lista_fechada_tb_estabelecimentos1_idx` (`lif_est_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_lista_fechada"
#


#
# Structure for table "tb_listas_modelos"
#

DROP TABLE IF EXISTS `tb_listas_modelos`;
CREATE TABLE `tb_listas_modelos` (
  `lim_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tabela responsavel em criar uma lista modelo para cliente',
  `lim_cli_id` int(11) NOT NULL COMMENT 'Id do cliente',
  `lim_nome` varchar(60) DEFAULT NULL COMMENT 'Nome da lista modelo',
  `lim_dt_cadastro` datetime DEFAULT NULL,
  PRIMARY KEY (`lim_id`),
  KEY `fk_tb_listas_modelos_tb_clientes1_idx` (`lim_cli_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_listas_modelos"
#


#
# Structure for table "tb_marcas"
#

DROP TABLE IF EXISTS `tb_marcas`;
CREATE TABLE `tb_marcas` (
  `mar_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'São todas as marcas dos produtos. Exemplo: Omo, Arroz Cristo, Bom bril',
  `mar_nome` varchar(60) DEFAULT NULL,
  `mar_data_cad` datetime DEFAULT NULL,
  `mar_status` varchar(1) DEFAULT 'A' COMMENT 'A - Ativo; I - Inativo;',
  PRIMARY KEY (`mar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "tb_marcas"
#

/*!40000 ALTER TABLE `tb_marcas` DISABLE KEYS */;
INSERT INTO `tb_marcas` VALUES (1,'CRISTAL','2018-01-10 00:00:00','A'),(2,'NESTLE','2018-01-10 00:00:00','A'),(3,'BOM BRIL','2018-01-10 00:00:00','A'),(4,'LUX','2018-01-10 00:00:00','A'),(5,'COCA-COLA','2018-01-10 00:00:00','A');
/*!40000 ALTER TABLE `tb_marcas` ENABLE KEYS */;

#
# Structure for table "tb_marcas_produto"
#

DROP TABLE IF EXISTS `tb_marcas_produto`;
CREATE TABLE `tb_marcas_produto` (
  `map_id` int(11) NOT NULL COMMENT 'Esta tabela ponte e reponsavel em gravar os dados de varias marcas para um produto especifico.',
  `map_mar_id` int(11) NOT NULL,
  `map_prl_id` int(11) NOT NULL,
  PRIMARY KEY (`map_id`),
  KEY `fk_tb_marcas_produto_tb_marcas1_idx` (`map_mar_id`),
  KEY `fk_tb_marcas_produto_tb_produtos_lista1_idx` (`map_prl_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_marcas_produto"
#


#
# Structure for table "tb_marcas_produto_fechada"
#

DROP TABLE IF EXISTS `tb_marcas_produto_fechada`;
CREATE TABLE `tb_marcas_produto_fechada` (
  `mpf_id` int(11) NOT NULL AUTO_INCREMENT,
  `mpf_plf_id` int(11) NOT NULL,
  `mpf_mar_id` int(11) DEFAULT NULL,
  `mpf_mar_nome` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`mpf_id`),
  KEY `fk_tb_marcas_produto_fechada_tb_produtos_lista_fechada1_idx` (`mpf_plf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_marcas_produto_fechada"
#


#
# Structure for table "tb_mensagem_cliente"
#

DROP TABLE IF EXISTS `tb_mensagem_cliente`;
CREATE TABLE `tb_mensagem_cliente` (
  `mec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Responsavel em gerar um pequeno chat para conversa entre assitente e cliente.',
  `mec_icc_id` int(11) NOT NULL,
  `mec_lif_id` int(11) NOT NULL COMMENT 'Id da lista fechada da compra',
  `mec_data` datetime DEFAULT NULL,
  `mec_descricao` text,
  PRIMARY KEY (`mec_id`),
  KEY `fk_tb_mensagem_cliente_tb_interacao_compra_cliente1_idx` (`mec_icc_id`),
  KEY `fk_tb_mensagem_cliente_tb_lista_fechada1_idx` (`mec_lif_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_mensagem_cliente"
#


#
# Structure for table "tb_ponte_categoria_produtos"
#

DROP TABLE IF EXISTS `tb_ponte_categoria_produtos`;
CREATE TABLE `tb_ponte_categoria_produtos` (
  `pcp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pcp_cap_id` int(11) NOT NULL,
  `pcp_pro_id` int(11) NOT NULL,
  PRIMARY KEY (`pcp_id`),
  KEY `fk_tb_ponte_categoria_produtos_tb_categorias_produtos1_idx` (`pcp_cap_id`),
  KEY `fk_tb_ponte_categoria_produtos_tb_produtos1_idx` (`pcp_pro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_ponte_categoria_produtos"
#

/*!40000 ALTER TABLE `tb_ponte_categoria_produtos` DISABLE KEYS */;
INSERT INTO `tb_ponte_categoria_produtos` VALUES (1,4,1),(2,4,2),(3,2,3);
/*!40000 ALTER TABLE `tb_ponte_categoria_produtos` ENABLE KEYS */;

#
# Structure for table "tb_precos_produtos"
#

DROP TABLE IF EXISTS `tb_precos_produtos`;
CREATE TABLE `tb_precos_produtos` (
  `prp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tabela responsavel em armazenar os valores de todos os produtos lançados para dar uma base de filtro pro cliente verificar aonde o preço esta mais barato dos produtos.',
  `prp_pro_id` int(11) DEFAULT NULL,
  `prp_mar_id` int(11) DEFAULT NULL,
  `prp_icc_id` int(11) DEFAULT NULL,
  `prp_valor_real` double DEFAULT NULL,
  `prp_data_cad` datetime DEFAULT NULL,
  PRIMARY KEY (`prp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_precos_produtos"
#


#
# Structure for table "tb_produtos"
#

DROP TABLE IF EXISTS `tb_produtos`;
CREATE TABLE `tb_produtos` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_nome` varchar(60) DEFAULT NULL,
  `pro_dt_cadastro` datetime DEFAULT NULL,
  `pro_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "tb_produtos"
#

/*!40000 ALTER TABLE `tb_produtos` DISABLE KEYS */;
INSERT INTO `tb_produtos` VALUES (1,'Arroz','2018-01-10 00:00:00','A'),(2,'Açucar','2018-01-10 00:00:00','A'),(3,'Coca-cola','2018-01-10 00:00:00','A');
/*!40000 ALTER TABLE `tb_produtos` ENABLE KEYS */;

#
# Structure for table "tb_produtos_lista"
#

DROP TABLE IF EXISTS `tb_produtos_lista`;
CREATE TABLE `tb_produtos_lista` (
  `prl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tabela dos produtos selecionados na lista.',
  `prl_lim_id` int(11) NOT NULL COMMENT 'Id da lista modelo',
  `prl_pro_id` int(11) NOT NULL,
  `prl_obs` text COMMENT 'Campo usado para cliente informar uma breve informação do produto.',
  `prl_qtd` double DEFAULT NULL COMMENT 'Quantidade definida pelo cliente.',
  `prl_volume` varchar(60) DEFAULT NULL,
  `prl_tiv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`prl_id`),
  KEY `fk_tb_produtos_lista_tb_listas_modelos1_idx` (`prl_lim_id`),
  KEY `fk_tb_produtos_lista_tb_produtos1_idx` (`prl_pro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_produtos_lista"
#


#
# Structure for table "tb_produtos_lista_fechada"
#

DROP TABLE IF EXISTS `tb_produtos_lista_fechada`;
CREATE TABLE `tb_produtos_lista_fechada` (
  `plf_id` int(11) NOT NULL AUTO_INCREMENT,
  `plf_lif_id` int(11) NOT NULL,
  `plf_pcp_id` int(11) NOT NULL,
  `plf_qtd` double DEFAULT NULL,
  `plf_obs` text COMMENT 'Campo usado para cliente informar uma breve informação do produto.',
  `plf_status` varchar(2) DEFAULT NULL COMMENT 'IN - Inicial; AD - Adcionado depois da lista fechada; EX - Excluido da lista depois de fechada',
  PRIMARY KEY (`plf_id`),
  KEY `fk_tb_produtos_lista_fechada_tb_lista_fechada1_idx` (`plf_lif_id`),
  KEY `fk_tb_produtos_lista_fechada_tb_ponte_categoria_produtos1_idx` (`plf_pcp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_produtos_lista_fechada"
#


#
# Structure for table "tb_servicos"
#

DROP TABLE IF EXISTS `tb_servicos`;
CREATE TABLE `tb_servicos` (
  `ser_id` int(11) NOT NULL AUTO_INCREMENT,
  `ser_nome` varchar(60) DEFAULT NULL,
  `ser_dt_cadastro` datetime DEFAULT NULL,
  `ser_valor` double DEFAULT NULL,
  `ser_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ser_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "tb_servicos"
#

/*!40000 ALTER TABLE `tb_servicos` DISABLE KEYS */;
INSERT INTO `tb_servicos` VALUES (1,'Seleção dos protudos','2018-10-01 00:00:00',20,'A');
/*!40000 ALTER TABLE `tb_servicos` ENABLE KEYS */;

#
# Structure for table "tb_tipo_volumes"
#

DROP TABLE IF EXISTS `tb_tipo_volumes`;
CREATE TABLE `tb_tipo_volumes` (
  `tiv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tiv_nome` varchar(60) DEFAULT NULL COMMENT '2 litros; 5 kg;',
  `tiv_volume` varchar(2) DEFAULT NULL COMMENT 'UN - UNIDADE; KG - KILOS; LT - LITROS',
  `tiv_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tiv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "tb_tipo_volumes"
#

/*!40000 ALTER TABLE `tb_tipo_volumes` DISABLE KEYS */;
INSERT INTO `tb_tipo_volumes` VALUES (1,'500 ML','LT','A'),(2,'2 LT','LT','A'),(3,'5 KG','KG','A'),(4,'2 KG','KG','A');
/*!40000 ALTER TABLE `tb_tipo_volumes` ENABLE KEYS */;

#
# Structure for table "tb_tipo_volumes_produto"
#

DROP TABLE IF EXISTS `tb_tipo_volumes_produto`;
CREATE TABLE `tb_tipo_volumes_produto` (
  `tvp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tvp_tiv_id` int(11) NOT NULL,
  `tvp_pro_id` int(11) NOT NULL,
  PRIMARY KEY (`tvp_id`),
  KEY `fk_tb_tipo_volumes_produto_tb_tipo_volumes1_idx` (`tvp_tiv_id`),
  KEY `fk_tb_tipo_volumes_produto_tb_produtos1_idx` (`tvp_pro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "tb_tipo_volumes_produto"
#

/*!40000 ALTER TABLE `tb_tipo_volumes_produto` DISABLE KEYS */;
INSERT INTO `tb_tipo_volumes_produto` VALUES (1,3,1),(2,4,1),(3,1,3),(4,2,3);
/*!40000 ALTER TABLE `tb_tipo_volumes_produto` ENABLE KEYS */;
