DROP TABLE IF EXISTS carrito;
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS favoritos;
DROP TABLE IF EXISTS usuarios;
DROP TABLE IF EXISTS platos;
DROP TABLE IF EXISTS categorias;




CREATE TABLE usuarios (
usuarios (
		usuario_id SERIAL PRIMARY KEY,
		nombre VARCHAR(50),
		apellido VARCHAR(50),
		direccion VARCHAR(150),
		email VARCHAR(100) UNIQUE,
		password VARCHAR(250)
	);

-- SELECT * FROM usuarios;
--     SELECT * FROM platos;

--    SELECT * FROM  usuarios WHERE id_usuario = 1
-- INSERT INTO usuarios (nombre  , apellido , direccion,correo ,password) VALUES(
--   'Juan',
--   'Pérez',
--   'Calle 123',
--   'juan@example.com',
--   '123456',
-- )


CREATE TABLE categorias (
  id_categoria serial primary key,
  nombre_categoria varchar(50)
);

INSERT INTO categorias (nombre_categoria) VALUES 
	('plato fondo'),
	('postre');


CREATE TABLE platos (
	id_plato serial primary key,
	nombre varchar (50),
	ingredientes varchar (300),
	monto int,
	img_url varchar(300),
	descripcion varchar (500),
	id_categoria integer REFERENCES categorias (id_categoria) ON DELETE CASCADE
	
);


-- INSERT INTO platos (nombre, ingredientes, monto, img_url, descripcion, id_categoria)
-- VALUES
--     ('Shaman King 01', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN, Sobrenarutal"]', 16998, 'https://i1.whakoom.com/large/06/3c/90fcc13fdfcb4c2d8d60f36aac9d3b6d.jpg', 'Los shamanes son personas que pueden interactuar con los dioses, los espíritus y las almas de los difuntos. Yoh tiene ese poder y quiere convertirse en el rey shaman, alguien capaz de establecer contacto con los Grandes Espíritus, lo que le permitiría cambiar el mundo a su antojo. Para conseguirlo, tendrá que hacerse con un espíritu que lo acompañe y participar en el Shaman Fight: un torneo que se celebra cada 500 años, consiguiendo por el camino un buen grupo de aliados y amigos. Aunque también encontrará rivales de lo más variopintos y siniestros, algunos con intenciones bastante diferentes a las de Yoh.', Man),
--     ('Spy X Family 04', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN, Sobrenarutal"]', 9890, 'https://www.freakshowstore.com/imagenes/poridentidad?identidad=c7d21380-bcfb-4cf5-b259-4d5ac9dc633f&amp;ancho=900&amp;alto=', 'detaLos países de Westalis y Ostania libran desde hace años una guerra fría donde el espionaje y los asesinatos son moneda corriente. El inigualable espía conocido como Twilight es el mejor agente de Westalis que tiene por objetivo encargarse del poderoso Donovan Desmond. El problema es que Desmond es un ermitaño antisocial cuyas únicas apariciones públicas son en los actos escolares de su hijo. Twilight deberá acercarse al objetivo lo suficiente como para desbaratar su agenda secreta. Para ello, sólo deberá simular que es un hombre de familia… con el pequeño detalle de que sólo tiene 7 días para conseguir la familia ideal. Es por eso que bajo la identidad del psiquiatra Loid Forger, Twilight reclutará a Yor Briar, una civil ostaniana que quiere tener bajo perfil y Anya, una huerfanita que sólo busca una familia cariñosa, para hacer las partes de esposa e hija respectivamente. Pero resulta que este par tampoco es nada normal, especialmente si tenemos en cuenta que Yor es una asesina profesional buscada por ambos bandos y Anya es una prófuga de un laboratorio secreto donde consiguió poderes telepáticos.', Manga),
--     ('Rent A Girlfriend 02', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN, Sobrenarutal"]', 9890, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2021/05/0091.jpg', 'Descubre Rent-A-Girlfriend, un manga lleno de romance y comedia. Acompaña a Kazuya en su inesperada relación con Chizuru, una novia de alquiler. ¡Déjate atrapar por esta historia llena de giros emocionantes y momentos divertidos!', Manga),
--     ('Hanako-Kun, El Fantasma Del Lavabo 04', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN, Sobrenarutal"]', 9889, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2021/06/HANAKO4.jpg', 'Nene Yashiro es una estudiante de primero de bachillerato que asiste a la Academia Kamome, famosa por sus sucesos paranormales y por albergar también los siete míticos misterios. El séptimo misterio no es otro que Hanako, una chica que habita los lavabos del tercer piso de la academia y que se supone que concede deseos con el incentivo adecuado. Sin embargo, cuando Nene decide invocarla para conseguir enamorar al chico de sus sueños, se encuentra la sorpresa de que no se trata de una chica, sino de un chico. Después de que ese deseo fracase, en otro intento desesperado, Nene se come un objeto de Hanako que sirve para un conseguir pareja, pero lanza una maldición sobre quien lo consuma. Con tal de salvarla, Hanako también se lo come, pero a cambio hará que Nene tenga que trabajar para él como su asistenta.    Hanako se encarga de mantener la paz entre los espíritus y los humanos. Para ello se deshace de las apariciones malignas, sin importar los medios que tenga que utilizar. Poco a poco se va desgranando el pasado de Hanako mientras se descubren los secretos que se esconden entre los siete misterios de la academia.', Manga),
--     ('Komi-San No Puede Comunicarse 02', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN, Sobrenarutal"]', 19889, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2021/12/komi.jpg', 'Hitohito Tadano acaba de empezar bachillerato anhelando que sea un período de paz y tranquilidad, pero sus planes se truncan cuando acaba sentado al lado de la perfecta Shoko Komi. Ella es guapa, inteligente, educada y hasta huele bien. Pero tiene 0 dotes sociales y no sabe cómo narices comunicarse con los demás. Es ahí cuando Tadano decide tomar cartas en el asunto y se propone ayudar a su compañera hasta que consiga cien amigos, y con suerte algo más.', Manga),
--     ('Alice In Borderland 01', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN, Sobrenarutal"]', 15299, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2021/06/shaman-5.jpg', 'Una historia repleta de acción, suspense y macabros juegos, protagonizada por tres amigos que acaban teletransportados a un mundo paralelo aparentemente igual que el nuestro, pero sólo habitado por aquellos desafortunados que están obligados a participar en el juego de supervivencia. La crueldad y variedad de los puzzles y la naturaleza de las personas y sus instintos, marcan esta historia que nos sorprende una y otra vez con giros y situaciones extrañas e inesperadas.', Manga),
--     ('Shaman King 05', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN, Sobrenarutal"]', 15299, 'https://www.gourmet.cl/wp-content/uploads/2016/09/Pollo-al-Curry-ajustada-web-570x458.jpg', 'Los shamanes son personas que pueden interactuar con los dioses, los espíritus y las almas de los difuntos. Yoh tiene ese poder y quiere convertirse en el rey shaman, alguien capaz de establecer contacto con los Grandes Espíritus, lo que le permitiría cambiar el mundo a su antojo. Para conseguirlo, tendrá que hacerse con un espíritu que lo acompañe y participar en el Shaman Fight: un torneo que se celebra cada 500 años, consiguiendo por el camino un buen grupo de aliados y amigos. Aunque también encontrará rivales de lo más variopintos y siniestros, algunos con intenciones bastante diferentes a las de Yoh.', Manga),
--     ('Higehiro 01', '["Peso 0,3 kg", "Dimensiones 18 × 15 ×3 cm", "Editorial Ivrea España", "País de origen España", "Demografía/Género Acción, SHONEN"]', 9898, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2022/02/Higehiro-1.jpg', 'Yoshida ha reunido el coraje para declararse a su jefa, pero esta le da calabazas. Para ahogar las penas, decide pillar una buena cogorza con un amigo suyo y cuando está volviendo, conoce a Sayu, una chica que está deambulando por ahí. Aunque esta in tenta seducirlo, Yoshida no cede, pero deja que se quede en su apartamento a dormir. Al día siguiente, después de conocer la historia de Sayu y cómo esta se ha escapado de casa y ha ido malviviendo y usando el sexo para poder sobrevivir, decide acogerla en su casa. Así empieza una relación de lo más dispar, llena de malentendidos y mo mentos divertidos, pero con el dramático pasado de Sayu de fondo. ¿Qué la empujó a tomar la decisión de huir y vivir de esa manera?', Manga),
--     ('Pppppp 02', '["Peso 0,29 kg", "Dimensiones 18 x 15 x 3 cm", "Editorial Editorial", "País de origen España", "Demografía/Género Música, SHONEN"]', 10798, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2023/06/9788419816276.jpg', 'Hubo una vez un pianista prodigioso llamado Gakuon Otogami, cuyo nombre ha quedado grabado en el panteón de los mejores de la historia. Pasaron los años y Gakuon tuvo siete hijos que adoran tocar el piano como él, pero no todos heredaron sus habilidades. Lacky, el más mediocre de los siete, lo dará todo por vencer a su destino. A su madre le queda poco tiempo de vida, pero esta lo anima a que demuestre que alguien sin talento también puede ser un buen músico, así que le promete que triunfará como pianista.    PPPPPP es un doble pianissimo, una nota complicada de tocar por la delicadeza que requiere, en contraste con la fuerza que se usa para una normal. Estamos ante un manga bastante diferente a lo habitual, aunque no estará falto de enfrentamientos musicales.', Manga),
--     ('Kaguya-Sama: Love Is War 01', '["Peso 0,3 kg", "Dimensiones 18 x 15 x 3 cm", "Editorial Editorial", "País de origen España", "Demografía/Género Comedia, Escolar, Psicológico, Romance, SEINEN"]', 9889, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2021/10/kaguya1.jpg', 'La renombrada Academia Shuchiin tiene a dos destacados estudiantes: Miyuki Shirogane y Kaguya Shinomiya. Los dos son estudiantes modélicos: están entre los mejores de Japón, son el orgullo de profesores y alumnos por igual y además, mientras que Miyuki es el presidente del consejo estudiantil, Kaguya es la vicepresidenta. Por si fuera poco, Kaguya pertenece a una adinerada familia y sobresale en gran variedad de disciplinas, aunque sus orígenes la hacen una persona fría y orgullosa. Parecen la pareja perfecta a ojos de todos, aunque no estén juntos. Pero como el roce hace el cariño, se han pillado el uno del otro. Sin embargo su enorme orgullo, hace que no puedan decirse lo que sienten y empieza una infernal batalla entre ellos para conseguir que el otro confiese lo que siente. Las estrategias para lograr la confesión del contrario se suceden e irán escalando y sólo uno puede emerger victorioso en esta pasional lucha romántica. El honor de los dos está en juego!', Manga),
--     ('Medalist 01', '["Peso 0,3 kg", "Dimensiones 18 x 15 x 3 cm", "Editorial Editorial", "País de origen España", "Demografía/Género Deportivo, SEINEN"]', 9889, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2023/01/9788419600097.jpg', 'Tsukasa es un patinador que, tras haber dejado atrás su sueño de convertirse en un atleta de elite por problemas económicos, trabaja realizando espectáculos de patinaje sobre hielo. Pero todo cambia cuando conoce a Inori, una niña que le paga con gusanos al encargado de una pista para que le permita patinar sin que nadie se entere y que sueña con convertirse en una atleta del hielo, pese a que su madre esté totalmente en contra de ello. Así, gracias a la tenacidad que muestra la niña, Tsukasa decide convertirse en su entrenador y buscará ayudar a Inori en el difícil mundo del patinaje artístico.', Manga),
--     ('Slam Dunk 04', '["Peso 0,3 kg", "Dimensiones 18 x 15 x 3 cm", "Editorial Editorial", "País de origen España", "Demografía/Género Acción, Comedia, Deportivo, SHONEN"]', 10709, 'https://damemimanga.cl/sitio-web/wp-content/uploads/2023/03/9788419673671.jpg', 'Presentamos Slam Dunk New Edition en formato B6! Esta nueva edición del manga cuenta con sólo 20 tomos, sobrecubiertas inéditas en splash y una cubierta interior con textura que simula una pelota de baloncesto. Humor, romance y autosuperación en uno de los mejores spokon de la historia. La mítica obra la protagoniza Hanamichi Sakuragi, un gamberrillo de instituto que descubre la pasión del baloncesto y acaba convirtiéndose en un gran jugador intentando ligarse a su compañera de clase Haruko Akagi. Ante él tendrá como obstáculos a su compañero de equipo, archirival y superjugador Kaede Rukawa, del cual Haruko está enamorada, al capitán del equipo Takenori, que es hermano de Haruko y a su mayor enemigo: su explosivo carácter. El memorable manga es obra de Takehiko Inoue, que muestra su pasión por el basket viñeta a viñeta, cuenta con el genial dibujo al que nos tiene acostumbrados y que se ha vuelto a demostrar con unas nuevas e increíbles ilustraciones de portada14', Manga);



CREATE TABLE favoritos (
  id_favorito serial primary key,
  id_usuario integer REFERENCES usuarios (id_usuario) ON DELETE CASCADE,
  id_plato integer REFERENCES platos (id_plato) ON DELETE CASCADE
);

--TABLA DE PRODUCTOS--
CREATE TABLE
	productos (
		producto_id SERIAL PRIMARY KEY,
		titulo VARCHAR(100),
		editorial VARCHAR(100),
		descripcion VARCHAR(500),
		precio INT,
		imagen VARCHAR(500),
		usuario_id INT,
		CONSTRAINT fk_usuarioid FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id) ON DELETE CASCADE
	);

/* CREATE TABLE pedidos (
	id_pedido serial primary key,
	fecha date,
	forma_de_pago varchar (10),
	direccion_de_envio varchar (100),
	estado_pedido varchar (20),
	cantidad int,
	id_usuario integer REFERENCES usuarios (id_usuario) ON DELETE CASCADE,
	id_plato integer REFERENCES platos (id_plato) ON DELETE CASCADE */
);

CREATE TABLE carrito (
	id_carrito serial primary key,
	id_usuario integer REFERENCES usuarios (id_usuario) ON DELETE CASCADE,
	id_pedido integer REFERENCES pedidos (id_pedido) ON DELETE CASCADE,
	procesado boolean
);
