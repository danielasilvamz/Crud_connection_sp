drop database if exists guia_suplementos;
create database guia_suplementos;
use guia_suplementos;

create table Categorias(
	id int primary key auto_increment, 
	nombre varchar(35) not null
);

create table Marcas(
	id int primary key auto_increment,
	nombre varchar(35) not null
);

create table Usuarios(
	id int primary key auto_increment,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono varchar(12) not null unique,
	email varchar(100) not null unique,
	contrasena varchar(45) not null
);

create table Suplementos(
	id int primary key auto_increment,
	nombre varchar(45) not null,
	peso_lb float,
	peso_g float,
    n_tabletas int,
	categoria_id int not null,
	marca_id int not null,
	descripcion text not null,
	tamano_x_porcion float not null,
    medida_x_porcion float,
    tipo_medida varchar(25),
	porciones_x_envase int not null,
	ingredientes text not null,
	modo_empleo text not null,
	foreign key (categoria_id) references Categorias(id),
	foreign key (marca_id) references Marcas(id)
);

create table Nutrientes(
	id int primary key auto_increment,
    nombre varchar(50) not null
);

create table Nutrientes_x_suplemento(
	id int primary key auto_increment,
    suplemento_id int not null,
    nutriente_id int not null,
    nutriente_valor float,
    nutriente_unidades varchar(10),
    porcentaje_valor_diario float,
    foreign key (suplemento_id) references Suplementos(id),
    foreign key (nutriente_id) references Nutrientes(id)
);

create table Historial(
	id int primary key auto_increment,
	fecha_hora date not null,
	usuario_id int not null,
	suplemento_id int not null,
	foreign key (usuario_id) references Usuarios(id),
	foreign key (suplemento_id) references Suplementos(id)
);

-- Categorías
insert into Categorias(nombre) values ('Proteínas');
insert into Categorias(nombre) values ('Aminoácidos');
insert into Categorias(nombre) values ('Creatinas');
insert into Categorias(nombre) values ('Quemadores');
insert into Categorias(nombre) values ('Pre_entrenos');
insert into Categorias(nombre) values ('Multivitaminicos');

-- Marcas
insert into Marcas(nombre) values ('PROSCIENCE');
insert into Marcas(nombre) values ('NUTRAMERICAN');
insert into Marcas(nombre) values ('MUSCLETECH');
insert into Marcas(nombre) values ('SMART MUSCLE');

-- Nutrientes
insert into Nutrientes(nombre) values ('Calorías');
insert into Nutrientes(nombre) values ('Calorías grasa');
insert into Nutrientes(nombre) values ('Grasa Total');
insert into Nutrientes(nombre) values ('Grasa Saturada');
insert into Nutrientes(nombre) values ('Grasa Trans');
insert into Nutrientes(nombre) values ('Colesterol');
insert into Nutrientes(nombre) values ('Sodio');
insert into Nutrientes(nombre) values ('Carbohidratos Totales');
insert into Nutrientes(nombre) values ('Azúcares');
insert into Nutrientes(nombre) values ('Proteína');
insert into Nutrientes(nombre) values ('Vitamina A');
insert into Nutrientes(nombre) values ('Hierro');
insert into Nutrientes(nombre) values ('Calcio');
insert into Nutrientes(nombre) values ('Vitamina B6');
insert into Nutrientes(nombre) values ('Vitamina B1');
insert into Nutrientes(nombre) values ('Vitamina D');
insert into Nutrientes(nombre) values ('Vitamina C');
insert into Nutrientes(nombre) values ('L-Leucina');
insert into Nutrientes(nombre) values ('Fibra Dietaria');
insert into Nutrientes(nombre) values ('L-Glutamina');
insert into Nutrientes(nombre) values ('L-Isoleucina');
insert into Nutrientes(nombre) values ('L-Valina');
insert into Nutrientes(nombre) values ('Potasio');
insert into Nutrientes(nombre) values ('Niacina');
insert into Nutrientes(nombre) values ('Hidroximetilbutirato (HMB)');
insert into Nutrientes(nombre) values ('Ácido Alfalipoico');
insert into Nutrientes(nombre) values ('Sulfato de Vanadio');
insert into Nutrientes(nombre) values ('Creatina monohidrato');
insert into Nutrientes(nombre) values ('Vitamina E');
insert into Nutrientes(nombre) values ('Tiamina');
insert into Nutrientes(nombre) values ('Riboflavina');
insert into Nutrientes(nombre) values ('Folato');
insert into Nutrientes(nombre) values ('Vitamina B12');
insert into Nutrientes(nombre) values ('Biotina');
insert into Nutrientes(nombre) values ('Ácido Pantoténico');
insert into Nutrientes(nombre) values ('Colina');
insert into Nutrientes(nombre) values ('Magnesio');
insert into Nutrientes(nombre) values ('Zinc');
insert into Nutrientes(nombre) values ('Cobre');
insert into Nutrientes(nombre) values ('Manganeso');
insert into Nutrientes(nombre) values ('Molibdeno');
insert into Nutrientes(nombre) values ('Glicina');
insert into Nutrientes(nombre) values ('L-Metionina');
insert into Nutrientes(nombre) values ('L-Citrulina Malato');
insert into Nutrientes(nombre) values ('L-Arginina HCI');
insert into Nutrientes(nombre) values ('L-Cisteína');
insert into Nutrientes(nombre) values ('Extracto de Hoja de Té Verde');
insert into Nutrientes(nombre) values ('Extracto de la Fruta de la Palma Enana Americana');
insert into Nutrientes(nombre) values ('Hierba Entera de Ginseng Americano');
insert into Nutrientes(nombre) values ('Raíz de Equinácea');
insert into Nutrientes(nombre) values ('Hoja de Ginkgo');
insert into Nutrientes(nombre) values ('Extracto de Piel de Uva');
insert into Nutrientes(nombre) values ('Extracto de Grano de Café Verde');
insert into Nutrientes(nombre) values ('Extracto de Rizoma de Cúrcuma');
insert into Nutrientes(nombre) values ('Octacosanol');
insert into Nutrientes(nombre) values ('Cloruro de Potasio');
insert into Nutrientes(nombre) values ('Bitartrato de Colina');
insert into Nutrientes(nombre) values ('Citrato de Colina Dihidrogenado');
insert into Nutrientes(nombre) values ('Inositol');
insert into Nutrientes(nombre) values ('Boro');
insert into Nutrientes(nombre) values ('Amilasa');
insert into Nutrientes(nombre) values ('Papaína');
insert into Nutrientes(nombre) values ('L-Lisina');
insert into Nutrientes(nombre) values ('L-Treonina');
insert into Nutrientes(nombre) values ('L-Histidina');
insert into Nutrientes(nombre) values ('L-Fenila');
insert into Nutrientes(nombre) values ('L-Triptófan');
insert into Nutrientes(nombre) values ('Cromo');

-- Suplementos
	-- 1
insert into Suplementos(nombre, peso_lb, peso_g, categoria_id, marca_id, descripcion, tamano_x_porcion, medida_x_porcion, tipo_medida, porciones_x_envase, ingredientes, modo_empleo) values (
	'BEST PROTEIN', 2.18, 990, 1, 1, 
    'Proteína aislada de suero de leche de alta calidad 65%, caseína Micelar 35% y Leucina 3g. Este producto no contiene azúcar, lactosa, grasa. Sabor Vainilla Gourmet',
	33, 1, 'Cuchara', 30, 
    'Proteína Aislada de Suero, Caseína Micelar, L-Leucina, Goma Guar, Vitamina C (ÁcidoAscórbico), Vainilla Gourmet (Saborizante Idéntico al Natural), Stevia (Edulcorante), Dióxido de Silicio, Vitamina B6 (Piridoxina), Vitamina B1 (Tiamina), Vitamina D3', 
    'Mezcla una cucharada de Best Protein con 5-6 onzas de agua (o leche para aumentar la cremosidad y las calorías). El momento ideal para tomarla es después del entrenamiento. También puedes tomar la proteína como bocadillo entre las comidas. Si tu objetivo es perder grasa, debes consumir solo una porción por día, si tu objetivo es mantener o aumentar la masa muscular, toma dos porciones por día');

	-- 2
insert into Suplementos(nombre, peso_lb, peso_g, categoria_id, marca_id, descripcion, tamano_x_porcion, medida_x_porcion, tipo_medida, porciones_x_envase, ingredientes, modo_empleo) values (
	'NITRO SHOCK', 1.15, 520, 2, 2,
	'Aminoácidos de Cadena Ramificada y Glutamina. Ratio 10:5:5  Alimento en polvo a base de Maltodextrina. Sabor Frutos rojos',
	20, 4, 'medidas', 26,
	'Maltodextrina, mezcla de aminoácidos de cadena ramificada (l-leucina, l-valina, l-isoleucina), l-glutamina, ácido cítrico (acidulante), sabor artificial idéntico al natural (frutos rojos), citrato de sodio (regulador de acidez), bicarbonato de sodio (regulador de acidez), fosfato monopotásico (regulador de acidez), sacarina sódica (edulcorante artificial DMU 1200 mg/kg), colorante artificial (azorrubina, azul brillante fcf)',
	'Mezcle 20g de NITRO SHOCK (4 cucharadas) en 400ml de agua; consuma la mitad durante la actividad y la otra mitad al finaliar el entrenamiento. Incluye medidor (cuchara dosificadora)');

	-- 3
insert into Suplementos(nombre, peso_lb, peso_g, categoria_id, marca_id, descripcion, tamano_x_porcion, medida_x_porcion, tipo_medida, porciones_x_envase, ingredientes, modo_empleo) values (
	'CREA STACK', 1.3, 600, 3, 2,
	'CREA STACK es la última generación en suplementos con Creatina, su fórmula única en el mercado incluye HMB, así como ácido Alfa Lipoico y Sulfato de Vanadio, es ideal para que alcances los objetivos con mayor facilidad.',
	'10', '2', 'Cuchara', 60,
	'Maltodextrina, Monohidrato de Creatina, Ácido Cítrico (acidulante), Hidroximetilbutirato de Calcio(HMB), Sabor Artificial idéntico al natural (Frutos Rojos), Citrato de Sodio (regulador de acidez), Sacarina Sódica (edulcorante artificial), Fosfato monopotasico (regulador de acidez), Ácido Alfa lipoico, Vanadil Sulfato, Niacina, Dióxido de Silicio Coloidal (anticompactante), Colorante artificial (Rojo No.5)',
	'Mezcle 2 medidas de Crea Stack, con 200ml de agua o adicione su bebida favorita. Consuma uno o más servicios diario. Se puede tomar antes del entreno, después del entreno con la proteína o al despertar');
    
	-- 4
insert into Suplementos(nombre, n_tabletas, categoria_id, marca_id, descripcion, tamano_x_porcion, tipo_medida, porciones_x_envase, ingredientes, modo_empleo) values (
	'PLATINUM MULTIVITAMIN', 90, 6, 3,
	'Platinum Multivitamin es un multivitamínico diario formulado para apoyar las necesidades nutricionales de un estilo de vida saludable y activo. Los entrenadores intensos pueden perder vitaminas y minerales críticos debido al entrenamiento. Platinum Multivitamin proporciona los micronutrientes más críticos para apoyar la salud general y el rendimiento atlético.',
    3, 'Tabletas',  30,
	'Celulosa microcristalina, croscarmelosa sódica, aceite vegetal hidrogenado, revestimiento (talco, polietilenglicol, polisorbato 80), estearato de magnesio, dióxido de silicio',
	'Tomar 1 dosis (3 comprimidos) al día con un vaso de agua preferiblemente con una comida principal');

	-- 5
insert into Suplementos(nombre, peso_lb, peso_g, categoria_id, marca_id, descripcion, tamano_x_porcion, medida_x_porcion, tipo_medida, porciones_x_envase, ingredientes, modo_empleo) values (
     'Army','1.2','540', 2, 1, 
     'Con aminoácidos, y EAA(Leucina, Isoleucina, Valina, Lisina, Treonina, Histidina, Fenilalanina, Metionina, Triptófano)', 
      18, 1, 'Cuchara', 30, 
     'Polvo Deshidratado de Frutos Amarillos, L-Glutamina, L-Leucina, L-Isoleucina, L-Valina, L-Lisina, L-Treonina, L-Histidina, L-Fenilalanina, L-Metionina, L-Triptófano, Carboximetilcelulosa (CMC),Fosfato Tricálcico, Saborizante idéntico al Natural, Vitamina C (Ácido Ascórbico), Stevia,Citrato de Sodio, Citrato de Potasio, Ácido Málico, Dióxido de Silicio, Colorante (Amarillo), Citrato de Magnesio, Gluconato de Zinc.',
     'Toma 1 scoop (medidor incluido) en 1000ml de agua, tomar durante la actividad física.'); 
     
    -- 6
insert into Suplementos(nombre, peso_g, categoria_id, marca_id, descripcion, tamano_x_porcion, medida_x_porcion, tipo_medida, porciones_x_envase, ingredientes, modo_empleo) values (
	  'burner stack','360', 4, 2, 
      'Es un producto de última generación diseñado para ayudar a cumplir tus objetivos facilmente, contiene los ingredientes más estudiados y con eficacia comprobada. Contiene 6g por porción de ingredientes, esta así diseñado para tener el 100% de las cantidades recomendadas, que a diferencia de los productos en cápsulas o tabletas solo contienen unas pequeñas dosis de estos.',
       6, 1, 'Cuchara', 60, 
      'Extracto de naranja amarga, CLA, L-Carnitina, Cafeína, Goma guar, Picolinato de cromo y taurina.',
      'Mezcle Burner Stack 6 g (1 medida/cucharada) en 315 ml de agua. Tome una porción al despertar y otra antes de almorzar (preferiblemente 1/2 hora antes). Incluye medidor (cuchara dosificadora)');
    
-- Nutrientes_x_suplemento
	-- 1
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (1, 1, 108, 'KCal');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor) values (1, 2, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (1, 3, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (1, 4, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (1, 5, 0, 'g');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (1, 6, 5, 'mg', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (1, 7, 95, 'mg', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (1, 8, 1, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (1, 9, 0, 'g');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (1, 10, 26, 'g', 52);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (1, 11, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (1, 12, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (1, 13, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (1, 14, 100);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (1, 15, 100);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (1, 16, 100);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (1, 17, 100);
	-- 2
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (1, 18, 3000, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor) values (2, 1, 15);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (2, 2, 0, 'KCal');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (2, 3, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (2, 4, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (2, 6, 0, 'mg', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (2, 7, 100, 'mg', 4);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (2, 8, 4, 'g', 1);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (2, 19, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (2, 9, 0, 'g');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (2, 10, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (2, 11, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (2, 17, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (2, 13, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (2, 12, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (2, 20, 4000, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (2, 18, 4000, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (2, 21, 2000, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (2, 22, 2000, 'mg');
	-- 3
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (3, 1, 10, 'Kcal');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (3, 2, 0, 'Kcal');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 3, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 4, 0, 'mg', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 6, 0, 'mg', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 7, 80, 'mg', 3);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 23, 50, 'mg', 1);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 8, 3, 'g', 1);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 19, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (3, 9, 0, 'g');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (3, 10, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (3, 11, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (3, 24, 100);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (3, 17, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (3, 12, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (3, 25, 1000, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (3, 26, 50, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (3, 27, 20, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (3, 28, 3400, 'mg');

	-- 4 
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 11, 3000, 'mcg', 333);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 17, 135, 'mg', 150);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 16, 10, 'mcg', 50);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 29, 40.5, 'mg', 270);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 30, 20, 'mg', 1667);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 31, 13.5, 'mg', 1038);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 24, 60, 'mg', 375);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 14, 10, 'mg', 588);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 32, 510, 'mcg DFE', 128);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 33, 100, 'mcg', 4167);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 34, 165, 'mcg', 550);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 35, 80, 'mg', 1600);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 36, 10, 'mg', 2);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 13, 160, 'mg', 12);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 37, 145, 'mg', 35);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 38, 9.5, 'mg', 86);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 39, 1, 'mg', 111);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 40, 7, 'mg', 304);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 41, 10, 'mcg', 22);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 7, 10, 'mg', 1);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (4, 23, 35, 'mg', 1);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 42, 865, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 26, 49, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 43, 2.5, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 44, 2.5, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 45, 2.5, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 46, 2.5, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 47, 390, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 48, 50, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 49, 25, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 50, 20, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 51, 20, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 52, 20, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 53, 5, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 54, 5, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 55, 1.25, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 56, 72, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 57, 14, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 58, 13, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 59, 10, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 60, 10, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 61, 25, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (4, 62, 25, 'mg');

	-- 5
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 1, 15, 'Kcal');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor) values (5, 2, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (5, 3, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (5, 4, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 5, 0, 'g');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (5, 6, 0, 'mg', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (5, 7, 190, 'mg', 8);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (5, 8, 4, 'g', 1);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (5, 19, 2, 'g', 8);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 9, 1, 'g');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (5, 10, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (5, 11, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (5, 12, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (5, 23, 6);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (5, 37, 15);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (5, 13, 50);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (5, 17, 90);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (5, 38, 100);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 20, 4000, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 18, 3500, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 21, 1750, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 22, 1750, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 63, 885, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 64, 520, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 65, 335, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 66, 140, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 43, 75, 'mg');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (5, 67, 45, 'mg');

    -- 6
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (6, 1, 5, 'Kcal');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (6, 2, 5, 'Kcal');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (6, 3, 0.5, 'g', 1);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (6, 4, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (6, 6, 0, 'mg', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (6, 7, 70, 'mg', 3);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (6, 8, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (6, 19, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades) values (6, 9, 0, 'g');
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, nutriente_valor, nutriente_unidades, porcentaje_valor_diario) values (6, 10, 0, 'g', 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (6, 11, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (6, 13, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (6, 68, 21);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (6, 17, 0);
insert into Nutrientes_x_suplemento(suplemento_id, nutriente_id, porcentaje_valor_diario) values (6, 12, 0);

-- Usuarios
insert into Usuarios(nombres, apellidos, telefono, email, contrasena) values ('María Camila', 'García Torres', '3116752324', 'macamilag@gmail.com', 'macam1020');
insert into Usuarios(nombres, apellidos, telefono, email, contrasena) values ('Juan Felipe', 'Moreno Sandoval', '3204567867', 'juanpipe10@gmail.com', 'pipems4590');
insert into Usuarios(nombres, apellidos, telefono, email, contrasena) values ('Nicolás', 'Méndez Rodríguez', '3053335235', 'nickmen@gmail.com', 'nicomenroz');
insert into Usuarios(nombres, apellidos, telefono, email, contrasena) values ('Ana María', 'Cárdenas Arango', '3152343465', 'nanacg90@gmail.com', '34351356');
insert into Usuarios(nombres, apellidos, telefono, email, contrasena) values ('Luz Catherine Daniela', 'Amado Torres', '3208437425', 'amado_torres@gmail.com', '98765412');
insert into Usuarios(nombres, apellidos, telefono, email, contrasena) values ('Juan Camilo', 'Pineda Ortiz', '3208343458', 'juan_pineda@gmail.com', '12345678');	

-- Procedimiento Almacenado 
drop procedure registrarUsuario;
delimiter %
create procedure registrarUsuario(
	in _nombres varchar(45),
    in _apellidos varchar(45),
    in _telefono varchar(12),
    in _email varchar(100),
    in _contrasena varchar(45))
begin
    insert into usuarios(nombres, apellidos, telefono, email, contrasena) values
    (_nombres, _apellidos, _telefono, _email, _contrasena);
end 
%
delimiter ;

call registrarUsuario('Hernando', 'Hernandez Álvarez', '310752323', 'hernando@gmail.com', 'Her01');
select * from usuarios;