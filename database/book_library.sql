-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 19, 2023 at 11:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_count` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `thumbnail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revision_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `latest_release_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_release_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `page_count`, `quantity`, `thumbnail`, `revision_number`, `description`, `latest_release_date`, `first_release_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Aliyah Roob', 'Santino Pagac', 320, 26, NULL, '230', 'Laboriosam repudiandae occaecati quae rem dolor velit alias eius. Minus corporis quaerat ad officiis. Velit corporis rerum accusamus eius ex saepe qui.', '2008-07-18', '1995-06-22', NULL, '2023-11-17 17:59:36', '2023-11-17 17:59:36'),
(2, 'Hilda Bednar', 'Dee Dicki', 357, 30, NULL, '212', 'Atque consequatur distinctio corporis iste vel dolor deleniti. Placeat dignissimos accusantium dignissimos aliquam quia. Et ipsam laboriosam itaque ad. Consequatur non autem beatae aliquid.', '1984-12-13', '2001-09-19', NULL, '2023-11-17 17:59:36', '2023-11-17 17:59:36'),
(3, 'Scot Stoltenberg', 'Macey Abbott', 128, 38, NULL, '123', 'Ut ut voluptatum asperiores et voluptatem. Illo repellat cum earum voluptas. Voluptas aspernatur expedita vero voluptas eveniet enim.', '1997-08-07', '2023-02-16', NULL, '2023-11-17 17:59:36', '2023-11-17 17:59:36'),
(4, 'Mr. Greyson Hane', 'Candelario Ruecker', 275, 39, NULL, '231', 'Nemo vero corrupti laboriosam non quo harum id. Blanditiis minima quia quidem inventore vero et magnam. Molestiae cumque magnam molestiae culpa illo et.', '1988-11-27', '2018-07-15', NULL, '2023-11-17 17:59:37', '2023-11-17 17:59:37'),
(5, 'Dr. Maci Kuhn II', 'Ally Howell', 236, 34, NULL, '223', 'Mollitia officiis aliquid quas. A maxime eveniet blanditiis distinctio et possimus voluptas. Consequuntur deleniti quaerat eos quam. Quidem dolorem ex et.', '1991-12-26', '1974-07-30', NULL, '2023-11-17 17:59:37', '2023-11-17 17:59:37'),
(6, 'Prof. Dwight Towne Jr.', 'Russ Luettgen IV', 313, 30, NULL, '283', 'Doloremque dolorum culpa quibusdam temporibus facere aut iure. Saepe aut aliquid hic.', '2001-03-01', '2021-01-15', NULL, '2023-11-17 17:59:37', '2023-11-17 17:59:37'),
(7, 'Concepcion Kling', 'Eldon Harvey', 329, 37, NULL, '264', 'Quo tempore recusandae consequatur velit aut dolorem et. Repellat architecto sit fugiat rerum aut deserunt fugiat. Vero autem eveniet hic animi officiis maiores.', '2007-02-27', '1997-09-16', NULL, '2023-11-17 17:59:37', '2023-11-17 17:59:37'),
(8, 'Leopoldo Towne', 'Molly Streich', 259, 27, NULL, '197', 'Magnam assumenda alias dolorum unde. Illo est aliquam voluptate vero aperiam voluptate. Quaerat libero voluptatem aperiam voluptatum cum eos. Magnam error vitae eos ut quibusdam enim neque.', '1989-08-07', '1992-08-08', NULL, '2023-11-17 17:59:37', '2023-11-17 17:59:37'),
(9, 'Prof. Maude Schimmel', 'Derick Lemke', 102, 25, NULL, '257', 'Omnis minima porro exercitationem sed nihil sapiente libero. Doloremque qui voluptas quibusdam perferendis mollitia. Quam et quaerat laudantium ea non. Quod quibusdam iste maiores assumenda debitis.', '1985-04-10', '1981-09-10', NULL, '2023-11-17 17:59:37', '2023-11-17 17:59:37'),
(10, 'Lesly Powlowski', 'Abdullah Swaniawski', 181, 31, NULL, '102', 'Repellendus voluptates doloribus officiis qui. Distinctio eos iste eum tenetur dolore voluptatem.', '2010-06-21', '2018-10-06', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(11, 'Marcus Glover', 'Giovanny Bauch', 121, 40, NULL, '149', 'In ad incidunt culpa ut facere aperiam. A ad rem quia ratione labore est ex.', '2003-08-18', '2014-11-10', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(12, 'Mohamed Casper', 'Marlene Howe V', 335, 32, NULL, '266', 'Ipsam nihil sint quia molestiae fugiat placeat. Eius ipsa neque tempora cumque. Alias dolores hic quis. Et facilis cupiditate in eaque repudiandae laudantium.', '2005-04-02', '1996-05-26', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(13, 'Elizabeth Heaney', 'Jennie Dibbert', 146, 30, NULL, '119', 'Ut ut ipsam optio tempora incidunt dolor. Veniam aut sequi animi rem. Quasi ut commodi explicabo. Et ea aut sunt natus minima necessitatibus consequatur.', '2012-09-18', '1979-08-19', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(14, 'Damion Altenwerth', 'Giovani Kihn', 391, 33, NULL, '182', 'Molestias qui et aut voluptatem voluptate. Fuga eius deleniti voluptas odio. Esse a quia qui illo. In quia alias voluptates et qui.', '2023-08-11', '1980-09-29', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(15, 'Lexus Miller PhD', 'Dr. Everett Dibbert', 389, 37, NULL, '239', 'Qui ab quia expedita atque voluptas recusandae sit velit. Architecto sit sequi sed voluptatem molestiae a.', '1974-02-13', '1999-10-06', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(16, 'Dr. Carmine Schulist II', 'Dr. Kennedy Schoen', 138, 27, NULL, '233', 'Et deleniti magni nostrum exercitationem hic tenetur quisquam. A deserunt repellat et nostrum eaque sit. Qui sed voluptas saepe esse. Ut unde quod earum quaerat sunt nemo.', '1971-03-26', '1995-07-01', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(17, 'Dr. Annabell Barton', 'Raoul Yost DDS', 379, 35, NULL, '269', 'Sunt ab aut voluptate iusto. Possimus quis aut dolorum consequatur. Pariatur natus sapiente dolorum praesentium. Reiciendis magnam architecto vel dolor quod qui et quia.', '2016-08-05', '2001-07-19', NULL, '2023-11-17 17:59:38', '2023-11-17 17:59:38'),
(18, 'Sibyl Price', 'Mark Mayer', 192, 37, NULL, '226', 'Itaque aut voluptatem porro ad sequi. Ullam fuga ad non autem.', '2018-06-27', '2006-06-14', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(19, 'Jennyfer Collier', 'Lia Franecki', 164, 39, NULL, '209', 'Asperiores et accusamus qui ratione error est. Unde doloremque optio minima et eaque omnis. Ea cumque velit dolorem eum fugiat qui sunt in.', '1976-05-23', '1987-10-11', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(20, 'Laney Terry PhD', 'Kamron Bosco', 113, 32, NULL, '291', 'Eum doloremque doloribus aliquid explicabo qui. Repudiandae tempora at in nihil ab necessitatibus at. Vel minus fugit dolorem quia blanditiis dolores. Veritatis neque debitis neque tenetur.', '2012-05-23', '1998-11-21', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(21, 'Citlalli Mueller', 'Jennyfer Collier', 144, 36, NULL, '271', 'Dicta cupiditate odit eligendi eveniet officiis eveniet a. Eveniet magni beatae expedita rerum et quam harum. Ut repudiandae et unde et. Laboriosam atque tempore sit vel quos voluptatibus natus.', '1982-10-20', '2000-04-19', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(22, 'Dr. Justen Paucek I', 'Johnathan Feest', 260, 39, NULL, '145', 'Non ad et accusamus dolores. Veniam dignissimos quo et iusto qui laudantium voluptatem atque. Aut et voluptas rerum sed dolor nisi quam. Ut facilis molestiae veritatis fuga quae rerum.', '1981-02-27', '2005-12-07', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(23, 'Ms. Yasmeen Swaniawski', 'Maryjane Barton III', 199, 22, NULL, '173', 'Quo voluptas voluptatibus omnis dolore eos. Cum ut qui perspiciatis distinctio dolorem assumenda accusantium adipisci. Accusamus tempora voluptas voluptas dolor unde.', '2005-04-26', '1984-01-30', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(24, 'Gregg Renner I', 'Mathilde Skiles IV', 250, 22, NULL, '140', 'A porro molestias qui voluptates. Qui neque non tenetur et voluptatem. Quos veritatis temporibus suscipit omnis odit numquam.', '2008-11-17', '2004-04-06', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(25, 'Judy Schultz', 'Dewitt Gutkowski', 257, 34, NULL, '170', 'Quis aut maiores ut. Nisi quaerat in est autem nihil dolorem. Voluptatibus quaerat debitis asperiores consequatur autem suscipit et sit. Nihil rerum provident et facilis.', '1981-01-16', '2001-12-06', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(26, 'Jason Lehner', 'Hyman Runolfsson', 136, 35, NULL, '257', 'Dolor rerum dolore aut voluptatum tempora porro dicta. Rerum unde omnis optio sed sit. Ab pariatur ut autem maxime et aut quas. Consequatur aspernatur nemo sequi optio et beatae.', '1986-06-19', '1993-06-06', NULL, '2023-11-17 17:59:39', '2023-11-17 17:59:39'),
(27, 'Ms. Megane Schinner', 'Jayde Zboncak', 366, 33, NULL, '160', 'Eligendi vitae et eum nesciunt ipsum voluptas libero. Doloremque sequi quas sed quia amet qui eum. Eveniet nostrum eaque est nihil cumque. Alias et impedit at sunt tenetur. Quia totam officiis ea.', '2014-07-25', '2015-07-26', NULL, '2023-11-17 17:59:40', '2023-11-17 17:59:40'),
(28, 'Chris Dickens', 'Bernita Cremin IV', 199, 25, NULL, '224', 'Velit eaque et in eligendi at provident accusamus autem. Vel dicta voluptas non et et omnis officiis in. Ut et fugit dolor aut odit.', '1987-03-14', '2020-09-24', NULL, '2023-11-17 17:59:40', '2023-11-17 17:59:40'),
(29, 'Nico Berge MD', 'Coty Beier', 338, 34, NULL, '100', 'Aut est doloremque repellat beatae quam est. Repellat voluptatem rem aspernatur qui voluptate. Pariatur voluptatem ipsa non minima.', '2001-04-19', '1997-04-21', NULL, '2023-11-17 17:59:40', '2023-11-17 17:59:40'),
(30, 'Unknow Title', 'Unknown Author', NULL, 22, NULL, '270', NULL, '2023-07-22', '1984-09-16', '2023-11-19 02:46:07', '2023-11-17 17:59:40', '2023-11-19 02:46:07'),
(31, 'Hollie Muller', 'Ms. Bridget Champlin II', 389, 40, NULL, '246', 'Et officia eaque et quis accusantium quod. Qui quia labore doloribus aspernatur. Sint provident ut eius repellendus quia.', '1986-04-29', '2010-08-05', NULL, '2023-11-17 17:59:40', '2023-11-17 17:59:40'),
(32, 'Ms. Cynthia Schmeler', 'Brenda Marks', 159, 35, NULL, '140', 'Qui omnis voluptas atque quam consequatur aperiam natus. Aliquid reiciendis ut suscipit. Quidem autem dolore aspernatur nemo.', '2019-08-29', '2012-10-16', NULL, '2023-11-17 17:59:40', '2023-11-17 17:59:40'),
(33, 'Casimer Howell', 'Thaddeus Hodkiewicz Jr.', 357, 38, NULL, '205', 'Reprehenderit vero doloribus dolore nihil laborum. Sapiente maxime et dolorem temporibus perferendis. Voluptatibus voluptatem voluptatum magni non et dignissimos et.', '1992-04-27', '1992-02-15', NULL, '2023-11-17 17:59:40', '2023-11-17 17:59:40'),
(34, 'Ms. Rebeca Renner', 'Prof. Kariane Osinski DDS', 336, 30, NULL, '286', 'Asperiores enim culpa quia qui. Aut quam enim aut voluptatem ea vel. Repellat expedita dolor ad. Quia qui possimus sapiente nostrum ea non ea.', '1997-03-22', '1997-08-12', NULL, '2023-11-17 17:59:40', '2023-11-17 17:59:40'),
(35, 'Dr. Ottis Boyer', 'Prof. Jasper Mohr DDS', 366, 31, NULL, '241', 'Velit et facilis ipsam veritatis ut inventore similique quae. Nam vitae asperiores qui cum fugit ut. Sed qui a deserunt suscipit. Placeat laudantium magni laudantium qui.', '2019-01-23', '1999-04-30', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(36, 'Magdalena Hills IV', 'Jacinto Herzog', 341, 24, NULL, '179', 'Quasi sit optio laborum qui sit est vel. Laboriosam vitae eos similique aut omnis ipsum. Eos fugiat unde aut aut recusandae nihil.', '2012-08-11', '1985-12-03', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(37, 'Idell Jacobs', 'Laverne Reichel', 349, 34, NULL, '154', 'Beatae rem ut optio illum qui itaque et. Nihil quis aspernatur veniam ducimus in. Reprehenderit dolore unde id. Dolores voluptatem provident corrupti odio doloremque.', '2000-04-25', '1970-06-17', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(38, 'Elda Crist', 'Erich Shields', 253, 33, NULL, '114', 'Explicabo distinctio eveniet debitis nemo vel voluptates. Accusantium nesciunt quae non minima. Provident inventore adipisci quas explicabo.', '1990-02-03', '1992-07-18', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(39, 'Mrs. Ollie Green', 'Dr. Tad Stamm', 387, 35, NULL, '183', 'Dolores ratione voluptatem nostrum occaecati. Quo maxime nobis harum et. Aspernatur ipsa at aut ea magni enim odit. Qui ut earum odit ut dolor aliquid officiis ipsum.', '2016-06-21', '2009-06-21', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(40, 'Bad Habit In your life', 'Ifty Chowdary', NULL, 50, NULL, '231', NULL, '2016-05-04', '2008-01-08', NULL, '2023-11-17 17:59:41', '2023-11-18 12:24:13'),
(41, 'Durward Rohan', 'Prof. Domenick Kirlin V', 359, 20, NULL, '276', 'Accusamus sint amet molestiae voluptate tenetur deserunt. Aut laudantium in ex voluptatem. Quo tempore est esse dicta.', '1986-03-27', '1977-03-14', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(42, 'Dr. Astrid Brown DVM', 'Harvey Crooks DVM', 247, 22, NULL, '263', 'Sunt quia occaecati vitae eos inventore omnis omnis autem. Ea error quia et voluptas. Magnam earum omnis nobis commodi. Fugit doloremque sequi veritatis facere est officia. Sequi vitae quis sed non.', '1991-10-02', '1970-02-24', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(43, 'Randi Cronin', 'Athena Little', 311, 35, NULL, '184', 'Minima quas sit corporis fugit. Vel fugiat laborum dignissimos eligendi aliquam non nam. Expedita ut et velit atque voluptate dolorem. Eos et labore voluptates.', '2001-04-14', '1988-07-24', NULL, '2023-11-17 17:59:41', '2023-11-17 17:59:41'),
(44, 'Dulce Weissnat', 'Tyree Jast IV', 163, 22, NULL, '250', 'Quos voluptatem quas dolores fugiat nemo necessitatibus maxime. Eum quis hic asperiores necessitatibus. Qui laborum qui consectetur voluptatem. Autem aliquam error ad officiis.', '1977-03-23', '2000-12-22', NULL, '2023-11-17 17:59:42', '2023-11-17 17:59:42'),
(45, 'Anahi Parisian', 'Heather Lueilwitz Sr.', 288, 39, NULL, '288', 'Sit rerum perspiciatis sit occaecati numquam. Praesentium qui dicta omnis consectetur esse. Repudiandae voluptatem rerum dolor. Repudiandae sed sint reiciendis sed corrupti.', '2015-09-09', '2008-01-31', NULL, '2023-11-17 17:59:42', '2023-11-17 17:59:42'),
(46, 'Ms. Shaina Mills Sr.', 'Coy Hessel', 143, 21, NULL, '202', 'Cum dolores consequuntur deserunt numquam aut. Error natus cum sunt quas est omnis. Et ipsa magnam molestiae et reprehenderit.', '1983-07-20', '2014-11-10', NULL, '2023-11-17 17:59:42', '2023-11-17 17:59:42'),
(47, 'Dr. Tristian Herman', 'Misty Reilly', 256, 40, NULL, '240', 'Sapiente nulla repudiandae qui non non et. Accusantium voluptatem consequuntur voluptatem perferendis est omnis laborum quod. Sint voluptates tenetur et sit dolor et.', '1970-03-21', '1996-10-09', NULL, '2023-11-17 17:59:42', '2023-11-17 17:59:42'),
(48, 'Yasmin Kemmer', 'Dr. Brayan Schoen', 383, 21, NULL, '220', 'Quibusdam unde sit velit voluptatibus. Iusto qui sequi repellendus amet dolores. Incidunt qui vero exercitationem vero nisi at. Et voluptates ut ab molestiae ullam.', '1985-07-27', '1997-08-28', NULL, '2023-11-17 17:59:42', '2023-11-17 17:59:42'),
(49, 'Kaycee Kunze', 'Favian Olson', 276, 34, NULL, '293', 'Ipsam mollitia fuga rerum vero suscipit unde voluptatem. Occaecati ipsum nemo qui beatae. Rerum enim deleniti ea nihil perferendis deserunt nulla.', '1971-04-15', '2022-10-05', NULL, '2023-11-17 17:59:42', '2023-11-17 17:59:42'),
(50, 'Bad Habit In your life', 'Ifty Chowdary', NULL, 50, NULL, '291', NULL, '1985-07-14', '2008-08-26', NULL, '2023-11-17 17:59:42', '2023-11-18 12:21:27'),
(51, 'Bad Habit In your life', 'Ifty Chowdary', NULL, 50, NULL, '174', NULL, '1993-06-08', '1978-12-29', NULL, '2023-11-17 17:59:42', '2023-11-18 12:22:19'),
(52, 'Skye Kovacek', 'Keagan Rau', 169, 37, NULL, '140', 'Voluptatem quos esse ut minus. Nemo qui dolore illo sunt soluta. Nulla et consequatur doloremque architecto et qui. Possimus nisi tempora perferendis aut.', '1978-10-17', '1997-07-11', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(53, 'Gunner Bartell', 'Melvin Hettinger PhD', 347, 33, NULL, '146', 'Quas sequi praesentium perspiciatis nulla. Beatae saepe omnis consequatur neque debitis recusandae. Asperiores ut dolorem quia. Laboriosam maiores omnis veritatis iste ullam odit sint.', '1993-10-22', '1992-05-07', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(54, 'Dolly Turner', 'Prof. Wilbert Hansen DVM', 384, 27, NULL, '240', 'Beatae et exercitationem nihil quisquam ducimus. Itaque ducimus sit debitis nobis ut odio. Ad recusandae reiciendis in illum corporis. Sit et sapiente consequatur maxime.', '1997-01-24', '2001-01-27', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(55, 'Phyllis Wisoky', 'Prof. Sterling Aufderhar', 399, 22, NULL, '280', 'Nihil ut suscipit nam commodi neque. Minima quia iste deleniti et occaecati. Quaerat consectetur libero et iure ea voluptate eos. Et aut tempore eos.', '1970-03-30', '1983-05-13', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(56, 'Christ Boyer V', 'Mathew Luettgen MD', 117, 28, NULL, '262', 'Ut ut debitis a ea eius impedit minus ex. Et eum beatae quo nobis atque officia et. Soluta odit mollitia soluta natus aut dolor.', '1990-03-07', '1998-08-16', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(57, 'London Prosacco V', 'Darrin Lemke', 170, 21, NULL, '137', 'Nihil qui tempore quisquam vel rem. Qui sit aliquam qui excepturi dolor eveniet inventore. Omnis aliquam et voluptatibus.', '2017-06-12', '2019-11-08', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(58, 'Ms. Autumn Mitchell I', 'Prof. Barton Schuppe', 238, 25, NULL, '246', 'Nulla illo velit omnis enim. Quis eos quia eius sed distinctio iusto impedit. Voluptatum iusto est porro id. Iure consequatur est qui doloremque ut.', '1980-09-01', '1982-10-19', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(59, 'Reggie Bayer', 'Miss Nakia VonRueden', 351, 21, NULL, '244', 'Nesciunt corporis quas totam molestias repellat earum neque quasi. Dolorem ut quidem occaecati. Quo quia quae fugit aut in. Soluta dolores quo qui quidem repellendus.', '1992-03-26', '2006-04-23', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(60, 'Ava Cruickshank', 'Cynthia Russel', 141, 26, NULL, '258', 'Nam necessitatibus voluptates exercitationem optio. Inventore iure repudiandae est illo.', '1980-12-21', '1998-02-02', NULL, '2023-11-17 17:59:43', '2023-11-17 17:59:43'),
(61, 'Mr. Murl Gusikowski', 'Filomena Adams', 143, 29, NULL, '253', 'Molestias consequatur sit deleniti numquam. Aut repellendus et facilis quasi nam. Libero pariatur delectus omnis error eos.', '2004-04-07', '1992-07-07', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(62, 'Laverna Kuphal I', 'Leonard Adams', 321, 23, NULL, '119', 'Distinctio sed deleniti consequatur fugiat. Voluptas et voluptatem ratione. Fuga inventore sint eligendi earum voluptatem est quo nisi.', '1980-05-18', '1973-01-21', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(63, 'Richmond Tromp', 'Dr. Janessa Klein', 119, 39, NULL, '242', 'Quis et eveniet similique voluptates provident. Rerum quam et architecto sed.', '1990-02-13', '1984-02-20', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(64, 'Katarina Spinka', 'Murl Hayes', 384, 26, NULL, '213', 'Nesciunt dolores ipsam sit. Velit tempora ad animi ipsum. Pariatur nostrum consequuntur quis animi voluptas. Ab non qui non nobis.', '2022-04-16', '2011-02-22', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(65, 'Keyshawn Schmitt III', 'Salvador Parker IV', 203, 22, NULL, '218', 'Sit architecto repellendus alias id ea non facere quam. Ut animi minus corrupti exercitationem dolore rerum quis. Et quis tempora facere aliquid aliquid. Facilis corporis et odio dolorum itaque.', '1976-10-22', '2001-07-21', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(66, 'Dana Dicki', 'Cameron Ratke', 261, 40, NULL, '241', 'Quia amet veritatis ullam atque tenetur cupiditate. Laborum officia possimus qui quis exercitationem. Quis ut iure eos eligendi. Qui dolorem quibusdam nulla.', '2018-07-18', '1987-10-15', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(67, 'Carole Paucek', 'Emelie Feeney', 132, 23, NULL, '196', 'Minima soluta molestiae laborum natus nihil non mollitia rem. Atque dolore ratione et nam.', '1973-04-16', '2014-08-25', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(68, 'Prof. Arvel Wiegand', 'Floyd Bode', 380, 28, NULL, '163', 'Qui quia id est sit. Officia aut voluptate fugit quasi ut sed maiores. Veritatis similique placeat iure assumenda consequuntur non a. Sapiente hic ex minima maiores aut delectus sed.', '2013-11-29', '2005-07-03', NULL, '2023-11-17 17:59:44', '2023-11-17 17:59:44'),
(69, 'Prof. Johnson Hauck', 'Katelin Gutmann', 389, 28, NULL, '155', 'Incidunt veniam occaecati ut natus voluptas sint tenetur beatae. Vel natus corrupti quidem non atque. Quo nam reiciendis consequatur nemo modi ullam. Omnis nobis est quidem voluptatem libero.', '2014-07-10', '2003-09-18', NULL, '2023-11-17 17:59:45', '2023-11-17 17:59:45'),
(70, 'Callie Nienow DDS', 'Desiree Kiehn', 298, 39, NULL, '105', 'Nulla quia magni sapiente. Fugiat molestias assumenda eligendi debitis rerum. Illum qui aut aut nesciunt quas et.', '2022-10-17', '1970-07-27', NULL, '2023-11-17 17:59:45', '2023-11-17 17:59:45'),
(71, 'Margret Feeney', 'Patsy Goyette', 112, 24, NULL, '137', 'Nostrum omnis vel corrupti. Voluptas illo porro delectus omnis. Et ducimus dolorem rerum voluptas animi est.', '2004-02-11', '1999-05-19', NULL, '2023-11-17 17:59:45', '2023-11-18 10:55:09'),
(72, 'Cynthia Streich', 'Deondre Moore II', 295, 22, NULL, '296', 'Rerum asperiores molestiae consequuntur. Ea ut non pariatur et adipisci consequuntur eveniet. Vero sit delectus eum et nemo velit. Aut autem nam fuga porro iusto.', '2003-04-19', '2011-08-17', NULL, '2023-11-17 17:59:45', '2023-11-17 17:59:45'),
(73, 'Anais Zieme V', 'Dorthy Daugherty', 268, 34, NULL, '217', 'Et excepturi et nisi sit qui officia praesentium. Recusandae magnam facere velit nulla consequatur incidunt sint. Id eaque aperiam mollitia numquam asperiores.', '2023-06-15', '1985-09-08', NULL, '2023-11-17 17:59:45', '2023-11-17 17:59:45'),
(74, 'Mr. Justus Murphy', 'Erica Yundt DDS', 389, 34, NULL, '258', 'Ipsum provident similique ex vitae qui eum sunt. Pariatur id ut aut. Et ipsum esse consectetur qui et. Dolorem magnam dolor quod magni. Et consectetur est quod qui corporis dolore quia eaque.', '1975-08-29', '2006-11-06', NULL, '2023-11-17 17:59:45', '2023-11-17 17:59:45'),
(75, 'Mr. Napoleon Torp', 'Phoebe Huel MD', 125, 25, NULL, '219', 'Fuga ut vitae modi dolores repudiandae dolor numquam. Deserunt quisquam cumque deserunt ea qui non voluptatibus. Repellendus praesentium reprehenderit sint aut. Natus natus facilis et eos dolore.', '2021-08-23', '1996-11-15', NULL, '2023-11-17 17:59:45', '2023-11-17 17:59:45'),
(76, 'Robert Morissette', 'Ms. Corrine Hoppe II', 264, 36, NULL, '263', 'Cum et distinctio odit voluptatibus tempore. Assumenda numquam veniam est quis ratione quae earum. Velit ipsa est corporis ad fuga aut architecto. Magnam sint expedita iste.', '1982-04-03', '1994-09-15', NULL, '2023-11-17 17:59:45', '2023-11-17 17:59:45'),
(77, 'April Mohr', 'Anabelle Franecki', 345, 39, NULL, '263', 'Recusandae molestiae voluptatem in sed corrupti vel. Dolorem aliquid unde assumenda ut. Provident et voluptatem et ducimus quam earum ratione. Quisquam quo quisquam facilis.', '1975-05-22', '2000-09-07', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(78, 'Donna Schmeler DDS', 'Dr. Gretchen Herzog IV', 294, 20, NULL, '174', 'Quod dolorum consectetur architecto nemo voluptatem. Omnis fuga repellendus soluta. Dolore alias deserunt iure debitis et dolorem.', '1988-06-18', '2013-12-02', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(79, 'Jaylon Blanda', 'Dr. Tad Gutkowski', 274, 37, NULL, '143', 'Quidem facere aut sunt quia est eos iure. Quidem et voluptate facilis numquam quos suscipit aut. Sequi quos eos similique ut aliquam.', '2009-01-03', '1995-10-25', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(80, 'Dr. Junior Swaniawski', 'Mable Ryan', 327, 28, NULL, '218', 'Eius fugiat consequuntur quibusdam necessitatibus commodi a. Dolorum id voluptas debitis quas.', '2011-09-20', '2009-12-21', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(81, 'Anthony McGlynn V', 'Prof. Arvilla Brown DVM', 160, 38, NULL, '187', 'Quas provident consectetur vero cumque aut assumenda iste. Magni qui et ut sit nulla. Ut a ut quis qui quia quidem iusto. Eligendi fugiat molestiae voluptas quo.', '1997-12-10', '1971-04-03', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(82, 'Dr. Elliott Balistreri Jr.', 'Elta Lehner', 361, 27, NULL, '266', 'Incidunt unde laudantium aut qui ipsam quaerat. Eos id dolor et et libero vitae eum. Laudantium sed qui aut porro. Praesentium quod aperiam perferendis autem ullam laborum.', '2000-05-17', '1988-03-07', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(83, 'Mr. Keshaun Thompson PhD', 'Prof. Willis Lemke IV', 197, 35, NULL, '145', 'Asperiores ea sunt ratione non. Quo et occaecati suscipit voluptatum. Beatae incidunt excepturi velit ab aliquam et.', '1976-11-28', '2014-09-28', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(84, 'Miss Yvette Mayer', 'Earnest Feil', 271, 32, NULL, '111', 'Nihil temporibus eos soluta. Cum nesciunt quia non. Voluptatem est reprehenderit distinctio corrupti porro. Et rerum iusto veritatis.', '1996-03-28', '1970-10-07', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(85, 'Eugenia Cole', 'Dr. Christian Morissette', 221, 35, NULL, '137', 'Natus aut odio ut accusamus animi reprehenderit vel. Repellat sint error eveniet. Nam consequatur maxime magnam ut quo et.', '2000-08-02', '1970-03-30', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(86, 'Jaime Towne', 'Shea Crooks V', 215, 25, NULL, '129', 'Omnis at sed nesciunt. Et delectus ducimus velit qui quos officiis. Neque excepturi nobis ut et nesciunt aspernatur consequuntur commodi. Impedit suscipit culpa ut cum.', '2012-08-04', '1992-12-18', NULL, '2023-11-17 17:59:46', '2023-11-17 17:59:46'),
(87, 'Prof. Myah Senger MD', 'Miss Heather Pagac I', 182, 20, NULL, '240', 'Dolor impedit nemo voluptas dolores eligendi ex quo. Labore eos veniam eum dolorem facere. Laudantium praesentium minus sapiente molestiae dignissimos iure labore.', '2019-04-09', '1970-08-31', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(88, 'Jaren Goyette IV', 'Bulah Barton', 187, 26, NULL, '231', 'Sapiente facilis sed quasi molestiae. Quia quas iusto quis ut. Reprehenderit quos molestiae aut fugiat eveniet.', '1988-10-15', '2007-05-04', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(89, 'Prof. Erick Rolfson', 'Ramon Collier PhD', 209, 39, NULL, '196', 'Nam nulla sit sit atque. Voluptas occaecati rerum exercitationem voluptatem. Quod alias dolore voluptatibus.', '2008-07-02', '2011-09-19', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(90, 'Loma Lockman', 'Samanta Russel', 390, 24, NULL, '194', 'Rerum aut minima sequi a quam. Eveniet aspernatur voluptas iusto. Porro molestiae molestiae consequatur quod cumque minima.', '2017-03-23', '2010-02-11', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(91, 'Vivian Mitchell', 'Zackery Hettinger', 292, 21, NULL, '172', 'Dolor minus velit ut modi. Sint voluptatem modi reprehenderit qui aut. Numquam non sed aut eaque. Voluptatem nulla ut iste repellat quis explicabo. Quis et expedita sit dolorum.', '1977-01-22', '2006-02-05', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(92, 'Blake Walker', 'Hailie Kunze', 363, 20, NULL, '280', 'Laboriosam magnam et delectus similique dolor tempora. Dicta nulla totam dicta sequi quod earum quo. Aut placeat pariatur dicta tempora explicabo eos.', '1988-08-17', '1998-03-08', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(93, 'Mr. Gerard Lowe', 'Kaitlin Moen', 311, 36, NULL, '270', 'Veniam delectus quas quia perspiciatis. Ullam accusamus libero veniam sed. Aut perferendis dolorem quam perferendis error doloribus.', '2005-03-05', '1975-01-24', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(94, 'Orlo Anderson', 'Abel Marks', 366, 0, NULL, '235', 'Commodi amet recusandae veniam sit. Voluptates inventore odio minima incidunt dolores itaque. Deleniti ut fugit repudiandae adipisci cupiditate.', '2009-09-29', '2015-01-31', NULL, '2023-11-17 17:59:47', '2023-11-18 06:41:37'),
(95, 'Ms. Carissa Moen', 'Cleo Barrows', 155, 21, NULL, '186', 'Molestiae magnam eum est iusto quaerat. Qui nisi esse ut est ut quidem. Voluptatem odit provident iure et.', '2000-01-04', '2005-05-09', NULL, '2023-11-17 17:59:47', '2023-11-17 17:59:47'),
(96, 'Ethan Lynch', 'Elissa Littel', 312, 39, NULL, '198', 'Blanditiis consequatur quis est. Corrupti architecto vel aliquid amet ut autem. Nostrum dolore veritatis consequuntur nulla ullam iure non.', '2010-01-02', '1985-03-06', NULL, '2023-11-17 17:59:48', '2023-11-17 17:59:48'),
(97, 'Fern Moore', 'Laron Swaniawski', 161, 33, NULL, '228', 'Tenetur optio eius omnis qui qui. Exercitationem laboriosam qui illum a ut deserunt. Sit sed illum voluptas quis et. Alias nihil ipsam quia esse dolorum eos omnis.', '1997-05-06', '1979-03-19', NULL, '2023-11-17 17:59:48', '2023-11-17 17:59:48'),
(98, 'Laravel Api', 'Shakil', 1000, 15, NULL, '113', 'Maxime occaecati eveniet incidunt quam vitae. Ea qui quae suscipit eum repudiandae nesciunt accusantium dolore. Aspernatur et tenetur eos consequatur odit.jljfasjfi aaskfafs.jifdjoisjadf.', '2007-03-06', '1993-12-29', NULL, '2023-11-17 17:59:48', '2023-11-18 10:58:12'),
(99, 'Jessy Breitenberg', 'Sofia Casper', 158, 29, NULL, '223', 'Sunt sit cum quisquam temporibus aut et et inventore. Animi fuga nesciunt mollitia quidem. Aut qui qui et fugiat cupiditate.', '1978-09-22', '1983-06-17', NULL, '2023-11-17 17:59:48', '2023-11-17 17:59:48'),
(100, 'Giovanna Ward II', 'Rebeca Fadel DVM', 237, 0, NULL, '282', 'Voluptas corporis omnis et corporis et. Ut est totam nobis. A laudantium vitae neque non tempora sed.', '2023-09-02', '1983-08-14', NULL, '2023-11-17 17:59:48', '2023-11-18 06:43:49'),
(101, 'Laravel for Beginners', 'Karamvir Singh', 34, 50, 'http://books.google.com/books/publisher/content?id=VtRMEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72LyScQNbpsYbLTOhFj6Ih0Ceg0iuZpwMSiBvWaHCOA7Yr85enVSzoqzeKQy1iMuAgJdVS0d3jYmqFWe6fRSY4G49tJHFnOQtZdD6L5bUUZnl4nnVwdZ6jcw3WJEi3inmI0UsJl&source=gbs_api', '1.0.1.0.preview.1', 'Ever wonder about Laralvel and how best to leverage it? When should you use it? What\'s the best way to set it up? Sick of books throwing technical terms your way that you need another book to understand? Finally, a book that can be understood by the common people!', '2021-11-08', '2021-11-08', NULL, '2023-11-18 11:44:42', '2023-11-18 11:44:42'),
(102, 'LARAVEL Framework', 'Cary Racz', 110, 30, 'http://books.google.com/books/content?id=L-uTzgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73yxkF9ByYkIID21DZ8PrrXJ6aZ8dJJGRIOIQpqvBNXlC_IiK-zdBDrYGhQn0zh3l_AHVqTFM3LXYXV70v8T9iiajh-_aab7AfBXhPC_Y1DNV49n2FKdhW9KhNyJQmGEDtZ9am0&source=gbs_api', 'preview-1.0.0', '<p>In this LARAVEL tutorial, we will learn how to install LARAVEL and how to create your first app in LARAVEL for beginners. Now you can learn LARAVEL easily without the need of watching LARAVEL video series or LARAVEL video tutorials. This LARAVEL tutorial will explain all the necessary concepts in easy language for you to learn LARAVEL easily and understand it better.<br>TABLE OF CONTENTS<br>-LARAVEL Introduction<br>-Features of LARAVEL<br>-History of LARAVEL<br>-XAMPP Installation<br>-Composer Installation<br>-Git Installation<br>-Creating First LARAVEL Project<br>-LARAVEL Application Structure<br>-LARAVEL Basic Routing<br>-LARAVEL Routing Parameters<br>-Named Routes</p>', '2021-07', '2021-07', NULL, '2023-11-18 11:45:02', '2023-11-18 11:45:02'),
(103, 'Laravel Documentation 5.8 Part-1: Learn Laravel in simple and easy steps starting from basic to advanced concepts', 'Robert Bruce', 771, 30, 'http://books.google.com/books/publisher/content?id=3W6jDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73ibnXVLb2nbrIlkbXNZU6TsUmRYn6K1KmEILYXuaJYoNoCK_3kCKJRR_SPkt1uuRuTRG_nMhSA6iERfRif9y6iaXxFX8vQFPl_rV9Zhlfzny91u0AS6IfqqhBf9ACFq0EykdqU&source=gbs_api', 'preview-1.0.0', 'Laravel is a powerful MVC PHP framework, designed for developers who need a simple and elegant toolkit to create full-featured web applications. Laravel was created by Taylor Otwell. This is a best tutorial that explains the basics of Laravel framework.Build your Free Ecommerce website, Mobile app, Marketplaces, Dropship solutions or POS using Laravel Ecommerce platform Bagisto.Laravel is a fast-growing framework, and there are a large number of Laravel tutorials through which users can quickly learn', '2019-04-07', '2019-04-07', NULL, '2023-11-18 11:51:50', '2023-11-18 11:51:50'),
(104, 'অপ্সরা', 'আসিফ মেহ্দী', 63, 122, NULL, 'preview-1.0.0', 'Bangla Book', '2018', '2018', NULL, '2023-11-18 12:01:33', '2023-11-18 12:26:45'),
(105, 'Beginning PHP and Oracle', 'W Jason Gilmore, Bob Bryla', 763, 20, 'http://books.google.com/books/content?id=t3qM6xpfNr4C&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72B5J-F68TV80voWJ_NfYYhAK6ZF2jsLfww3RJK8x9GvIDQQUlbu-PkPsLuB3BdnbpgerqYdxmfjDb7oTCBUcm7LjLT7b-wyl_Pg-5k0SZYPmnArY2K-jC-qeplxSePBtYHE5Ww&source=gbs_api', '3.5.3.0.preview.1', '<p><i>Beginning PHP and Oracle: From Novice to Professional</i> offers comprehensive information on using the PHP scripting language in conjunction with Oracles database platform. PHP is one of the most prominent open source technologies in the area of web development, while Oracle is one of the most widely deployed and used database products.</p><p>Youll learn to reap the benefits of these core technologies by using them in unison to create dynamic, data-driven web applications. The book is packed with practical examples based on many years of real-world experience from authors W. Jason Gilmore and Bob Bryla. This book is an ideal read for web designers or programmers wanting to create applications with PHP in an Oracle environment.</p><ul> <li>The book covers a solid alternative to the \"M\" in the LAMP stack. </li> <li>Database examples are based on real-world scenarios. </li> <li>The text shows off Oracles strong enterprise features. </li> <li>The authors highlight Oracles robust internationalization support. </li></ul>', '2007-10-08', '2007-10-08', NULL, '2023-11-19 02:49:38', '2023-11-19 02:49:38'),
(106, 'Complete Web Applications Using PHP and MySQL', 'Rumaysa Ahmed', 192, 30, 'http://books.google.com/books/publisher/content?id=LA7PDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE701vIub_07-uKDCmHCm4he-V3yoWYBXtFoy4Ss6w4qV3wxEIZ0FqMdMA8MVo2T0tXXH1U8n2kC3B1YUmBajUbAX96NE0ott1PdYaV835BQ4c_VWQePxG0_LfVqwPyHShQAl736k&source=gbs_api', 'preview-1.0.0', 'This book will guide you through building a practical web application project. You will learn how to use PHP, MySQL, HTML, CSS and JavaScript. You will also learn more about working with databases to build a school library management system. The book will show you how to host a live and data-driven web application.', '2020-02', '2020-02', NULL, '2023-11-19 02:54:42', '2023-11-19 02:54:42'),
(107, 'PHP Hacks', 'Jack D. Herrington', 468, 500, 'http://books.google.com/books/content?id=kJV1tmal5_AC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73FXay599rtrbmf8_oUUMHCNO5eZuOooqTXTNTJhlvZoHLzwwWYZX6wrwfagAzJz44Ojq7Bs90vDj03HQzlTooqiSf-nPvjBecpCbvuvKEerEfwmeMyByT-6QmZnxZgsR6gSElZ&source=gbs_api', '0.5.2.0.preview.3', '<p>Programmers love its flexibility and speed; designers love its accessibility and convenience. When it comes to creating web sites, the PHP scripting language is truly a red-hot property. In fact, PHP is currently used on more than 19 million web sites, surpassing Microsoft\'s ASP .NET technology in popularity. Not surprisingly, this surge in usage has resulted in a number of PHP books hitting the market. Only one, though, takes the language beyond traditional Web programming and into mapping, graphing, multimedia, and beyond: <i>PHP Hacks</i>.</p><p>In <i>PHP Hacks</i>, author Jack Herrington wrings out his 20 years of code generation experience to deliver hands-on tools ranging from basic PHP and PEAR installation and scripting to advanced multimedia and database optimizing tricks.</p><p>On the practical side of things, <i>PHP Hacks</i> helps you develop more robust PHP applications by explaining how to improve your database design, automate application testing, and employ design patterns in your PHP scripts and classes. In the category of \"cool,\" Herrington explains how to upgrade your Web interface through the creation of tabs, stickies, popups, and calendars. He even examines how to leverage maps and graphics in PHP. There\'s also a bounty of image and application hacks, including those that show you how to:</p><ul><li>Integrate web sites with Google maps and satellite imaging</li><li>Dynamically display iPhoto libraries online</li><li>Add IRC, SMS, and Instant Messaging capabilities to your Web applications</li><li>Drop the latest Wikipedia dictionary onto your Sony PSP</li><li>Render graphics and user interfaces with SVG, DHTML, and Ajax</li></ul><p>Whether you\'re a newcomer or an expert, you\'ll find great value in <i>PHP Hacks</i>, the only PHP guide that offers something useful and fun for everyone.</p>', '2005-12-12', '2005-12-12', NULL, '2023-11-19 02:57:37', '2023-11-19 02:57:37'),
(108, 'Beginning PHP and MySQL', 'Frank Kromann', 790, 102, 'http://books.google.com/books/publisher/content?id=WKR8DwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73fxctCC_z5Q9xL_UOD5DSKqioptVUp4wBFm3qgOFnHZ8NhSC48P1qUkNfCtEsYKfXtivwkD0W0YPEBN2E-kbKvRL2hEdrS3PV70V0coWi-tFgvLmacK3RMfqOIT1iIK9wXIoF8&source=gbs_api', '2.2.2.0.preview.3', '<p>Beginning PHP and MySQL: From Novice to Professional, Fifth Edition is a major update of W. Jason Gilmore\'s authoritative book on PHP and MySQL. The latest edition includes detailed instructions for configuring the ultimate PHP and MySQL development environment on all major platforms, complete coverage of the latest additions and improvements to the PHP language, coverage of the Composer dependency manager, and thorough introductions to MySQL’s most relied-upon features.</p><p></p><p>You\'ll not only receive extensive introductions to the core features of PHP, MySQL, and related tools, but you\'ll also learn how to effectively integrate them in order to build robust data-driven applications. Authors Jason Gilmore and Massimo Nardone draw upon more than fifteen years of experience working with these technologies to pack this book with practical examples and insight into the real-world challenges faced by developers. Accordingly, you will repeatedly return to this book as both a valuable instructional tool and reference guide. Some of the book’s highlights include:</p><p></p>Detailed instructions regarding installing PHP, MySQL and several popular web serversA thorough introduction to the PHP language, including its string handling, networking, forms processing, and object-oriented featuresAn extensive overview of MySQL’s fundamental features, including supported data types, database management syntax, trigger, view, stored routine syntax, and import/export capabilitiesHundreds of examples demonstrating countless facets of PHP and MySQL integration<p></p><p></p>', '2018-05-30', '2018-05-30', NULL, '2023-11-19 02:59:40', '2023-11-19 04:42:48'),
(109, 'Phython Programming Abridge Guide For Beginners To Intermediate', 'William Allen Newton', 138, 60, 'http://books.google.com/books/content?id=hoIOzgEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70IrpEm5K2bvxOCqMolPkJGt2dxAAvZ-cyFBf1O-aXdVHHbfQAzm9_asJpGVAZQe0BHXr4fhCUTsUuiekZVLnbigAEVZPrDUIe2KyKw9CrL_x9i0mhylOGtUqkSjW5aIf4SfDWJ&source=gbs_api', 'preview-1.0.0', 'DescriptionIn The Python Programming Guide for Beginners you will learn all the essential tools to become proficient in the python programming language. Learn how to install python in all major operating systems: Windows, Mac OS, and even Linux. You will be guided step by step from downloading the necessary files to making adjustments in the installation for your particular operating system. Learn the command line shell, and how to use it to run python in interactive and script modes.Discover how the python interpreter functions, and learn how to use the interactive command line shell through practical examples you can try on your own. Learn datatypes and variables in depth, with example code and discussion of the generated output.Numbers are covered in detail, including a discussion of the 4 number types in python: integer, float, complex, and boolean. Learn about Truthy and Falsy returns and how they relate to the boolean type. Practice with some of the many built-in python math functions, and discover the difference between format() and round() functions.Strings are one of the most important variables in any programming language. Learn in-depth how to explore, search, and even manipulate strings in python. Practice with python\'s built-in string methods.Learn about python\'s control structures and how to use boolean logic to achieve your software requirements.-Deal with operators and develop an understanding of the strengths and differences of mathematical, relational and logical operators, as well as the importance of operator precedence and associativity.-Learn about strings and the many ways to search through and manipulate them.-Discover the power of inheritence and polymorphism.-Learn how to open, manipulate and read, and close files on your filesystem.-Learn about the philosophy and importance of code reuse, and how modules in python makes this simple.-Examine the difference between procedural and Object Oriented programming. Which is right for you may depend on what kind of code you are writing.-Practice control structures in python.-Study operators and learn about operator overloading.-An in-depth discussion of python sequences: lists, sets, tuples and dictionaries. Learn the strengths and weaknesses of each. Practice creating and manipulating python sequences.', '2020-10-11', '2020-10-11', NULL, '2023-11-19 04:51:57', '2023-11-19 04:51:57'),
(110, 'Edit Phython Programming Interview Exposed', 'Morgan Peter', 120, 100, 'http://books.google.com/books/content?id=Fx50swEACAAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE72q_QFNdpO42cKBHyfu_MS2eV5hFbo52kbPJSbrzsiPA0VAIRrCUlr0qRq70TO3MVa_C5kJalj8C4mAt_TrXBZbv_m7r6gzE2-BQRlQ_tWVlQ9j7yRGo7p18qnI0T2anIvhTGdB&source=gbs_api', 'preview-1.0.0', 'Python Programming Interview Exposed Most Asked Python Programming Interview Question and Answers to Ace Your Programming Interview and Land Your Dream Job Programming is one of the most lucrative job that you can become a professional and earn Six figures and build a career on, but before you become a professional programmer, you have to be proficient in programming with python as well as be able to answer python programming questions which are one of the most important aspect of programming you will be asked when you are being interviewed This Python Programming Interview will show you the most frequent python questions that are asked during programming interview with detailed answers to each of the question so that you are able to answer all questions you will be asked to pass your programming interview in flying colors and get your dream programming job You will also be shown how to prepare for your programming job so that you are confident when you are being interview <b>Order this Book Today and get your dream job</b>', '2017-10-15', '2017-10-15', NULL, '2023-11-19 04:54:04', '2023-11-19 04:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_17_100422_create_books_table', 1),
(6, '2023_11_17_233900_create_rents_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rent_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `copy` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`id`, `user_id`, `book_id`, `name`, `email`, `phone`, `address`, `rent_date`, `return_date`, `copy`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 'larnvern', 'learnvarn@gmail.com', '01637621452', '2/T Golden Street Shymoli Dhaka', NULL, NULL, 1, 0, '2023-11-18 04:40:58', '2023-11-18 06:43:48'),
(2, 2, 59, 'Lillith Cummings', 'goruxify@mailinator.com', '+1 (198) 128-2441', 'Voluptatibus quia pr', '2023-11-18', NULL, 3, 0, '2023-11-18 04:44:41', '2023-11-18 04:44:41'),
(3, 2, 94, 'Laura Cleveland', 'vujulyfy@mailinator.com', '+1 (576) 304-9224', 'Quas pariatur Deser', '2023-11-18', NULL, 3, 0, '2023-11-18 05:01:49', '2023-11-18 06:26:56'),
(4, 2, 94, 'Laura Cleveland', 'vujulyfy@mailinator.com', '+1 (576) 304-9224', 'Quas pariatur Deser', '2023-11-18', NULL, 3, 0, '2023-11-18 05:03:32', '2023-11-18 06:40:07'),
(5, 2, 94, 'Laura Cleveland', 'vujulyfy@mailinator.com', '+1 (576) 304-9224', 'Quas pariatur Deser', '2023-11-18', NULL, 3, 0, '2023-11-18 05:03:40', '2023-11-18 06:39:42'),
(6, 2, 94, 'Laura Cleveland', 'vujulyfy@mailinator.com', '+1 (576) 304-9224', 'Quas pariatur Deser', '2023-11-18', NULL, 3, 0, '2023-11-18 05:04:47', '2023-11-18 06:39:21'),
(7, 2, 94, 'Laura Cleveland', 'vujulyfy@mailinator.com', '+1 (576) 304-9224', 'Quas pariatur Deser', '2023-11-18', NULL, 3, 0, '2023-11-18 05:09:35', '2023-11-18 06:41:37'),
(8, 2, 94, 'Laura Cleveland', 'vujulyfy@mailinator.com', '+1 (576) 304-9224', 'Quas pariatur Deser', '2023-11-18', NULL, 3, 0, '2023-11-18 05:09:54', '2023-11-18 06:29:56'),
(9, 2, 52, 'Nora Bridges', 'purugala@mailinator.com', '+1 (168) 947-3152', 'Soluta sit ex nulla', '2023-11-18', NULL, -13, 0, '2023-11-18 10:20:37', '2023-11-18 10:20:37'),
(10, 2, 71, 'Bruce Bailey', 'dutucif@mailinator.com', '+1 (138) 727-3061', 'Sint quis ut ullam q', '2023-11-18', NULL, 5, 0, '2023-11-18 10:25:35', '2023-11-18 10:25:35'),
(11, 2, 71, 'Wylie Butler', 'cazyba@mailinator.com', '+1 (318) 467-6049', 'Minus expedita id a', '2023-11-18', NULL, 5, 1, '2023-11-18 10:27:41', '2023-11-18 10:51:14'),
(12, 2, 71, 'Dominique James', 'jovanefo@mailinator.com', '+1 (974) 859-7352', 'Ullam asperiores sed', '2023-11-18', '2023-11-18', 5, 1, '2023-11-18 10:36:16', '2023-11-18 10:55:08'),
(13, 2, 98, 'Admin', 'admin@gmail.com', '01517821601', 'kljfalsjaf', '2023-11-18', NULL, 5, 0, '2023-11-18 10:56:41', '2023-11-18 10:56:41'),
(14, 2, 98, 'Yeo Doyle', 'junib@mailinator.com', '+1 (678) 419-8491', 'Aliquip iure in ut d', '2023-11-18', '2023-11-18', 5, 1, '2023-11-18 10:57:42', '2023-11-18 10:58:12'),
(15, 2, 108, 'Tad Bishop', 'xuquhib@mailinator.com', '+1 (839) 122-4093', 'Ex eius ut do volupt', '2023-11-19', NULL, 5, 0, '2023-11-19 03:08:54', '2023-11-19 03:08:54'),
(16, 1, 108, 'Test', 'test@gmail.com', '0167499394949', 'Dhaka', '2023-11-19', '2023-11-19', 5, 1, '2023-11-19 03:43:14', '2023-11-19 03:57:40'),
(17, 1, 108, 'Test', 'test@gmail.com', '0167499394949', 'Dhaka', '2023-11-19', NULL, 5, 0, '2023-11-19 03:43:52', '2023-11-19 03:43:52'),
(18, 1, 108, 'Test', 'test@gmail.com', '0167499394949', 'Dhaka', '2023-11-19', '2023-11-19', 5, 1, '2023-11-19 03:44:44', '2023-11-19 04:03:55'),
(19, 1, 108, 'Test', 'test@gmail.com', '0167499394949', 'Dhaka', '2023-11-19', NULL, 5, 0, '2023-11-19 03:46:59', '2023-11-19 03:46:59'),
(20, 1, 108, 'Test', 'test@gmail.com', '0167499394949', 'Dhaka', '2023-11-19', '2023-11-19', 5, 1, '2023-11-19 03:47:40', '2023-11-19 04:42:48'),
(21, 1, 108, 'Test', 'test@gmail.com', '0167499394949', 'Dhaka', '2023-11-19', NULL, 5, 0, '2023-11-19 03:48:53', '2023-11-19 03:48:53'),
(22, 1, 108, 'Test', 'test@gmail.com', '0167499394949', 'Dhaka', '2023-11-19', NULL, 5, 0, '2023-11-19 04:07:19', '2023-11-19 04:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `contact`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superadmin@gmail.com', NULL, '01637621452', '$2y$12$P07pKfzdZLintBasVkrgBeaOSyVTUbcxxnat/AmBb65aV6v/6iuPm', NULL, NULL, NULL),
(2, 'Admin', 'admin@gmail.com', NULL, '01637621453', '$2y$12$NyB8C3Vef4oh7XqLhPV4vetohAWycTj6RvEhjgZ8NWHRcNwqHwEeG', NULL, NULL, NULL),
(3, 'Guest', 'guest@gmail.com', NULL, '01637621454', '$2y$12$kf/i68jLYhCA7oGuwzyeTu54QDpxCXzpLjV/LUaTl9xlXTDI2fw52', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
