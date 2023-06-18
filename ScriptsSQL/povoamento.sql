
use bookstore;

--
-- -- Delete data from the table 'review'
-- --
-- TRUNCATE TABLE review;
-- --
-- -- Delete data from the table 'génerolivro'
-- --
-- TRUNCATE TABLE génerolivro;
-- --
-- -- Delete data from the table 'fornecedorlivro'
-- --
-- TRUNCATE TABLE fornecedorlivro;
-- --
-- -- Delete data from the table 'especialização'
-- --
-- TRUNCATE TABLE especialização;
-- --
-- -- Delete data from the table 'encomendalivro'
-- --
-- TRUNCATE TABLE encomendalivro;
-- --
-- -- Delete data from the table 'clientemoradas'
-- --
-- TRUNCATE TABLE clientemoradas;
-- --
-- -- Delete data from the table 'autorlivro'
-- --
-- TRUNCATE TABLE autorlivro;
-- --
-- -- Delete data from the table 'livro'
-- --
-- DELETE FROM livro;
-- --
-- -- Delete data from the table 'encomenda'
-- --
-- DELETE FROM encomenda;
-- --
-- -- Delete data from the table 'idioma'
-- --
-- DELETE FROM idioma;
-- --
-- -- Delete data from the table 'género'
-- --
-- DELETE FROM género;
-- --
-- -- Delete data from the table 'fornecedor'
-- --
-- DELETE FROM fornecedor;
-- --
-- -- Delete data from the table 'editora'
-- --
-- DELETE FROM editora;
-- --
-- -- Delete data from the table 'código promocional'
-- --
-- DELETE FROM código promocional;
-- --
-- -- Delete data from the table 'cliente'
-- --
-- DELETE FROM cliente;
-- --
-- -- Delete data from the table 'autor'
-- --
-- DELETE FROM autor;

--
-- Inserting data into table autor
--
INSERT INTO autor(ID, Nome, Avaliação, Biografia, `Data de nascimento`) VALUES
(1, 'Bertrada Fährmann', 0.66, 'Impedit consequatur voluptas. Labore voluptas omnis! Quo voluptas est? Illum et voluptatem! Sed consequatur dolores? Eum qui sapiente. Molestiae ut neque.\r\nEt voluptatem doloremque. Laudantium illum itaque. Non error et.\r\nSed et ipsa. Nostrum iusto beatae. Quis natus magni. Voluptatem ipsum repudiandae; quis ut doloremque. Ut enim rerum! Nemo corrupti ratione.', '1901-03-09'),
(2, 'Heiderose Klotz', 4.59, 'Vero culpa veritatis. Quos animi inventore. Obcaecati quasi et. Architecto velit rerum. Quia eos suscipit? Animi laboriosam natus. Perferendis nihil aut! Sed dolor ut? Iste nihil dolor.\r\nExercitationem ex et. Cumque non ratione. Rerum voluptates aut? Aut accusantium odit. Dolores et non; et est dolor. Quidem minima fuga. Rem iure corporis.\r\nEt labore perspiciatis. Quo aut reiciendis.', '1985-02-27'),
(3, 'Joko Adler', 0.58, 'Quia sunt ullam et ipsam magni ad. Qui voluptatibus voluptatem minima dolores voluptas vel in ut? Debitis laudantium autem omnis explicabo, hic adipisci sunt consectetur voluptatem. Esse corrupti aperiam perspiciatis veritatis qui enim. Voluptas enim dolores a magni minus! Aspernatur sed est eaque. Non suscipit aliquam laborum accusamus aperiam laboriosam sunt quam.', '1948-04-24'),
(4, 'Hemma Horkheimer', 4.06, 'Omnis numquam quod quas. Amet eius sequi nostrum tempore eligendi; non mollitia fugit ut officiis consequatur autem exercitationem non alias.\r\nCupiditate libero nam eaque quisquam animi explicabo aut. Quasi doloribus dolores. Iste tempore impedit! Natus soluta et. Quos assumenda unde. Sed natus doloribus! Pariatur dicta numquam. Debitis iure voluptatum. Saepe enim qui.', '1953-07-29'),
(5, 'Helwig osenbaum', 4.92, 'Ab id ipsam quaerat ea. Omnis repellendus quia. Enim sit error qui laudantium ipsum inventore! Iste sed deleniti sint; illo alias nostrum et ut. Id dolorem soluta sed sint voluptatem omnis. Sed est aliquid, reiciendis obcaecati id nesciunt eius aliquam facere. Impedit ut beatae est quisquam quia ea nulla natus.', '1992-01-15'),
(6, 'Orthey Vogt', 3.26, NULL, '2006-03-08'),
(7, 'Hannfried Blume', 5, 'Obcaecati et placeat. Veritatis unde laudantium! Sit labore est.\r\nSequi quo sed. Recusandae itaque a! Porro nihil corporis; dolorem omnis ut? Quia ut facilis. Autem ea quam!\r\nNulla tempora laborum; expedita et veniam. Perspiciatis porro possimus. Est numquam reprehenderit; et veniam itaque. Ipsa adipisci reiciendis! Omnis accusamus totam. Quae explicabo provident.', '2013-10-02'),
(8, 'Xenja Kirchner', 0.55, 'Vel aut corporis iste rerum veniam et incidunt voluptatum sit.', '1935-05-21'),
(9, 'Selinda Keller', 4.94, 'Omnis rem aliquid pariatur non molestiae quae vitae qui. Culpa non quas? Velit ut non repellat voluptatem hic obcaecati; id est et velit praesentium earum consequatur incidunt sit. Blanditiis distinctio quia sunt ex reprehenderit tenetur aut. Qui nisi ea! Obcaecati animi deleniti. Quia dolorem ut expedita! Non quasi reprehenderit error incidunt et quibusdam sit.', '1900-03-05'),
(10, 'Pontianus Heinz', 2.37, 'Omnis quas culpa totam corrupti fugiat exercitationem ut omnis.\r\nDoloremque molestiae nesciunt ducimus omnis ipsa. In id quia voluptatem impedit perspiciatis iusto. Exercitationem adipisci pariatur! Excepturi explicabo sunt.\r\nMolestias rerum et. Sed inventore et. Sit quia ipsam. Dolores aliquam quo. Quae accusantium odit. Eos praesentium et. Omnis voluptates ad. Unde odit et.', '2008-11-24'),
(11, 'Berengar Heitsch', 0.3, 'Voluptate et necessitatibus et est. Sequi alias dolores in recusandae quisquam eos! Numquam qui repellat ut qui vero corporis et. Ut unde aliquam doloribus exercitationem consequatur quas perspiciatis accusantium sunt! Voluptatem itaque qui mollitia nostrum tenetur. Tempora et totam dolor neque beatae eos similique et iste. Voluptate sit aliquid; error ut at. Consequatur et fugiat.', '1965-07-14'),
(12, 'Clemendina Tischler', 4.81, 'Iste adipisci voluptate vel nesciunt neque. Qui dolor eum et tempore consequatur ullam! Iste tempora similique.\r\nDolor perspiciatis facilis reiciendis dolorem. Molestias et amet quo. Commodi praesentium perspiciatis recusandae! Rerum blanditiis quaerat fuga repellendus in dolorem. Sequi error et. Possimus atque suscipit. Sit aut quia? Enim error vel.\r\nUllam ut magnam.', '1900-01-05'),
(13, 'Adine  Wulf', 2.77, 'Necessitatibus et similique sit qui et ut quam perspiciatis iusto. Voluptates voluptatem iste dolorum rerum, aut neque consequuntur optio dolorem.', '2015-10-03'),
(14, 'Falina Lohmann', 2.39, 'Molestiae ut et. Quia aut odio similique aspernatur perspiciatis quisquam amet. Sapiente labore commodi cum nobis animi molestiae non. Provident qui ut quod sunt similique; magni pariatur vitae et laborum debitis nisi voluptas. Magni beatae omnis. Voluptas culpa, ex quisquam ut corporis ut consequatur itaque quae...', '1900-01-01'),
(15, 'Lovis Jens', 5, 'Odio tempore excepturi. Qui nostrum est. Nobis in cupiditate! Tempora totam amet; quas voluptates ipsam. Est adipisci rerum!\r\nQuis sit laborum. Dolorem fugiat ut. Ut totam explicabo. Nam est qui. Ipsum est quasi! Eum sunt nulla. Tenetur consequatur rerum. Tempore ullam quisquam. Veritatis nostrum quas.\r\nAspernatur iste nulla. Ea perspiciatis quis! Necessitatibus id est. Unde sint consequatur. Et?', '1914-06-14'),
(16, 'Amrei ozart', 4.01, 'Quaerat unde eius. Voluptatem vitae vel. Libero voluptatem quod. Illo rerum harum.\r\nFugit iste commodi. Unde aperiam reprehenderit! Sit expedita aut. Assumenda omnis ea. Numquam natus et; facere repellendus cum; consequuntur non dolorum. Ipsam eum voluptatum. Perspiciatis iste sed. Magni non rerum.\r\nImpedit natus in. Sit ut labore; reprehenderit inventore iure. Illum eius molestiae. Voluptas sed.', '1985-01-06'),
(17, 'Catrin Gutzeit', 0.27, 'Ut magni sunt sint et illo laudantium dicta nam.\r\nUllam veritatis libero ut asperiores itaque. Et alias est incidunt et deserunt sit aliquam. Tenetur quo voluptatem repellendus harum! Nostrum ut vitae sapiente quia sunt voluptas. Aperiam cumque itaque! Sit in voluptas, dolor non dicta soluta porro dignissimos et. Suscipit dolores inventore. Voluptas rerum qui!', '1976-02-03'),
(18, 'Conny Dippel', 4.41, 'Unde itaque iste ea tempore voluptates beatae aut deleniti. Sit eum ullam eius perferendis eveniet aut corporis vitae. Et ab pariatur dolorem. Voluptatem nam atque laudantium itaque quia magni. Labore eaque et culpa a ratione asperiores necessitatibus.\r\nConsequatur voluptate doloremque. Consequatur tempore blanditiis. Impedit nemo debitis; rerum ut similique. Consequatur exercitationem mollitia.', '1902-07-31'),
(19, 'Armgard Kopf', 3.51, 'Tempore nesciunt blanditiis. Sit porro excepturi. Quas consequatur ipsum? Qui fugiat debitis! Commodi vel itaque. Esse possimus libero. Minus est eos.\r\nVel aliquid explicabo. Unde quis consectetur; sed repellendus alias. Amet accusamus cumque! Atque aut quaerat. Maiores dicta cumque. Modi recusandae voluptatibus? Eum qui voluptatem! Eum sapiente et. Voluptas ut dolore.\r\nCorrupti nam et. Magnam;', '1983-12-22'),
(20, 'Korth Baur', 2.73, 'Itaque commodi fugit voluptatem ut. Aperiam ipsa sit nobis velit omnis repellendus optio. Sint iusto iste eaque unde non eum quam ut. Delectus ut quasi a et dicta fuga exercitationem ut.\r\nCorporis ut vitae quo sed. Aut nemo aut culpa non sit error ad maxime. Eaque excepturi eum. Numquam modi impedit. Officiis voluptate enim.', '1900-03-24'),
(21, 'Lenchen Schwarz', 4.06, 'Qui error praesentium ex et. Saepe quia consequatur! Autem quae nobis quo neque expedita. Optio voluptas quia ea qui iste adipisci.\r\nQuam nobis et.\r\nVoluptate qui deleniti. Obcaecati nulla dolorem! Unde numquam modi. Est asperiores dicta. Tempora incidunt maxime. Cumque aut asperiores. Omnis veniam aut! Omnis optio placeat. Minus saepe voluptas.', '2017-01-03'),
(22, 'Barthel  Mauch', 1.98, 'Sed est delectus. Iste illum eum! Quae optio rerum? Vitae iste dolorem. Nostrum nulla fugiat. Est delectus minus! Quia eos dicta.\r\nEt eos illum. Veritatis eligendi ipsa. Soluta suscipit quasi! Nihil corporis placeat. Quas velit neque! Dolorum nihil magnam? Sit numquam rerum. Molestias sit voluptatem.\r\nAd consectetur et. Unde magnam ut! Aut voluptas dolorem. Repellendus vero iste. Similique eum.', '1924-01-23'),
(23, 'Krispin Heckler', 4.09, 'Nisi et iste adipisci sed a obcaecati sit omnis ut.', '2002-03-14'),
(24, 'Wilbrecht Ebel', 4.43, 'Iste vero velit. Recusandae placeat eius doloremque aut recusandae; quae earum quaerat neque nesciunt aut. Fugit nisi unde incidunt molestiae quasi. Omnis voluptatem illum. Pariatur sit fuga. Aut sit laborum voluptatibus explicabo! Eaque qui dolores sit recusandae autem quo animi sed; explicabo sit omnis beatae deleniti iusto...', '1979-01-08'),
(25, 'Dieter ietzsche', 5, 'Voluptatem est similique; provident facere neque sed ut impedit.\r\nDeserunt ut ad cupiditate magnam veritatis; natus quia perspiciatis. Est qui est! Aut voluptatem aliquid sint a repudiandae.\r\nOfficiis aut ratione est velit placeat eius natus reprehenderit sit. Qui et totam. Recusandae rerum ut? Voluptas voluptatem nihil consectetur voluptatem ratione aliquam natus alias aut. Perspiciatis eveniet.', '1900-11-09'),
(26, 'Rüder Hermann', 2.51, 'Animi est repellat. Facilis et autem. Sit numquam incidunt. Dolores atque deserunt! Incidunt ducimus in. Corporis quia earum. Sequi id labore! Eaque ipsam velit.\r\nDicta ipsa ut; nemo tempora consequatur. Nisi autem recusandae? Natus aspernatur ut; sed nihil inventore. Est delectus cumque; architecto laborum blanditiis. Dicta ea voluptatem.\r\nAd voluptas dignissimos; natus quae dolor.', '1970-06-17'),
(27, 'California Zabel', 4.78, 'Illo quia neque. Voluptatem sed ipsa. Et est ut! Enim praesentium magni. Quis nemo ipsum. Possimus expedita est. Nihil voluptatibus quo? Impedit fuga dolores; voluptates aut enim. Rerum labore hic.\r\nEveniet facilis dolores. Temporibus pariatur aperiam. Vel sed quis! Modi ut saepe? A maxime eveniet. Exercitationem est eveniet? Iste laborum voluptatibus.', '1983-03-13'),
(28, 'Fredegar chultz', 1.85, 'Et omnis quo corporis voluptatum blanditiis quo, aspernatur itaque qui.\r\nNatus est doloribus perspiciatis sit consequuntur perspiciatis et unde; molestias ipsum voluptatibus voluptas? Natus hic enim incidunt sint eius earum. Soluta earum ut. Et reiciendis architecto? Harum et eius...\r\nEst error unde. Dolorem nostrum minus. Enim ipsa suscipit! Enim eligendi eos.', '1900-03-29'),
(29, 'Lisa-Maria Marschner', 4.96, 'Quis assumenda, nam et omnis earum ducimus explicabo commodi alias. Et cum sit rerum quo ut et reprehenderit omnis dolorem. Aut excepturi dolorem, est ea officiis molestiae quis hic tempore. Id deleniti voluptas sit veritatis perspiciatis reprehenderit natus vel explicabo...', '2013-04-21'),
(30, 'Aurion  Günther', 1.35, 'Praesentium enim expedita. Est quos omnis expedita sapiente facere. Dolores corporis incidunt eum quaerat et harum perferendis. Aut tempora qui excepturi enim ipsum. Voluptatem eos est iste hic iure sit. Iste similique tempore. Iusto in non magni dolorum.\r\nSint temporibus tenetur sit modi facere omnis. Voluptas ullam ducimus. Amet incidunt aliquam!\r\nNatus cum et.', '1900-04-08'),
(31, 'Friedwart osenblatt', 0.5, 'Dolorem perspiciatis et commodi consequatur tempora at voluptatem aut delectus. Dolor excepturi quae et tempore reprehenderit dolorum, rem asperiores corporis. Incidunt consectetur et consequuntur suscipit quos excepturi soluta et amet...', '1996-12-04'),
(32, 'Cölestin Treviranus', 3.69, 'Aut non eum. Inventore voluptatem cum? Ex dicta fugit. Explicabo voluptatem deleniti? Earum quidem quam. Ad quae consectetur; provident voluptas dolores. Adipisci molestiae eos. Dolor minus rerum? Minus consequatur ut!\r\nAperiam voluptatem reprehenderit. Ea nam voluptate! Ut qui est. Nisi ullam et.\r\nDebitis dolores magnam. Dolores rerum illum. Unde et facere. Beatae magni quia. Ipsa fugit quis!', '1965-01-30'),
(33, 'Abeline  Kramer', 0, 'Voluptatem repellendus quo ut corrupti enim maxime dolore et totam. Natus neque unde ab est et rerum sint maxime sunt. Non maxime eligendi inventore! Et natus dolorem deserunt commodi. Ratione asperiores commodi aliquam vel amet. Ullam quaerat alias aut enim praesentium eum qui eaque et. Omnis fuga vero. Corrupti incidunt tenetur...', '2014-07-09'),
(34, 'Balte  Joseph', 0.16, NULL, '1909-11-27'),
(35, 'Chlothar Franz', 0.17, NULL, '1941-09-15');

--
-- Inserting data into table cliente
--
INSERT INTO cliente(ID, Nome, Email, Telemóvel, NIF) VALUES
(1, 'Scot Acker', 'Adam.Acker24@example.com', '958078790', 'K1'),
(2, 'Albert Mclean', 'byiswceo_myqdc@example.com', '960225224', NULL),
(3, 'Adelaida Bergman', 'LealU19@nowhere.com', '925059547', '8T'),
(4, 'Abram Patten', 'kkhx3854@example.com', '907807076', 'Q'),
(5, 'Edgar Adler', 'owpk8399@example.com', '962916149', '71'),
(6, 'Edward Jarvis', 'Jennings@example.com', '956514165', 'R1'),
(7, 'Wesley Ramirez', 'Gee@nowhere.com', '928258762', '27Y9'),
(8, 'Gregg Fulmer', 'PhilRichey8@example.com', '904531941', '6A0CED6HJ'),
(9, 'Karly Aguirre', 'Babin@example.com', '919818460', '6'),
(10, 'Rueben Sell', 'MargaritoAnthony@example.com', '978770683', 'F'),
(11, 'Porsha Minton', 'GladisReeves33@example.com', '900670346', '1'),
(12, 'Almeta Bowling', 'Cordero@example.com', '982102527', '81D'),
(13, 'Leonora Houser', 'PeggieScott@example.com', '914418664', 'GE3VI72KQ'),
(14, 'Dudley Rowan', 'Costa@example.com', '943632582', '7'),
(15, 'Vance Blaine', 'Adair77@example.com', '969096028', 'N45'),
(16, 'Clemmie Grove', 'DominickGrier@nowhere.com', '978704058', 'Y'),
(17, 'Lester Cohn', 'Rau71@nowhere.com', '995393888', NULL),
(18, 'Andrew Crutchfield', 'Rosario_Dejesus7@example.com', '911070783', 'E7FA'),
(19, 'Percy Valdes', 'Armstrong5@example.com', '999757235', '37P'),
(20, 'Duncan Sisco', 'GiannaJenkins@example.com', '977675671', '9VUWH5L8N'),
(21, 'Christian Gill', 'Crooks@nowhere.com', '918680262', NULL),
(22, 'Avery Weeks', 'Adan_Stafford@nowhere.com', '993849650', 'O6NY'),
(23, 'Travis Abney', 'Alston679@example.com', '945129724', 'Y'),
(24, 'Judson Oh', 'Matney@example.com', '956959690', '2'),
(25, 'Abe Tibbs', 'StephaniJ_Grossman@example.com', '940335002', '9'),
(26, 'Allan Canales', 'JoaquinWilbanks@example.com', '972982595', '8'),
(27, 'Kristle Dickens', 'Mary.N_Kunkel572@example.com', '971089470', 'OA'),
(28, 'Aide Manley', 'LeilaBrubaker@example.com', '941172145', 'KTHUY5M'),
(29, 'Vita Morrissey', 'Anastacia.OPruitt48@example.com', '986461151', 'U64'),
(30, 'Alease Perales', 'Frankie_Grossman@nowhere.com', '964198632', 'F'),
(31, 'Agueda Camp', 'Muriel_QMilliken5@example.com', '984179842', '86'),
(32, 'Jamie Aguiar', 'enqvjfmk.cofgkn@nowhere.com', '996921657', 'V'),
(33, 'Augustus Abreu', 'Villalobos7@example.com', '995931957', 'K8B9ME'),
(34, 'Romeo Anderson', 'GertudePlace@nowhere.com', '942651762', '3WQ'),
(35, 'Abdul Rainey', 'MinervaSeay@nowhere.com', '903613735', '97Y4NP1J'),
(36, 'Joye Ryder', 'FelixD.Shoemaker@example.com', '975137448', '2'),
(37, 'Rory Burchfield', 'AmadoMedina589@example.com', '931195508', '5'),
(38, 'Adaline Shah', 'Luigi.Duvall448@example.com', '972254776', '4'),
(39, 'Alexandria Mendenhall', 'Blank783@example.com', '963326661', 'E9H52'),
(40, 'Adolfo Rangel', 'Flowers139@nowhere.com', '954625128', '8'),
(41, 'Kyung Andrew', 'Clapp@example.com', '949303084', '3'),
(42, 'Melvin Sommers', 'LucioDolan@example.com', '915147534', 'S4PV20VB'),
(43, 'Jamika Mendez', 'Caleb.Lincoln2@example.com', '928745103', '167A0'),
(44, 'Seth Ojeda', 'Kareem.Ratliff@example.com', '928991287', '212L8S2ZJ'),
(45, 'Mistie Musgrove', 'ahukz6794@example.com', '927789000', 'BQ4K68'),
(46, 'Gabriela Harmon', 'DrewTravis253@example.com', '924178053', 'W'),
(47, 'Alexis Goulet', 'BernardoBarkley1@example.com', '911163980', 'Q5811N'),
(48, 'Neal Bergman', 'AnalisaThomas1@nowhere.com', '949612126', '9VJT2345U'),
(49, 'Fermina Fields', 'Violeta_Tribble832@example.com', '911829293', NULL),
(50, 'Rolande Price', 'Spann93@example.com', '964498372', NULL);

--
-- Inserting data into table `código promocional`
--
INSERT INTO `código promocional`(Código, Valor, `Data de início`, `Data de fim`) VALUES
('3', 73, '2022-01-16 16:02:35', '2023-01-03 03:46:18'),
('863S3L5G71J8018K47L63LFI110977UF', 81, '2022-01-01 00:01:22', '2023-04-22 12:37:35'),
('85CWN901I03W', 67, '2022-08-12 21:06:13', '2023-02-06 07:21:14'),
('T705H0T18O998465K8Y9', 68, '2022-02-01 20:29:35', '2023-03-24 17:24:12'),
('3FG6EG391H6', 87, '2022-11-11 06:47:14', '2023-03-08 19:56:42'),
('PP5JI', 82, '2022-05-31 13:25:32', '2023-04-25 07:33:04'),
('8U', 50, '2022-11-19 10:05:30', '2023-05-07 15:35:12'),
('OX1GP80QK7ICP063HA099J', 3, '2022-01-01 00:00:04', '2023-01-02 00:03:18'),
('55105VBNKB9', 10, '2022-01-01 02:39:05', '2023-05-27 19:51:29'),
('1F8N0V5T2M6V1344PI3EX6L', 92, '2022-01-01 00:00:01', '2023-03-22 19:57:51');

--
-- Inserting data into table editora
--
INSERT INTO editora(ID, Nome, Endereço, Descrição, Email, Telefone, Website) VALUES
(1, 'Speaklifiedor', '3-8 Perren Street', 'Iste sint molestias non quia ut sit ad ut. Iste unde dolor sit sint provident asperiores dolorem dicta; blanditiis aut unde. Consectetur ut optio. Qui et laudantium? Rerum accusamus ut; aliquid tenetur accusamus? Officiis hic vitae...', 'AbeSSims856@example.com', '913269854', 'https://alonithat.de/wa/you/anourester.php?t=66'),
(2, 'Monomuter', '34-28 King''s Road', 'Veniam nisi est, id voluptas culpa quod expedita voluptate sequi.\r\nAspernatur ratione sequi repellendus sed iste et harum quis repellat.', 'Bolin641@example.com', '913297988', 'https://sewitwasuld.tr/theishat/itnd/aseahi/threhin.asp'),
(3, 'Stereotellewator', '4-6 Shepherd Street', 'Ullam fugiat iste. Sequi atque sint. Assumenda porro illum. Voluptatem non voluptates. Esse incidunt at. Accusamus ad eligendi.\r\nAt voluptatem voluptatibus. Voluptas eveniet rem; soluta similique eum. Necessitatibus itaque est. Id recusandae et. Consequuntur et incidunt.', 'Arroyo@nowhere.com', '960260289', 'https://thiall.at/ertenot/uldere/thahatour/ourshoerahe.asp'),
(4, 'Moncorder', '51-18 Palmers Road', 'Laboriosam natus ut minus iste, sit recusandae qui molestiae voluptatem. Sequi aperiam, dolorem quos sit nihil obcaecati ut error sit? Quas qui rem qui. Earum est ut natus ut sit autem aspernatur veritatis; optio officia nobis. Eligendi magnam consequatur!', 'FrederickLandis@example.com', '921769824', 'http://www.nttowaal.ge/heratti/mehat/and/eratio.php'),
(5, 'Cleanplottor', '82E Chamber Street', 'Asperiores eaque ea. Placeat dolorem non. Repellendus natus totam? Dolore amet et; est debitis recusandae. Qui voluptatem et. Et unde eaque.\r\nVoluptates ut deserunt. Temporibus qui adipisci; molestias non ut. Quia qui enim! Sed sit alias. At est distinctio. Perferendis dolor.\r\n', 'Oralia_Sousa6@example.com', '909506345', 'https://www.tohaandnot.za/verhenhen/atwasor/ionourre/ntndhihin.asp');

--
-- Inserting data into table fornecedor
--
INSERT INTO fornecedor(ID, Nome, Descrição, Email, Telefone, Endereço) VALUES
(1, 'Computer', 'Optio accusamus nobis. Nostrum.', 'Sherry_XFranz94@nowhere.com', '997050089', '33 Hope Lane'),
(2, 'Speakmutry', 'Voluptas dicta quia. Unde!\r\n', 'Nance@nowhere.com', '991330730', '58 NW Burwood Circle'),
(3, 'Speakmuterridge', 'Eveniet beatae deserunt. Eum;', 'ShannonAbney@example.com', '925137558', '711 Rockwood Loop'),
(4, 'Reculimra', 'Modi expedita unde. Quis ut!\r\n', 'Celina_Cota428@example.com', '941937332', '1604 South Glenwood Way'),
(5, 'Tablictra', 'Eos quae consequatur. Sed fugit.\r\n', 'Stephens6@example.com', '967972308', '460 Hidden Highland Drive'),
(6, 'Processoper', 'Et autem rerum; velit et.\r\n', 'GainesM@nowhere.com', '918863590', '136 Ski Hill Loop'),
(7, 'Cleancessentor', 'Quo obcaecati voluptas; ipsam.\r\n', 'Aguirre@example.com', '963230477', '33 Town Ave'),
(8, 'Ancordplar', 'Sint aliquid soluta. Perspiciatis.', 'Tomlinson@nowhere.com', '994314724', '371 2nd Road'),
(9, 'Retectridge', 'Sit omnis impedit.\r\nRem eos.\r\n', 'Lanny.Boehm592@nowhere.com', '983919607', '2865 Front Parkway'),
(10, 'Carttellor', NULL, 'KylaBoehm@nowhere.com', '998222188', '428 Fox Hill Pkwy');

--
-- Inserting data into table género
--
INSERT INTO género(ID, Nome, Descrição) VALUES
(1, 'Mistério policial', 'Omnis voluptas et. Dolorem recusandae vero reprehenderit ipsa quisquam autem. Facere veniam officiis velit! Et odit aperiam natus ipsa qui ducimus ad. Amet fugiat ut quia omnis. Aut soluta error! Ipsum eos quibusdam omnis.'),
(2, 'Literatura de ficção científica cyberpunk', 'Exercitationem consequatur exercitationem. Error dolore dignissimos! Nam dolores adipisci. Ut repudiandae possimus. Vero eum aut. Ducimus incidunt atque. Tempora quaerat doloremque. Error sed fugit.\r\nAut magni odit. Facilis qui dignissimos. Atque non et! Laudantium accusamus.\r\n'),
(3, 'Romance', 'Eos dolor hic vel in temporibus sunt animi. Natus sint adipisci. Suscipit quia ut. Est quis et. Sit esse maiores!\r\nCum perferendis distinctio. Qui sunt alias. Est impedit rem! Autem magni aut. A quas sit.'),
(4, 'Aventura', 'Ut enim natus voluptatem non nobis tenetur illum. Eos quasi recusandae quia. Laboriosam molestias iure et beatae magnam omnis eos ex. Non iusto iste! Molestiae voluptatem magni. Omnis quia molestiae.\r\nRepellat dolorem dolorum.\r\nEos tempore ut.'),
(5, 'Literatura de guerra', 'Corporis iste molestiae excepturi, vitae tenetur incidunt aut nulla nisi.'),
(6, 'Literatura de contos folclóricos', 'Quisquam dolorem reprehenderit. Saepe sed dolor. Dolore reiciendis rerum. Non et sunt. Facere quas esse? Explicabo ullam ipsa. Assumenda aliquid nostrum. Et libero ad. Similique quia non.\r\nCumque doloribus delectus. Unde error sapiente. Sit similique repellendus. Velit eos.\r\n'),
(7, 'Literatura clássica', 'Maiores commodi possimus. Consectetur illo in! Enim ut qui. Sed enim ut. Totam maiores vel. Ea repellat necessitatibus...\r\nQuae saepe qui. Expedita recusandae qui; ut accusamus aliquam. Corporis dolores aperiam! Recusandae iusto vitae. Laborum voluptatem sit? Velit voluptatem.'),
(8, 'Literatura regional', 'Non laudantium enim aspernatur sit in. Sed labore doloribus? Quaerat quisquam atque!\r\nFuga quia perspiciatis. Perspiciatis ut voluptatem. Molestiae mollitia molestias. In omnis qui. Minus qui officia. Et ut aut. Sit sed voluptates. Earum officia sint.'),
(9, 'Literatura contemporânea', 'Adipisci error sed blanditiis minus non iusto non iste molestiae...\r\nQui et ipsa. Corporis eius eos in perferendis aut. Ut non quia officiis? Commodi nam aperiam molestiae. Pariatur in et rem perspiciatis consequatur nulla quidem.'),
(10, 'Mistério', 'Sit rerum dicta error sed error ipsa. Et molestiae optio tenetur voluptatum fugit neque magni et. Neque molestiae consequuntur; quam veniam consectetur. Ut laboriosam ut? Est sed numquam! Quod quos error. Necessitatibus ad maiores. Fugiat iste beatae.'),
(11, 'Literatura de romances históricos', 'Possimus accusamus sit. Commodi est vitae. Debitis quaerat omnis. Error sed qui.\r\nModi dolorem harum. Consequatur libero adipisci. Est blanditiis repudiandae; repudiandae ut consectetur; sequi ab numquam. Quae harum ex; error est animi.\r\nBeatae natus est. Sed sint eum? Corrupti.'),
(12, 'Drama', 'Modi vel voluptatem. Qui magni labore. Quidem illum facilis...\r\nOdit rerum quos. Id ullam rerum! Qui necessitatibus accusantium. Dolores ut omnis! Nemo ea tempore. Possimus provident et; aut harum maiores. Et natus ipsam. Esse non sed!'),
(13, 'Literatura de desenvolvimento pessoal', 'Quod rem qui. Quibusdam quis in molestiae! Animi deleniti sit facere accusantium laboriosam. Consequatur consequuntur dolorum labore quis facilis sed et fugit. Cum rem tempore? Rerum nulla molestias. Necessitatibus beatae fugit. Natus laboriosam sit. Et rem consequatur.'),
(14, 'Literatura de viagem', 'Voluptatem rem beatae, excepturi quibusdam et blanditiis nihil maxime dolor. Dolorem facere ea! Dolores voluptas et. Optio nemo consectetur!\r\nPariatur harum cumque. Sit facere voluptatem? Qui placeat accusamus. Incidunt debitis enim; omnis est veritatis. Ut et qui. Quia aliquam.'),
(15, 'Literatura de ficção científica hard', 'Quasi totam quia sint. Harum est maxime id rerum accusantium qui at.\r\nNon natus eos. Dolorum sunt quia amet eius! Quia ducimus explicabo reprehenderit. Id sed sint omnis itaque nemo assumenda, ullam sed dolore. Quaerat omnis vitae!'),
(16, 'Teatro', 'Facilis dicta sunt modi quae animi facilis. Quam quaerat suscipit expedita assumenda omnis! Et officia impedit alias eum ipsam et saepe aliquid quaerat? Rerum aut voluptas!\r\nReiciendis dolor veritatis. Voluptatem sed minima? Perspiciatis qui unde!'),
(17, 'Literatura infantojuvenil', 'Eum vel similique. Voluptatum quis odit. Eveniet veritatis est; rerum perspiciatis qui. In porro blanditiis.\r\nVoluptate quidem sit. Eum et quas. Ut sequi enim. Nobis omnis explicabo! Omnis non error.\r\nRerum aliquam suscipit. Aut nostrum et. Sit ut eaque; ipsa fugiat ut. Amet ut?'),
(18, 'Literatura histórica', 'Hic qui voluptatum; perspiciatis sapiente quasi. Quis dolorem enim...\r\nNemo voluptatum est. Et placeat officia. Sed magni nemo! Alias fugit doloribus; consequatur eos et. Distinctio suscipit deserunt. Quia alias consectetur. Perspiciatis iure et! Beatae ratione enim.\r\nEst.'),
(19, 'Literatura de ficção especulativa', 'In dolorem error...\r\nAliquam voluptas earum. Ut error dolorem! Eveniet dignissimos libero.\r\nDolorem sed nemo. Voluptatem iste totam! Rem aliquam rem. Neque possimus aperiam. Sit id possimus. Mollitia qui minus; corporis ut et. Voluptatem ullam molestiae. Aut autem beatae?'),
(20, 'Literatura de ficção científica soft', 'Error non ullam. Maxime molestiae consectetur. Iure illum ut. Molestiae sequi velit. Obcaecati quisquam doloribus. Est architecto vel. Expedita qui facere? Sit est et. Incidunt labore distinctio.\r\nUt quis velit. Maiores suscipit at? Et voluptatem cum. Facilis iusto veniam. Ut!\r\n'),
(21, 'Biografia', 'Quas consequatur optio. Ut nesciunt ut. Ab possimus soluta? Et ipsa eum. Quia animi ea.\r\nIste mollitia error. Rerum assumenda et. Consectetur neque sunt. Fuga iste tempore! Optio facilis aspernatur. Eaque itaque quos; eius aspernatur maxime. Excepturi numquam cum.'),
(22, 'Suspense', 'At nulla iste doloremque omnis et quam. Error consequatur odit laborum harum voluptates voluptatibus fugit iste. Sed eaque consequatur. Fuga sit veritatis.\r\nAd voluptatem vel. Nam vel est. Tempora nostrum sint? Aspernatur sunt qui! Qui consequatur aliquid.'),
(23, 'Conto', 'Ut quo perspiciatis. Molestias sed tenetur. Nihil sit error. Ullam placeat mollitia; voluptatem sit numquam. Tenetur at quisquam; perspiciatis optio quidem? Sit non minus. Velit quis ab.\r\nQui suscipit non. Consequatur iste nulla! Rerum minus consequatur.\r\nAccusantium ut.'),
(24, 'Literatura de ficção científica militar', 'Enim qui ratione. Incidunt sit autem id obcaecati nostrum doloribus aut. Dolor minus eveniet architecto eos doloribus officiis enim.\r\nVelit vero odio. Eos cupiditate sit. Ut natus modi. Molestiae ut aut. Pariatur aut aliquam!\r\nPraesentium sint consequatur.'),
(25, 'Religião e espiritualidade', 'Nobis aperiam odio.\r\nRepellendus tempore possimus. Nisi soluta voluptatem.\r\nQuo quis unde. Et debitis aut! Voluptas mollitia ut. Cum quis dolores. Quas voluptatem numquam; rem tenetur molestiae. Debitis iste sunt. Qui rem sit. Veritatis doloribus quis.'),
(26, 'Literatura juvenil', 'Ratione necessitatibus culpa voluptatem libero iusto omnis. Ut omnis dolor. Quia ut voluptas; rerum impedit veritatis. Nihil odit aperiam; ut aut temporibus. Perspiciatis sit ut. Sed cum omnis. Consequatur officiis nemo!\r\nCulpa est harum. Voluptatem et quae.'),
(27, 'Literatura de humor', 'Omnis consectetur expedita sapiente perspiciatis vitae iste eum temporibus non. Sit voluptas iste voluptas quod saepe amet iste nobis? Aut porro enim voluptate sed non quae eius. Minus aut voluptate. Commodi aliquam ut. Quod sed sit. Minima distinctio corporis.'),
(28, 'Literatura de realismo mágico', 'Repellendus consequatur saepe. Aut quod laboriosam. Autem ut vitae; debitis molestiae explicabo. Aut eos asperiores. Praesentium error eligendi! Debitis voluptas et. Numquam dolor quaerat...\r\nNumquam nihil magnam; nesciunt a nemo. Accusamus cum exercitationem. Eos possimus fuga.\r\n'),
(29, 'Autobiografia', 'Vero unde voluptatem. Voluptatem ipsa delectus et recusandae provident recusandae deserunt voluptatem rerum. Recusandae ratione rerum ut. Iste et ex id in et autem quasi voluptate debitis? Eum molestias quisquam ut dolorum recusandae adipisci et;'),
(30, 'Literatura de contos de fadas', 'Nulla ipsum totam quod. Excepturi enim nihil? Consequuntur modi quo qui cumque. Minima laudantium dicta. Et iure consequatur; obcaecati quia veniam. Aut sequi sed.\r\nConsectetur dignissimos minus. Sit error libero; maiores pariatur voluptatem. Sit impedit mollitia.'),
(31, 'Autoajuda', 'Sunt doloremque quia. Illum voluptatem praesentium; reiciendis praesentium ipsam. Qui et minus...\r\nQuia qui tempora; eaque officiis ipsum. Velit debitis perferendis; eveniet quod qui.\r\nAtque aut voluptas. Officia earum qui; eius itaque omnis? Et vitae odit! Qui voluptatum tenetur.'),
(32, 'Novela', 'Rerum nulla architecto. Suscipit voluptatum deserunt. Natus reprehenderit et. Eos voluptas accusamus. Modi qui debitis. Sed deserunt in? Sapiente sunt fugit. Laudantium ut molestiae; debitis temporibus ut. Et quo et.\r\nOdit error sed.\r\nSed enim omnis...'),
(33, 'História', 'Vel et adipisci. Natus veniam est. Eos illum fuga. Ut facere consequatur. Et obcaecati voluptatem. Quo perspiciatis aut; illum nihil nemo. Expedita ipsa quam; reiciendis nobis neque.\r\nUt officia nam. Ducimus repellat quod. Omnis voluptates consequatur. Sed reiciendis inventore.'),
(34, 'Mitologia', 'Dolor aut in explicabo temporibus sed rem consequatur. Temporibus voluptas voluptatem at. Est sint eligendi nihil sint totam excepturi exercitationem harum! Fuga ut molestiae.\r\nIncidunt doloribus cum. Quia fugit assumenda. Eum est consequatur...\r\nUt quo dicta. Sequi omnis soluta.'),
(35, 'Comédia', 'Assumenda sint eos ex. Laborum voluptate cumque est distinctio. Expedita commodi soluta asperiores et veniam ut fugit qui consequatur. Quia aut reiciendis. Est sit eos. Ut nemo reiciendis! Labore voluptatem dolores. Possimus expedita qui. Ut voluptatem sed; aliquid reiciendis.'),
(36, 'Literatura de ficção científica pós-apocalíptica', 'Nemo possimus quis architecto blanditiis quam nisi. Autem eligendi laboriosam. Ea quia error. Dolore reiciendis perspiciatis. Omnis enim necessitatibus! Id cum enim.\r\nQuod repellat alias; eaque labore repellat. Explicabo modi distinctio? Consequatur exercitationem.'),
(37, 'Fantasia', 'Eum et enim ut. Maxime aut provident. At culpa voluptatum vitae quae ratione recusandae voluptas quasi et. Et voluptas ea dolorum in deserunt enim quas dolorem deleniti.'),
(38, 'Literatura infantil', 'Praesentium sed incidunt. Rem nulla autem! Tempora corrupti veniam. Alias ut laudantium.\r\nEa impedit minus. Illo ut debitis? Quo illo eos. Neque aspernatur sunt. Numquam maiores animi.\r\nDolorem unde velit; quo modi vitae. Neque rerum deserunt. Dolor commodi nulla.'),
(39, 'Literatura LGBTQ+', 'Iste similique sed. Enim numquam dolores. Quis voluptatibus non. Ratione et excepturi! Error tempore nihil.\r\nPlaceat vel sed. Repellendus in voluptatem! Exercitationem rerum et. Et perspiciatis ea! Eligendi pariatur voluptatibus. Sed iste velit! Ad esse ad. Ut et similique...\r\n'),
(40, 'Ficção', 'Quia dolor deleniti. Asperiores velit veniam; aperiam sit molestias. Magnam corporis non. Nihil soluta qui.\r\nCorrupti blanditiis consectetur. Dignissimos pariatur itaque! Sint enim aut. Tenetur totam dolorem. Exercitationem ut delectus! Est dolor vero. Sunt obcaecati et.'),
(41, 'Ensaio', 'Vitae dolor cupiditate recusandae quod rerum consequatur; asperiores et illo qui omnis molestiae et voluptatem quia. Ut rerum maiores. Delectus accusantium ea! Ratione quasi soluta. Impedit voluptatum nesciunt. Voluptates asperiores velit! Magni maxime tempora. Enim et quae!'),
(42, 'Literatura de ficção científica distópica', 'Error cupiditate facere velit reprehenderit ratione, velit officiis quis sint. Iusto officiis quia incidunt inventore aliquam. Quod sit suscipit voluptatem autem! Excepturi minima error quae et adipisci blanditiis aut dolorem cum. Architecto unde eveniet. Cupiditate sint rerum!'),
(43, 'Literatura de mistério psicológico', 'Dicta culpa vel unde vero id consequatur quisquam harum distinctio. Dolores sequi fugit? Consequatur error vel. Sed natus necessitatibus. Error aut temporibus; at aliquam commodi? Animi nostrum mollitia. Laudantium et aut. Voluptatibus vero reprehenderit.\r\nLaborum quasi harum.'),
(44, 'Filosofia', 'Unde beatae consectetur sint ut ab fuga voluptatem. Placeat in autem! Voluptates voluptatem qui? Consequatur et quasi.\r\nIpsa recusandae laudantium.\r\nQuia sequi ratione. Magnam inventore consequuntur. Ipsa aliquid aut. Voluptate itaque sed? Consequatur temporibus impedit.'),
(45, 'Crônica', 'Harum modi doloremque quibusdam porro dolorum porro possimus temporibus corporis. Tempora et numquam fugit neque libero consequatur. Dolorem laboriosam aspernatur nihil perspiciatis quaerat.\r\nRem numquam omnis. Unde aut dolores? Commodi rerum eius. Alias qui eveniet;'),
(46, 'Ficção científica', 'Nisi cumque consequatur. Voluptatem vitae consequatur; est quasi enim. In iste quibusdam! Aut voluptatibus non.\r\nOfficiis nam vel. Eligendi dolore officiis; distinctio voluptas sed? Dignissimos voluptates voluptatem. Est ipsum rem; atque ab deleniti. Quia veritatis!\r\n'),
(47, 'Não ficção', 'Et architecto sed tenetur earum quia autem. Inventore quia nulla ut quia adipisci quod in; hic nobis excepturi; perspiciatis deserunt, natus voluptatum perspiciatis in sapiente quo suscipit sit.'),
(48, 'Literatura de fantasia épica', 'Nihil sit reiciendis voluptatem eum vel ut quibusdam ea. Ducimus cupiditate culpa. Iste dolor debitis! Fugiat qui accusamus. Voluptate inventore ad; aspernatur voluptatem rerum. Labore perspiciatis magni. Reiciendis sint qui. Accusantium voluptatem dolorum. Voluptatem beatae!'),
(49, 'Poesia', 'Omnis dolorem adipisci magni. Sed atque sit aut deleniti accusamus magnam rerum. Aspernatur placeat unde. Vero facilis ut! Error laudantium reprehenderit.\r\nQuis modi eos. Sint ex odio. Omnis error aperiam. Non natus in.\r\nSapiente sed incidunt. Ipsa voluptatem quae...'),
(50, 'Horror', 'Non necessitatibus cum. In sint commodi. Recusandae minima est. Perspiciatis nulla quia; ut doloribus similique.\r\nUnde totam iste. Nisi iusto tempora. Autem fugiat consequuntur. Sed distinctio voluptatem. Maxime neque rerum. Explicabo vel consequatur. Necessitatibus accusantium.');

--
-- Inserting data into table idioma
--
INSERT INTO idioma(ID, Nome) VALUES
(1, 'Malay'),
(2, 'Lao'),
(3, 'Chuvash'),
(4, 'Afrikaans'),
(5, 'Chuvash'),
(6, 'Latvian'),
(7, 'Nepali'),
(8, 'Slovak'),
(9, 'Panjabi'),
(10, 'Maltese');

--
-- Inserting data into table encomenda
--
INSERT INTO encomenda(ID, `Data de entrega`, `Data de envio`, `Data de pagamento`, `Método de pagamento`, Estado, Valor, `Modo de envio`, Cliente, Código) VALUES
(1, '2023-06-11 01:51:14', '2023-05-28 00:00:55', '2023-05-11 20:56:39', 'PayPal', 'Finalizada', 102.38, '0P09Z3X50', 44, NULL),
(2, '2023-06-11 00:00:18', '2023-06-04 04:05:46', '2023-05-01 00:05:20', 'Transferência Bancária', 'Entregue', 48.67, 'TY6H2K0', 29, NULL),
(3, '2023-06-12 02:01:07', '2023-06-10 05:54:47', '2023-05-22 04:45:40', 'Transferência Bancária', 'Entregue', 52.73, 'H', 4, NULL),
(4, '2023-06-20 00:29:20', '2023-06-08 04:21:24', '2023-05-01 00:00:47', 'PayPal', 'Entregue', 30.04, '3Z', 8, NULL),
(5, '2023-06-16 11:16:52', '2023-06-02 00:30:21', '2023-05-01 00:01:34', 'PayPal', 'Enviada', 37.48, '4W4I7EM', 23, '1F8N0V5T2M6V1344PI3EX6L'),
(6, '2023-06-12 11:14:57', '2023-05-30 06:40:07', '2023-05-22 04:47:44', 'PayPal', 'Entregue', 148.24, '000C46C9', 10, NULL),
(7, '2023-06-11 00:00:44', '2023-05-28 00:21:37', '2023-05-01 00:00:09', 'PayPal', 'Finalizada', 43.31, 'C0', 44, NULL),
(8, '2023-06-18 02:13:39', '2023-05-28 00:00:08', '2023-05-01 00:00:39', 'PayPal', 'Enviada', 62.07, 'CJ8MNU94', 6, 'T705H0T18O998465K8Y9'),
(9, '2023-06-20 04:09:40', '2023-06-04 01:54:19', '2023-05-16 15:22:18', 'PayPal', 'Entregue', 107.32, 'T', 42, NULL),
(10, '2023-06-14 06:01:17', '2023-06-04 07:19:08', '2023-05-05 10:56:08', 'PayPal', 'Enviada', 92.45, 'O16', 16, '8U'),
(11, '2023-06-11 00:06:24', '2023-06-10 19:11:54', '2023-05-01 00:00:54', 'Transferência Bancária', 'Finalizada', 91.41, '8', 27, '1F8N0V5T2M6V1344PI3EX6L'),
(12, '2023-06-11 00:07:38', '2023-06-02 03:40:44', '2023-05-19 19:43:12', 'Transferência Bancária', 'Entregue', 196.77, 'EWDMWP5TL8GTXYZHQ17374W8HKY', 6, '3'),
(13, '2023-06-13 16:19:06', '2023-06-09 03:46:38', '2023-05-01 00:01:18', 'PayPal', 'Entregue', 84.37, 'NK6Q', 38, '1F8N0V5T2M6V1344PI3EX6L'),
(14, '2023-06-11 00:07:56', '2023-05-31 21:32:00', '2023-05-01 12:49:15', 'Transferência Bancária', 'Entregue', 8.31, 'Y5X8CF9AWM8Z42UI13ZZ8EF', 29, '3'),
(15, '2023-06-14 04:11:17', '2023-05-28 00:08:59', '2023-05-01 00:01:12', 'Transferência Bancária', 'Enviada', 142.13, '97NV594X8XLE0279EO', 5, 'PP5JI'),
(16, '2023-06-14 03:03:44', '2023-05-28 00:00:02', '2023-05-09 16:06:09', 'Transferência Bancária', 'Finalizada', 183.78, 'J88B4M0GA', 43, 'PP5JI'),
(17, '2023-06-17 20:33:50', '2023-06-05 06:48:21', '2023-05-10 04:31:27', 'Transferência Bancária', 'Entregue', 0.85, 'Y16GG', 40, 'OX1GP80QK7ICP063HA099J'),
(18, '2023-06-11 08:13:07', '2023-06-07 19:24:24', '2023-05-06 11:14:25', 'Transferência Bancária', 'Entregue', 38.4, 'IRH0Q998O', 4, '863S3L5G71J8018K47L63LFI110977UF'),
(19, '2023-06-20 08:09:16', '2023-05-28 00:06:02', '2023-05-19 01:36:11', 'Cartão de Crédito', 'Finalizada', 172.31, 'WB48BN7D8K', 42, '3FG6EG391H6'),
(20, '2023-06-20 00:42:57', '2023-05-28 11:06:42', '2023-05-01 00:00:10', 'Cartão de Crédito', 'Entregue', 3.15, 'YQ59V3707DN', 43, 'T705H0T18O998465K8Y9'),
(21, '2023-06-11 00:00:05', '2023-06-07 06:09:51', '2023-05-10 00:41:08', 'PayPal', 'Entregue', 36.58, '8L9', 5, '85CWN901I03W'),
(22, '2023-06-11 00:09:46', '2023-06-07 04:38:52', '2023-05-02 04:56:22', 'PayPal', 'Entregue', 199.56, 'BP', 14, '863S3L5G71J8018K47L63LFI110977UF'),
(23, '2023-06-11 00:00:09', '2023-05-28 00:00:10', '2023-05-01 00:06:06', 'PayPal', 'Entregue', 8.62, '4MU50CQ8KZ5T1PIQ95O', 1, '1F8N0V5T2M6V1344PI3EX6L'),
(24, '2023-06-14 17:09:30', NULL, '2023-05-16 00:22:05', 'Transferência Bancária', 'Entregue', 172.6, '2YVBMJ8XKEONVT9K00', 1, '3FG6EG391H6'),
(25, '2023-06-11 00:15:51', '2023-05-28 00:40:25', '2023-05-04 18:04:09', 'Transferência Bancária', 'Enviada', 140.53, '5P3I', 37, '863S3L5G71J8018K47L63LFI110977UF'),
(26, '2023-06-16 07:58:04', '2023-06-02 02:19:06', NULL, 'Transferência Bancária', 'Entregue', 125.01, 'M', 33, 'T705H0T18O998465K8Y9'),
(27, '2023-06-16 04:45:37', '2023-05-31 20:52:44', '2023-05-01 00:33:26', 'PayPal', 'Entregue', 86.48, 'Q', 46, '1F8N0V5T2M6V1344PI3EX6L'),
(28, '2023-06-16 10:30:29', '2023-06-08 17:22:42', NULL, 'PayPal', 'Entregue', 69.34, 'PLWFIU3U497T', 19, 'T705H0T18O998465K8Y9'),
(29, '2023-06-11 00:00:09', '2023-05-29 15:23:43', '2023-05-16 17:44:57', 'PayPal', 'Entregue', 25.7, 'Y4', 4, 'OX1GP80QK7ICP063HA099J'),
(30, '2023-06-18 07:45:04', NULL, '2023-05-01 00:01:16', 'Cartão de Crédito', 'Entregue', 178.77, 'LM0ZBG4F3', 23, '1F8N0V5T2M6V1344PI3EX6L'),
(31, '2023-06-15 07:13:19', '2023-05-31 10:06:19', '2023-05-10 21:27:30', 'PayPal', 'Finalizada', 171.42, 'A', 37, '3FG6EG391H6'),
(32, '2023-06-11 00:01:33', '2023-06-02 16:14:52', '2023-05-25 11:33:38', 'Transferência Bancária', 'Entregue', 144.04, 'A', 12, 'PP5JI'),
(33, '2023-06-19 14:17:23', '2023-05-28 00:00:24', '2023-05-03 05:36:25', 'Transferência Bancária', 'Entregue', 95.44, '680SLWJ4P817O5N8', 50, '1F8N0V5T2M6V1344PI3EX6L'),
(34, '2023-06-12 22:00:43', '2023-05-28 00:01:34', '2023-05-23 16:41:48', 'Transferência Bancária', 'Enviada', 167.44, '8SM', 19, '3'),
(35, '2023-06-13 04:40:14', '2023-05-28 00:00:04', '2023-05-22 20:30:11', 'PayPal', 'Enviada', 144.03, '2A', 36, 'PP5JI'),
(36, '2023-06-11 00:01:36', '2023-05-28 00:11:09', '2023-05-02 11:27:06', 'Transferência Bancária', 'Enviada', 66.2, 'HV85QWTG5A374A', 35, '3'),
(37, '2023-06-14 07:55:16', '2023-05-28 02:46:03', '2023-05-21 02:32:47', 'Transferência Bancária', 'Enviada', 28.03, 'KXPFD', 35, 'PP5JI'),
(38, '2023-06-12 13:18:30', '2023-05-28 00:04:22', '2023-05-01 01:35:02', 'PayPal', 'Enviada', 18.75, '0B55U4JEUG71W9V', 6, 'T705H0T18O998465K8Y9'),
(39, '2023-06-11 00:01:07', NULL, NULL, 'PayPal', 'Finalizada', 14.99, '2R24H33Q', 1, 'OX1GP80QK7ICP063HA099J'),
(40, '2023-06-18 21:39:52', NULL, NULL, 'Transferência Bancária', 'Finalizada', 68.82, '5D7E', 16, '85CWN901I03W');

--
-- Inserting data into table livro
--
INSERT INTO livro(ID, `Nº edição`, Sinopse, `Data de publicação`, Título, Preço, ISBN, Formato, Dimensões, `Nº de páginas`, IVA, Desconto, Quantidade, Idioma, Editora) VALUES
(1, 12, 'Quaerat unde perferendis. Iste placeat ut. Omnis eligendi ipsam; quia eos laborum. Aperiam at maiores. Rerum sed rerum. Non fugiat soluta. Nam repellat voluptatem. Deserunt delectus non! Animi aperiam dignissimos.\r\nVoluptate ut nisi; magnam qui veritatis; unde iusto aliquid. Excepturi sit illum...', '2021-07-17', 'The of Tale', 9.3, '85-853914-9-9', 'Hardcover', '0x2x1', 1506, 31, NULL, 32, 2, 1),
(2, 2, 'Unde quia voluptatem, in ex aut eum et illo vel.', '1992-02-29', 'Hunger the Rings of Great Two Alchemist', 16.23, '0-04853-916-3', 'Paperback', '9x2x8', 63, 63, 15, 63, 5, 2),
(3, 21, 'Aliquid eligendi hic. Perspiciatis beatae impedit! Quia porro repellat. Voluptatem vitae impedit; at eligendi distinctio. Earum nihil soluta.\r\nVoluptates voluptatem natus. Laudantium qui sed. Sit voluptas distinctio! Perspiciatis aut non? Ut omnis eligendi. Sit ab odit. Quos doloribus sunt. Voluptas nemo et.', '1987-09-07', 'Wonderland of', 26.28, '88-323346-5-8', 'Hardcover', '3x3x0', 197, 36, 71, 37, 10, 4),
(4, 16, 'Iste libero nesciunt natus quia quae. Reiciendis ut deserunt sit esse nemo. Et pariatur enim rerum unde! Reiciendis nemo provident voluptatem hic recusandae. Ea quis est quibusdam qui dignissimos quo? Non fugit et sapiente impedit quis non laborum rerum. Et sint voluptatem...', '1900-02-28', 'The Bride Gone Runner', 7.41, '92022-40-02-7', 'Paperback', '1x9x1', 1718, 19, 81, 20, 5, 2),
(5, 10, 'Quae animi temporibus. Sit repellendus et. Voluptatum iste deserunt. Autem libero optio. Ipsam dolore aut! Id rem atque.\r\nSit rem iste; ut nihil et. Aut sed voluptas! Ullam magni ab. Et illum impedit! Ab ut labore. Dolorem quia nihil. Deserunt nesciunt beatae. Possimus eum obcaecati.\r\nQuis illum ea...', '1916-07-26', 'Clockwork Man Cristo Finn The', 10.36, '80-523-1903-X', 'Hardcover', '4x6x0', 596, 93, 6, 94, 1, 4),
(6, 16, 'Voluptatem aspernatur amet laudantium repudiandae assumenda aperiam et quas itaque. Harum aut pariatur accusamus, sit autem dolor et suscipit ratione.\r\nError incidunt ut quisquam ut incidunt non. Veniam et molestias eum. Perspiciatis magnam sunt eos! Ut animi eius corporis blanditiis perspiciatis necessitatibus...', '1972-05-14', 'of Hunger Bones Book Tale The Thrones Rye', 12.32, '9302-2-3992-6', 'Paperback', '3x2x2', 1453, 85, NULL, 86, 10, 1),
(7, 14, 'Aut voluptatem esse nulla rerum quos sit vero voluptas deleniti. In possimus quas molestiae neque officia modi qui dicta explicabo.', '1953-01-13', 'Potter 1984 Monte of The', 23.15, '993-233-452-9', 'Paperback', '2x6x9', 272, 51, 1, 52, 10, 4),
(8, 17, 'Voluptate sed et. Deleniti fugit dolorem. Harum veritatis eligendi. In quam sed! Libero aliquam odio. Natus rem cupiditate. Dolores unde doloremque.\r\nUnde dolorem eaque. Delectus perspiciatis qui! Quae debitis dolorem. Doloremque neque quae. Consequatur corporis atque! Quia autem optio.\r\nNemo sit necessitatibus. Quia?', '1940-12-10', 'Huckleberry Tattoo Fahrenheit Rye Girl Rye', 21.12, '92022-40-03-5', 'Hardcover', '2x9x9', 1978, 96, 18, 97, 10, 2),
(9, 7, 'Qui laborum voluptatem doloribus voluptatem omnis ut corporis; eum recusandae voluptatem reprehenderit minima, veniam cumque eius sed eum. Minus itaque veritatis.\r\nVoluptate earum ut. Commodi et magnam. A voluptatem voluptas! Eius molestiae eos. Ut voluptas voluptatem. Velit suscipit fugit; culpa doloribus et.', '1977-04-05', 'with Bees', 40, '85-853915-0-2', 'Paperback', '9x6x2', 1050, 46, 40, 47, 2, 1),
(10, 2, 'Optio sed eius ex consequatur. Repellendus cum natus dolorum ipsum quaerat et quae dolorem. Assumenda nulla aut nisi neque. Sed mollitia obcaecati? Qui consequatur velit atque eos aliquid rerum porro voluptate. Aut quia rerum? Magnam enim atque. Eius voluptas et!', '2004-10-22', 'Pride The Mockingbird Lord Karenina', 10.26, '9152-3-1893-1', 'Hardcover', '5x4x1', 23, 23, 11, 23, 7, 1),
(11, 9, 'Quis at nisi commodi officiis impedit qui quas aut expedita.', '1955-10-01', 'of in Letter The The', 13.65, '90523-19-04-9', 'Hardcover', '1x8x0', 200, 46, 72, 47, 4, 5),
(12, 2, 'Soluta non eos. Consequatur facilis necessitatibus. Voluptatem id quia. Velit non et! Quibusdam amet provident; aut quam qui. Sapiente vitae ut. Hic dolores est. Aperiam cumque excepturi. Voluptatem qui sit!\r\nDeleniti consectetur minus. Dolor et exercitationem. Et iure unde! Natus esse ullam. Quam consectetur velit.\r\n', '1903-12-11', 'Kill Heights Gone The Don Little of', 13.35, '83-022-3993-3', 'Paperback', '1x2x5', 24, 24, 60, 24, 3, 3),
(13, 27, 'Vitae quia natus. Aut sit sint. Ipsa non ea. Iste nihil nemo. Temporibus voluptas cumque! Sed rem obcaecati. Molestias saepe sit! Qui nemo laboriosam. Deserunt quia neque. Odit sed neque.\r\nEt error ut. Error nihil eveniet. Voluptas dolor sed; veritatis voluptatibus ut; in error sed; quia voluptatem assumenda.\r\nVero.', '1925-09-15', 'Notebook of Kill Heights The The The Les The', 18.47, '979-550-189-5', 'Paperback', '7x7x2', 725, 87, 12, 88, 7, 3),
(14, 24, 'Quasi commodi vel. Cupiditate velit iste. Quae sit vero. Incidunt omnis accusantium. Unde beatae et. Tempora similique quo.\r\nEnim ut repudiandae.\r\nNostrum laborum corporis. Tempora voluptas suscipit. Tenetur eius voluptates. Beatae ducimus veritatis. Reiciendis maxime sit. Ut natus quasi. Voluptatem vero sit.', '1900-02-10', 'of and Little', 13.63, '9152-3-1894-X', 'Hardcover', '6x8x6', 1479, 89, NULL, 90, 8, 4),
(15, 9, 'Libero id in iusto corporis consectetur rerum eum.\r\nDebitis obcaecati animi doloribus; dolorem ea ipsam adipisci dolores sed? Omnis sunt sequi aperiam dicta aliquid unde adipisci. Consectetur enim nemo atque dolor unde officia dolore. Repellat omnis possimus. Ut quam dignissimos.', '1900-01-08', 'The Metamorphosis Picture Eyre Punishment', 9.76, '90523-19-05-7', 'Paperback', '5x2x1', 300, 48, 98, 49, 9, 5),
(16, 19, 'Aut delectus aut. Sit consequatur repudiandae. Rerum eaque voluptatem; rem suscipit omnis. Sint pariatur aut.\r\nSit vero amet. Sit obcaecati explicabo. Excepturi sunt quia. Non cumque voluptatem. Aperiam deserunt esse. Ut quis consequatur. Accusamus corporis sit.\r\nEst omnis repudiandae. Ad natus quod; laborum quis.', '1999-10-24', 'The in in Cities Finn and Handmaid''s', 22.97, '9152-3-1895-8', 'Hardcover', '1x6x4', 1541, 89, NULL, 90, 8, 3),
(17, 6, 'Et magni officia. Sit tempore voluptatem. Blanditiis corporis dolores; dolorem dolor autem. Natus ut velit. Accusantium perspiciatis veritatis? Iste sed laborum. Dolor porro et. Consequuntur amet corrupti; perspiciatis est in.\r\nTempore esse aperiam. Harum nulla nobis! Enim quia sequi. At perferendis voluptatibus.\r\n', '1904-04-11', 'Da The The Divine', 39.97, '86-955020-0-7', 'Hardcover', '0x7x9', 953, 68, 5, 69, 5, 2),
(18, 24, 'Ut maxime perspiciatis. Ratione quis amet. Dolores voluptatem corrupti; aliquid nihil dolorem. Quia libero aspernatur. Odio qui aut.\r\nDolores error in; eum rem at. Aut quis dolores. Neque et officiis. Nostrum neque et. Quibusdam labore aut? Nesciunt itaque aliquid. Iste ut eos.\r\nNeque et perspiciatis. Omnis.', '1900-01-01', 'Jungle of a of Lord Punishment', 40, '920-224-004-3', 'Paperback', '9x7x0', 1076, 32, 68, 33, 4, 4),
(19, 15, 'Unde harum sit. Sint nisi velit sunt sed. Ab qui omnis cupiditate totam nisi iste unde quis; qui est sed dolor doloremque temporibus est consequatur non. Earum est nostrum esse sed, illo sequi natus ipsam asperiores? Sit optio totam id a doloribus dicta.', '1997-10-08', 'Gray Moby Fahrenheit Tale to Bones', 38.9, '84-853-9161-6', 'Hardcover', '7x6x9', 795, 52, 10, 53, 10, 3),
(20, 17, 'Cupiditate consequatur quaerat. Repellendus sed officiis. Sit aliquam dolores! Voluptatum in animi. Ullam iste illo. Laborum delectus qui. Magni fuga iure. Sunt ut delectus. Non ut velit.\r\nProvident consequuntur minus. Ipsam esse neque! Eligendi sit labore. Reiciendis est ut! Repudiandae minus est; doloremque...\r\n', '2005-06-05', 'Kite The War Life Two Rings of the Misérables', 28.24, '9585-3-9151-1', 'Paperback', '1x3x4', 1645, 17, 33, 18, 3, 2),
(21, 28, 'Aperiam quia et itaque ut. Sed eligendi velit ut praesentium sint, ut aliquid eveniet tempora. Assumenda omnis perspiciatis. Dolor voluptatem assumenda. Eum eos molestiae; voluptate aut ut. Perspiciatis culpa perspiciatis; voluptatem molestiae molestias. Praesentium sed iste...\r\nEt sit laudantium. Unde perspiciatis.', '1959-12-04', 'Dragon Lovely The The Shining Tattoo', 36.18, '9832-3-3466-7', 'Hardcover', '4x3x0', 5, 5, 98, 5, 6, 2),
(22, 18, 'Velit quisquam doloremque. Praesentium culpa ut; debitis aut quidem. Numquam officiis fuga. Distinctio tenetur quibusdam? At illo ut. Est fuga veritatis.\r\nError eos consequatur. Cumque sunt voluptas. Minus aut vel. Aut exercitationem in. Voluptas qui iste. Nesciunt natus iste. Cum voluptatibus modi! Qui vel.', '2002-03-24', 'Mockingbird', 15.92, '993-233-453-7', 'Paperback', '3x3x2', 384, 80, 55, 81, 9, 3),
(23, 26, 'Eos aperiam rerum; quidem id possimus. Atque sed officia. Quaerat blanditiis nihil. Maiores et voluptatem. Perferendis labore sed; voluptatem expedita sit.\r\nAut eligendi tempora. Iste aut quasi. Amet quia quis. Maiores doloremque totam. Illum omnis quo! Iste provident veniam. Odio voluptatem tempora. Sint!\r\n', '1991-12-27', 'The and Anna Purple The The Help Bell Odyssey', 26.27, '83-022-3994-1', 'Paperback', '2x6x7', 501, 15, 76, 16, 2, 4),
(24, 29, 'Molestiae natus odio. Obcaecati dolor facilis mollitia ut maxime! Aut modi totam aut. Possimus error sed ut. Ut natus eum unde provident et nemo quam consectetur voluptatem. Ea et praesentium, perspiciatis totam quos id aliquam veritatis animi.', '2005-12-13', 'Vinci the with The Prejudice To with', 31.33, '9795-5-0190-9', 'Hardcover', '2x5x2', 997, 1, 6, 2, 2, 2),
(25, 25, 'Vero officiis odit libero enim. Voluptates soluta possimus saepe ut. Laboriosam omnis nisi similique blanditiis qui quia nihil dolorem totam. Magnam sed dolor reprehenderit natus; nisi tenetur nisi voluptatem error neque sit dolor. Molestias est sed. Aut est nihil. Ipsa et numquam? Natus sed quo.', '1939-05-08', 'Prejudice The The Picture Our 1984', 36.48, '9695-5-0201-6', 'Paperback', '9x9x4', 585, 50, NULL, 51, 3, 1),
(26, 19, 'Architecto ea autem; alias placeat dolorem. Quos quas neque; fugiat reprehenderit eum. Quia distinctio expedita; dicta perspiciatis quae.\r\nPerspiciatis magnam fuga. Ut maxime et. Error consequuntur optio!\r\nEst voluptas explicabo. Consequatur numquam harum. Quia et sed. Nam aspernatur iste. At voluptatem rerum! Est.', '1918-07-04', 'of Frankenstein Two Letter Divine Solitude', 9.77, '948-539-162-5', 'Hardcover', '7x1x9', 491, 55, 10, 56, 6, 1),
(27, 26, 'Est consectetur fuga rerum doloremque inventore sunt.\r\nEst mollitia magni at. Unde delectus modi. Aut sit rerum sed temporibus quam; ullam autem accusamus qui aut et vitae numquam aut.\r\nAutem voluptates qui laborum error perferendis enim minima iste natus.', '2003-12-04', 'Eden The Sun Great Tattoo The Eyre', 31.07, '80-523190-6-4', 'Hardcover', '6x9x1', 64, 64, 11, 64, 2, 5),
(28, 23, 'Earum dolores iusto nihil accusantium sequi dolorem; temporibus voluptate rerum error dolor iusto commodi. Distinctio enim nihil molestiae.\r\nAutem quod ducimus nesciunt perspiciatis magni est error. Quaerat debitis consectetur voluptas mollitia sit. Delectus nostrum eum. Officiis eos aut. Expedita unde recusandae.', '1944-03-17', 'of Guide and Dick Crime Thief The The Purple', 6.26, '920-224-005-1', 'Paperback', '9x2x7', 769, 0, 7, 1, 10, 2),
(29, 11, 'Error et accusamus. Ut et perspiciatis.\r\nA odio tempora; adipisci quia ipsum; eligendi similique quia. Eum omnis sit? Suscipit quidem error. Accusantium ut voluptatem.\r\nMinus qui hic. Sit reprehenderit ad! Sit beatae reprehenderit. Cum velit odio. Sequi voluptas perspiciatis! Voluptates et quae.', '1906-11-27', 'To of with Stars Bell The and Also Jungle', 32.49, '0-05853-915-8', 'Hardcover', '2x2x5', 881, 8, 28, 9, 10, 4),
(30, 21, 'Magni reiciendis sequi eligendi. Voluptatem consequatur reprehenderit error est sit dolorem in temporibus! Ad porro accusantium voluptatibus sit, vitae error fugit maxime nam. Similique et est non id reiciendis et sed iste sed. Architecto illo doloribus quisquam inventore ducimus? Nesciunt facere et.', '1924-07-11', '451 Kite', 28.96, '983-233-467-5', 'Paperback', '3x4x6', 241, 77, 99, 78, 8, 1),
(31, 9, 'Quibusdam omnis qui consequatur officiis.\r\nVoluptate doloribus magni. Doloribus ut et dolor. Tempora asperiores officiis perspiciatis nihil sit quam; harum obcaecati totam error adipisci aperiam sit. Provident ipsam natus facere quia non ut nesciunt odio...\r\nOmnis porro quibusdam. Illo omnis perspiciatis. Eaque.', '1952-09-07', 'Prince Game Book The the Thief Mockingbird', 29.21, '87-955-0191-6', 'Hardcover', '3x8x3', 261, 24, 0, 25, 1, 5),
(32, 29, 'Et ut quia sapiente eveniet molestias maxime quod molestiae ullam. Aut dolorum facere laboriosam et sed omnis voluptatem nemo laboriosam.', '1952-01-26', 'Dorian and Two The The Adventures Rings', 23.18, '84-853916-3-2', 'Paperback', '2x4x7', 1528, 92, 95, 93, 8, 3),
(33, 15, 'Assumenda totam aut; praesentium et ex illum quam incidunt ut modi. Mollitia iusto iure tempore natus neque exercitationem maiores culpa. Amet sint voluptatem quod ut ea perspiciatis quisquam perspiciatis a? Unde autem impedit! At in id. Voluptatem nemo iusto; repellat tempora optio. Repellat eaque nostrum...', '1900-01-03', 'Cristo One Old Bride Mockingbird', 40, '0-05853-915-8', 'Hardcover', '0x7x2', 741, 84, 48, 85, 2, 2),
(34, 12, 'Incidunt totam fugiat vel neque doloribus at delectus deserunt numquam. Accusantium vel explicabo ut. In ducimus perspiciatis magnam fugit quia est omnis ut velit. Aut eos debitis, ab dolorum error tempore temporibus id quia.', '1956-12-09', 'Karamazov Catcher', 32.25, '0-03022-399-7', 'Paperback', '8x4x5', 573, 69, 19, 70, 8, 5),
(35, 22, 'Deserunt corrupti mollitia natus incidunt. Deleniti quia aut illo sit nihil aliquam pariatur; eos sit minus qui sit quia, odit dicta deserunt aperiam? Soluta omnis iste!\r\nAperiam est sint. Voluptatem quis dolorem. Beatae enim quas. Ipsam aspernatur unde; incidunt ut laborum.\r\nSit nemo rerum. Enim iusto mollitia.', '1901-05-03', 'and Runner Letter Lord The in Great', 34.17, '0-04853-916-3', 'Hardcover', '9x3x2', 903, 27, 45, 28, 9, 4),
(36, 17, 'Tempora vel fugit obcaecati repellat at rerum sed. Blanditiis amet dolorum.\r\nAliquid sit voluptatem. Molestiae rerum odit! Pariatur id quam.\r\nNihil corrupti deleniti. Quia qui dolores; possimus sed tenetur; expedita quis quidem. Architecto suscipit minus. Quis blanditiis quam. Doloribus est ipsum. Ab aut eum.', '1900-01-08', 'Bones Moby', 6.38, '81-523189-6-5', 'Paperback', '8x5x2', 1679, 86, 18, 87, 9, 4),
(37, 0, 'Tenetur cum modi sint placeat qui animi nostrum. Laudantium perspiciatis enim. Voluptates ab provident illo odio unde temporibus laborum. Sed est error? Sunt ipsa tempora; officia est et. Cum corporis nisi! In ducimus quasi. Vitae nulla omnis. Sed qui sit.\r\n', '2020-09-08', 'The Giver', 13.05, '9932-3-3454-5', 'Paperback', '1x1x7', 1936, 8, 55, 9, 8, 4),
(38, 13, 'Reiciendis ut qui, unde consequatur unde omnis nihil voluptas repellendus. Dicta corporis vero aut sequi debitis voluptate omnis impedit nemo; voluptatibus ea necessitatibus nihil expedita tempora voluptatem consequatur magni sed.', '1914-10-12', 'Great Sawyer', 6.59, '958-539-154-6', 'Hardcover', '9x9x5', 1549, 58, 60, 59, 10, 4),
(39, 13, 'Fugit sit nemo fugit assumenda ut velit ipsam eum. Corrupti iste vitae. Sit vel minima. Nisi quis fugiat.\r\nAliquid magnam quae. Cumque accusamus eveniet. Veritatis ipsa rerum. Ut rerum laudantium. Similique voluptas quia. Voluptatem aut earum. Ad sed rerum? Provident voluptas iure...', '1900-03-13', 'Shining The Wrath Brave Girl Iliad', 30.4, '9832-3-3468-3', 'Hardcover', '0x4x3', 333, 78, 25, 79, 2, 3),
(40, 2, 'Voluptas sit omnis ut est commodi qui eveniet rerum; consequatur velit officia. Laboriosam et commodi vel iste eaque? Qui natus iste et qui atque dolore molestiae odio; rerum voluptatum nobis cum debitis nisi rerum. Voluptatem natus et quisquam qui quia dolor praesentium dolores quod.', '1950-10-07', 'Divine The of', 39.11, '84-853916-5-9', 'Paperback', '9x6x8', 86, 86, 98, 86, 9, 4),
(41, 20, 'Qui corporis molestias beatae est corrupti ut. Error facilis dolorum ut modi eveniet esse.\r\nDolorum est neque. Cupiditate est ab. Praesentium aliquid dolor; eligendi est ut. Omnis ut quidem. Pariatur voluptatem voluptas. Possimus voluptate quos! Minima omnis reprehenderit. Assumenda iste unde...', '1934-11-13', 'of War of the Bees The of Mockingbird', 24.32, '969-550-202-4', 'Paperback', '4x6x4', 498, 85, 55, 86, 8, 2),
(42, 18, 'Harum hic maiores voluptas adipisci; qui nesciunt harum consequuntur quis. Maiores labore quisquam. Tempore odio itaque.\r\nQui repellendus odio ab est illum quam omnis. Iste voluptas ut. Cumque omnis cupiditate. Perspiciatis voluptatem et.\r\nQuidem enim similique; eos enim nostrum. Architecto dignissimos necessitatibus.', '2010-04-26', 'Bride of The Scarlet the Fahrenheit Pride', 4.1, '9795-5-0192-5', 'Hardcover', '5x3x6', 379, 37, 82, 38, 5, 2),
(43, 8, 'Mollitia sit voluptas ut consequatur est enim ut odit. Totam adipisci ut? Omnis quisquam magnam.\r\nRecusandae nemo est; sequi reprehenderit consequuntur. Laudantium perspiciatis omnis! Asperiores architecto at. Quam veniam velit? Deleniti ut distinctio. Voluptatem sed et; doloribus veniam velit; minus et neque.', '1900-01-03', 'The the The Gray Thief Bees To', 10.38, '905-231-907-3', 'Hardcover', '8x6x9', 1158, 88, 93, 89, 10, 2),
(44, 20, 'Quia suscipit neque ut adipisci doloremque vitae. Debitis fugiat dolorum? Rerum beatae eius tenetur voluptatem libero necessitatibus. Iste ex at natus quidem quibusdam aut animi. Omnis architecto labore quas eveniet earum nihil sunt consequatur! Sed eaque quo.\r\nVeniam sequi sunt.', '1900-03-05', 'A a Mockingbird', 16.91, '99323-34-55-3', 'Paperback', '8x8x9', 1947, 62, 75, 63, 9, 3),
(45, 2, 'Quod dolores voluptas; alias dignissimos consequuntur sit ipsum animi quibusdam ab ut rerum. Molestiae officiis voluptas. Ipsam eum perspiciatis. Similique omnis beatae.\r\nVeniam quo et.\r\nQuia ipsum autem. Rerum quo sequi. Voluptas aut magni. Tempore praesentium delectus. Eius quod est.', '1942-11-17', 'with Thief Kill', 31.18, '983-233-469-1', 'Hardcover', '1x6x4', 614, 75, 54, 76, 1, 4),
(46, 9, 'Dignissimos dolor voluptatum. Consequatur et tempore? Voluptates natus et.\r\nUt iure ut. Eum quis officia? Nulla dolorem voluptate; est et enim. Distinctio eaque consequuntur. Eaque repellat cupiditate; praesentium distinctio ut. Sunt ab ipsum.\r\nCulpa est dignissimos. Non quia voluptatibus. Ratione error ratione.', '1900-04-06', 'Ulysses Great Prejudice Hundred Tales Rises', 17.62, '0-05853-915-8', 'Paperback', '6x1x6', 60, 41, 24, 42, 2, 2),
(47, 0, 'Et cum possimus. Error suscipit sequi! Et modi minus? Ut sed rem! Repudiandae vitae corrupti. Quidem ut cumque; repudiandae facere in. Dignissimos vel autem. Doloremque explicabo aut. Voluptates enim amet.\r\nEa eius nesciunt.\r\nQuas aspernatur aperiam. Quibusdam in libero; saepe sit iure; ut dolor cumque. Accusamus.', '1911-09-08', 'Bones The Maze a', 15.16, '96955-02-03-2', 'Hardcover', '8x7x2', 994, 43, 74, 44, 8, 5),
(48, 5, 'Dolorem labore qui ut aut, sapiente magni earum a id.', '2004-04-30', 'Code of', 32.69, '0-07955-019-3', 'Paperback', '0x9x9', 602, 49, 21, 50, 4, 4),
(49, 27, 'Quis harum deserunt. Quia accusantium natus? Ut rerum maxime! Error voluptatem adipisci. Commodi sit iste. Earum velit doloremque; ut rem labore.\r\nOfficiis rerum ipsum. Quia unde velit. Qui mollitia et. Voluptatem deserunt enim; quia tempora est. Ut saepe minus? Dolore sed minus. Quas aut reprehenderit. Obcaecati.', '1911-04-09', 'The Flies The Tale Misérables with', 40, '993-233-456-1', 'Paperback', '6x0x3', 1515, 22, 83, 23, 4, 2),
(50, 28, 'Maiores rem eveniet ipsum. Omnis ex et ut ea esse quasi repellendus enim. Sed omnis quo dolores; voluptatibus vel harum explicabo. Natus id sed. Hic eum alias dolorum delectus. Repellendus nesciunt vel dolorem perspiciatis esse perspiciatis dolore! Laboriosam non quia?', '1900-03-02', 'Code Rings Rings Maze of Prejudice The', 35.41, '969-550-204-0', 'Hardcover', '3x8x7', 435, 43, 36, 44, 3, 3);

--
-- Inserting data into table autorlivro
--
INSERT INTO autorlivro(Autor, Livro) VALUES
(24, 36),
(10, 49),
(11, 27),
(18, 47),
(24, 11),
(9, 20),
(13, 45),
(29, 42),
(27, 37),
(10, 48),
(33, 50),
(9, 43),
(11, 38),
(12, 15),
(24, 46),
(23, 21),
(16, 6),
(18, 16),
(33, 33),
(33, 28),
(13, 44),
(2, 1),
(6, 7),
(12, 23),
(23, 29),
(11, 22),
(21, 24),
(27, 39),
(17, 2),
(22, 17),
(15, 12),
(25, 30),
(18, 18),
(35, 25),
(14, 13),
(6, 34),
(9, 19),
(29, 40),
(33, 14),
(1, 35),
(28, 31),
(12, 41),
(8, 8),
(20, 26),
(5, 3),
(18, 9),
(34, 32),
(11, 4),
(32, 10),
(7, 5);

--
-- Inserting data into table clientemoradas
--
INSERT INTO clientemoradas(ClienteID, `Morada de envio`, `Morada de faturação`) VALUES
(50, '1821 Mountain Ct', '621 Prospect Hill Dr'),
(44, '101 Meadowview Pkwy', '2892 White Hunting Hill Blvd'),
(6, '581 SW Fox Hill Cir', '3710 Riverside Avenue'),
(1, '486 Highland Dr', '588 SW Ski Hill Cir'),
(39, '2876 West Ashwood Ln', '2033 North Cedar Tree Lane'),
(34, '54 West Quailwood Avenue', '3021 Hunting Hill Pkwy'),
(32, '145 SW Deepwood Hwy', '3042 Beachwood Ct'),
(47, '941 Market Dr', '1963 West Brentwood Hwy'),
(7, '3796 1st Ct', '27 SW Hunting Hill Circle'),
(14, '3091 Fox Hill Way', '126 Brentwood Parkway'),
(45, '31 SW Riverview Hwy', '55 Hidden Parkwood Road'),
(40, '3937 Hunting Hill Avenue', '681 SW Waterview Parkway'),
(48, '1698 White Hunting Hill Ct', '2046 Front Lane'),
(27, '1146 Rose Hill Avenue', '806 E Riverview Way'),
(46, '2935 Cedar Tree Highway', '3942 Hazelwood Ct'),
(35, '1207 W Social Ct', '1467 North Rose Hill Pkwy'),
(2, '501 Old Rose Hill Hwy', '46 W Front Circle'),
(41, '521 SW Flintwood Pkwy', '866 2nd Loop'),
(20, '3062 Hunting Hill Pkwy', '3963 Old Stonewood Parkway'),
(36, '3948 East Parkwood Lane', '11 3rd St'),
(8, '85 N Ironwood Hwy', '816 Rose Hill Loop'),
(33, '690 East Riverview St', '983 Old Sharp Hill Highway'),
(3, '3008 W Hunting Hill Street', '294 S Social Way'),
(9, '53 Quailwood Loop', '3397 Glenwood Dr'),
(4, '3746 South Rose Hill Dr', '1727 Oak Highway'),
(49, '100 Flintwood Ct', '547 West Social Ln'),
(15, '27 Buttonwood Pkwy', '2389 North Brentwood Ct'),
(10, '428 SW Town Highway', '923 Beachwood Ct'),
(28, '16 Mountain St', '2553 SW Rock Hill Parkway'),
(23, '251 SW Woodrow Highway', '22 Woodland Ln'),
(42, '194 Red Mount Pkwy', '995 W Buttonwood Dr'),
(37, '2358 Fox Hill Ln', '2195 Chapel Hill Ln'),
(5, '135 Edgewood Rd', '10 Bayview Ave'),
(11, '681 Mount Lane', '48 1st Road'),
(21, '913 East Woodrow Way', '1143 West Ironwood Blvd'),
(43, '663 Glenwood Dr', '493 SW Cedar Tree Avenue'),
(29, '371 Brentwood Parkway', '705 Red Highland Way'),
(16, '2724 New Glenwood Dr', '933 Old Rose Hill Highway'),
(24, '2472 White Pine Tree Way', '2139 NE Pine Tree Lane'),
(22, '1155 Beachwood Court', '3307 3rd Blvd'),
(30, '235 Brentwood St', '2335 NW Deepwood Way'),
(25, '1695 Waterview Avenue', '2956 Meadowview Hwy'),
(38, '582 New Edgewood Rd', '2219 Brentwood Ct'),
(31, '989 Quailwood Ct', '3315 NE Brentwood Hwy'),
(17, '3490 S Riverside Street', '607 Hope Parkway'),
(26, '2614 Highland Ct', '18 Mountain Cir'),
(12, '209 Old Hunting Hill Highway', '2871 Red Burwood Circle'),
(18, '2203 Old Rose Hill Lane', '2832 E Oak Parkway'),
(13, '1593 Old Market Loop', '412 NW Farmview Loop'),
(19, '1251 SW Hope Court', '1993 North Fox Hill Parkway');

--
-- Inserting data into table encomendalivro
--
INSERT INTO encomendalivro(Encomenda, Livro, Quantidade) VALUES
(1, 22, 20),
(2, 44, 12),
(3, 25, 38),
(4, 22, 35),
(5, 46, 38),
(6, 7, 47),
(7, 29, 24),
(8, 47, 7),
(9, 8, 8),
(10, 42, 49),
(11, 20, 36),
(12, 7, 35),
(13, 44, 20),
(14, 46, 50),
(15, 13, 22),
(16, 20, 50),
(17, 46, 34),
(18, 12, 9),
(19, 46, 19),
(20, 31, 40),
(21, 43, 40),
(22, 37, 43),
(23, 37, 16),
(24, 23, 23),
(25, 31, 47),
(26, 10, 8),
(27, 9, 32),
(28, 32, 22),
(29, 15, 23),
(30, 37, 1),
(31, 7, 39),
(32, 32, 43),
(33, 19, 22),
(34, 24, 48),
(35, 37, 39),
(36, 8, 15),
(37, 1, 33),
(38, 47, 39),
(39, 17, 5),
(40, 34, 33),
(1, 15, 39),
(2, 5, 1),
(3, 1, 26),
(4, 50, 10),
(5, 23, 11),
(6, 12, 20),
(7, 39, 50),
(8, 40, 23),
(9, 3, 25),
(10, 20, 35);

--
-- Inserting data into table especialização
--
INSERT INTO especialização(Género, Fornecedor) VALUES
(45, 5),
(15, 1),
(34, 6),
(1, 2),
(28, 10),
(25, 7),
(49, 3),
(32, 8),
(35, 4),
(23, 9);

--
-- Inserting data into table fornecedorlivro
--
INSERT INTO fornecedorlivro(ID, Livro, Fornecedor, Valor, Data, Quantidade) VALUES
(1, 50, 9, 9830.26, '2020-10-16', 1),
(2, 31, 5, 6393.53, '2020-01-02', 2),
(3, 46, 10, 3773.8, '2022-05-11', 3),
(4, 26, 3, 289.57, '2021-07-12', 4),
(5, 49, 9, 9800.49, '2020-09-02', 5),
(6, 32, 5, 465.22, '2020-03-26', 6),
(7, 47, 9, 39.9, '2022-03-02', 7),
(8, 27, 1, 6513.94, '2020-04-25', 8),
(9, 18, 8, 992.78, '2020-01-04', 9),
(10, 5, 2, 2896.17, '2020-04-19', 10),
(11, 33, 4, 3320.81, '2021-09-14', 11),
(12, 11, 8, 2213.52, '2021-11-07', 12),
(13, 13, 1, 8288.56, '2021-08-12', 13),
(14, 6, 8, 5935.76, '2022-03-21', 14),
(15, 28, 2, 3446.12, '2020-12-11', 15),
(16, 45, 4, 3574.86, '2020-11-12', 16),
(17, 1, 8, 808.62, '2022-12-28', 17),
(18, 41, 10, 7771.95, '2021-03-12', 18),
(19, 7, 3, 7746.01, '2022-03-28', 19),
(20, 48, 5, 833.83, '2020-04-13', 20),
(21, 2, 9, 8361.8, '2021-09-07', 21),
(22, 19, 6, 15, '2020-03-20', 22),
(23, 23, 5, 2653.88, '2020-04-07', 23),
(24, 8, 4, 8680.46, '2020-01-02', 24),
(25, 3, 9, 273.36, '2021-12-30', 25),
(26, 14, 8, 565.94, '2021-08-18', 26),
(27, 29, 1, 770.12, '2020-10-19', 27),
(28, 36, 6, 0.45, '2022-11-20', 28),
(29, 9, 5, 8261.69, '2022-01-30', 29),
(30, 4, 7, 8468.8, '2021-06-29', 30),
(31, 20, 4, 685.05, '2020-01-08', 31),
(32, 24, 7, 9521.96, '2020-01-04', 32),
(33, 30, 9, 7870.58, '2020-03-22', 33),
(34, 25, 6, 9634.45, '2021-10-04', 34),
(35, 42, 10, 956.7, '2023-05-05', 35),
(36, 10, 5, 5897.61, '2020-03-10', 36),
(37, 37, 7, 8.5, '2020-08-10', 37),
(38, 43, 3, 336.87, '2023-04-26', 38),
(39, 15, 8, 6857.6, '2020-12-18', 39),
(40, 38, 8, 7.66, '2020-12-25', 40),
(41, 21, 8, 3090.52, '2020-01-04', 41),
(42, 44, 6, 3809.19, '2020-04-02', 42),
(43, 39, 5, 128.03, '2020-09-17', 43),
(44, 34, 9, 9151.96, '2022-07-21', 44),
(45, 40, 8, 8874.46, '2020-02-12', 45),
(46, 16, 9, 902.73, '2023-04-20', 46),
(47, 35, 7, 7546.66, '2022-01-17', 47),
(48, 22, 8, 3970.53, '2022-04-06', 48),
(49, 17, 7, 1847.67, '2020-06-19', 49),
(50, 12, 7, 637.7, '2022-02-12', 50);

--
-- Inserting data into table génerolivro
--
INSERT INTO génerolivro(Livro, Género) VALUES
(2, 39),
(31, 15),
(8, 14),
(26, 25),
(49, 44),
(32, 16),
(50, 27),
(47, 26),
(45, 48),
(37, 40),
(17, 23),
(48, 49),
(3, 25),
(46, 29),
(43, 6),
(12, 42),
(27, 31),
(9, 22),
(18, 31),
(4, 32),
(33, 9),
(13, 10),
(10, 3),
(5, 36),
(38, 44),
(11, 49),
(28, 8),
(23, 13),
(19, 40),
(6, 19),
(1, 37),
(29, 2),
(7, 49),
(24, 47),
(14, 12),
(20, 10),
(44, 35),
(39, 23),
(15, 1),
(21, 36),
(30, 28),
(34, 40),
(16, 31),
(40, 1),
(25, 14),
(35, 11),
(41, 33),
(36, 22),
(42, 49),
(22, 17);

--
-- Inserting data into table review
--
INSERT INTO review(ID, Cliente, Livro, Visibilidade, Conteúdo, Data, Avaliação) VALUES
(1, 31, 6, 'Público', 'Commodi obcaecati sed. Quis quisquam omnis. Corporis assumenda doloribus! Cumque vel possimus. Est et consequatur! Ut est ad? Perspiciatis laboriosam.', '2020-01-11 19:53:00', '4'),
(2, 6, 29, 'Público', 'Velit commodi repellendus. Sint est vitae? Praesentium ipsum sed. Eum quisquam quas. Voluptates perspiciatis nesciunt! Illum eum voluptatem...\r\nQuia adipisci.\r\n', '2023-01-10 14:25:22', '3'),
(3, 24, 15, 'Público', 'Est amet similique. Enim et placeat. Voluptate aut corporis. Totam voluptatem error; iusto ducimus rerum.\r\nError qui et. Alias maxime doloremque. Qui saepe.', '2023-01-23 12:37:02', '5'),
(4, 32, 29, 'Público', 'Debitis illum nulla.\r\nAd ipsum ut. Sunt aliquid qui. Quidem sint cumque. Iste reiciendis et? Id obcaecati est! Similique laudantium quis. Voluptatibus eius.\r\n', '2020-04-28 04:38:38', '3'),
(5, 49, 9, 'Público', 'Est enim odio quisquam vel voluptatem molestias distinctio eius voluptatem.', '2022-12-05 00:19:32', '4'),
(6, 31, 7, 'Público', 'Rerum ad sit omnis cupiditate sit sint velit repudiandae vel.', '2021-09-15 01:21:48', '1'),
(7, 38, 33, 'Privado', 'Doloremque et accusamus. Qui sint sit! Et fugit placeat. Facilis sequi itaque! Quasi fugit voluptatem. Voluptatem numquam saepe. Facilis iste officia.\r\n', '2023-04-30 01:51:58', '1'),
(8, 15, 28, 'Público', 'Itaque aliquam nam. Doloribus vero dolorem. Quod qui sed. Eos error qui; doloremque numquam accusantium? Voluptas nihil quaerat; voluptatem minima non. Aut!', '2021-04-29 08:20:31', '4'),
(9, 34, 25, 'Público', 'Dolores possimus odit. Vel illo voluptatem? Sit laborum sit! Vitae eos iusto.\r\nVoluptas quas dicta. Rerum delectus hic. Quasi sint quae. Cum nostrum itaque.\r\n', '2020-01-01 00:00:03', '4'),
(10, 25, 11, 'Público', 'Laudantium error cum. A natus nihil. Obcaecati et numquam. Qui quod et. Iste eveniet est. Perferendis fugiat earum! Commodi sint quod...\r\nInventore voluptatibus.', '2023-02-26 09:50:22', '4'),
(11, 7, 33, 'Público', 'Voluptatibus voluptatem omnis. Est et culpa? Delectus placeat et. Commodi qui expedita. Cumque excepturi quidem. Accusamus quis non. Libero dolor sed.\r\nAut.\r\n', '2021-05-05 14:29:42', '5'),
(12, 24, 19, 'Privado', 'Est et perspiciatis. Hic veniam nihil. Sunt odit rem! Omnis deserunt sunt. Repudiandae eum nobis.\r\nDolores quis error. Tempora necessitatibus laborum. Vitae!\r\n', '2022-07-14 20:45:36', '4'),
(13, 35, 4, 'Privado', 'Enim amet aut. Officiis veritatis cumque. Eaque ad corporis. Necessitatibus vero voluptatibus!\r\nCommodi quasi nostrum. Dolore sapiente nulla! Nesciunt ipsa.\r\n', '2021-08-02 19:13:29', '3'),
(14, 31, 10, 'Privado', 'Ipsam illum non. Similique perferendis iusto? Qui ducimus optio!\r\nSequi tempora sit. Voluptatem amet officia. Esse est omnis; ducimus modi excepturi.\r\n', '2023-02-22 01:09:51', '2'),
(15, 44, 33, 'Privado', 'Non quibusdam nemo est. Iusto et deserunt accusamus facere tempore beatae esse est perspiciatis. Non vel enim voluptatem est!', '2021-10-22 00:18:36', '2'),
(16, 19, 13, 'Privado', 'Soluta odit libero; iste totam consequatur. Quo necessitatibus asperiores. Autem laboriosam et? Pariatur adipisci sint. Consequatur omnis aliquid...\r\nLabore ut;', '2020-09-13 01:29:08', '4'),
(17, 31, 42, 'Privado', 'Est et omnis. Qui quos voluptatem. Pariatur ducimus fuga! Sit ut qui. Natus tempore natus; ad laboriosam consequatur. Ut est maxime. Dolor debitis quis. Natus!', '2020-01-24 15:42:28', '5'),
(18, 6, 32, 'Privado', 'Alias tempora sed. Reprehenderit maiores perspiciatis. Ipsam commodi dolor. Dolore dolor sed. Vel unde pariatur. Repellendus ducimus soluta. Laborum fugiat.\r\n', '2020-04-01 13:34:59', '3'),
(19, 10, 46, 'Privado', 'Similique ut quod. Et harum et; nulla similique cupiditate. Eos a sed? Consequatur sed cupiditate. Qui nisi natus.\r\nNumquam minima ut. Saepe doloremque quis.\r\n', '2020-02-13 09:04:52', '4'),
(20, 25, 48, 'Privado', 'Dicta expedita libero; perspiciatis quia minus. Ea eos dolorem. Dignissimos dolorum sequi! Omnis animi magnam. Porro dolor molestias. Nam facilis error.\r\n', '2020-07-04 07:40:54', '3'),
(21, 7, 3, 'Privado', 'Quis nostrum incidunt. Sed iste non. Sed doloremque consequatur. Adipisci ut vero. Non quas iste...\r\nUt corporis numquam. Blanditiis recusandae ipsa! Neque.', '2021-03-26 08:23:27', '4'),
(22, 28, 50, 'Privado', 'Dolores est eos. Dolorem voluptatem labore. Ut illum est. Voluptates mollitia voluptatem! Beatae et dolorem. Numquam ipsum dicta. Cumque et reprehenderit.\r\n', '2021-08-16 01:05:51', '5'),
(23, 29, 41, 'Privado', 'Dignissimos unde voluptatum veritatis. Consequuntur non sunt distinctio velit omnis et blanditiis odio. Reprehenderit autem aliquid quidem cumque sequi...', '2020-01-13 15:36:01', '2'),
(24, 38, 23, 'Público', 'Earum laudantium natus vel. Nisi et recusandae veniam consequatur consectetur aut. Voluptas eum ratione ullam. Laborum et velit dolorem ut odio eaque rerum ut.', '2020-01-01 00:16:40', '4'),
(25, 43, 7, 'Público', 'Explicabo dolores sit. Tempore ratione sunt.\r\nEveniet ut similique. Et omnis architecto? Ratione vel unde. Expedita minima dolor; quae cum et. Qui explicabo.\r\n', '2020-01-01 00:01:37', '3'),
(26, 43, 19, 'Público', 'Sed eligendi non velit voluptatum ipsa iure natus adipisci. Qui saepe sunt! Voluptates non perspiciatis. Et iste voluptatem. Vel ut quia...', '2021-07-29 05:07:02', '5'),
(27, 33, 26, 'Público', 'Aliquid aliquam laboriosam. Vel est eum? Rerum vel explicabo. Dolor reprehenderit vel. Doloremque et doloribus; omnis praesentium velit. Rem dolor ea. Totam!', '2020-01-01 00:00:58', '5'),
(28, 27, 38, 'Privado', 'At delectus praesentium. Sit error dignissimos! Assumenda aperiam perspiciatis. Tempore error sit. Sit dolore voluptatem. Natus iste perspiciatis.\r\nDolor aut.', '2020-01-01 00:20:22', '5'),
(29, 14, 11, 'Público', 'Voluptas iste ab. Ea nemo dolorem. Harum qui quisquam; impedit omnis voluptas? Minima sit unde!\r\nPerspiciatis aut voluptatibus; dolore cum sint. Incidunt.\r\n', '2023-03-02 05:13:52', '4'),
(30, 19, 40, 'Público', 'Sit veritatis omnis et error. Omnis commodi vel sunt omnis quod culpa.\r\nModi voluptates totam. Autem labore unde! Ut perspiciatis itaque...', '2020-01-01 01:04:28', '2');