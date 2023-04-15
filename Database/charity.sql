-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 01:19 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisers`
--

CREATE TABLE `advertisers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Location` varchar(299) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `title`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(2, 0, 2, 'Categores', 'Categores', 'primary', '2019-04-20 16:12:28', '2019-04-20 16:12:28'),
(3, 0, 2, 'Categores2', 'Categores2', 'warning', '2019-04-20 16:12:55', '2019-04-20 16:12:55'),
(4, 0, 5, 'Categores', 'Cause2', 'success', '2019-04-20 16:13:06', '2019-04-20 16:13:06');

-- --------------------------------------------------------

--
-- Table structure for table `causes`
--

CREATE TABLE `causes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Title_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Raised` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Goal` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Donors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `causes`
--

INSERT INTO `causes` (`id`, `Title_en`, `Title_ar`, `Title_gr`, `slug`, `Content_en`, `Content_ar`, `Content_gr`, `category_id`, `Raised`, `Goal`, `Donors`, `image`, `created_at`, `updated_at`) VALUES
(5, 'PLAY FOR KIDS', 'العب للأطفال', 'PLAY FOR KIDS', 'PLAY-FOR-KIDS', 'The importance of play in the recovery of the hospitalised child is universally recognised. CHI has been helping to fill this role since 1970 and today CHI Play Volunteers bring fun and enjoyment to sick children in many hospitals around Ireland.', 'أهمية اللعب في تعافي الطفل في المستشفى معترف بها عالميا. يقدم متطوعو CHI Play المرح والتمتع بالأطفال المرضى في العديد من المستشفيات في جميع أنحاء أيرلندا.', 'The importance of play in the recovery of the hospitalised child is universally recognised. CHI has been helping to fill this role since 1970 and today CHI Play Volunteers bring fun and enjoyment to sick children in many hospitals around Ireland.', '2', '$10,000', '$10,000', '10000', 'images/dVzJSRL3OvLJQdjm4kEd.png', '2019-04-22 16:03:53', '2020-04-15 13:43:30'),
(6, 'BIG NIGHT WALK', 'العب للأطفال', 'PLAY FOR KIDS', 'BIG-NIGHT-WALK', 'The importance of play in the recovery of the hospitalised child is universally recognised. CHI has been helping to fill this role since 1970 and today CHI Play Volunteers bring fun and enjoyment to sick children in many hospitals around Ireland.', 'أهمية اللعب في تعافي الطفل في المستشفى معترف بها عالميا. يقدم متطوعو CHI Play المرح والتمتع بالأطفال المرضى في العديد من المستشفيات في جميع أنحاء أيرلندا.', 'The importance of play in the recovery of the hospitalised child is universally recognised. CHI has been helping to fill this role since 1970 and today CHI Play Volunteers bring fun and enjoyment to sick children in many hospitals around Ireland.', '2', '$15332', '$15332', '18', 'images/CnQ32JExcEH6nB9QCxkX.png', '2019-04-22 16:05:27', '2020-04-15 13:43:39'),
(7, 'HEART TO HEART', 'القلب إلى القلب', 'HEART TO HEART', 'HEART-TO-HEART', 'The importance of play in the recovery of the hospitalised child is universally recognised. CHI has been helping to fill this role since 1970 and today CHI Play Volunteers bring fun and enjoyment to sick children in many hospitals around Ireland.', 'القلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلبالقلب إلى القلب', 'The importance of play in the recovery of the hospitalised child is universally recognised. CHI has been helping to fill this role since 1970 and today CHI Play Volunteers bring fun and enjoyment to sick children in many hospitals around Ireland.', '2', '$15332', '$15332', '35', 'images/7NRcxMjok4sgdeyFPj89.png', '2019-04-22 16:06:44', '2020-04-15 13:43:47');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Post_id` int(11) NOT NULL DEFAULT 1,
  `User_id` int(11) NOT NULL DEFAULT 1,
  `Comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Title_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Content_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Minutes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FinishTime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `StartTime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `Title_en`, `Title_ar`, `Title_gr`, `slug`, `Content_en`, `Content_ar`, `Content_gr`, `image`, `Days`, `Hours`, `Minutes`, `Address`, `FinishTime`, `StartTime`, `created_at`, `updated_at`) VALUES
(4, 'FAMOUS QUOTES ABOUT GIVING', 'حتى الزناد مكتب يختلف رعاية صحية مجانية', 'FAMOUS QUOTES ABOUT GIVING', 'FAMOUS-QUOTES-ABOUT-GIVIN', '<!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                Every day we have plenty of opportunities to get angry, stressed or offended. But what you\'re doing when you indulge these negative emotions is giving something outside yourself power over your happiness. You can choose to not let little things upset you.\r\n links Events Content Start\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->', 'وسوف تبدأ البطولة مع 11 مساء بداية بندقية. لاعبين تشق طريقها في جميع أنحاء بالطبع، وسوف يكون وسجل على أفضل اثنين من أصل أربعة كرات. وسيتم تقديم الغداء في الحال، مع عشاء في النادي بعد اللعب. واللاعبين لديهم العديد من الفرص للفوز بجوائز خاصة مع مسابقات حفرة المعينة.', 'Every day we have plenty of opportunities to get angry, stressed or offended. But what you\'re doing when you indulge these negative emotions is giving something outside yourself power over your happiness. You can choose to not let little things upset you.', 'images/ZZyJXefHmrBMFaRDyObr.png', '07', '07', '07', '142 Santa Monica, LA, USA', '2017', '2017', '2019-04-22 15:25:10', '2020-04-15 13:44:28'),
(5, 'FAMOUS QUOTES ABOUT', 'حتى الزناد مكتب يختلف رعاية صحية مجانية', 'CRCF GOLF EVENT', 'FAMOUS-QUOTES', '<!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                Every day we have plenty of opportunities to get angry, stressed or offended. But what you\'re doing when you indulge these negative emotions is giving something outside yourself power over your happiness. You can choose to not let little things upset you.\r\nEvery day we have plenty of opportunities to get angry, stressed or offended. But what you\'re doing when you indulge these negative emotions is giving something outside yourself power over your happiness. You can choose to not let little things upset you.\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->', 'وسوف تبدأ البطولة مع 11 مساء بداية بندقية. لاعبين تشق طريقها في جميع أنحاء بالطبع، وسوف يكون وسجل على أفضل اثنين من أصل أربعة كرات. وسيتم تقديم الغداء في الحال، مع عشاء في النادي بعد اللعب. واللاعبين لديهم العديد من الفرص للفوز بجوائز خاصة مع مسابقات حفرة المعينة.', 'Every day we have plenty of opportunities to get angry, stressed or offended. But what you\'re doing when you indulge these negative emotions is giving something outside yourself power over your happiness. You can choose to not let little things upset you.', 'images/jHaKSYH3yB2kqNy2F3H9.png', '07', '07', '07', '142 Santa Monica, LA, USA', '07:30 am - 11:00 am', '07:30 am - 11:00 am', '2019-04-22 15:32:47', '2020-04-15 13:45:09'),
(6, 'CRCF GOLF EVENT', 'حتى الزناد مكتب يختلف رعاية صحية مجانية', 'CRCF GOLF EVENT', 'CRCF-GOLF-EVENT', '<!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                The tournament will begin with an 11 a.m. shotgun start. As players make their way around the course, they will be scored on the best two balls out of four. Lunch will be served on the course, with dinner in the Clubhouse following play. Players will have many opportunities to win special prizes with designated hole contests.\r\n\r\nn 2015, the Foundation introduced six new categories to the Fund for the Region to address emerging needs such as the maintenance of Chautauqua Lake, physician recruitment and neighborhood revitalization to name a few.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa…\r\n\r\nDonec justo ex, mollis quis interdum id, luctus id dui. Aliquam maximus finibus augue quis blandit. Nam fermentum nunc in urna facilisis, eu maximus neque ultrices. Praesent pulvinar justo ut pellentesque tincidunt. Quisque vel eros tempus, accumsan nisl ut, venenatis orci. Aenean nec ipsum consequat, accumsan est eget, dapibus augue. Morbi vitae arcu blandit, tempus nunc eu, blandit nisl. Sed tempor facilisis quam, sit amet maximus ipsum vestibulum sit amet. Etiam hendrerit felis sollicitudin libero varius, a pulvinar nisi eleifend. Proin sit amet nulla euismod, egestas elit ut, varius nibh. Cras non urna sed lorem pharetra laoreet tempor eget est. Duis semper nec diam id euismod.\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->', 'وسوف تبدأ البطولة مع 11 مساء بداية بندقية. لاعبين تشق طريقها في جميع أنحاء بالطبع، وسوف يكون وسجل على أفضل اثنين من أصل أربعة كرات. وسيتم تقديم الغداء في الحال، مع عشاء في النادي بعد اللعب. واللاعبين لديهم العديد من الفرص للفوز بجوائز خاصة مع مسابقات حفرة المعينة.\r\n\r\nن عام 2015، قدمت مؤسسة ست فئات جديدة لصندوق المنطقة لتلبية احتياجات مثل الحفاظ على بحيرة Chautauqua الطبيب التوظيف وحي تنشيط الناشئة على سبيل المثال لا few.Lorem الجزر جدا، وأسعار الطماطم adipisici، ولكن مثل هذا الوقت ذلك أن العمل والحزن، وبعض الأمور الهامة في الانخفاض. وسيسمح اقع أن نفعل ذلك مع قيصر انه لن يكون عليه. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. فابيان أو قاض للتغلب، في خطأ ...\r\n\r\nللأسف، ليكون لمجرد، لينة رجل أحيانا الهوية، luctus معرف وثيقة الهوية الوحيدة. أعظم من نهايات quis blandit aliquam augue. لالاحماء الآن في المواد المضادة للاكسدة جرة، أكبر كرة القدم أو كرة السلة. وسادة الحالية فقط للمطورين أطفال. أو الفول السوداني في كل مرة، واللاعبين تلك الطبقة والسريرية تعقيمها. Pellentesque ماسا Aenean غير المصنفة في موضع هوز الجلوس امات، accumsan بتوقيت شرق الولايات المتحدة eget، dapibus augue. كرة القدم بعد ظهر المهارات الحياتية، وموسم كرة القدم الآن الجلوس اللاعبين. لكن tempor facilisis quam، والجلوس امات دهليز الجلوس امات مهم جدا. حتى الزناد مكتب يختلف رعاية صحية مجانية، ولكن للخصم الكرة الطائرة. Proin الجلوس امات egestas ولا عقوبة euismod إيليت التحرير، فريوس] nibh. غدا غير المهنية، ولكن جعبة أبجد في Laoreet في حاجة إليها. Duis سمبر غير المصنفة في موضع بقطر معرف euismod.', 'The tournament will begin with an 11 a.m. shotgun start. As players make their way around the course, they will be scored on the best two balls out of four. Lunch will be served on the course, with dinner in the Clubhouse following play. Players will have many opportunities to win special prizes with designated hole contests.\r\n\r\nn 2015, the Foundation introduced six new categories to the Fund for the Region to address emerging needs such as the maintenance of Chautauqua Lake, physician recruitment and neighborhood revitalization to name a few.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa…\r\n\r\nDonec justo ex, mollis quis interdum id, luctus id dui. Aliquam maximus finibus augue quis blandit. Nam fermentum nunc in urna facilisis, eu maximus neque ultrices. Praesent pulvinar justo ut pellentesque tincidunt. Quisque vel eros tempus, accumsan nisl ut, venenatis orci. Aenean nec ipsum consequat, accumsan est eget, dapibus augue. Morbi vitae arcu blandit, tempus nunc eu, blandit nisl. Sed tempor facilisis quam, sit amet maximus ipsum vestibulum sit amet. Etiam hendrerit felis sollicitudin libero varius, a pulvinar nisi eleifend. Proin sit amet nulla euismod, egestas elit ut, varius nibh. Cras non urna sed lorem pharetra laoreet tempor eget est. Duis semper nec diam id euismod.', 'images/MdSH2nKqRz6wWt4xBmkF.png', '07', '07', '07', '142 Santa Monica, LA, USA', '07:30 am - 11:00 am', '07:30 am - 11:00 am', '2019-04-22 16:11:19', '2020-04-15 13:45:35'),
(7, 'HOLIDAY GIFTS IN KIND2 tournament will', 'كرة القدم الآن الجلوس اللاعبين. لكن', 'HOLIDAY GIFTS IN KIND2', 'HOLIDAY-GIFTS-IN-KIND2', '<!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                <!-- ================================ links Events Content Start ========================================================================= -->\r\n                n 2015, the Foundation introduced six new categories to the Fund for the Region to address emerging needs such as the maintenance of Chautauqua Lake, physician recruitment and neighborhood revitalization to name a few.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa…\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->\r\n              <!-- ================================ links Events Content Start ========================================================================= -->', 'وسوف تبدأ البطولة مع 11 مساء بداية بندقية. لاعبين تشق طريقها في جميع أنحاء بالطبع، وسوف يكون وسجل على أفضل اثنين من أصل أربعة كرات. وسيتم تقديم الغداء في الحال، مع عشاء في النادي بعد اللعب. واللاعبين لديهم العديد من الفرص للفوز بجوائز خاصة مع مسابقات حفرة المعينة.\r\n\r\nن عام 2015، قدمت مؤسسة ست فئات جديدة لصندوق المنطقة لتلبية احتياجات مثل الحفاظ على بحيرة Chautauqua الطبيب التوظيف وحي تنشيط الناشئة على سبيل المثال لا few.Lorem الجزر جدا، وأسعار الطماطم adipisici، ولكن مثل هذا الوقت ذلك أن العمل والحزن، وبعض الأمور الهامة في الانخفاض. وسيسمح اقع أن نفعل ذلك مع قيصر انه لن يكون عليه. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. فابيان أو قاض للتغلب، في خطأ ...\r\n\r\nللأسف، ليكون لمجرد، لينة رجل أحيانا الهوية، luctus معرف وثيقة الهوية الوحيدة. أعظم من نهايات quis blandit aliquam augue. لالاحماء الآن في المواد المضادة للاكسدة جرة، أكبر كرة القدم أو كرة السلة. وسادة الحالية فقط للمطورين أطفال. أو الفول السوداني في كل مرة، واللاعبين تلك الطبقة والسريرية تعقيمها. Pellentesque ماسا Aenean غير المصنفة في موضع هوز الجلوس امات، accumsan بتوقيت شرق الولايات المتحدة eget، dapibus augue. كرة القدم بعد ظهر المهارات الحياتية، وموسم كرة القدم الآن الجلوس اللاعبين. لكن tempor facilisis quam، والجلوس امات دهليز الجلوس امات مهم جدا. حتى الزناد مكتب يختلف رعاية صحية مجانية، ولكن للخصم الكرة الطائرة. Proin الجلوس امات egestas ولا عقوبة euismod إيليت التحرير، فريوس] nibh. غدا غير المهنية، ولكن جعبة أبجد في Laoreet في حاجة إليها. Duis سمبر غير المصنفة في موضع بقطر معرف euismod.', 'n 2015, the Foundation introduced six new categories to the Fund for the Region to address emerging needs such as the maintenance of Chautauqua Lake, physician recruitment and neighborhood revitalization to name a few.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa…', 'images/zJBXNbNoIqVPxTrCN2fz.png', '07', '07', '07', '142 Santa Monica, LA, USA', '07:30 am - 11:00 am', '07:30 am - 11:00 am', '2019-04-22 16:12:50', '2020-04-15 13:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(26, 'images/ZZyJXefHmrBMFaRDyObr.png', '2020-04-15 13:46:19', '2020-04-15 13:46:19'),
(27, 'images/zJBXNbNoIqVPxTrCN2fz.png', '2020-04-15 13:46:31', '2020-04-15 13:46:31'),
(28, 'images/uz27Ygn1dpSPBkMwFhiu.png', '2020-04-15 13:46:35', '2020-04-15 13:46:35'),
(29, 'images/PzLCDmz0rwm7Pqp42S87.png', '2020-04-15 13:46:39', '2020-04-15 13:46:39'),
(30, 'images/8cNKo9T23lc04BT2ggZ6.png', '2020-04-15 13:46:43', '2020-04-15 13:46:43'),
(31, 'images/14NBjye1VDtBh7GYgRxz.png', '2020-04-15 13:46:47', '2020-04-15 13:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'main-menu', '2019-04-13 14:55:31', '2019-04-13 14:55:31'),
(2, 'main-menu-gr', '2019-04-17 14:38:56', '2019-04-17 14:38:56'),
(3, 'main-menu-ar', '2019-04-24 08:25:22', '2019-04-24 08:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `order`, `title`, `url`, `target`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Home', '', '_self', '2019-04-17 13:22:26', '2019-04-17 13:22:26'),
(2, 1, 2, 'about', 'about', '_self', '2019-04-21 08:32:05', '2019-04-21 08:32:05'),
(3, 1, 3, 'Causes', 'Causes', '_self', '2019-04-17 13:23:02', '2019-04-17 13:23:02'),
(4, 1, 4, 'Event', 'Events', '_self', '2019-04-17 13:23:18', '2019-04-17 13:23:18'),
(5, 1, 5, 'Posts', 'Posts', '_self', '2019-04-17 13:24:03', '2019-04-17 13:24:03'),
(8, 1, 6, 'Contact Us', 'Contact', '_self', '2019-04-17 14:40:54', '2019-04-17 14:40:54'),
(9, 2, 1, 'ZUHAUSE', '', '_self', '2019-04-24 08:26:45', '2019-04-24 08:26:45'),
(10, 2, 2, 'Über', 'about', '_self', '2019-04-24 08:27:14', '2019-04-24 08:27:14'),
(11, 2, 3, 'Ursachen', 'Causes', '_self', '2019-04-24 08:30:34', '2019-04-24 08:30:34'),
(12, 2, 4, 'Veranstaltungen', 'Events', '_self', '2019-04-24 08:31:26', '2019-04-24 08:31:26'),
(13, 2, 5, 'Beiträge', 'Posts', '_self', '2019-04-24 08:32:01', '2019-04-24 08:32:01'),
(14, 2, 6, 'Kontaktiere uns', 'Contact', '_self', '2019-04-24 08:33:37', '2019-04-24 08:33:37'),
(15, 3, 1, 'الرئيسيه', '', '_self', '2019-04-24 08:34:28', '2019-04-24 08:34:28'),
(16, 3, 2, 'معلومات عنا', 'about', '_self', '2019-04-24 10:55:49', '2019-04-24 10:55:49'),
(17, 3, 3, 'الأسباب', 'Causes', '_self', '2019-04-24 10:56:19', '2019-04-24 10:56:19'),
(18, 3, 4, 'أحداث', 'Events', '_self', '2019-04-24 10:56:41', '2019-04-24 10:56:41'),
(19, 3, 5, 'المشاركات', 'Posts', '_self', '2019-04-24 10:57:07', '2019-04-24 10:57:07'),
(21, 3, 6, 'اتصل بنا', 'Contact', '_self', '2019-04-24 10:57:54', '2019-04-24 10:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_06_221802_create_roles_table', 2),
(4, '2014_10_12_000000_create_users_table', 3),
(5, '2019_04_08_124117_create_posts_table', 4),
(6, '2019_04_08_130832_create_categories_table', 5),
(7, '2019_04_08_131509_create_posts_table', 5),
(8, '2019_04_08_132134_create_menus_table', 6),
(9, '2019_04_08_132745_create_menu_items_table', 7),
(10, '2019_04_08_140014_create_advertisers_table', 8),
(11, '2019_04_08_141156_create_advertisers_table', 9),
(12, '2019_04_08_144316_create_settings_table', 10),
(13, '2019_04_08_180227_create_settings_table', 11),
(14, '2019_04_18_124656_create_settings_table', 12),
(15, '2019_04_20_110544_create_causes_table', 13),
(16, '2019_04_20_111522_create_events_table', 13),
(17, '2019_04_20_112859_create_galleries_table', 13),
(18, '2019_04_20_113049_create_messages_table', 13),
(19, '2019_04_20_120030_create_posts_table', 14),
(20, '2019_04_23_103420_create_comments_table', 15),
(21, '2014_10_12_200000_add_two_factor_columns_to_users_table', 16),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 16),
(23, '2021_01_23_103953_create_sessions_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL DEFAULT 1,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `Title_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `Title_en`, `Title_ar`, `Title_gr`, `body_en`, `body_ar`, `body_gr`, `slug`, `seo_title`, `excerpt`, `image`, `meta_description`, `meta_keywords`, `featured`, `created_at`, `updated_at`) VALUES
(4, 16, 3, 'RUN THE RUNWAY 2020', 'القلب إلى القلب', 'RUN THE RUNWAY 2020', '<p>At SickKids, we try our best to help patients and families feel as welcome and comfortable as they would at home. Donations of brand new toys, electronics, crafts, books, and games help us bring joy and comfort to children throughout their hospital stay or appointment. Donations may be used in our playrooms, as rewards after completing a test or undergoing a scary procedure, and/or as gift for a patient&rsquo;s birthday or other special milestone.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa&hellip;</p>', 'لكن sickkids، ونحن نبذل قصارى جهدنا لمساعدة المرضى وعائلاتهم يشعرون كما موضع ترحيب ومريحة كما يفعلون في المنزل. تبرعات من العلامة التجارية الجديدة اللعب، والإلكترونيات، والحرف، والكتب، والألعاب تساعدنا في جلب الفرح والراحة للأطفال في جميع أنحاء الإقامة في المستشفى أو التعيين. ويمكن استخدام التبرعات في قاعات اللعب لدينا، كمكافأة بعد الانتهاء من الاختبار أو خضوعه لإجراء مخيف، و / أو كهدايا لعيد ميلاد المريض أو غيرها من milestone.Lorem خاصة الجزر جدا، وأسعار الطماطم adipisici، ولكن مثل هذا الوقت أنها تحدث في العمل والطريق من السمنة. وسيسمح اقع أن نفعل ذلك مع قيصر انه لن يكون عليه. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. فابيان أو قاض للتغلب، في خطأ ...', 'At SickKids, we try our best to help patients and families feel as welcome and comfortable as they would at home. Donations of brand new toys, electronics, crafts, books, and games help us bring joy and comfort to children throughout their hospital stay or appointment. Donations may be used in our playrooms, as rewards after completing a test or undergoing a scary procedure, and/or as gift for a patient’s birthday or other special milestone.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa…', 'RUN-THE-RUNWAY-2019', 'RUN THE RUNWAY 2020', NULL, 'images/7FBCpo1R0lGniTIANcVm.png', NULL, NULL, NULL, '2019-04-22 17:13:43', '2020-04-15 13:42:37'),
(5, 16, 3, 'HOLIDAY GIFTS IN KIND', 'حتى الزناد مكتب يختلف رعاية صحية مجانية', 'HOLIDAY GIFTS IN KIND', '<p>At SickKids, we try our best to help patients and families feel as welcome and comfortable as they would at home. Donations of brand new toys, electronics, crafts, books, and games help us bring joy and comfort to children throughout their hospital stay or appointment. Donations may be used in our playrooms, as rewards after completing a test or undergoing a scary procedure, and/or as gift for a patient&rsquo;s birthday or other special milestone.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa&hellip;</p>', 'لكن sickkids، ونحن نبذل قصارى جهدنا لمساعدة المرضى وعائلاتهم يشعرون كما موضع ترحيب ومريحة كما يفعلون في المنزل. تبرعات من العلامة التجارية الجديدة اللعب، والإلكترونيات، والحرف، والكتب، والألعاب تساعدنا في جلب الفرح والراحة للأطفال في جميع أنحاء الإقامة في المستشفى أو التعيين. ويمكن استخدام التبرعات في قاعات اللعب لدينا، كمكافأة بعد الانتهاء من الاختبار أو خضوعه لإجراء مخيف، و / أو كهدايا لعيد ميلاد المريض أو غيرها من milestone.Lorem خاصة الجزر جدا، وأسعار الطماطم adipisici، ولكن مثل هذا الوقت أنها تحدث في العمل والطريق من السمنة. وسيسمح اقع أن نفعل ذلك مع قيصر انه لن يكون عليه. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. وهناك جزء كبير من دراساتنا، وتنتج تسعى إلى معرفة. فابيان أو قاض للتغلب، في خطأ ...', 'At SickKids, we try our best to help patients and families feel as welcome and comfortable as they would at home. Donations of brand new toys, electronics, crafts, books, and games help us bring joy and comfort to children throughout their hospital stay or appointment. Donations may be used in our playrooms, as rewards after completing a test or undergoing a scary procedure, and/or as gift for a patient’s birthday or other special milestone.Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere volun tate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa…', 'HOLIDAY-GIFTS-KIND', 'RUN THE RUNWAY 2019', NULL, 'images/lqDBsejY5VslJKnLgQNF.png', NULL, NULL, NULL, '2019-04-22 17:16:06', '2020-04-15 13:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'adminstartor', '2019-04-20 15:45:42', '2019-04-20 15:45:42'),
(4, 'User', 'Normal User', '2019-04-20 15:57:08', '2019-04-20 15:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QJmsAtRLWPMjDR5LVgQuvizBDBUI8AtdgqM0HV5B', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:99.0) Gecko/20100101 Firefox/99.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZFB3a3NiTUtDa2Qwa2llYTNKUVlyVG5JemRTUlZxNjBUMXBUb1gxbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1647692367);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'english',
  `SiteTitle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Googlemap` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LogoPicture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HomePicture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AboutPicture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaDescription` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MetaKeyWords` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GitHub` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Slack` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Dribbble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LinkedIn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Behance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Digg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Flickr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Vimeo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_App` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FaviconOne` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FaviconTwo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FaviconThree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_home_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_home_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_home_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_home_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_home_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_home_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_about_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_about_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_about_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_about_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_about_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_about_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_blog_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_blog_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_blog_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_two_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_two_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_two_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_three_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_three_gr` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_feature_three_ar` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `Language`, `SiteTitle`, `Name`, `Location`, `Googlemap`, `video`, `PhoneNumber`, `Email`, `LogoPicture`, `HomePicture`, `AboutPicture`, `MetaDescription`, `MetaKeyWords`, `Facebook`, `Twitter`, `GitHub`, `Slack`, `Dribbble`, `LinkedIn`, `Behance`, `Digg`, `Flickr`, `Vimeo`, `youtube`, `url_App`, `FaviconOne`, `FaviconTwo`, `FaviconThree`, `about_en`, `about_gr`, `about_ar`, `title_home_en`, `title_home_gr`, `title_home_ar`, `sub_title_home_en`, `sub_title_home_gr`, `sub_title_home_ar`, `title_about_en`, `title_about_gr`, `title_about_ar`, `content_about_en`, `content_about_gr`, `content_about_ar`, `content_blog_en`, `content_blog_gr`, `content_blog_ar`, `content_feature_en`, `content_feature_gr`, `content_feature_ar`, `content_feature_two_en`, `content_feature_two_gr`, `content_feature_two_ar`, `content_feature_three_en`, `content_feature_three_gr`, `content_feature_three_ar`, `created_at`, `updated_at`) VALUES
(1, 'English', 'BeCharity', 'BeCharity', '203, Envato Labs, Behind Alis Steet, Melbourne, Australia.', 'https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d791970.1834169542!2d34.864966098177646!3d39.173284959113225!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1555966354663!5m2!1sen!2seg', 'https://www.youtube.com/watch?v=QFy8iPBYDLU', 'London : 020-1455-236-34', ' contact@BeCharity.theme', 'images/logo0.png', 'images/fV3iGScsSWpCNVRI8qK8.png', 'images/zJBXNbNoIqVPxTrCN2fz.png', 'Every day we have plenty of opportunities to get angry, stressed or offended. But what you\'re doing when you indulge these negative emotions is giving something outside yourself power over your happiness. You can choose to not let little things upset you.', 'settings', 'https://www.facebook.com/Meteorsa/', 'settings', 'settings', 'setting', 'settings', 'settings', 'settings', 'settings', 'settings', 'settings', 'settings', 'settings', 'images/favicon-32x32.png', 'images/ms-icon-70x70.png', 'images/favicon-96x96.png', 'Do you want to be even more successful? Learn to love learning and growth. The more effort you put into improving your skills, the bigger the payoff you will get. Realize that things will be hard at first, but the rewards will be worth it.', 'Möchten Sie noch erfolgreicher sein? Lernen Sie, Lernen und Wachstum zu lieben. Je mehr Aufwand Sie in die Verbesserung Ihrer Fähigkeiten investieren, desto höher ist der Gewinn, den Sie erzielen. Stellen Sie fest, dass die Dinge zunächst hart sein werden, aber die Belohnungen werden es wert sein.', 'هل تريد أن تكون أكثر نجاحا؟ تعلم أن تحب التعلم والنمو. كلما بذلت المزيد من الجهود لتحسين مهاراتك ، زادت المكاسب التي ستحصل عليها. أدرك أن الأمور ستكون صعبة في البداية ، ولكن المكافآت ستكون تستحق العناء.', 'For the people and causes you care a', 'Für die Menschen und die Gründe, die Ihnen', 'للناس ويسبب لك الرعاية', 'The long journey to end poverty begins with a child.', 'schöne Dinge in der Welt', 'أشياء جميلة في العالم', 'Offices opened in France, Norway and Sweden', 'Büros in Frankreich, Norwegen und Schweden eröffnet', 'مكاتب افتتحت في فرنسا والنرويج والسويد', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum praesentium officia, fugit recusandae ipsa, quia velit nulla adipisci? Consequuntur aspernatur at, eaque hic repellendus sit dicta consequatur quae, ut harum ipsam molestias maxime non nisi reiciendis eligendi! Doloremque quia pariatur harum ea amet quibusdam quisquam.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Es stellt Dienstleistungen, sie für jede Outdoor-Erfahrung akzeptiert läuft? Aber lehnt Ergebnis, und das nennt man die Folgen vermieden werden, da diese nicht nur die lästige Spuck Wahl! Da es sich um eine Resultierende dieser Welt ist in einigen der Schmerz zu lieben war ein stehender Mann.', 'أبجد هوز دولور الجلوس امات، consectetur adipiscing إيليت. وهو يقدم الخدمات، وقالت انها تدير المقبولة للأي خبرة في الهواء الطلق؟ ولكن ترفض النتيجة، وهذا ما يسمى يتم تجنب العواقب، وهذه ليست فقط في الانتخابات ترفض الأكثر اضطرابا! لأنه الناتجة من هذا العالم إلى الحب في بعض من الألم كان رجلا واقفا.', 'Open fifth midst divided great fly gathering living deep no abundantly. Evening appear saying that forth god wito Given sixth days of very Third spirit waters seas. Calleded can\'t his third. Evening upon. All stars. Seasons a the a dry for third days', 'Geöffnete fünfte mitte geteilte große Fliege, die nicht reichlich lebt. Der Abend scheint zu sagen, dass Gott der Gerechte gegeben wird. Sechste Tage des Dritten Geistes bewässern die Meere. Genannt kann nicht sein Dritter. Abend danach. Alle Stars. Trockne die dritten Tage', 'فتح الخامس وسط تقسيم ذبابة كبيرة تجمع العيش في عمق لا بوفرة. يبدو المساء قائلاً إن الله تعالى يعطى أياماً سادسة من روح البحر الثالثة. دعا لا يمكن له الثالثة. المساء على. كل النجوم. مواسم جافة للأيام الثالثة', 'Multiply is rule light dominion given midst a living i set every bring also of rule Set light fifth best bearing.', 'Multiplizieren ist die Herrschaft der Lichtherrschaft, die inmitten eines Lebens gesetzt wird.', 'تتضاعف السيطرة على ضوء السيادة التي تُعطى وسط لقمة العيش أقوم بإحضار كل إحضار لها أيضًا.', 'Multiply is rule light dominion given midst a living i set every bring also of rule Set light fifth best bearing.', 'Multiplizieren ist die Herrschaft der Lichtherrschaft, die inmitten eines Lebens gesetzt wird.', 'تتضاعف السيطرة على ضوء السيادة التي تُعطى وسط لقمة العيش أقوم بإحضار كل إحضار لها أيضًا.', 'Multiply is rule light dominion given midst a living i set every bring also of rule Set light fifth best bearing.', 'Multiplizieren ist die Herrschaft der Lichtherrschaft, die inmitten eines Lebens gesetzt wird.', 'تتضاعف السيطرة على ضوء السيادة التي تُعطى وسط لقمة العيش أقوم بإحضار كل إحضار لها أيضًا.', NULL, '2020-04-15 13:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'storage/users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `avatar`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(16, 1, 'muhanaad', 'admin@causes.com', NULL, 'images/3.jpg', '$2y$10$cv1nFARHWoE4XmTzHosufusuqgsFosgtH6lBxwjnNft3SKQhapxXm', NULL, NULL, 'ptTCYKENqHudhmAbGFtHt95U20JupG7NKSZjqdIloxSdzw1FssldQCWGrruW', '2019-10-22 18:18:52', '2020-04-15 11:44:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisers`
--
ALTER TABLE `advertisers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `causes`
--
ALTER TABLE `causes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `advertisers`
--
ALTER TABLE `advertisers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `causes`
--
ALTER TABLE `causes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
