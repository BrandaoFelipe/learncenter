INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');
INSERT INTO tb_role (authority) VALUES ('ROLE_CLIENT');

INSERT INTO tb_user (name, email, password) VALUES ('AI Access', 'aiaccess@gmail.com', '$2a$10$N7SkKCa3r17ga.i.dF9iy.BFUBL2n3b6Z1CWSZWi/qy7ABq/E6VpO');
INSERT INTO tb_user (name, email, password) VALUES ('Master', 'master@gmail.com', '$2a$10$N7SkKCa3r17ga.i.dF9iy.BFUBL2n3b6Z1CWSZWi/qy7ABq/E6VpO');
INSERT INTO tb_user (name, email, password) VALUES ('Aluno 1', 'aluno1@gmail.com', '$2a$10$N7SkKCa3r17ga.i.dF9iy.BFUBL2n3b6Z1CWSZWi/qy7ABq/E6VpO');
INSERT INTO tb_user (name, email, password) VALUES ('Aluno 2', 'aluno2@gmail.com', '$2a$10$N7SkKCa3r17ga.i.dF9iy.BFUBL2n3b6Z1CWSZWi/qy7ABq/E6VpO');


INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (4, 2);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Java Fundamentos', 'https://assets.dev/java.png', 'https://assets.dev/java-gray.png');
INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Spring Boot Master', 'https://assets.dev/spring.png', 'https://assets.dev/spring-gray.png');
INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('Banco de Dados Relacional', 'https://assets.dev/sql.png', 'https://assets.dev/sql-gray.png');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2024.1', '2024-02-01T08:00:00Z', '2024-06-30T23:59:59Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2024.2', '2024-07-01T08:00:00Z', '2024-11-30T23:59:59Z', 2);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2025.1', '2025-02-01T08:00:00Z', '2025-06-30T23:59:59Z', 3);

INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Trilha de Java Básica', 'Conteúdo inicial sobre sintaxe e POO', 1, 'https://img.com/java-basic.png', 0, 'https://course.link/java-1', 1);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Módulo Spring Data JPA', 'Mapeamento objeto-relacional e consultas customizadas', 1, 'https://img.com/spring-jpa.png', 0, 'https://course.link/spring-1', 2);
INSERT INTO tb_resource (title, description, position, img_uri, type, external_link, offer_id) VALUES ('Modelagem Relacional e SQL', 'Criação de esquemas, tabelas e constraints em bancos SQL', 1, 'https://img.com/sql-basics.png', 0, 'https://course.link/sql-1', 3);

INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Visão Geral e Sintaxe', 'Introdução às palavras reservadas e estrutura de um programa Java', 1,'https://img.com/sec-java-1.png', 1, NULL);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Orientação a Objetos', 'Classes, objetos, atributos, métodos e encapsulamento', 2, 'https://img.com/sec-java-2.png', 1, 1);
INSERT INTO tb_section (title, description, position, img_uri, resource_id, prerequisite_id) VALUES ('Mapeamento de Entidades', 'Anotações principais: @Entity, @Table, @Id e relacionamentos', 1, 'https://img.com/sec-spring-1.png', 2, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (3, 1, '2024-02-02T10:00:00Z', NULL, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (3, 2, '2024-07-02T14:30:00Z', NULL, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (4, 1, '2024-02-05T09:15:00Z', '2024-02-10T16:00:00Z', false, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (4, 3, '2025-02-01T11:00:00Z', NULL, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_moment, refund_moment, available, only_update) VALUES (2, 2, '2024-07-01T08:00:00Z', NULL, true, true);
