CREATE TABLE `usuarios` (
  `id` int PRIMARY KEY,
  `primer_nombre` varchar(255),
  `segundo_nombre` varchar(255),
  `primer_apellido` varchar(255),
  `segundo_apellido` varchar(255),
  `email` email,
  `password` varchar(255),
  `image` blob,
  `id_rol` int
);

CREATE TABLE `roles` (
  `id` int,
  `nombre` varchar(255)
);

CREATE TABLE `productos` (
  `id` int PRIMARY KEY,
  `nombre` varchar(255),
  `descripcion` varchar(255),
  `color` varchar(255),
  `talla` varchar(255),
  `precio` float,
  `stock` int,
  `imagen` blob,
  `fecha` date,
  `categoria_id` int,
  `coleccion_id` int,
  `proveedor_id` int
);

CREATE TABLE `categorias` (
  `id` int PRIMARY KEY,
  `nombre` varchar(255)
);

CREATE TABLE `colecciones` (
  `id` int PRIMARY KEY,
  `nombre` varchar(255),
  `fecha` date
);

CREATE TABLE `proveedores` (
  `id` int PRIMARY KEY,
  `nombre` varchar(255),
  `telefono1` int,
  `telefono2` int,
  `telefono3` int,
  `ciudad` varchar(255),
  `pais` varchar(255),
  `email` email,
  `direccion` varchar(255)
);

CREATE TABLE `erroresServer` (
  `id` int PRIMARY KEY,
  `nombre` varchar(255),
  `fecha` date
);

ALTER TABLE `proveedores` ADD FOREIGN KEY (`id`) REFERENCES `productos` (`proveedor_id`);

ALTER TABLE `roles` ADD FOREIGN KEY (`id`) REFERENCES `usuarios` (`id_rol`);

ALTER TABLE `categorias` ADD FOREIGN KEY (`id`) REFERENCES `productos` (`categoria_id`);

ALTER TABLE `colecciones` ADD FOREIGN KEY (`id`) REFERENCES `productos` (`coleccion_id`);
