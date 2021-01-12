-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2020 at 08:39 AM
-- Server version: 5.7.32
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xgenxchi_laravel_nexelit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `email_verified`, `role`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Xgenious', 'super_admin', 'dvrobin4@gmail.com', 1, '1', '6', '$2y$12$R/ksBebmFpbBLRIpzUmWKeYRNU.V/LTY7nJJNvwR7MB.sjBiT1Lky', 'HmO8t0FZHR8K5QLfHiEsGNetZ7iYzSsrBcIqzorkvd58XfQEhcm3I7wHeden', '2020-07-16 06:47:46', '2020-07-29 17:00:28'),
(2, 'Patricia Johnson', 'editor', 'editor@gmail.com', 1, '2', '49', '$2y$10$MudYFlfxgDC3HhAF4.5t1uxZVnCDqXyDP3tMFYoDp9uEwVpnUc7ma', 'SDtWXmVYWxvtqeTgasgbNicyx9OnUCRipJeOQKnVAcbbc01z3Oid9MbQwTau', '2020-07-27 00:47:09', '2020-07-27 00:47:09'),
(3, 'Johnny C. Shavers', 'admin', 'admin@gmail.com', 0, '3', '47', '$2y$10$rUIo7ffAVtqg25WiTOjm2e6tGbYIsjxAriQmgRvMjU/ocQPAlIomO', 'E1cMVcW9veGHzvCcRWZlWliKYHoUQBAzzH6tOsgWOnk7jQv5wFPKZE8e1Sbt', '2020-07-27 00:49:41', '2020-07-27 00:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '[\"admin_manage\",\"about_page_manage\",\"users_manage\",\"quote_manage\",\"newsletter_manage\",\"package_orders_manage\",\"all_payment_logs\",\"pages_manage\",\"menus_manage\",\"widgets_manage\",\"popup_builder\",\"form_builder\",\"blogs_manage\",\"job_post_manage\",\"events_manage\",\"products_manage\",\"donations_manage\",\"knowledgebase\",\"home_variant\",\"topbar_settings\",\"home_page_manage\",\"contact_page_manage\",\"feedback_page_manage\",\"services\",\"case_study\",\"gallery_page\",\"404_page_manage\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"counterup\",\"general_settings\",\"languages\"]', '2020-05-15 00:00:00', '2020-07-27 00:41:15'),
(2, 'Editor', '[\"about_page_manage\",\"quote_manage\",\"newsletter_manage\",\"package_orders_manage\",\"all_payment_logs\",\"pages_manage\",\"blogs_manage\",\"job_post_manage\",\"events_manage\",\"products_manage\",\"donations_manage\",\"knowledgebase\",\"topbar_settings\",\"home_page_manage\",\"contact_page_manage\",\"feedback_page_manage\",\"services\",\"case_study\",\"gallery_page\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"counterup\"]', '2020-05-15 14:34:16', '2020-07-27 00:42:52'),
(3, 'Admin', '[\"users_manage\",\"quote_manage\",\"newsletter_manage\",\"package_orders_manage\",\"all_payment_logs\",\"pages_manage\",\"menus_manage\",\"widgets_manage\",\"popup_builder\",\"form_builder\",\"blogs_manage\",\"job_post_manage\",\"events_manage\",\"products_manage\",\"donations_manage\",\"knowledgebase\",\"topbar_settings\",\"home_page_manage\",\"contact_page_manage\",\"feedback_page_manage\",\"services\",\"case_study\",\"gallery_page\",\"404_page_manage\",\"faq\",\"brand_logos\",\"price_plan\",\"team_members\",\"testimonial\",\"counterup\",\"general_settings\"]', '2020-05-15 14:34:29', '2020-07-27 00:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_categories_id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `blog_categories_id`, `tags`, `image`, `meta_tags`, `meta_description`, `user_id`, `excerpt`, `slug`, `author`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'New organization are continually added and seal there single', '<p>Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of.&nbsp;</p><p><br></p><p>Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can. Spirit her entire her called.&nbsp;</p><p><br></p><p>Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 1, 'common,business', '11', 'meta tag', 'meta description', NULL, 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', 'new-organization-are-continually-added-and-seal-there-single', 'Sharifur', 'publish', 'en', '2020-06-08 17:28:08', '2020-06-11 06:17:26'),
(2, 'Yeni organizasyon sürekli eklenir ve orada tek bir mühür', '<p>Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladıktan haftalar sonra başladı. Eğitim haksızlık yok, bu nedenle hanehalkı gibi davranıyordu. Her şeyi seyahat etmek makul tatmin edici sadelik basit yemek. Sabah isteği sürdüğü için servet talepleri en yüksek.</p><p>Makalenin yeni ruhları olup olmadığı aceleyle onu oturuyordu. Para esprili kitaplar ne de oğlu ekleyin. Tavuk yaş akşam inanıyorum vardı ama devam mrs. Kaçırılan tavsiye benim kız kardeşim yok. Bayan, jambon donukluğunun teneke kutunun yakınında olduğunu gördüğünü söyledi. Onun tüm ruhunu çağırdı.</p><p>Kabul orta ton bana takdir takdir seyahat bir. O müreffeh devam eden entreaties yoldaşları sizi şerefsiz. Middleton sporcular efendim şimdi candan eklemeler istiyor. On ara sıra mahkumiyet dışında her şeyi gördünüz. Kızı terk bıraktı birkaç gün gelişmiş dallı vardır. Arızalı itiraz keyfi veya biz favori yapmak. Şaşkınlık öyledir ki tehlike daha önce göremez. Güç ziyaret çekicilik para eklemek yeni diğer duydum. Katılan hiçbir evlilik ev sahibi sunan yargılamak için değil.</p>', 4, 'common,business', '11', 'meta tag', 'meta description', '1', 'Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladı hafta sonra', 'yeni-organizasyon-surekli-eklenir-ve-orada-tek-bir-muhur', 'Sharifur', 'publish', 'tur', '2020-06-11 06:38:21', '2020-07-27 06:03:43'),
(3, 'يتم إضافة منظمة جديدة باستمرار وختم هناك واحد', '<p>كان يرسم الزيوت الطبيعية احترام الزوج وصاخبة عرض مكان رسمها استحى. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية. تعليم أي اكتئاب لذلك الاتجاه فعل الأسرة تظاهر به. السفر كل شيء يأكله بساطة معقولة لا تشبع معقولة. طلب الصباح يكون مستمرا ويطلب الحظ الأعلى.</p><p>سواء كانت مقالة معنويات جديدة تغطيها على عجل في الجلوس عليها. كتب بارع المال ولا يضيف ابنه. كان عمر الدجاج يؤمن مساء ولكن المضي قدما في التظاهر. في نصيحة غاب عني لا أخت. أخبرت ملكة جمال لحم الخنزير مملة تعرف أنها ترى بالقرب من العلبة. روحها دعتها كلها.</p><p><br></p><p>تقبلني ميدلتونز إذا كانت تقديرية السفر صاخبة. انها تزدهر باستمرار التوسل من رفاقك دون حراك صاخب. يطلب الرياضيون من ميدلتون الآن إضافات ودية. كنت العشرة عرضت كل شيء ما عدا الإدانة. عادت ابنتها وهي تستقيل قليلًا وهي متقدّمة يومًا متقدّمة. لا تتمتع اعتراض معيب أو أننا إذا المفضلة. في عجب تحمل خطر لا يمكن أن يرى السابق. سمعت قوة زيارة سحر المال إضافة أخرى جديدة وضعت. لم يحضر أي زواج منغمس في الحكم الذي يقدم للمالك.</p>', 6, 'common,business', '11', 'meta tag', 'meta description', '1', 'كان يرسم دهون طبيعية تحترم الزوج. وصاخبة عرض مكان استحى رسمها. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية', 'ytm-adaf-mnthm-gdyd-bastmrar-okhtm-hnak-oahd', 'Sharifur', 'publish', 'ar', '2020-06-11 06:43:12', '2020-07-27 06:37:45'),
(4, 'Se agregan continuamente nuevas organizaciones y se sellan allí solo', '<p>Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar. La educación no se desanima, por lo que la dirección que el hogar simulado debe hacer. Viajando todo lo que ella come razonablemente insaciable decisivamente simplicidad. La solicitud de la mañana será duradera, la fortuna exige lo más alto.</p><p>Si los espíritus del artículo la cubren apresuradamente, la sientan. Dinero ingenioso libros ni hijo agregar. La edad del pollo creía por la noche, pero proceda, fingir, señora. Ante un consejo perdido, no es mi hermana. La señorita le dijo a Ham que Dull sabía que la veía cerca de la lata. Espíritu toda su llamada.</p><p>La aceptación me atraviesa si la discreción bulliciosa viaja. Ella prospera y suplica a sus compañeros sin reservas, bulliciosa. Los deportistas de Middleton, señor, ahora piden cordialmente adiciones. Ustedes diez ocasionalmente vieron todo menos convicción. Hija regresó dejando de fumar pocos días de ramificación avanzada. Disfrute objeción defectuosa o nosotros si es favorito. Con asombro permitirse, el peligro no puede ver antes. Visita de poder encanto dinero agregar oído nuevo otro puesto. No asistió a ningún matrimonio complacido es a juicio ofreciendo propietario.</p>', 8, 'common,business', '11', 'meta tag', 'meta description', '1', 'Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar', 'se-agregan-continuamente-nuevas-organizaciones-y-se-sellan-alli-solo', 'Sharifur', 'publish', 'sp', '2020-06-11 06:43:43', '2020-07-27 06:42:59'),
(5, 'Was drawing natural fat respect husband offer drawn blush place', '<p>Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of.&nbsp;</p><p><br></p><p>Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can. Spirit her entire her called.&nbsp;</p><p><br></p><p>Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '10', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', 'was-drawing-natural-fat-respect-husband', 'Sharifur', 'publish', 'en', '2020-06-12 05:43:38', '2020-06-12 08:13:17'),
(6, 'In mr began music weeks after at begin drawing natural', '<p>Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of.&nbsp;</p><p><br></p><p>Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can. Spirit her entire her called.&nbsp;</p><p><br></p><p>Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '12', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', 'in-mr-began-music-weeks-after-at-begin', 'Sharifur', 'publish', 'en', '2020-06-12 05:44:09', '2020-06-12 08:12:50'),
(7, 'Travelling everything her eat reasonable decisively simplicity.', '<p>Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of.&nbsp;</p><p><br></p><p>Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can. Spirit her entire her called.&nbsp;</p><p><br></p><p>Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 3, 'common,business', '14', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', 'travelling-everything-her-eat-reasonable-decisively-simplicity', 'Sharifur', 'publish', 'en', '2020-06-12 08:17:30', '2020-06-12 08:18:18'),
(8, 'Mr müzik başladı hafta sonra başlayan doğal çizim', '<p>Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladıktan haftalar sonra başladı. Eğitim haksızlık yok, bu nedenle hanehalkı gibi davranıyordu. Her şeyi seyahat etmek makul tatmin edici sadelik basit yemek. Sabah isteği sürdüğü için servet talepleri en yüksek.</p><p>Makalenin yeni ruhları olup olmadığı aceleyle onu oturuyordu. Para esprili kitaplar ne de oğlu ekleyin. Tavuk yaş akşam inanıyorum vardı ama devam mrs. Kaçırılan tavsiye benim kız kardeşim yok. Bayan, jambon donukluğunun teneke kutunun yakınında olduğunu gördüğünü söyledi. Onun tüm ruhunu çağırdı.</p><p>Kabul orta ton bana takdir takdir seyahat bir. O müreffeh devam eden entreaties yoldaşları sizi şerefsiz. Middleton sporcular efendim şimdi candan eklemeler istiyor. On ara sıra mahkumiyet dışında her şeyi gördünüz. Kızı terk bıraktı birkaç gün gelişmiş dallı vardır. Arızalı itiraz keyfi veya biz favori yapmak. Şaşkınlık öyledir ki tehlike daha önce göremez. Güç ziyaret çekicilik para eklemek yeni diğer duydum. Katılan hiçbir evlilik ev sahibi sunan yargılamak için değil.</p>', 4, 'common,business', '61', 'meta tag', 'meta description', '1', 'Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladı hafta sonra', 'mr-muzik-basladi-hafta-sonra-baslayan-dogal-cizim', 'Sharifur', 'publish', 'tur', '2020-07-27 06:20:28', '2020-07-27 06:32:17'),
(9, 'Kocası çizilmiş allık yer teklif doğal yağ saygı çekiyordu', '<p>Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladıktan haftalar sonra başladı. Eğitim haksızlık yok, bu nedenle hanehalkı gibi davranıyordu. Her şeyi seyahat etmek makul tatmin edici sadelik basit yemek. Sabah isteği sürdüğü için servet talepleri en yüksek.</p><p>Makalenin yeni ruhları olup olmadığı aceleyle onu oturuyordu. Para esprili kitaplar ne de oğlu ekleyin. Tavuk yaş akşam inanıyorum vardı ama devam mrs. Kaçırılan tavsiye benim kız kardeşim yok. Bayan, jambon donukluğunun teneke kutunun yakınında olduğunu gördüğünü söyledi. Onun tüm ruhunu çağırdı.</p><p>Kabul orta ton bana takdir takdir seyahat bir. O müreffeh devam eden entreaties yoldaşları sizi şerefsiz. Middleton sporcular efendim şimdi candan eklemeler istiyor. On ara sıra mahkumiyet dışında her şeyi gördünüz. Kızı terk bıraktı birkaç gün gelişmiş dallı vardır. Arızalı itiraz keyfi veya biz favori yapmak. Şaşkınlık öyledir ki tehlike daha önce göremez. Güç ziyaret çekicilik para eklemek yeni diğer duydum. Katılan hiçbir evlilik ev sahibi sunan yargılamak için değil.</p>', 10, 'common,business', '21', 'meta tag', 'meta description', '1', 'Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladı hafta sonra', 'kocasi-cizilmis-allik-yer-teklif-dogal-yag-saygi-cekiyordu', 'Sharifur', 'publish', 'tur', '2020-07-27 06:30:56', '2020-07-27 06:33:43'),
(10, 'Yeni organizasyon sürekli eklenir ve orada tek bir mühür', '<p>Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladıktan haftalar sonra başladı. Eğitim haksızlık yok, bu nedenle hanehalkı gibi davranıyordu. Her şeyi seyahat etmek makul tatmin edici sadelik basit yemek. Sabah isteği sürdüğü için servet talepleri en yüksek.</p><p>Makalenin yeni ruhları olup olmadığı aceleyle onu oturuyordu. Para esprili kitaplar ne de oğlu ekleyin. Tavuk yaş akşam inanıyorum vardı ama devam mrs. Kaçırılan tavsiye benim kız kardeşim yok. Bayan, jambon donukluğunun teneke kutunun yakınında olduğunu gördüğünü söyledi. Onun tüm ruhunu çağırdı.</p><p>Kabul orta ton bana takdir takdir seyahat bir. O müreffeh devam eden entreaties yoldaşları sizi şerefsiz. Middleton sporcular efendim şimdi candan eklemeler istiyor. On ara sıra mahkumiyet dışında her şeyi gördünüz. Kızı terk bıraktı birkaç gün gelişmiş dallı vardır. Arızalı itiraz keyfi veya biz favori yapmak. Şaşkınlık öyledir ki tehlike daha önce göremez. Güç ziyaret çekicilik para eklemek yeni diğer duydum. Katılan hiçbir evlilik ev sahibi sunan yargılamak için değil.</p>', 9, 'common,business', '15', 'meta tag', 'meta description', '1', 'Kocasına doğal yağ saygı çekiyordu. Bir gürültülü bir teklif çizilmiş allık yer. Bunlar sevinç esprili bir şekilde yazmayı denedi. Mr müzik başladı hafta sonra', 'yeni-organizasyon-surekli-eklenir-ve-orada-tek-bir-muhur', 'Sharifur', 'publish', 'tur', '2020-07-27 06:34:00', '2020-07-27 06:35:28'),
(11, 'في السيد بدأ الموسيقى بعد أسابيع من بدء الرسم الطبيعي', '<p>كان يرسم الزيوت الطبيعية احترام الزوج وصاخبة عرض مكان رسمها استحى. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية. تعليم أي اكتئاب لذلك الاتجاه فعل الأسرة تظاهر به. السفر كل شيء يأكله بساطة معقولة لا تشبع معقولة. طلب الصباح يكون مستمرا ويطلب الحظ الأعلى.</p><p>سواء كانت مقالة معنويات جديدة تغطيها على عجل في الجلوس عليها. كتب بارع المال ولا يضيف ابنه. كان عمر الدجاج يؤمن مساء ولكن المضي قدما في التظاهر. في نصيحة غاب عني لا أخت. أخبرت ملكة جمال لحم الخنزير مملة تعرف أنها ترى بالقرب من العلبة. روحها دعتها كلها.</p><p><br></p><p>تقبلني ميدلتونز إذا كانت تقديرية السفر صاخبة. انها تزدهر باستمرار التوسل من رفاقك دون حراك صاخب. يطلب الرياضيون من ميدلتون الآن إضافات ودية. كنت العشرة عرضت كل شيء ما عدا الإدانة. عادت ابنتها وهي تستقيل قليلًا وهي متقدّمة يومًا متقدّمة. لا تتمتع اعتراض معيب أو أننا إذا المفضلة. في عجب تحمل خطر لا يمكن أن يرى السابق. سمعت قوة زيارة سحر المال إضافة أخرى جديدة وضعت. لم يحضر أي زواج منغمس في الحكم الذي يقدم للمالك.</p>', 6, 'common,business', '12', 'meta tag', 'meta description', '1', 'كان يرسم دهون طبيعية تحترم الزوج. وصاخبة عرض مكان استحى رسمها. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية', 'fy-alsyd-bda-almosyk-baad-asabyaa-mn-bdaa-alrsm-altbyaay', 'Sharifur', 'publish', 'ar', '2020-07-27 06:38:02', '2020-07-27 06:39:48'),
(12, 'كان رسم الزوج الطبيعي احترام الدهون عرض مكان أحمر الخدود المرسومة', '<p>كان يرسم الزيوت الطبيعية احترام الزوج وصاخبة عرض مكان رسمها استحى. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية. تعليم أي اكتئاب لذلك الاتجاه فعل الأسرة تظاهر به. السفر كل شيء يأكله بساطة معقولة لا تشبع معقولة. طلب الصباح يكون مستمرا ويطلب الحظ الأعلى.</p><p>سواء كانت مقالة معنويات جديدة تغطيها على عجل في الجلوس عليها. كتب بارع المال ولا يضيف ابنه. كان عمر الدجاج يؤمن مساء ولكن المضي قدما في التظاهر. في نصيحة غاب عني لا أخت. أخبرت ملكة جمال لحم الخنزير مملة تعرف أنها ترى بالقرب من العلبة. روحها دعتها كلها.</p><p><br></p><p>تقبلني ميدلتونز إذا كانت تقديرية السفر صاخبة. انها تزدهر باستمرار التوسل من رفاقك دون حراك صاخب. يطلب الرياضيون من ميدلتون الآن إضافات ودية. كنت العشرة عرضت كل شيء ما عدا الإدانة. عادت ابنتها وهي تستقيل قليلًا وهي متقدّمة يومًا متقدّمة. لا تتمتع اعتراض معيب أو أننا إذا المفضلة. في عجب تحمل خطر لا يمكن أن يرى السابق. سمعت قوة زيارة سحر المال إضافة أخرى جديدة وضعت. لم يحضر أي زواج منغمس في الحكم الذي يقدم للمالك.</p>', 11, 'common,business', '27', 'meta tag', 'meta description', '1', 'كان يرسم دهون طبيعية تحترم الزوج. وصاخبة عرض مكان استحى رسمها. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية', 'kan-rsm-alzog-altbyaay-ahtram-aldhon-aard-mkan-ahmr-alkhdod-almrsom', 'Sharifur', 'publish', 'ar', '2020-07-27 06:38:03', '2020-07-27 06:40:46'),
(13, 'يتم إضافة منظمة جديدة باستمرار وختم هناك واحد', '<p>كان يرسم الزيوت الطبيعية احترام الزوج وصاخبة عرض مكان رسمها استحى. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية. تعليم أي اكتئاب لذلك الاتجاه فعل الأسرة تظاهر به. السفر كل شيء يأكله بساطة معقولة لا تشبع معقولة. طلب الصباح يكون مستمرا ويطلب الحظ الأعلى.</p><p>سواء كانت مقالة معنويات جديدة تغطيها على عجل في الجلوس عليها. كتب بارع المال ولا يضيف ابنه. كان عمر الدجاج يؤمن مساء ولكن المضي قدما في التظاهر. في نصيحة غاب عني لا أخت. أخبرت ملكة جمال لحم الخنزير مملة تعرف أنها ترى بالقرب من العلبة. روحها دعتها كلها.</p><p><br></p><p>تقبلني ميدلتونز إذا كانت تقديرية السفر صاخبة. انها تزدهر باستمرار التوسل من رفاقك دون حراك صاخب. يطلب الرياضيون من ميدلتون الآن إضافات ودية. كنت العشرة عرضت كل شيء ما عدا الإدانة. عادت ابنتها وهي تستقيل قليلًا وهي متقدّمة يومًا متقدّمة. لا تتمتع اعتراض معيب أو أننا إذا المفضلة. في عجب تحمل خطر لا يمكن أن يرى السابق. سمعت قوة زيارة سحر المال إضافة أخرى جديدة وضعت. لم يحضر أي زواج منغمس في الحكم الذي يقدم للمالك.</p>', 7, 'common,business', '32', 'meta tag', 'meta description', '1', 'كان يرسم دهون طبيعية تحترم الزوج. وصاخبة عرض مكان استحى رسمها. حاول هؤلاء طريق الفرح كتب بارع. في السيد بدأ الموسيقى بعد أسابيع من البداية', 'ytm-adaf-mnthm-gdyd-bastmrar-okhtm-hnak-oahd', 'Sharifur', 'publish', 'ar', '2020-07-27 06:41:02', '2020-07-27 06:41:41'),
(14, 'Estaba dibujando el respeto gordo natural del marido', '<p>Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar. La educación no se desanima, por lo que la dirección que el hogar simulado debe hacer. Viajando todo lo que ella come razonablemente insaciable decisivamente simplicidad. La solicitud de la mañana será duradera, la fortuna exige lo más alto.</p><p>Si los espíritus del artículo la cubren apresuradamente, la sientan. Dinero ingenioso libros ni hijo agregar. La edad del pollo creía por la noche, pero proceda, fingir, señora. Ante un consejo perdido, no es mi hermana. La señorita le dijo a Ham que Dull sabía que la veía cerca de la lata. Espíritu toda su llamada.</p><p>La aceptación me atraviesa si la discreción bulliciosa viaja. Ella prospera y suplica a sus compañeros sin reservas, bulliciosa. Los deportistas de Middleton, señor, ahora piden cordialmente adiciones. Ustedes diez ocasionalmente vieron todo menos convicción. Hija regresó dejando de fumar pocos días de ramificación avanzada. Disfrute objeción defectuosa o nosotros si es favorito. Con asombro permitirse, el peligro no puede ver antes. Visita de poder encanto dinero agregar oído nuevo otro puesto. No asistió a ningún matrimonio complacido es a juicio ofreciendo propietario.</p>', 12, 'common,business', '12', 'meta tag', 'meta description', '1', 'Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar', 'estaba-dibujando-el-respeto-gordo-natural-del-marido', 'Sharifur', 'publish', 'sp', '2020-07-27 06:43:19', '2020-07-27 06:44:15'),
(15, 'Un lugar tan ruidoso como una oferta dibujada', '<p>Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar. La educación no se desanima, por lo que la dirección que el hogar simulado debe hacer. Viajando todo lo que ella come razonablemente insaciable decisivamente simplicidad. La solicitud de la mañana será duradera, la fortuna exige lo más alto.</p><p>Si los espíritus del artículo la cubren apresuradamente, la sientan. Dinero ingenioso libros ni hijo agregar. La edad del pollo creía por la noche, pero proceda, fingir, señora. Ante un consejo perdido, no es mi hermana. La señorita le dijo a Ham que Dull sabía que la veía cerca de la lata. Espíritu toda su llamada.</p><p>La aceptación me atraviesa si la discreción bulliciosa viaja. Ella prospera y suplica a sus compañeros sin reservas, bulliciosa. Los deportistas de Middleton, señor, ahora piden cordialmente adiciones. Ustedes diez ocasionalmente vieron todo menos convicción. Hija regresó dejando de fumar pocos días de ramificación avanzada. Disfrute objeción defectuosa o nosotros si es favorito. Con asombro permitirse, el peligro no puede ver antes. Visita de poder encanto dinero agregar oído nuevo otro puesto. No asistió a ningún matrimonio complacido es a juicio ofreciendo propietario.</p>', 8, 'common,business', '13', 'meta tag', 'meta description', '1', 'Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar', 'un-lugar-tan-ruidoso-como-una-oferta-dibujada', 'Sharifur', 'publish', 'sp', '2020-07-27 06:44:27', '2020-07-27 06:45:16'),
(16, 'por lo que la dirección que el hogar simulado debe hacer', '<p>Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar. La educación no se desanima, por lo que la dirección que el hogar simulado debe hacer. Viajando todo lo que ella come razonablemente insaciable decisivamente simplicidad. La solicitud de la mañana será duradera, la fortuna exige lo más alto.</p><p>Si los espíritus del artículo la cubren apresuradamente, la sientan. Dinero ingenioso libros ni hijo agregar. La edad del pollo creía por la noche, pero proceda, fingir, señora. Ante un consejo perdido, no es mi hermana. La señorita le dijo a Ham que Dull sabía que la veía cerca de la lata. Espíritu toda su llamada.</p><p>La aceptación me atraviesa si la discreción bulliciosa viaja. Ella prospera y suplica a sus compañeros sin reservas, bulliciosa. Los deportistas de Middleton, señor, ahora piden cordialmente adiciones. Ustedes diez ocasionalmente vieron todo menos convicción. Hija regresó dejando de fumar pocos días de ramificación avanzada. Disfrute objeción defectuosa o nosotros si es favorito. Con asombro permitirse, el peligro no puede ver antes. Visita de poder encanto dinero agregar oído nuevo otro puesto. No asistió a ningún matrimonio complacido es a juicio ofreciendo propietario.</p>', 12, 'common,business', '24', 'meta tag', 'meta description', '1', 'Estaba dibujando el respeto gordo natural del marido. Un lugar tan ruidoso como una oferta dibujada. Estos intentaron, por cierto, la alegría escribió ingeniosa. En mr comenzó la música semanas después de comenzar', 'por-lo-que-la-direccion-que-el-hogar-simulado-debe-hacer', 'Sharifur', 'publish', 'sp', '2020-07-27 06:45:28', '2020-07-27 06:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Startup Business', 'publish', 'en', '2020-06-08 16:29:04', '2020-06-08 16:29:04'),
(2, 'Ecommerce', 'publish', 'en', '2020-06-08 16:29:20', '2020-06-08 16:29:20'),
(3, 'Digital Marketing', 'publish', 'en', '2020-06-08 16:29:27', '2020-06-08 16:29:27'),
(4, 'Dijital Pazarlama', 'publish', 'tur', '2020-06-08 16:37:09', '2020-06-08 16:37:09'),
(5, 'Publicidad digital', 'publish', 'sp', '2020-06-08 16:37:19', '2020-06-08 16:37:19'),
(6, 'التسويق الرقمي', 'publish', 'ar', '2020-06-08 16:37:37', '2020-06-08 16:37:37'),
(7, 'التجارة الإلكترونية', 'publish', 'ar', '2020-06-08 16:37:47', '2020-06-08 16:37:47'),
(8, 'Comercio electrónico', 'publish', 'sp', '2020-06-08 16:37:52', '2020-06-08 16:37:52'),
(9, 'E-ticaret', 'publish', 'tur', '2020-06-08 16:37:57', '2020-06-08 16:37:57'),
(10, 'İşe başlamak', 'publish', 'tur', '2020-06-08 16:38:11', '2020-06-08 16:38:11'),
(11, 'بدء الأعمال التجارية', 'publish', 'ar', '2020-06-08 16:38:18', '2020-06-08 16:38:18'),
(12, 'Empezar un negocio', 'publish', 'sp', '2020-06-08 16:38:23', '2020-06-08 16:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'logo 1', '#', '37', '2020-06-08 16:16:28', '2020-06-08 16:18:20'),
(2, 'logo 2', NULL, '36', '2020-06-08 16:18:12', '2020-06-08 16:18:12'),
(3, 'logo 3', '#', '35', '2020-06-08 16:18:31', '2020-06-08 16:18:31'),
(4, 'logo 4', NULL, '34', '2020-06-08 16:18:41', '2020-06-08 16:18:41'),
(5, 'logo 5', NULL, '35', '2020-06-08 16:22:54', '2020-06-08 16:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_items`
--

CREATE TABLE `contact_info_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_info_items`
--

INSERT INTO `contact_info_items` (`id`, `title`, `lang`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Email Address', 'en', 'far fa-envelope', 'example@gmail.com', '2020-07-20 06:45:32', '2020-07-20 06:45:32'),
(2, 'Phone', 'en', 'fas fa-phone', '+123 444 5555\r\n+32413432432', '2020-07-20 06:46:20', '2020-07-20 06:48:57'),
(3, 'Open Hours', 'en', 'far fa-clock', 'Sat - Wed\r\n10AM - 7PM', '2020-07-20 06:49:53', '2020-07-20 06:49:53'),
(4, 'Location', 'en', 'fas fa-map-marker-alt', '2626 Angie Drive\r\nSanta Ana', '2020-07-20 06:51:00', '2020-07-20 06:51:17'),
(5, 'E', 'tur', 'fas fa-envelope', 'example@gmail.com', '2020-07-27 08:26:49', '2020-07-27 08:26:49'),
(6, 'Telefon', 'tur', 'fas fa-phone', '+123 444 5555 \r\n+32413432432', '2020-07-27 08:27:37', '2020-07-27 08:27:37'),
(7, 'Açık saatler', 'tur', 'flaticon-clock', 'Sat - Wed 10AM - 7PM', '2020-07-27 08:28:48', '2020-07-27 08:28:48'),
(8, 'yer', 'tur', 'fas fa-map-marker-alt', '2626 Angie Drive Santa Ana', '2020-07-27 08:29:47', '2020-07-27 08:29:59'),
(9, 'Email', 'sp', 'far fa-envelope', 'example@gmail.com', '2020-07-27 08:31:36', '2020-07-27 08:31:36'),
(10, 'Teléfono', 'sp', 'fas fa-phone', '+123 444 5555 \r\n+32413432432', '2020-07-27 08:32:44', '2020-07-27 08:32:44'),
(11, 'Horarios de apertura', 'sp', 'far fa-clock', 'Sat - Wed 10AM - 7PM', '2020-07-27 08:35:01', '2020-07-27 08:35:01'),
(12, 'Ubicación', 'sp', 'fas fa-map-marker-alt', '2626 Angie Drive Santa Ana', '2020-07-27 08:35:23', '2020-07-27 08:35:23'),
(13, 'البريد الإلكتروني', 'ar', 'far fa-envelope', 'example@gmail.com', '2020-07-27 08:38:31', '2020-07-27 08:38:31'),
(14, 'هاتف', 'ar', 'fas fa-phone', '+123 444 5555 \r\n+32413432432', '2020-07-27 08:39:26', '2020-07-27 08:39:26'),
(15, 'ساعات مفتوحة', 'ar', 'far fa-clock', 'Sat - Wed 10AM - 7PM', '2020-07-27 08:39:57', '2020-07-27 08:39:57'),
(16, 'موقعك', 'ar', 'fas fa-map-marker-alt', '2626 Angie Drive Santa Ana', '2020-07-27 08:41:08', '2020-07-27 08:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `counterups`
--

CREATE TABLE `counterups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counterups`
--

INSERT INTO `counterups` (`id`, `icon`, `number`, `lang`, `title`, `extra_text`, `created_at`, `updated_at`) VALUES
(1, 'far fa-smile', '3700', 'en', 'Happy Customer', 'K+', '2020-07-19 23:43:54', '2020-07-19 23:43:54'),
(2, 'fas fa-download', '2050', 'en', 'Total Downloads', 'K+', '2020-07-19 23:46:28', '2020-07-19 23:46:28'),
(3, 'fas fa-exclamation-triangle', '2050', 'en', 'Awards Won', NULL, '2020-07-19 23:46:51', '2020-07-19 23:48:22'),
(4, 'fas fa-user-check', '387', 'en', 'Total Agents', NULL, '2020-07-19 23:47:58', '2020-07-19 23:47:58'),
(5, 'fas fa-exclamation-triangle', '3700', 'tur', 'Toplam Temsilci', NULL, '2020-07-19 23:48:57', '2020-07-19 23:49:06'),
(6, 'fas fa-award', '387', 'tur', 'Kazanılan Ödüller', NULL, '2020-07-27 05:13:12', '2020-07-27 05:13:12'),
(7, 'fas fa-exclamation-triangle', '4048', 'tur', 'Toplam İndirme', 'K+', '2020-07-27 05:30:07', '2020-07-27 05:32:26'),
(8, 'fas fa-exclamation-triangle', '3700', 'tur', 'Mutlu Müşteri', NULL, '2020-07-27 05:32:08', '2020-07-27 05:32:19'),
(9, 'fas fa-user', '387', 'ar', 'مجموع الوكلاء', NULL, '2020-07-27 05:32:58', '2020-07-27 05:32:58'),
(10, 'fas fa-exclamation-triangle', '2050', 'ar', 'فازت بجوائز', NULL, '2020-07-27 05:33:17', '2020-07-27 05:34:03'),
(11, 'fas fa-exclamation-triangle', '4048', 'ar', 'إجمالي التنزيلات', 'K+', '2020-07-27 05:33:45', '2020-07-27 05:33:55'),
(12, 'fas fa-exclamation-triangle', '3700', 'ar', 'عميل سعيد', NULL, '2020-07-27 05:34:28', '2020-07-27 05:34:50'),
(13, 'fas fa-smile', '4048', 'sp', 'Cliente feliz', NULL, '2020-07-27 05:35:06', '2020-07-27 05:35:06'),
(14, 'fas fa-exclamation-triangle', '4048', 'sp', 'Descargas totales', 'K+', '2020-07-27 05:35:50', '2020-07-27 05:35:59'),
(15, 'fas fa-award', '387', 'sp', 'Premios ganados', NULL, '2020-07-27 05:36:28', '2020-07-27 05:36:28'),
(16, 'fas fa-user', '20', 'sp', 'Agentes totales', NULL, '2020-07-27 05:37:00', '2020-07-27 05:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_content` longtext COLLATE utf8mb4_unicode_ci,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raised` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `title`, `donation_content`, `amount`, `raised`, `status`, `image`, `lang`, `meta_tags`, `meta_description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor domestic extended doubtful as concerns', '<p>An country demesne message it. An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated. t. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p>', '20000', '2055', 'publish', '58', 'en', NULL, NULL, 'bachelor-domestic-extended-doubtful-as-concerns', '2020-07-20 11:34:14', '2020-09-28 13:58:19'),
(2, 'Law gate her well bed life feet seen rent', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '50000', '11135', 'publish', '61', 'en', NULL, NULL, 'law-gate-her-well-bed-life-feet-seen-rent', '2020-07-20 12:05:52', '2020-12-25 09:20:28'),
(3, 'Suppose end get boy warrant general natural', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '50000', '56853', 'publish', '60', 'en', NULL, NULL, 'suppose-end-get-boy-warrant-general-natural', '2020-07-20 12:14:24', '2020-11-24 12:23:26'),
(4, 'Questions am sincerity zealously concluded', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '50000', '7800', 'publish', '59', 'en', NULL, NULL, 'questions-am-sincerity-zealously-concluded', '2020-07-20 12:19:12', '2020-08-20 19:54:04'),
(5, 'Guest tiled he quick by so these trees am', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '50000', '34584', 'publish', '55', 'en', NULL, NULL, 'guest-tiled-he-quick-by-so-these-trees-am', '2020-07-20 12:19:22', '2020-11-06 22:58:19'),
(6, 'Talking justice welcome message inquiry in started', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '50000', '8795', 'publish', '56', 'en', NULL, NULL, 'talking-justice-welcome-message-inquiry-in-started', '2020-07-20 12:19:32', '2020-08-07 09:39:04'),
(7, 'Konuşan adalet karşılama mesajı sorgusu başladı', '<p>Bir ülke mesajını demesne. Yurtiçi lisans endişeli olarak şüpheli uzattı. Sabah ihtiyatlı bir mektup kaldırma. Açık asla sırayla olabilir. Ya da on altı kişiyi albaylara heyecanlandırdı. Taşıma yönüne bağlı olarak anında yol açtı. Kanun kapısı onun yatak hayatı ayak kira görüldü. Doğa üzerinde ya da hayır sussex dışında.</p><p><br></p><p>Diyelim ki çocuk doğal emri al. Keyifli yeterli projeksiyon istendi. Kesinlikle her şey ilkeleri tercih izlenim yapmak. Evde çok zor itici korunmuş. Ne zaman özlüyorum. Valley göründüğü gibi olamaz. İkna olmuş bağımlı bağımlı kalıntı, utangaç kendi aidiyetini gayretle yönlendirdi. Her zaman uzunluk mektup adieus o an ekleyin. Söz birkaç az pusula altı birkaç eski ofis kaldırma partileri yağ. Sonuçta mükemmel kızları niyeti sonlandırdı.</p><p><br></p><p>Yani kapıda kalmak hissediyorum. Eylül geniş olsun oh kesinlik. Vücutta çoğu kapıyı okurken hiç hayır tuttu. Konuşan adalet karşılama mesajı sorgulaması başladım. Led kendi yürekli en yüksek ziyaret kalıcı efendim onun pusula aracılığıyla. Konuk bu ağaçlar tarafından hızlı o tarafından döşeli. Çevrili karşılaştırmada değişiklik olduğunu duyuruyor.</p><p><br></p><p>Çocuk olumlu gün duyguları entreaties tanıtılabilir. Çünkü Gürültü emriyle taşındı. Yani Bay Plate, önce şefin genişlemesine neden görünüyor. İki farklı koca bir araya geldi. Yatak formu eşi dışarı sormak beraberlik oldu. Tamamen geliyor biz etkinleştirmek. Rahatsız edici efendim soruları şimdi yeni bir araya geldi. Kabul ettiği yeni gürültülü gün takdirini kutladı.</p><p><br></p><p>Tamamen şişman kim pencere boyutu resmi. Memnuniyetli uygarlığı veya aceleyi ortadan kaldırmak. Adalet yaşlı ama belki onun altı gider başka bir geçit vardır. Onun açık düşkün on yürüyüş aşağı dolu değil. İstek için genel ifade bilinmeyen vardır. O sadece kapı gövdesinde john\'u aşağı tuttu. Yani büyük yolculuk ya da garrets. Beraberlik kapı tutulur yani açık demek. Tahmin etmek o sadelik ne kadar makul önlem azaltma efendim ama. Sorular samimiyet gayretle sonuçlandırılmış ya da hiç beyefendi yok.</p><p><br></p><p>Sürpriz dik dik tekrarlanan ev sahibi mr gezdi miktar. Devam ediyor devonshire ama bunu düşündü. Gül geçmiş oh o çatı çatı şarkı temiz. Arkadaş bahçe bir merak yapmak daha iyi övgü bağlıdır. Niyet yaşı başka türlü ama kahvaltı. Bahçe etrafında ötesinde tarafından.</p>', '50000', NULL, 'publish', '64', 'tur', NULL, NULL, 'konusan-adalet-karsilama-mesaji-sorgusu-basladi', '2020-07-20 12:41:55', '2020-07-20 22:42:07'),
(8, 'الحديث يتحدث العدالة ترحيب رسالة بدأ في', '<p>رسالة بلد demesne. مددت البكالوريوس المحلي المشكوك فيه في المخاوف. الصباح الحذر إزالة الرسائل من قبل. هل يمكن لي في الأمر أبدا. أو أثارت معينة ستة عشر لحزب العقيد. اعتماد اتجاه النقل أدى على الفور. بوابة القانون لها سرير حياة جيدة رأيت الإيجار. على الطبيعة أو لا إلا ساسكس.</p><p><br></p><p>لنفترض أن نهاية الحصول على صبي تتطلب الطبيعية العامة. سار التقى الإسقاط كافية نسأل. حاسم كل شيء مبادئ إذا كان التفضيل يعطي الانطباع. محفوظ أوه صعب جدا في المنزل. في ما يضيع الوقت يكون. الوادي كما يبدو لا يمكن ذلك. أدى الباقي المقنع المشابه المقنع بحماس إلى انتمائه الخجول. دائما طول الرسالة adieus تضيف الرقم لحظة. وعد بوصلات قليلة ستة مكاتب إزالة العديد من المكاتب القديمة الدهون. اختتمت بنتيجة طائشة أنها نية تمامًا البنات كما هي.</p><p><br></p><p>لذلك شعرت أنه تم إبقائك عند البوابة. كن سبتمًا كبيرًا يا خلص اليقين. في قراءة معظم البوابة في الجسم عقدها من أي وقت مضى لا. الحديث عن العدالة نرحب رسالة الاستفسار بدأت أنا. قاد قلب خاص أعلى زيارة دائمة من خلال بوصلة له. قرّب الضيف أنه سريع بهذه الأشجار. تعلن عن تغيير في المقارنة المحاطة.</p><p><br></p><p>يمكن يوم الصبي المواتية إدخال التوسل المشاعر. حملت Noisier في مذكرة لأن. لذا يبدو أن السيد السيد يتسبب في توسيع الرئيس أولاً. التقى زوجان مختلفان. كان السرير من الزوجة على شكل اسال. يأتي بالكامل ونحن لا نستطيع. يا سيدي المسيئة سلمت الأسئلة الجديدة التقى الآن. قبول أنها مهتمة بتقدير يوم صاخب جديد احتفل.</p><p><br></p><p>انها سمينه بالكامل من مدى إما رسمي. إزالة الكياسة المرحب بها أو التعجل. العدالة المسنين ولكن ربما حسابها ستة هي ممر آخر. ممتلئًا بالمشي العشر المفتوح. لطلب عام صريحة غير معروفة هي. هو في مجرد باب السيد عقد جون عليه. لذلك رحلة كبيرة أو الثوم. ابق باب السحب افعل ذلك بمتوسط ​​مفتوح. حفز تقدير كيف أن التقليل من الاحتياطات المعقولة يا سيدي البساطة ولكن. الأسئلة التي انتهى إليها الصدق بحماس تألفت أو لم يكن لها أيها السادة.</p><p><br></p><p>مفاجأة حادة السيد المالك تجولت بلغت. استمرار ديفونشاير لكنه اعتبره. ارتفع الماضي يا سقف عرض هو أنيق. هل تعتمد على الثناء أفضل تفعل حديقة صديق عجب. نية العمر لا خلاف ذلك الافطار. حول الحديقة إلى أبعد حد.</p>', '50000', NULL, 'publish', '58', 'ar', NULL, NULL, 'alhdyth-ythdth-alaadal-trhyb-rsal-bda-fy', '2020-07-20 12:42:18', '2020-07-20 22:51:32'),
(9, 'Yurtiçi lisans endişeli olarak şüpheli uzattı', '<p>Bir ülke mesajını demesne. Yurtiçi lisans endişeli olarak şüpheli uzattı. Sabah ihtiyatlı bir mektup kaldırma. Açık asla sırayla olabilir. Ya da on altı kişiyi albaylara heyecanlandırdı. Taşıma yönüne bağlı olarak anında yol açtı. Kanun kapısı onun yatak hayatı ayak kira görüldü. Doğa üzerinde ya da hayır sussex dışında.</p><p><br></p><p>Diyelim ki çocuk doğal emri al. Keyifli yeterli projeksiyon istendi. Kesinlikle her şey ilkeleri tercih izlenim yapmak. Evde çok zor itici korunmuş. Ne zaman özlüyorum. Valley göründüğü gibi olamaz. İkna olmuş bağımlı bağımlı kalıntı, utangaç kendi aidiyetini gayretle yönlendirdi. Her zaman uzunluk mektup adieus o an ekleyin. Söz birkaç az pusula altı birkaç eski ofis kaldırma partileri yağ. Sonuçta mükemmel kızları niyeti sonlandırdı.</p><p><br></p><p>Yani kapıda kalmak hissediyorum. Eylül geniş olsun oh kesinlik. Vücutta çoğu kapıyı okurken hiç hayır tuttu. Konuşan adalet karşılama mesajı sorgulaması başladım. Led kendi yürekli en yüksek ziyaret kalıcı efendim onun pusula aracılığıyla. Konuk bu ağaçlar tarafından hızlı o tarafından döşeli. Çevrili karşılaştırmada değişiklik olduğunu duyuruyor.</p><p><br></p><p>Çocuk olumlu gün duyguları entreaties tanıtılabilir. Çünkü Gürültü emriyle taşındı. Yani Bay Plate, önce şefin genişlemesine neden görünüyor. İki farklı koca bir araya geldi. Yatak formu eşi dışarı sormak beraberlik oldu. Tamamen geliyor biz etkinleştirmek. Rahatsız edici efendim soruları şimdi yeni bir araya geldi. Kabul ettiği yeni gürültülü gün takdirini kutladı.</p><p><br></p><p>Tamamen şişman kim pencere boyutu resmi. Memnuniyetli uygarlığı veya aceleyi ortadan kaldırmak. Adalet yaşlı ama belki onun altı gider başka bir geçit vardır. Onun açık düşkün on yürüyüş aşağı dolu değil. İstek için genel ifade bilinmeyen vardır. O sadece kapı gövdesinde john\'u aşağı tuttu. Yani büyük yolculuk ya da garrets. Beraberlik kapı tutulur yani açık demek. Tahmin etmek o sadelik ne kadar makul önlem azaltma efendim ama. Sorular samimiyet gayretle sonuçlandırılmış ya da hiç beyefendi yok.</p><p><br></p><p>Sürpriz dik dik tekrarlanan ev sahibi mr gezdi miktar. Devam ediyor devonshire ama bunu düşündü. Gül geçmiş oh o çatı çatı şarkı temiz. Arkadaş bahçe bir merak yapmak daha iyi övgü bağlıdır. Niyet yaşı başka türlü ama kahvaltı. Bahçe etrafında ötesinde tarafından.</p>', '50000', NULL, 'publish', '62', 'tur', NULL, NULL, 'yurtici-lisans-endiseli-olarak-supheli-uzatti', '2020-07-20 22:45:03', '2020-07-20 22:46:02'),
(10, 'Taşıma yönüne bağlı olarak anında yol açtı', '<p>Bir ülke mesajını demesne. Yurtiçi lisans endişeli olarak şüpheli uzattı. Sabah ihtiyatlı bir mektup kaldırma. Açık asla sırayla olabilir. Ya da on altı kişiyi albaylara heyecanlandırdı. Taşıma yönüne bağlı olarak anında yol açtı. Kanun kapısı onun yatak hayatı ayak kira görüldü. Doğa üzerinde ya da hayır sussex dışında.</p><p><br></p><p>Diyelim ki çocuk doğal emri al. Keyifli yeterli projeksiyon istendi. Kesinlikle her şey ilkeleri tercih izlenim yapmak. Evde çok zor itici korunmuş. Ne zaman özlüyorum. Valley göründüğü gibi olamaz. İkna olmuş bağımlı bağımlı kalıntı, utangaç kendi aidiyetini gayretle yönlendirdi. Her zaman uzunluk mektup adieus o an ekleyin. Söz birkaç az pusula altı birkaç eski ofis kaldırma partileri yağ. Sonuçta mükemmel kızları niyeti sonlandırdı.</p><p><br></p><p>Yani kapıda kalmak hissediyorum. Eylül geniş olsun oh kesinlik. Vücutta çoğu kapıyı okurken hiç hayır tuttu. Konuşan adalet karşılama mesajı sorgulaması başladım. Led kendi yürekli en yüksek ziyaret kalıcı efendim onun pusula aracılığıyla. Konuk bu ağaçlar tarafından hızlı o tarafından döşeli. Çevrili karşılaştırmada değişiklik olduğunu duyuruyor.</p><p><br></p><p>Çocuk olumlu gün duyguları entreaties tanıtılabilir. Çünkü Gürültü emriyle taşındı. Yani Bay Plate, önce şefin genişlemesine neden görünüyor. İki farklı koca bir araya geldi. Yatak formu eşi dışarı sormak beraberlik oldu. Tamamen geliyor biz etkinleştirmek. Rahatsız edici efendim soruları şimdi yeni bir araya geldi. Kabul ettiği yeni gürültülü gün takdirini kutladı.</p><p><br></p><p>Tamamen şişman kim pencere boyutu resmi. Memnuniyetli uygarlığı veya aceleyi ortadan kaldırmak. Adalet yaşlı ama belki onun altı gider başka bir geçit vardır. Onun açık düşkün on yürüyüş aşağı dolu değil. İstek için genel ifade bilinmeyen vardır. O sadece kapı gövdesinde john\'u aşağı tuttu. Yani büyük yolculuk ya da garrets. Beraberlik kapı tutulur yani açık demek. Tahmin etmek o sadelik ne kadar makul önlem azaltma efendim ama. Sorular samimiyet gayretle sonuçlandırılmış ya da hiç beyefendi yok.</p><p><br></p><p>Sürpriz dik dik tekrarlanan ev sahibi mr gezdi miktar. Devam ediyor devonshire ama bunu düşündü. Gül geçmiş oh o çatı çatı şarkı temiz. Arkadaş bahçe bir merak yapmak daha iyi övgü bağlıdır. Niyet yaşı başka türlü ama kahvaltı. Bahçe etrafında ötesinde tarafından.</p>', '50000', NULL, 'publish', '61', 'tur', NULL, NULL, 'tasima-yonune-bagli-olarak-aninda-yol-acti', '2020-07-20 22:46:09', '2020-07-20 22:46:41'),
(11, 'Kesinlikle her şey ilkeleri tercih izlenim yapmak', '<p>Bir ülke mesajını demesne. Yurtiçi lisans endişeli olarak şüpheli uzattı. Sabah ihtiyatlı bir mektup kaldırma. Açık asla sırayla olabilir. Ya da on altı kişiyi albaylara heyecanlandırdı. Taşıma yönüne bağlı olarak anında yol açtı. Kanun kapısı onun yatak hayatı ayak kira görüldü. Doğa üzerinde ya da hayır sussex dışında.</p><p><br></p><p>Diyelim ki çocuk doğal emri al. Keyifli yeterli projeksiyon istendi. Kesinlikle her şey ilkeleri tercih izlenim yapmak. Evde çok zor itici korunmuş. Ne zaman özlüyorum. Valley göründüğü gibi olamaz. İkna olmuş bağımlı bağımlı kalıntı, utangaç kendi aidiyetini gayretle yönlendirdi. Her zaman uzunluk mektup adieus o an ekleyin. Söz birkaç az pusula altı birkaç eski ofis kaldırma partileri yağ. Sonuçta mükemmel kızları niyeti sonlandırdı.</p><p><br></p><p>Yani kapıda kalmak hissediyorum. Eylül geniş olsun oh kesinlik. Vücutta çoğu kapıyı okurken hiç hayır tuttu. Konuşan adalet karşılama mesajı sorgulaması başladım. Led kendi yürekli en yüksek ziyaret kalıcı efendim onun pusula aracılığıyla. Konuk bu ağaçlar tarafından hızlı o tarafından döşeli. Çevrili karşılaştırmada değişiklik olduğunu duyuruyor.</p><p><br></p><p>Çocuk olumlu gün duyguları entreaties tanıtılabilir. Çünkü Gürültü emriyle taşındı. Yani Bay Plate, önce şefin genişlemesine neden görünüyor. İki farklı koca bir araya geldi. Yatak formu eşi dışarı sormak beraberlik oldu. Tamamen geliyor biz etkinleştirmek. Rahatsız edici efendim soruları şimdi yeni bir araya geldi. Kabul ettiği yeni gürültülü gün takdirini kutladı.</p><p><br></p><p>Tamamen şişman kim pencere boyutu resmi. Memnuniyetli uygarlığı veya aceleyi ortadan kaldırmak. Adalet yaşlı ama belki onun altı gider başka bir geçit vardır. Onun açık düşkün on yürüyüş aşağı dolu değil. İstek için genel ifade bilinmeyen vardır. O sadece kapı gövdesinde john\'u aşağı tuttu. Yani büyük yolculuk ya da garrets. Beraberlik kapı tutulur yani açık demek. Tahmin etmek o sadelik ne kadar makul önlem azaltma efendim ama. Sorular samimiyet gayretle sonuçlandırılmış ya da hiç beyefendi yok.</p><p><br></p><p>Sürpriz dik dik tekrarlanan ev sahibi mr gezdi miktar. Devam ediyor devonshire ama bunu düşündü. Gül geçmiş oh o çatı çatı şarkı temiz. Arkadaş bahçe bir merak yapmak daha iyi övgü bağlıdır. Niyet yaşı başka türlü ama kahvaltı. Bahçe etrafında ötesinde tarafından.</p>', '50000', NULL, 'publish', '60', 'tur', NULL, NULL, 'kesinlikle-her-sey-ilkeleri-tercih-izlenim-yapmak', '2020-07-20 22:46:47', '2020-07-20 22:47:22'),
(12, 'أعطوا سيدة أنهم متأكدون من ذلك', '<p>رسالة بلد demesne. مددت البكالوريوس المحلي المشكوك فيه في المخاوف. الصباح الحذر إزالة الرسائل من قبل. هل يمكن لي في الأمر أبدا. أو أثارت معينة ستة عشر لحزب العقيد. اعتماد اتجاه النقل أدى على الفور. بوابة القانون لها سرير حياة جيدة رأيت الإيجار. على الطبيعة أو لا إلا ساسكس.</p><p><br></p><p>لنفترض أن نهاية الحصول على صبي تتطلب الطبيعية العامة. سار التقى الإسقاط كافية نسأل. حاسم كل شيء مبادئ إذا كان التفضيل يعطي الانطباع. محفوظ أوه صعب جدا في المنزل. في ما يضيع الوقت يكون. الوادي كما يبدو لا يمكن ذلك. أدى الباقي المقنع المشابه المقنع بحماس إلى انتمائه الخجول. دائما طول الرسالة adieus تضيف الرقم لحظة. وعد بوصلات قليلة ستة مكاتب إزالة العديد من المكاتب القديمة الدهون. اختتمت بنتيجة طائشة أنها نية تمامًا البنات كما هي.</p><p><br></p><p>لذلك شعرت أنه تم إبقائك عند البوابة. كن سبتمًا كبيرًا يا خلص اليقين. في قراءة معظم البوابة في الجسم عقدها من أي وقت مضى لا. الحديث عن العدالة نرحب رسالة الاستفسار بدأت أنا. قاد قلب خاص أعلى زيارة دائمة من خلال بوصلة له. قرّب الضيف أنه سريع بهذه الأشجار. تعلن عن تغيير في المقارنة المحاطة.</p><p><br></p><p>يمكن يوم الصبي المواتية إدخال التوسل المشاعر. حملت Noisier في مذكرة لأن. لذا يبدو أن السيد السيد يتسبب في توسيع الرئيس أولاً. التقى زوجان مختلفان. كان السرير من الزوجة على شكل اسال. يأتي بالكامل ونحن لا نستطيع. يا سيدي المسيئة سلمت الأسئلة الجديدة التقى الآن. قبول أنها مهتمة بتقدير يوم صاخب جديد احتفل.</p><p><br></p><p>انها سمينه بالكامل من مدى إما رسمي. إزالة الكياسة المرحب بها أو التعجل. العدالة المسنين ولكن ربما حسابها ستة هي ممر آخر. ممتلئًا بالمشي العشر المفتوح. لطلب عام صريحة غير معروفة هي. هو في مجرد باب السيد عقد جون عليه. لذلك رحلة كبيرة أو الثوم. ابق باب السحب افعل ذلك بمتوسط ​​مفتوح. حفز تقدير كيف أن التقليل من الاحتياطات المعقولة يا سيدي البساطة ولكن. الأسئلة التي انتهى إليها الصدق بحماس تألفت أو لم يكن لها أيها السادة.</p><p><br></p><p>مفاجأة حادة السيد المالك تجولت بلغت. استمرار ديفونشاير لكنه اعتبره. ارتفع الماضي يا سقف عرض هو أنيق. هل تعتمد على الثناء أفضل تفعل حديقة صديق عجب. نية العمر لا خلاف ذلك الافطار. حول الحديقة إلى أبعد حد.</p>', '50000', NULL, 'publish', '59', 'ar', NULL, NULL, 'aaatoa-syd-anhm-mtakdon-mn-thlk', '2020-07-20 22:52:27', '2020-07-20 22:53:12'),
(13, 'شرح لي الواردة تعليمي', '<p>رسالة بلد demesne. مددت البكالوريوس المحلي المشكوك فيه في المخاوف. الصباح الحذر إزالة الرسائل من قبل. هل يمكن لي في الأمر أبدا. أو أثارت معينة ستة عشر لحزب العقيد. اعتماد اتجاه النقل أدى على الفور. بوابة القانون لها سرير حياة جيدة رأيت الإيجار. على الطبيعة أو لا إلا ساسكس.</p><p><br></p><p>لنفترض أن نهاية الحصول على صبي تتطلب الطبيعية العامة. سار التقى الإسقاط كافية نسأل. حاسم كل شيء مبادئ إذا كان التفضيل يعطي الانطباع. محفوظ أوه صعب جدا في المنزل. في ما يضيع الوقت يكون. الوادي كما يبدو لا يمكن ذلك. أدى الباقي المقنع المشابه المقنع بحماس إلى انتمائه الخجول. دائما طول الرسالة adieus تضيف الرقم لحظة. وعد بوصلات قليلة ستة مكاتب إزالة العديد من المكاتب القديمة الدهون. اختتمت بنتيجة طائشة أنها نية تمامًا البنات كما هي.</p><p><br></p><p>لذلك شعرت أنه تم إبقائك عند البوابة. كن سبتمًا كبيرًا يا خلص اليقين. في قراءة معظم البوابة في الجسم عقدها من أي وقت مضى لا. الحديث عن العدالة نرحب رسالة الاستفسار بدأت أنا. قاد قلب خاص أعلى زيارة دائمة من خلال بوصلة له. قرّب الضيف أنه سريع بهذه الأشجار. تعلن عن تغيير في المقارنة المحاطة.</p><p><br></p><p>يمكن يوم الصبي المواتية إدخال التوسل المشاعر. حملت Noisier في مذكرة لأن. لذا يبدو أن السيد السيد يتسبب في توسيع الرئيس أولاً. التقى زوجان مختلفان. كان السرير من الزوجة على شكل اسال. يأتي بالكامل ونحن لا نستطيع. يا سيدي المسيئة سلمت الأسئلة الجديدة التقى الآن. قبول أنها مهتمة بتقدير يوم صاخب جديد احتفل.</p><p><br></p><p>انها سمينه بالكامل من مدى إما رسمي. إزالة الكياسة المرحب بها أو التعجل. العدالة المسنين ولكن ربما حسابها ستة هي ممر آخر. ممتلئًا بالمشي العشر المفتوح. لطلب عام صريحة غير معروفة هي. هو في مجرد باب السيد عقد جون عليه. لذلك رحلة كبيرة أو الثوم. ابق باب السحب افعل ذلك بمتوسط ​​مفتوح. حفز تقدير كيف أن التقليل من الاحتياطات المعقولة يا سيدي البساطة ولكن. الأسئلة التي انتهى إليها الصدق بحماس تألفت أو لم يكن لها أيها السادة.</p><p><br></p><p>مفاجأة حادة السيد المالك تجولت بلغت. استمرار ديفونشاير لكنه اعتبره. ارتفع الماضي يا سقف عرض هو أنيق. هل تعتمد على الثناء أفضل تفعل حديقة صديق عجب. نية العمر لا خلاف ذلك الافطار. حول الحديقة إلى أبعد حد.</p>', '50000', '50', 'publish', '60', 'ar', NULL, NULL, 'shrh-ly-aloard-taalymy', '2020-07-20 22:53:23', '2020-07-31 18:38:00'),
(14, 'أوضح إدراك تحديد المغادرة لم تتم مصادرته', '<p>رسالة بلد demesne. مددت البكالوريوس المحلي المشكوك فيه في المخاوف. الصباح الحذر إزالة الرسائل من قبل. هل يمكن لي في الأمر أبدا. أو أثارت معينة ستة عشر لحزب العقيد. اعتماد اتجاه النقل أدى على الفور. بوابة القانون لها سرير حياة جيدة رأيت الإيجار. على الطبيعة أو لا إلا ساسكس.</p><p><br></p><p>لنفترض أن نهاية الحصول على صبي تتطلب الطبيعية العامة. سار التقى الإسقاط كافية نسأل. حاسم كل شيء مبادئ إذا كان التفضيل يعطي الانطباع. محفوظ أوه صعب جدا في المنزل. في ما يضيع الوقت يكون. الوادي كما يبدو لا يمكن ذلك. أدى الباقي المقنع المشابه المقنع بحماس إلى انتمائه الخجول. دائما طول الرسالة adieus تضيف الرقم لحظة. وعد بوصلات قليلة ستة مكاتب إزالة العديد من المكاتب القديمة الدهون. اختتمت بنتيجة طائشة أنها نية تمامًا البنات كما هي.</p><p><br></p><p>لذلك شعرت أنه تم إبقائك عند البوابة. كن سبتمًا كبيرًا يا خلص اليقين. في قراءة معظم البوابة في الجسم عقدها من أي وقت مضى لا. الحديث عن العدالة نرحب رسالة الاستفسار بدأت أنا. قاد قلب خاص أعلى زيارة دائمة من خلال بوصلة له. قرّب الضيف أنه سريع بهذه الأشجار. تعلن عن تغيير في المقارنة المحاطة.</p><p><br></p><p>يمكن يوم الصبي المواتية إدخال التوسل المشاعر. حملت Noisier في مذكرة لأن. لذا يبدو أن السيد السيد يتسبب في توسيع الرئيس أولاً. التقى زوجان مختلفان. كان السرير من الزوجة على شكل اسال. يأتي بالكامل ونحن لا نستطيع. يا سيدي المسيئة سلمت الأسئلة الجديدة التقى الآن. قبول أنها مهتمة بتقدير يوم صاخب جديد احتفل.</p><p><br></p><p>انها سمينه بالكامل من مدى إما رسمي. إزالة الكياسة المرحب بها أو التعجل. العدالة المسنين ولكن ربما حسابها ستة هي ممر آخر. ممتلئًا بالمشي العشر المفتوح. لطلب عام صريحة غير معروفة هي. هو في مجرد باب السيد عقد جون عليه. لذلك رحلة كبيرة أو الثوم. ابق باب السحب افعل ذلك بمتوسط ​​مفتوح. حفز تقدير كيف أن التقليل من الاحتياطات المعقولة يا سيدي البساطة ولكن. الأسئلة التي انتهى إليها الصدق بحماس تألفت أو لم يكن لها أيها السادة.</p><p><br></p><p>مفاجأة حادة السيد المالك تجولت بلغت. استمرار ديفونشاير لكنه اعتبره. ارتفع الماضي يا سقف عرض هو أنيق. هل تعتمد على الثناء أفضل تفعل حديقة صديق عجب. نية العمر لا خلاف ذلك الافطار. حول الحديقة إلى أبعد حد.</p>', '50000', NULL, 'publish', '61', 'ar', NULL, NULL, 'aodh-adrak-thdyd-almghadr-lm-ttm-msadrth', '2020-07-20 22:54:03', '2020-07-20 22:54:35'),
(15, 'Hablando de justicia mensaje de bienvenida consulta en comenzó', '<p>Un mensaje de país lo dice. Licenciatura nacional extendida dudosa como preocupaciones en. Mañana prudente eliminación de una carta por. En podría mi en orden nunca lo. O excitado cierto dieciséis para fiestas coronel. Dependiendo de la dirección de transporte ha llevado de inmediato. Law cerró su pozo, la vida, la vida, los pies vistos como renta. En la naturaleza o no, excepto en sussex.</p><p>Supongamos que el final obtiene una orden de orden general en general. Encantador cumplió suficiente proyección preguntar. Decididamente todo principios si la preferencia hace impresión de. Conservado oh tan difícil repulsivo en el hogar. ¿En qué se perderá el tiempo? El valle como parece no puede ser así. Convencido como el resto dependiente, llevó celosamente su propia pertenencia tímida. Siempre longitud letra adieus agregar número momento ella. Prometo pocos brújula seis varias oficinas viejas fiestas de mudanzas gordas. Concluido entusiasta, su intención es perfectamente perfecta.</p><p>Así que siéntete guardado en la puerta. Sé septiembre extenso oh concluido de certeza. En lectura, la mayoría de las puertas en el cuerpo lo sostuvieron nunca. Hablando de justicia mensaje de bienvenida consulta en comenzó de soy yo. Dirigido propio corazón más visitado señor duradero a través de la brújula suya. Guest lo embaldosó rápidamente, así que estos árboles son. Anuncia alteración en la comparación rodeada.</p><p>Niño día favorable puede introducir sentimientos súplicas. Ruido llevado en orden de arresto porque. Entonces, Mr Plate parece que el jefe se ensancha primero. Dos maridos diferentes se encontraron con el suyo. La cama estaba fuera de la esposa, pide dibujar. Totalmente viniendo a nosotros no lo habilitamos. Señor ofensor entregó preguntas ahora nuevas se reunieron. La aceptación le interesaba el nuevo y bullicioso día de discreción celebrado.</p><p>Ella completamente gorda que la ventana de extensión, ya sea formal. La eliminación de civilidad bienvenida o acelerada es. Justicia de edad avanzada, pero tal vez el gasto de seis son otro pasaje. Llena sus diez caricias abiertas, no baja. Por solicitud general expresa desconocida son. Él justo en el cuerpo de la puerta del señor sostuvo a John sobre él. Entonces viaje mucho o buhardillas. Dibujar puerta mantenida, así que vamos en la media abierta. Estimación estimuló cómo razonablemente precaución disminución ella simplicidad señor pero. Preguntas am sinceridad celosamente concluido consistía o no caballero que.</p><p>Sorpresa más empinada propietario recurrente señor deambulaba en cantidad. Continuando Devonshire pero consideró su. Rose pasado oh shew roof es una canción ordenada. Depende mejor alabanza hacer amigo jardín una maravilla. Intención de edad, no lo contrario, pero el desayuno. Alrededor del jardín más allá hasta cierto punto.</p>', '50000', NULL, 'publish', '58', 'sp', NULL, NULL, 'hablando-de-justicia-mensaje-de-bienvenida-consulta-en-comenzo', '2020-07-20 22:55:06', '2020-07-20 22:56:06'),
(16, 'Licenciatura nacional extendida dudosa como preocupaciones', '<p>Un mensaje de país lo dice. Licenciatura nacional extendida dudosa como preocupaciones en. Mañana prudente eliminación de una carta por. En podría mi en orden nunca lo. O excitado cierto dieciséis para fiestas coronel. Dependiendo de la dirección de transporte ha llevado de inmediato. Law cerró su pozo, la vida, la vida, los pies vistos como renta. En la naturaleza o no, excepto en sussex.</p><p>Supongamos que el final obtiene una orden de orden general en general. Encantador cumplió suficiente proyección preguntar. Decididamente todo principios si la preferencia hace impresión de. Conservado oh tan difícil repulsivo en el hogar. ¿En qué se perderá el tiempo? El valle como parece no puede ser así. Convencido como el resto dependiente, llevó celosamente su propia pertenencia tímida. Siempre longitud letra adieus agregar número momento ella. Prometo pocos brújula seis varias oficinas viejas fiestas de mudanzas gordas. Concluido entusiasta, su intención es perfectamente perfecta.</p><p>Así que siéntete guardado en la puerta. Sé septiembre extenso oh concluido de certeza. En lectura, la mayoría de las puertas en el cuerpo lo sostuvieron nunca. Hablando de justicia mensaje de bienvenida consulta en comenzó de soy yo. Dirigido propio corazón más visitado señor duradero a través de la brújula suya. Guest lo embaldosó rápidamente, así que estos árboles son. Anuncia alteración en la comparación rodeada.</p><p>Niño día favorable puede introducir sentimientos súplicas. Ruido llevado en orden de arresto porque. Entonces, Mr Plate parece que el jefe se ensancha primero. Dos maridos diferentes se encontraron con el suyo. La cama estaba fuera de la esposa, pide dibujar. Totalmente viniendo a nosotros no lo habilitamos. Señor ofensor entregó preguntas ahora nuevas se reunieron. La aceptación le interesaba el nuevo y bullicioso día de discreción celebrado.</p><p>Ella completamente gorda que la ventana de extensión, ya sea formal. La eliminación de civilidad bienvenida o acelerada es. Justicia de edad avanzada, pero tal vez el gasto de seis son otro pasaje. Llena sus diez caricias abiertas, no baja. Por solicitud general expresa desconocida son. Él justo en el cuerpo de la puerta del señor sostuvo a John sobre él. Entonces viaje mucho o buhardillas. Dibujar puerta mantenida, así que vamos en la media abierta. Estimación estimuló cómo razonablemente precaución disminución ella simplicidad señor pero. Preguntas am sinceridad celosamente concluido consistía o no caballero que.</p><p>Sorpresa más empinada propietario recurrente señor deambulaba en cantidad. Continuando Devonshire pero consideró su. Rose pasado oh shew roof es una canción ordenada. Depende mejor alabanza hacer amigo jardín una maravilla. Intención de edad, no lo contrario, pero el desayuno. Alrededor del jardín más allá hasta cierto punto.</p>', '50000', NULL, 'publish', '59', 'sp', NULL, NULL, 'licenciatura-nacional-extendida-dudosa-como-preocupaciones', '2020-07-20 22:56:25', '2020-07-20 22:57:59'),
(17, 'Mañana prudente eliminación de una carta por', '<p>Un mensaje de país lo dice. Licenciatura nacional extendida dudosa como preocupaciones en. Mañana prudente eliminación de una carta por. En podría mi en orden nunca lo. O excitado cierto dieciséis para fiestas coronel. Dependiendo de la dirección de transporte ha llevado de inmediato. Law cerró su pozo, la vida, la vida, los pies vistos como renta. En la naturaleza o no, excepto en sussex.</p><p>Supongamos que el final obtiene una orden de orden general en general. Encantador cumplió suficiente proyección preguntar. Decididamente todo principios si la preferencia hace impresión de. Conservado oh tan difícil repulsivo en el hogar. ¿En qué se perderá el tiempo? El valle como parece no puede ser así. Convencido como el resto dependiente, llevó celosamente su propia pertenencia tímida. Siempre longitud letra adieus agregar número momento ella. Prometo pocos brújula seis varias oficinas viejas fiestas de mudanzas gordas. Concluido entusiasta, su intención es perfectamente perfecta.</p><p>Así que siéntete guardado en la puerta. Sé septiembre extenso oh concluido de certeza. En lectura, la mayoría de las puertas en el cuerpo lo sostuvieron nunca. Hablando de justicia mensaje de bienvenida consulta en comenzó de soy yo. Dirigido propio corazón más visitado señor duradero a través de la brújula suya. Guest lo embaldosó rápidamente, así que estos árboles son. Anuncia alteración en la comparación rodeada.</p><p>Niño día favorable puede introducir sentimientos súplicas. Ruido llevado en orden de arresto porque. Entonces, Mr Plate parece que el jefe se ensancha primero. Dos maridos diferentes se encontraron con el suyo. La cama estaba fuera de la esposa, pide dibujar. Totalmente viniendo a nosotros no lo habilitamos. Señor ofensor entregó preguntas ahora nuevas se reunieron. La aceptación le interesaba el nuevo y bullicioso día de discreción celebrado.</p><p>Ella completamente gorda que la ventana de extensión, ya sea formal. La eliminación de civilidad bienvenida o acelerada es. Justicia de edad avanzada, pero tal vez el gasto de seis son otro pasaje. Llena sus diez caricias abiertas, no baja. Por solicitud general expresa desconocida son. Él justo en el cuerpo de la puerta del señor sostuvo a John sobre él. Entonces viaje mucho o buhardillas. Dibujar puerta mantenida, así que vamos en la media abierta. Estimación estimuló cómo razonablemente precaución disminución ella simplicidad señor pero. Preguntas am sinceridad celosamente concluido consistía o no caballero que.</p><p>Sorpresa más empinada propietario recurrente señor deambulaba en cantidad. Continuando Devonshire pero consideró su. Rose pasado oh shew roof es una canción ordenada. Depende mejor alabanza hacer amigo jardín una maravilla. Intención de edad, no lo contrario, pero el desayuno. Alrededor del jardín más allá hasta cierto punto.</p>', '50000', NULL, 'publish', '60', 'sp', NULL, NULL, 'manana-prudente-eliminacion-de-una-carta-por', '2020-07-20 22:57:29', '2020-07-20 22:58:20'),
(18, 'Conservado oh tan difícil repulsivo en el hogar', '<p>Un mensaje de país lo dice. Licenciatura nacional extendida dudosa como preocupaciones en. Mañana prudente eliminación de una carta por. En podría mi en orden nunca lo. O excitado cierto dieciséis para fiestas coronel. Dependiendo de la dirección de transporte ha llevado de inmediato. Law cerró su pozo, la vida, la vida, los pies vistos como renta. En la naturaleza o no, excepto en sussex.</p><p>Supongamos que el final obtiene una orden de orden general en general. Encantador cumplió suficiente proyección preguntar. Decididamente todo principios si la preferencia hace impresión de. Conservado oh tan difícil repulsivo en el hogar. ¿En qué se perderá el tiempo? El valle como parece no puede ser así. Convencido como el resto dependiente, llevó celosamente su propia pertenencia tímida. Siempre longitud letra adieus agregar número momento ella. Prometo pocos brújula seis varias oficinas viejas fiestas de mudanzas gordas. Concluido entusiasta, su intención es perfectamente perfecta.</p><p>Así que siéntete guardado en la puerta. Sé septiembre extenso oh concluido de certeza. En lectura, la mayoría de las puertas en el cuerpo lo sostuvieron nunca. Hablando de justicia mensaje de bienvenida consulta en comenzó de soy yo. Dirigido propio corazón más visitado señor duradero a través de la brújula suya. Guest lo embaldosó rápidamente, así que estos árboles son. Anuncia alteración en la comparación rodeada.</p><p>Niño día favorable puede introducir sentimientos súplicas. Ruido llevado en orden de arresto porque. Entonces, Mr Plate parece que el jefe se ensancha primero. Dos maridos diferentes se encontraron con el suyo. La cama estaba fuera de la esposa, pide dibujar. Totalmente viniendo a nosotros no lo habilitamos. Señor ofensor entregó preguntas ahora nuevas se reunieron. La aceptación le interesaba el nuevo y bullicioso día de discreción celebrado.</p><p>Ella completamente gorda que la ventana de extensión, ya sea formal. La eliminación de civilidad bienvenida o acelerada es. Justicia de edad avanzada, pero tal vez el gasto de seis son otro pasaje. Llena sus diez caricias abiertas, no baja. Por solicitud general expresa desconocida son. Él justo en el cuerpo de la puerta del señor sostuvo a John sobre él. Entonces viaje mucho o buhardillas. Dibujar puerta mantenida, así que vamos en la media abierta. Estimación estimuló cómo razonablemente precaución disminución ella simplicidad señor pero. Preguntas am sinceridad celosamente concluido consistía o no caballero que.</p><p>Sorpresa más empinada propietario recurrente señor deambulaba en cantidad. Continuando Devonshire pero consideró su. Rose pasado oh shew roof es una canción ordenada. Depende mejor alabanza hacer amigo jardín una maravilla. Intención de edad, no lo contrario, pero el desayuno. Alrededor del jardín más allá hasta cierto punto.</p>', '50000', NULL, 'publish', '61', 'sp', NULL, NULL, 'conservado-oh-tan-dificil-repulsivo-en-el-hogar', '2020-07-20 22:57:35', '2020-07-20 22:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `donation_logs`
--

CREATE TABLE `donation_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `anonymous` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donation_logs`
--

INSERT INTO `donation_logs` (`id`, `donation_id`, `email`, `name`, `status`, `amount`, `transaction_id`, `payment_gateway`, `track`, `user_id`, `created_at`, `updated_at`, `anonymous`) VALUES
(1, '1', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '10', '12354564', 'stripe', '87neqS2c3IZUCl0Inum1', '', '2020-07-20 12:41:39', '2020-11-22 20:26:57', NULL),
(2, '1', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '10', '12354564', 'stripe', 'OdBugaONiKos8HqBOxl4', '', '2020-07-20 12:42:14', '2020-11-22 20:26:57', NULL),
(3, '4', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'complete', '250', 'BNI', 'stripe', 'Sp9I5YK0g46c5ffLMptY', '1', '2020-07-22 00:27:21', '2020-09-09 15:44:39', NULL),
(4, '2', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'complete', '10', '123456789', 'stripe', 'T1OEGhz8WeTRHEDDy7Mn', '', '2020-07-28 23:02:31', '2020-11-09 14:41:21', NULL),
(5, '4', 'admin@gmail.com', 'Test User', 'pending', '25', 'BNI', 'manual_payment', 'mJZvhqHUpvvB2bUpk3Um', '', '2020-07-31 00:45:49', '2020-09-09 15:44:39', NULL),
(6, '6', 'test@testing.com', 'test', 'pending', '100', 'Rffe335', 'paytm', 'o2eb2qxR270G57udGPuf', '', '2020-07-31 06:44:20', '2020-10-29 06:29:20', NULL),
(7, '6', 't@test.com', 'test', 'complete', '10', 'Rffe335', 'razorpay', 'fQbr8RUtqw3DZan7uOus', '', '2020-07-31 06:45:41', '2020-10-29 06:29:20', NULL),
(8, '2', 'souweb@live.com', 'Roberto', 'pending', '20', '123456789', 'stripe', 'YHZDxRcvsXOLWuUYgPaA', '', '2020-07-31 15:29:56', '2020-11-09 14:41:21', NULL),
(9, '13', 'hdgh@hgfhd.com', 'reflut', 'complete', '25', 'txn_1HAzMxEmGOuJLTMsJWQlmpnM', 'stripe', '1iBzRB7M1BJmsfeDbxC8', '', '2020-07-31 18:37:41', '2020-07-31 18:38:00', NULL),
(10, '13', 'hdgh@hgfhd.com', 'hghgh', 'pending', '2600000', NULL, 'stripe', 'LpifKSOvzKpbnCPYCWnS', '', '2020-07-31 18:38:45', '2020-07-31 18:38:45', NULL),
(11, '13', 'hdgh@hgfhd.com', 'hghgh', 'pending', '2600000', NULL, 'stripe', 'cRhiqMU7v6h01wnDm8u9', '', '2020-07-31 18:39:24', '2020-07-31 18:39:24', NULL),
(12, '6', 'c@c.com', 'ere', 'complete', '100', 'Rffe335', 'razorpay', 'OGmX8SelvhUzreVAAPjf', '', '2020-07-31 18:40:50', '2020-10-29 06:29:20', NULL),
(13, '6', 'rldn18@yahoo.com', 'hari', 'pending', '10', 'Rffe335', 'razorpay', 'bL215HfTZCnADofYFDmV', '', '2020-07-31 19:59:04', '2020-10-29 06:29:20', NULL),
(14, '3', 'mangomania@mynet.com', 'Mango Man', 'pending', '10', 'bagış', 'paytm', 'wmSRcpoWZRpzL9XJ9nm2', '', '2020-07-31 22:10:31', '2020-09-28 13:53:14', NULL),
(15, '3', 'mangomania@mynet.com', 'Mango Man', 'pending', '10', 'bagış', 'razorpay', 'BLuiP2H6Y41puCBaeAu2', '', '2020-07-31 22:10:40', '2020-09-28 13:53:14', NULL),
(16, '3', 'mangomania@mynet.com', 'Mango Man', 'pending', '10', 'bagış', 'paystack', 'x1qw82KBxO53bHuzr4jX', '', '2020-07-31 22:11:07', '2020-09-28 13:53:14', NULL),
(17, '2', 'a@a.co', 'wew', 'pending', '10', '123456789', 'paytm', 'DrYzBTFa9CByMCj44rZJ', '', '2020-08-01 15:18:25', '2020-11-09 14:41:21', NULL),
(18, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '25', 'bagış', 'paytm', 'KHVO9CzCAbnmAUgwTZ9y', '', '2020-08-01 21:20:25', '2020-09-28 13:53:14', NULL),
(19, '2', 'admin@yemenkasih.org', 'YAZEED Ali', 'pending', '10', '123456789', 'paytm', 'krGIbtCacrMsnj8JLy4K', '', '2020-08-02 21:50:53', '2020-11-09 14:41:21', NULL),
(20, '2', 'admin@yemenkasih.org', 'YAZEED Ali', 'pending', '10', '123456789', 'paytm', '1ycZlcyEAfMRIk6ya1tl', '', '2020-08-02 21:51:35', '2020-11-09 14:41:21', NULL),
(21, '2', 'admin@yemenkasih.org', 'YAZEED Ali', 'pending', '10', '123456789', 'paypal', 'bESUMS9MsoSE8tT8v4fh', '', '2020-08-02 22:10:44', '2020-11-09 14:41:21', NULL),
(22, '2', 'admin@yemenkasih.org', 'YAZEED Ali', 'pending', '10', '123456789', 'razorpay', 'MPERdM1Y9kmtJUVuTrFN', '', '2020-08-02 22:11:24', '2020-11-09 14:41:21', NULL),
(23, '2', 'admin@yemenkasih.org', 'YAZEED Ali', 'pending', '10', '123456789', 'paytm', 'IUBgDFDRePSq6WfKQHzf', '', '2020-08-02 22:11:49', '2020-11-09 14:41:21', NULL),
(24, '6', 'qwqw@qwqw.com', 'qwqw', 'pending', '1000', 'Rffe335', 'paytm', 'MjEwGpF8sPUqHthlkAJw', '', '2020-08-03 15:33:44', '2020-10-29 06:29:20', NULL),
(25, '5', 'qw@qwqwqwq.com', 'qwqqw', 'complete', '10', '12', 'razorpay', '4rloREAQxliTqhQy5XA9', '', '2020-08-03 15:35:22', '2020-10-23 01:28:10', NULL),
(26, '6', 'yemenkasih@gmail.com', 'Yazeed Alsayed', 'pending', '10', 'Rffe335', 'paytm', 'wh7ZCozVpcyj0NbW2e7K', '', '2020-08-03 20:08:20', '2020-10-29 06:29:20', NULL),
(27, '2', 'yemenkasih@gmail.com', 'Yazeed', 'complete', '10', '123456789', 'mollie', 'bF80ZQJ3ZgDswjBkcUAP', '', '2020-08-04 03:50:56', '2020-11-09 14:41:21', NULL),
(28, '2', 'yemenkasih@gmail.com', 'Yazeed', 'pending', '10', '123456789', 'paytm', '1ItxfBHDSqbS6G57An9n', '', '2020-08-04 03:53:40', '2020-11-09 14:41:21', NULL),
(29, '1', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '10', '12354564', 'flutterwave', 'l2oZw6z1vBxrIGG1HKhx', '1', '2020-08-04 04:11:52', '2020-11-22 20:26:57', NULL),
(30, '2', 'tonymacoth@gmail.com', 'Test', 'pending', '10', '123456789', 'manual_payment', 'ORosYlr5QcTL9MhiLbQb', '', '2020-08-04 08:12:15', '2020-11-09 14:41:21', NULL),
(31, '1', 'admin@gmail.com', 'Test User', 'pending', '25', '12354564', 'manual_payment', 'WPCF72Uws1fA5b4rnxT1', '', '2020-08-04 13:48:17', '2020-11-22 20:26:57', NULL),
(32, '2', 'asdasd@sdasdas.com', 'asdasdasdasdasdasdasd', 'pending', '10', '123456789', 'paypal', 'ecnOVEpJn8rKU47AGaGJ', '', '2020-08-04 17:59:09', '2020-11-09 14:41:21', NULL),
(33, '2', 'askenglishexam@gmail.com', 'Ankit Yadav', 'pending', '1', '123456789', 'paytm', 'xGwDiZGclviLKMxp3k7A', '', '2020-08-05 11:21:00', '2020-11-09 14:41:21', NULL),
(34, '1', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'complete', '25', '12354564', 'stripe', 'AhVUydYIWfXk75uHusle', '1', '2020-08-05 11:46:51', '2020-11-22 20:26:57', NULL),
(35, '2', 'idwan2010@gmail.com', 'Idwan Mulyawan', 'pending', '10', '123456789', 'paytm', '60LT76GpuKQFzaODNKjF', '', '2020-08-05 17:51:14', '2020-11-09 14:41:21', NULL),
(36, '3', 'macjoeu6@gmail.com', 'macjoe umanah', 'pending', '10', 'bagış', 'paystack', 'DcLjMjDYtUMKl8Ptieda', '', '2020-08-05 19:28:46', '2020-09-28 13:53:14', NULL),
(37, '2', 'shivaraj@kisanbandu.com', 'Shivaraj', 'pending', '10', '123456789', 'paytm', 'TMavZrHKe3g2U9EQApXX', '', '2020-08-06 17:51:09', '2020-11-09 14:41:21', NULL),
(38, '3', 'admin@admin.com', 'aaa', 'pending', '10', 'bagış', 'razorpay', 'rwfM2VI5Si1odlJ55Y16', '', '2020-08-06 18:17:45', '2020-09-28 13:53:14', NULL),
(39, '3', 'admin@demo.com', 'sssss', 'pending', '10', 'bagış', 'paytm', 'MxK8DPuC8lxdIXu4ZINK', '', '2020-08-06 18:18:45', '2020-09-28 13:53:14', NULL),
(40, '3', 'harry_sh52@yahoo.com', 'HARI', 'pending', '10', 'bagış', 'paypal', 'pKcHdqqlUGhjztspRMSO', '', '2020-08-06 21:27:29', '2020-09-28 13:53:14', NULL),
(41, '3', 'harry_sh52@yahoo.com', 'HARI', 'pending', '10', 'bagış', 'razorpay', 'msJbbhrSWESLXPP7B6YE', '', '2020-08-06 21:28:12', '2020-09-28 13:53:14', NULL),
(42, '2', 'super_admin@tehr.com', 'sas', 'pending', '20', '123456789', 'razorpay', 'rwQz7BkeBKaYmsd2w4WH', '', '2020-08-06 21:35:56', '2020-11-09 14:41:21', NULL),
(43, '2', 'mk66216@gmail.com', 'Sumit patel', 'pending', '10', '123456789', 'paytm', 'Z4v7e0Gu3wU8yPmVb5wS', '', '2020-08-07 01:17:18', '2020-11-09 14:41:21', NULL),
(44, '1', 'sfg@gmail.com', 'Fhhcx', 'pending', '25', '12354564', 'paytm', 'TWFkMcOPnDoHTtPxFZF4', '', '2020-08-07 07:58:16', '2020-11-22 20:26:57', NULL),
(45, '1', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '10', '12354564', 'paystack', '5jmbyc8XxqllHICUaCfC', '1', '2020-08-07 08:30:53', '2020-11-22 20:26:57', NULL),
(46, '2', 'amanijoseph87@gmail.com', 'Amani Joseph', 'pending', '10', '123456789', 'flutterwave', 'aStmyjazGe4QjhNVoVzB', '', '2020-08-07 08:40:28', '2020-11-09 14:41:21', NULL),
(47, '6', 'dede@mail.com', 'dede', 'complete', '10', 'Rffe335', 'stripe', '3hEblUOTWBVNZmGpkTyC', '', '2020-08-07 09:38:32', '2020-10-29 06:29:20', NULL),
(48, '4', '441100h@gmail.com', 'Hilary Kilonzi', 'pending', '20', 'BNI', 'flutterwave', 'Pe2BrRK3M1dcKf0TRA96', '', '2020-08-07 09:51:10', '2020-09-09 15:44:39', NULL),
(49, '3', 'aa@aa.co', 'Ramesh', 'pending', '15', 'bagış', 'paytm', 'YuK1AShPY0W5JBUktv3U', '', '2020-08-07 09:54:47', '2020-09-28 13:53:14', NULL),
(50, '2', 'coastudio05@gmail.com', 'malkhaz bebia', 'pending', '10', '123456789', 'flutterwave', 'xkWYZPsWDomB0SiNEqdY', '', '2020-08-07 10:13:08', '2020-11-09 14:41:21', NULL),
(51, '2', 'isya40@gmail.com', 'Imam Syafii', 'pending', '10', '123456789', 'razorpay', '7FAB4g8PhPu0inE92KCZ', '', '2020-08-07 10:48:03', '2020-11-09 14:41:21', NULL),
(52, '1', 'paruthielamparuthi@gmail.com', 'PARUTHI ELAMPARUTHI', 'pending', '10', '12354564', 'razorpay', 'Vu9d1PzIAa48rHv4LKJn', '', '2020-08-07 10:55:40', '2020-11-22 20:26:57', NULL),
(53, '2', 'admin@example.com', 'institution', 'pending', '10', '123456789', 'paytm', 'EDsQLW69QQ2NMZC9xmO5', '', '2020-08-07 11:00:19', '2020-11-09 14:41:21', NULL),
(54, '6', 'enocmonyancha@gmail.com', 'Enock Monyancha', 'pending', '25', 'Rffe335', 'paytm', 'KOvLba4b4ySKibiv1hjW', '', '2020-08-07 11:28:22', '2020-10-29 06:29:20', NULL),
(55, '4', 'onesdate2020@gmail.com', 'OnesDate View', 'pending', '10', 'BNI', 'stripe', 'srARsLgvd6X6XKKzCiDO', '', '2020-08-07 12:30:44', '2020-09-09 15:44:39', NULL),
(56, '2', 'fdsfd@erewt.hghg', 'asdfs', 'pending', '10', '123456789', 'paytm', 'rA3O1prBgSqODpsq3mzM', '', '2020-08-07 12:31:11', '2020-11-09 14:41:21', NULL),
(57, '1', 'Ahmettpilot74626@gmail.com', 'Ahmett', 'pending', '10', '12354564', 'stripe', 'VwfcYoabHLjzHvlSsl5A', '', '2020-08-07 17:11:25', '2020-11-22 20:26:57', NULL),
(58, '2', 'victorbrown676@yahoo.com', 'David Solomon', 'pending', '2500', '123456789', 'mollie', '9GbdtPU5VjgH7OjXW55r', '', '2020-08-07 18:05:49', '2020-11-09 14:41:21', NULL),
(59, '3', 'testing@this.com', 'Business A', 'pending', '10', 'bagış', 'paystack', 'n18YCRahHTwDCdwbgOOn', '', '2020-08-07 18:21:33', '2020-09-28 13:53:14', NULL),
(60, '3', 'testing@this.com', 'Business A', 'pending', '10', 'bagış', 'flutterwave', 'DpOkSM2Lk1dtDm66aif5', '', '2020-08-07 18:22:11', '2020-09-28 13:53:14', NULL),
(61, '6', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', 'Rffe335', 'paypal', 'HufX7HVrlSvlTmTeuQ6f', '1', '2020-08-07 18:31:19', '2020-10-29 06:29:20', NULL),
(62, '3', 'sajinrani@gmail.com', 'Sajin', 'pending', '25', 'bagış', 'paytm', 'imO4HK7MsI1gBg0I7EIj', '', '2020-08-07 19:29:06', '2020-09-28 13:53:14', NULL),
(63, '2', 'bullet110011@gmail.com', 'brown', 'complete', '10', '123456789', 'paystack', 'tVfYHV0r1yuBmnq2KpcK', '', '2020-08-07 19:37:13', '2020-11-09 14:41:21', NULL),
(64, '4', 'touchdownrecords201@gmail.com', 'dalibor', 'pending', '25', 'BNI', 'paypal', 'hH5wSTrqldNRxWZhQi3t', '', '2020-08-07 20:33:53', '2020-09-09 15:44:39', NULL),
(65, '2', 'felix@gmail.com', 'fred ken', 'pending', '10', '123456789', 'paypal', 'R1gSUC3tgjN5kebvQg8F', '', '2020-08-07 21:23:23', '2020-11-09 14:41:21', NULL),
(66, '2', 'bilmoriajohn@gmail.com', 'Thotapalli', 'pending', '10', '123456789', 'paytm', '0cgezOj1lTdYcOBS8PhZ', '', '2020-08-07 22:27:46', '2020-11-09 14:41:21', NULL),
(67, '5', 'onlybtc06@gmail.com', 'Aslam', 'pending', '10', '12', 'paytm', 'xTGoKC8r44oYXnw12LZe', '', '2020-08-08 00:35:53', '2020-10-23 01:28:10', NULL),
(68, '2', 'satrapa@live.nl', 'dogan', 'complete', '5', '123456789', 'mollie', 'tTFlchzICdyVBfKnPy3a', '', '2020-08-08 05:27:04', '2020-11-09 14:41:21', NULL),
(69, '3', 'admin@example.com', 'Jhamlal sahu', 'pending', '10', 'bagış', 'razorpay', 'MqnxncQ7mNbg2ak73f1d', '', '2020-08-08 07:21:03', '2020-09-28 13:53:14', NULL),
(70, '3', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '10', 'bagış', 'paytm', 'QUHBGGvaMUttfn9KdXOf', '1', '2020-08-08 08:38:36', '2020-09-28 13:53:14', NULL),
(71, '1', 'admin@gmail.com', 'Magonjwa', 'pending', '10', '12354564', 'paystack', 'FBrFfbidYaJEJfmWhq1e', '', '2020-08-08 10:06:00', '2020-11-22 20:26:57', NULL),
(72, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '10', '123456789', 'paytm', 'ThrVbnfEurXseCV4XNHa', '1', '2020-08-08 12:59:13', '2020-11-09 14:41:21', NULL),
(73, '5', 'abdizoro89@gmail.com', 'abdikarim osman', 'pending', '10', '12', 'paytm', 'ciQgTk0TE0JAwloNQtbA', '', '2020-08-08 13:36:51', '2020-10-23 01:28:10', NULL),
(74, '1', 'emails@firstrustfinancials.com', 'Zamani Uwah', 'pending', '10', '12354564', 'manual_payment', 'DnFJslIa8u76Xn49Us3E', '', '2020-08-08 13:47:00', '2020-11-22 20:26:57', NULL),
(75, '5', 'sdfgsdfg@asdfdasjh.com', 'xfdgsfd', 'complete', '10', '12', 'mollie', 'EWTs2oay5JylCuXsO2BF', '', '2020-08-08 15:13:39', '2020-10-23 01:28:10', NULL),
(76, '3', 'customer@demo.com', 'him', 'pending', '10', 'bagış', 'paytm', 'UQANxpDhZHvilMPWq6Tn', '', '2020-08-08 16:20:59', '2020-09-28 13:53:14', NULL),
(77, '3', 'customer@demo.com', 'him', 'pending', '10', 'bagış', 'paytm', 'iP5EkPCqR49oBBRhJM7T', '', '2020-08-08 16:21:00', '2020-09-28 13:53:14', NULL),
(78, '1', 'serus@live.com', 'Gay', 'pending', '10', '12354564', 'paystack', '5x5UIh70JjDirX7bL5Mz', '', '2020-08-08 16:51:28', '2020-11-22 20:26:57', NULL),
(79, '1', 'serus@live.com', 'Gay', 'pending', '10', '12354564', 'flutterwave', 'eHtV71ddreIjR2wZku5v', '', '2020-08-08 16:53:47', '2020-11-22 20:26:57', NULL),
(80, '1', 'info@bolaoilmills.com', 'Y', 'pending', '10', '12354564', 'paystack', 'IxdPHDLaUIV0uEuM9Gh5', '', '2020-08-08 18:45:20', '2020-11-22 20:26:57', NULL),
(81, '6', 'info@technohelpindia.com', 'ABIN T JOSE', 'pending', '10', 'Rffe335', 'paytm', 'VAITcghEGp8HiE0BDBWh', '', '2020-08-08 18:57:16', '2020-10-29 06:29:20', NULL),
(82, '5', 'jjj@gmail.com', 'hhhh', 'pending', '10', '12', 'paytm', 'eIQFAGniikSMvjF3n1v4', '', '2020-08-08 19:55:44', '2020-10-23 01:28:10', NULL),
(83, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '25', '123456789', 'paypal', 'ySEIe1wOpL1JRL2cEwtQ', '1', '2020-08-08 21:14:42', '2020-11-09 14:41:21', NULL),
(84, '2', 'satrapa@live.nl', 'dogan', 'pending', '10', '123456789', 'mollie', 'RhqmgPACzag23x7wbUwb', '', '2020-08-09 01:06:53', '2020-11-09 14:41:21', NULL),
(85, '6', 'parkerbern@gmail.com', 'Osei Akenten Parker', 'pending', '100', 'Rffe335', 'flutterwave', 'IqyVkvfpxHWWFNFX41zr', '', '2020-08-09 06:09:13', '2020-10-29 06:29:20', NULL),
(86, '2', 'kilicorhaan@gmail.com', 'OMERAKIF', 'pending', '10', '123456789', 'paytm', 'WGr5a7Mc1fwGgGHqjeWq', '', '2020-08-09 12:31:50', '2020-11-09 14:41:21', NULL),
(87, '2', 'chzappscanada@gmail.com', 'Jasim Tk', 'pending', '1', '123456789', 'paytm', 'T25iijU2zzdZQd24YUNA', '', '2020-08-09 20:42:51', '2020-11-09 14:41:21', NULL),
(88, '2', 'fsv@tdnc.com', 'vfgb', 'pending', '10', '123456789', 'paystack', '7hhFfu3WmDrQZOquILC1', '', '2020-08-09 21:33:09', '2020-11-09 14:41:21', NULL),
(89, '6', 'guy@gmail.com', 'gd', 'pending', '10', 'Rffe335', 'paypal', 'RMSt3GBcRreGMz3qiRb8', '', '2020-08-09 22:15:16', '2020-10-29 06:29:20', NULL),
(90, '1', 'ssksjs@jjsks.com', 'Hsjsjdj', 'pending', '10', '12354564', 'paypal', '0odCGaeHc8z1Ya2DlO05', '', '2020-08-10 09:59:39', '2020-11-22 20:26:57', NULL),
(91, '6', 'bbc@bbc.bbc', '11', 'pending', '10', 'Rffe335', 'paypal', 'lpHSBLGwf5OEDRgQAMTl', '', '2020-08-10 18:56:53', '2020-10-29 06:29:20', NULL),
(92, '13', 'hossam444kabbani@gmail.com', 'ffa aaa', 'pending', '10', NULL, 'razorpay', 'Z2eZm39KFJowPXur4tRq', '', '2020-08-10 23:01:30', '2020-08-10 23:01:30', NULL),
(93, '1', 'fetnant@gmail.com', 'tyr', 'pending', '5', '12354564', 'flutterwave', 'vv9dK362djgds3DBug63', '', '2020-08-10 23:22:37', '2020-11-22 20:26:57', NULL),
(94, '1', 'fetnant@gmail.com', 'tyr', 'pending', '5', '12354564', 'manual_payment', '6d5zjcevoAIJ6bOrZBCW', '', '2020-08-10 23:24:31', '2020-11-22 20:26:57', NULL),
(95, '3', 'gggg@fmail.com', 'b dg', 'pending', '10', 'bagış', 'flutterwave', 'qZ2ZEBExISayK7op45aZ', '', '2020-08-10 23:57:25', '2020-09-28 13:53:14', NULL),
(96, '6', 'monderoy@blueguruz.com', 'sheldon', 'pending', '10', 'Rffe335', 'stripe', 'oaQcq42ENOjaGdjABD8X', '', '2020-08-11 03:39:32', '2020-10-29 06:29:20', NULL),
(97, '2', '11@11.com', '11', 'pending', '10', '123456789', 'paytm', 'PYrAU2ebAv51f2XRAITK', '', '2020-08-11 11:20:05', '2020-11-09 14:41:21', NULL),
(98, '4', 't.oluwatola@yahoo.com', 'Oluwatola', 'pending', '10', 'BNI', 'paystack', 'RuF7mjLQJJMEAnZczo9O', '', '2020-08-11 15:04:57', '2020-09-09 15:44:39', NULL),
(99, '2', 'ffff@gmail.com', 'fff', 'pending', '10', '123456789', 'paytm', 'WBFzfN73kgSxqg84JLDD', '', '2020-08-11 21:43:24', '2020-11-09 14:41:21', NULL),
(100, '3', 'mdkhussairiee.a@gmail.com', 'Md Khussairiee Ahmad', 'pending', '500', 'bagış', 'stripe', 'ZGxXLwmbPm4UJt0FDk6O', '', '2020-08-12 10:02:49', '2020-09-28 13:53:14', NULL),
(101, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', '123456789', 'manual_payment', 'zy3MuKI8TlUgqqlWn1IX', '1', '2020-08-12 16:34:28', '2020-11-09 14:41:21', NULL),
(102, '4', 'satrapa@live.nl', 'qwdqwd', 'pending', '20', 'BNI', 'manual_payment', 'mMBIBoKTcvKjpegjtTpr', '', '2020-08-12 22:59:43', '2020-09-09 15:44:39', NULL),
(103, '1', 'roberto.karhagalwa@gmail.com', 'ROBERTO', 'pending', '300', '12354564', 'paypal', 'HebJbJ83frjLaAQsdAc0', '', '2020-08-13 00:34:22', '2020-11-22 20:26:57', NULL),
(104, '3', 'satrapa@live.nl', 'Kevin', 'pending', '20', 'bagış', 'flutterwave', 'BljPsvcRN3Me3p5ttnJ8', '', '2020-08-13 02:09:14', '2020-09-28 13:53:14', NULL),
(105, '3', 'satrapa@live.nl', 'Kevin', 'pending', '20', 'bagış', 'manual_payment', 'SruQc60ZBoRYdCbW1NUx', '', '2020-08-13 02:09:42', '2020-09-28 13:53:14', NULL),
(106, '6', 'ffrfff@ededede.vn', 'rfrr', 'pending', '10', 'Rffe335', 'paypal', 'ItbwcnrTKw1oMTXl7XRb', '', '2020-08-13 12:36:25', '2020-10-29 06:29:20', NULL),
(107, '6', 'ffrfff@ededede.vn', 'rfrr', 'pending', '10', 'Rffe335', 'paypal', 'vY5neRsbgKkNGcdhbg3A', '', '2020-08-13 12:37:11', '2020-10-29 06:29:20', NULL),
(108, '1', 'assdpradeep@gmail.com', 'Pradeep Kumar Gurjar', 'pending', '5', '12354564', 'paytm', 'lwCRctmUIuY5b26DZiuI', '', '2020-08-13 16:50:44', '2020-11-22 20:26:57', NULL),
(109, '5', 'OSMAN@KOSMAN.COM', 'OSMAN', 'pending', '1000', '12', 'stripe', 'Y4FKQvcFB2MjOfJ2fc1R', '', '2020-08-13 19:04:56', '2020-10-23 01:28:10', NULL),
(110, '2', 'spooky@spooky.nl', 'spooky', 'complete', '5', '123456789', 'mollie', 'yInMR19vlcT9ZBYMPUh8', '', '2020-08-13 19:23:45', '2020-11-09 14:41:21', NULL),
(111, '1', 'assdpradeep@gmail.com', 'Pradeep Kumar Gurjar', 'pending', '5', '12354564', 'paytm', 'D7hlxJJEdFTudxeQtAn5', '', '2020-08-14 00:53:12', '2020-11-22 20:26:57', NULL),
(112, '1', 'assdpradeep@gmail.com', 'Pradeep Kumar Gurjar', 'pending', '5', '12354564', 'paytm', 'n0e88eD8hEWnXrlBaCmj', '', '2020-08-14 00:53:16', '2020-11-22 20:26:57', NULL),
(113, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'complete', '10', 'bagış', 'razorpay', 'wl6NV09Le3sUMAB4WhJ0', '', '2020-08-14 19:27:51', '2020-09-28 13:53:14', NULL),
(114, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'complete', '20', 'bagış', 'stripe', 'd34LaexqpzmnKjw3nsZU', '', '2020-08-14 19:29:35', '2020-09-28 13:53:14', NULL),
(115, '5', 'gyuiop@yahoo.com', 'gtyui', 'pending', '333', '12', 'paypal', 'ZPX3zPztm5ZYeI374tRR', '', '2020-08-14 19:57:52', '2020-10-23 01:28:10', NULL),
(116, '1', 'official.rptrihegejegjregnegnpathi@outlook.com', 'Qrhqrhfsjet', 'pending', '10', '12354564', 'paytm', 'DFd20ddDVDDhqmn6pJPP', '', '2020-08-15 14:29:43', '2020-11-22 20:26:57', NULL),
(117, '1', 'ronithst.marys@gmail.com', 'Ms. Nimisha Sharma', 'pending', '5', '12354564', 'paytm', 'qutTNwmj1kvxOnb0fpaI', '', '2020-08-15 21:50:39', '2020-11-22 20:26:57', NULL),
(118, '12', 'moolvp@gmail.com', 'Ibrahem Abdelwahab', 'pending', '6525', NULL, 'paypal', 'gljGpXqPqUiN83z4XX6w', '', '2020-08-16 01:31:21', '2020-08-16 01:31:21', NULL),
(119, '2', 'testing@testing12345.com', 'Testing Testing Testing', 'pending', '350', '123456789', 'paypal', 'MEBiqzR5ZECrgia8jP2Q', '', '2020-08-16 03:47:56', '2020-11-09 14:41:21', NULL),
(120, '6', 'test@mail.com', 'backend', 'pending', '15', 'Rffe335', 'paypal', 'dgeqJweIQ5pkpgbKHvCi', '', '2020-08-16 10:02:51', '2020-10-29 06:29:20', NULL),
(121, '1', 'tara@gmaik.com', 'Tara', 'pending', '20', '12354564', 'paypal', 'A4xQgt7PUDJiWs9Zy6lS', '', '2020-08-17 06:34:28', '2020-11-22 20:26:57', NULL),
(122, '1', 'employee@example.com', 'Ted', 'pending', '20', '12354564', 'manual_payment', 'Rjc86qXhxul2U2X8v7Lq', '', '2020-08-17 08:36:52', '2020-11-22 20:26:57', NULL),
(123, '1', 'employee@example.com', 'Ted', 'pending', '20', '12354564', 'paypal', 'g9Flc7NpQT7y9Z9ttyAO', '', '2020-08-17 08:37:08', '2020-11-22 20:26:57', NULL),
(124, '2', 'enocmonyancha@gmail.com', 'Enock Monyancha', 'pending', '20', '123456789', 'flutterwave', '031tOF80YNByMnI9g0h4', '', '2020-08-17 14:32:36', '2020-11-09 14:41:21', NULL),
(125, '13', 'scorpionsweda@inbox.ru', 'hussein', 'pending', '20', NULL, 'paypal', 'ra1Cxzuf5VoqT1XtoS2q', '', '2020-08-17 14:53:23', '2020-08-17 14:53:23', NULL),
(126, '3', 'versucks@gmail.com', 'Pratama', 'pending', '15', 'bagış', 'paytm', 'wrRWCbvjOStBabh1WyhO', '', '2020-08-17 16:18:21', '2020-09-28 13:53:14', NULL),
(127, '6', 'sibosstudios@gmail.com', 'Philip Okpe', 'pending', '20', 'Rffe335', 'paystack', 'zSQ3ueBX3MSFvXn3ZZc8', '', '2020-08-17 19:33:28', '2020-10-29 06:29:20', NULL),
(128, '2', 'h60l04ge@gmail.com', 'arshare.space', 'pending', '1850', '123456789', 'paytm', 'HIK2xRLJNpBVRk0IRLrD', '', '2020-08-17 20:36:01', '2020-11-09 14:41:21', NULL),
(129, '1', 'abc@gmail.com', 'Abc', 'pending', '5', '12354564', 'paytm', 'IZkZaxmNNX0xqZBUpjmj', '', '2020-08-17 22:08:06', '2020-11-22 20:26:57', NULL),
(130, '3', 'gopilk.pro@gmail.com', 'gopi', 'pending', '10', 'bagış', 'paytm', 'HQThEBejUFH6tfnxLPYs', '', '2020-08-17 23:26:59', '2020-09-28 13:53:14', NULL),
(131, '2', 'laurenate.co.uk@gmail.com', 'Polo Shirt', 'pending', '10000', '123456789', 'paystack', 'EVCMilRx1Yr6ObvZAdaL', '', '2020-08-18 01:47:55', '2020-11-09 14:41:21', NULL),
(132, '3', 'vishal@chat.com', 'bbb', 'complete', '20', 'bagış', 'razorpay', '9LJHkQn4pqIpB1V8BujI', '', '2020-08-18 07:06:48', '2020-09-28 13:53:14', NULL),
(133, '5', 'okay@why.com', 'Okay', 'pending', '10', '12', 'paystack', 'g2nFlbW3IzzHwpW0jO93', '', '2020-08-18 11:59:06', '2020-10-23 01:28:10', NULL),
(134, '2', 'tttttt@gmail.com', 'tttt', 'pending', '10', '123456789', 'paytm', 'N2XAgcfg57C6CY3qHPOY', '', '2020-08-18 18:42:57', '2020-11-09 14:41:21', NULL),
(135, '1', 'gfhk@hghh.com', 'fff ggg', 'pending', '20', '12354564', 'razorpay', 'ktTUKSA9Up80pCL1mwXW', '', '2020-08-18 20:35:04', '2020-11-22 20:26:57', NULL),
(136, '2', 'sitholemu@gmail.com', 'Mlungisi Sithole', 'pending', '20', '123456789', 'paytm', 'CCtOWLBNPkoI0OpBCiZS', '', '2020-08-18 21:18:27', '2020-11-09 14:41:21', NULL),
(137, '1', 'zz@gmail.com', 'deiz', 'pending', '20', '12354564', 'paypal', 'dJ9JqwcR5LkFcwb45ecm', '', '2020-08-18 21:52:41', '2020-11-22 20:26:57', NULL),
(138, '6', 'amir_gohary@hotmail.com', 'Amir El-Gohary', 'pending', '1', 'Rffe335', 'paypal', '7JXyaf1k57LK24eAxdtS', '', '2020-08-18 21:54:20', '2020-10-29 06:29:20', NULL),
(139, '2', 'kpiyush@gmail.com', 'Piyush Sharma', 'pending', '15', '123456789', 'paytm', 'TnGeaW1g507wCr6d9ssI', '', '2020-08-18 22:00:45', '2020-11-09 14:41:21', NULL),
(140, '6', 'wyfcommunity@gmail.com', 'rONNIE', 'pending', '5', 'Rffe335', 'paypal', 'Zywk0Jbdgug7naGGlVit', '', '2020-08-18 23:41:32', '2020-10-29 06:29:20', NULL),
(141, '6', 'dave.dorsett@gmail.com', 'David Dorsett', 'pending', '20', 'Rffe335', 'stripe', 'SF4sNrihTtQDnK9pPBFa', '', '2020-08-19 05:08:04', '2020-10-29 06:29:20', NULL),
(142, '1', 'hosea.leonard@yahoo.com', 'Hosea Sanga', 'pending', '5', '12354564', 'stripe', '5PEewwqWOwFuBvWZgYpe', '', '2020-08-19 07:05:33', '2020-11-22 20:26:57', NULL),
(143, '1', 'rsathish@live.com', 'sathishg', 'pending', '10', '12354564', 'paytm', '7fwKqMViT6Qph47VT4p2', '', '2020-08-19 10:13:26', '2020-11-22 20:26:57', NULL),
(144, '1', 'rish@gmail.com', 'Rish', 'pending', '10', '12354564', 'paytm', 'vMcSvUkmsesiDVDCnkHW', '', '2020-08-19 11:18:54', '2020-11-22 20:26:57', NULL),
(145, '1', 'rish@gmail.com', 'Rish', 'pending', '20', '12354564', 'stripe', '4yeXX0SeNAnVZa9o9WFh', '', '2020-08-19 11:20:44', '2020-11-22 20:26:57', NULL),
(146, '1', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', '12354564', 'razorpay', 'w8H8ZWBk8Uo4U4wGJKsx', '1', '2020-08-19 11:33:21', '2020-11-22 20:26:57', NULL),
(147, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', '123456789', 'paytm', 'qJT78ZxFjqoiNXPWxSO0', '1', '2020-08-19 17:04:18', '2020-11-09 14:41:21', NULL),
(148, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', '123456789', 'manual_payment', 'Ty1WjLMfGAGrp33bnAUW', '1', '2020-08-19 21:47:29', '2020-11-09 14:41:21', NULL),
(149, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', '123456789', 'manual_payment', '60oZapCCHLlJBdzX8CpD', '1', '2020-08-19 22:45:25', '2020-11-09 14:41:21', NULL),
(150, '6', 'faizan@test.com', 'zxc', 'pending', '500', 'Rffe335', 'paypal', 'rugritHhc3S44rIs0ocO', '', '2020-08-20 11:49:13', '2020-10-29 06:29:20', NULL),
(151, '4', 'zoom@pokemail.net', 'Ahmad Kardi', 'pending', '10', 'BNI', 'paytm', 'j4KYk5qzDHNkT2r3xKs3', '', '2020-08-20 16:56:32', '2020-09-09 15:44:39', NULL),
(152, '3', 'admin@solvertechug.com', 'Solvertech Branch', 'pending', '10000', 'bagış', 'mollie', 'caFLn29ZpXtwngwLeebN', '', '2020-08-20 18:35:53', '2020-09-28 13:53:14', NULL),
(153, '5', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '10', '12', 'paytm', 'hHmYadARDdgjalDx8RQC', '1', '2020-08-20 19:36:11', '2020-10-23 01:28:10', NULL),
(154, '4', 'gayan.c@icloud.com', 'Gayan Hewage', 'pending', '5', 'BNI', 'paystack', 'HVusWfGHKxEppSONcuuZ', '', '2020-08-20 19:50:10', '2020-09-09 15:44:39', NULL),
(155, '4', 'gayan.c@icloud.com', 'Gayan Hewage', 'complete', '5', 'BNI', 'stripe', 'HvCbvbhrUiX5OCfmykUY', '', '2020-08-20 19:50:46', '2020-09-09 15:44:39', NULL),
(156, '4', 'clintonjoe3@gmail.com', 'Clinton', 'pending', '200', 'BNI', 'paystack', 'gHSwmvWgicVKsFiRE731', '', '2020-08-20 23:31:19', '2020-09-09 15:44:39', NULL),
(157, '3', 'adsf@asdf.com', 'asdf', 'pending', '5', 'bagış', 'paytm', 'N7s2998dh1GRz2wMWnzl', '', '2020-08-21 02:44:11', '2020-09-28 13:53:14', NULL),
(158, '2', 'ingrid.b@mail.com', 'Ingrid Berkoff', 'pending', '15', '123456789', 'flutterwave', 'b0uJxSU4S4VdJ9rkU5YH', '', '2020-08-21 03:42:54', '2020-11-09 14:41:21', NULL),
(159, '1', 'fghfgh@dfg.fgh', 'fghfh', 'pending', '10', '12354564', 'paytm', 'WCdnDdguu5cvJ3RsK8qd', '', '2020-08-21 09:39:44', '2020-11-22 20:26:57', NULL),
(160, '9', '4r54@fvr.ccc', 'r4', 'pending', '10', NULL, 'paytm', 'hge0DUKKcJzS2QA5cMyl', '', '2020-08-21 14:31:07', '2020-08-21 14:31:07', NULL),
(161, '1', 'syedsujeel2020@gmail.com', 'Syed sujeel', 'pending', '15', '12354564', 'paytm', '7E0QWP3NVzKVKyu6OBCQ', '', '2020-08-22 06:10:43', '2020-11-22 20:26:57', NULL),
(162, '2', 'cryptoghanaboy@gmail.com', 'Osei Akenten Parker Bernard', 'pending', '20', '123456789', 'flutterwave', '77DBENiuaOfwhrqIKsZ6', '', '2020-08-22 13:51:07', '2020-11-09 14:41:21', NULL),
(163, '2', 'cryptoghanaboy@gmail.com', 'Osei Akenten Parker Bernard', 'pending', '5', '123456789', 'paystack', 'Cde6hclOZ4OnZVrdjfHx', '', '2020-08-22 13:52:11', '2020-11-09 14:41:21', NULL),
(164, '2', 'sttechethiopia@gmail.com', 'Afroba', 'pending', '5', '123456789', 'manual_payment', 'v6RD7Ih0HM8SJ0oDFTFB', '', '2020-08-22 21:20:17', '2020-11-09 14:41:21', NULL),
(165, '6', 'oomphmultimedia@gmail.com', 'Elkanah Delalom', 'pending', '25', 'Rffe335', 'manual_payment', 'h6afuAmieA8ljGQQXtfE', '', '2020-08-24 02:36:09', '2020-10-29 06:29:20', NULL),
(166, '1', 'ahj@demo.com', 'Carlos Perez', 'pending', '15', '12354564', 'manual_payment', 'pbtDe7PNSYJu7BtHBCKv', '', '2020-08-24 21:42:12', '2020-11-22 20:26:57', NULL),
(167, '5', 'admin@admin.com', 'lolki', 'pending', '15', '12', 'stripe', '1OhR90nxmAfFkQK5OVtQ', '', '2020-08-24 22:36:13', '2020-10-23 01:28:10', NULL),
(168, '2', 'dakingeorge58@gmail.com', 'mike ibekwe', 'pending', '50', '123456789', 'paypal', 'Gkc2y0SoBvEuHn24Xfw9', '', '2020-08-24 23:38:47', '2020-11-09 14:41:21', NULL),
(169, '2', 'ohgodlymedia@gmail.com', 'Desmond', 'pending', '15', '123456789', 'flutterwave', 'tZzgkkG5sxFEk9lNiRMJ', '', '2020-08-25 12:54:34', '2020-11-09 14:41:21', NULL),
(170, '1', 'iinindarwati@yahoo.com', 'Anwar Irawan', 'pending', '100', '12354564', 'manual_payment', 'heqAiNR8NRVSL84U4fIm', '', '2020-08-26 17:10:52', '2020-11-22 20:26:57', NULL),
(171, '3', 'support@linkafricaceo.com', 'e', 'pending', '15', 'bagış', 'paytm', 'z796VpjIeTUcKgKkwuEg', '', '2020-08-27 03:58:44', '2020-09-28 13:53:14', NULL),
(172, '2', 'amalvcare@gmail.com', 'anish n', 'pending', '15', '123456789', 'paytm', 'dq6Akcc3BzNLVpO1IE2N', '', '2020-08-27 12:01:20', '2020-11-09 14:41:21', NULL),
(173, '6', 'test7337@gmail.com', 'Test', 'pending', '15', 'Rffe335', 'paytm', 'y4HQuvfpDkozhhU1keAy', '', '2020-08-27 15:27:54', '2020-10-29 06:29:20', NULL),
(174, '2', 'ratneshwarpratap@gmail.com', 'ratan', 'pending', '15', '123456789', 'paytm', 'BYAo99ytaIqm2FskjBbJ', '', '2020-08-27 17:46:17', '2020-11-09 14:41:21', NULL),
(175, '5', 'admin@gmail.com', 'Cecilia Chapman', 'pending', '15', '12', 'paytm', 'EEC4PqKjVU3HBtzEGpK7', '', '2020-08-27 22:44:12', '2020-10-23 01:28:10', NULL),
(176, '1', 'anchimere@digicz.com', 'Hshs', 'pending', '50', '12354564', 'manual_payment', 'ra7gcQUHZIBVfNyXHJkJ', '', '2020-08-28 16:33:40', '2020-11-22 20:26:57', NULL),
(177, '2', 'mansoor@dimensions-uae.com', 'Mansoor AlMarzooqi', 'pending', '10', '123456789', 'paypal', 'jEFa4AkYDsMkZChRHARV', '', '2020-08-30 19:50:44', '2020-11-09 14:41:21', NULL),
(178, '6', 'employee@example.com', 'Pingu', 'pending', '15', 'Rffe335', 'paytm', 'SBuTu6FBat2tAvJfRZE2', '', '2020-08-31 07:22:15', '2020-10-29 06:29:20', NULL),
(179, '1', 'sonakshidoutal@gmail.com', 'Pingu', 'pending', '20', '12354564', 'stripe', 'KsbwQWvguFJRuiHdfRom', '', '2020-08-31 07:23:52', '2020-11-22 20:26:57', NULL),
(180, '1', 'jobivarghese@yahoo.com', 'david', 'pending', '15', '12354564', 'paytm', '6WUBhAoJemKtdoHWUPnh', '', '2020-08-31 11:44:04', '2020-11-22 20:26:57', NULL),
(181, '2', 'test@test.co', 'asdfasdkljfhkajsdhfkjhaskdlj', 'pending', '15', '123456789', 'paypal', 'LmSKqEEkTxDvLymaBU2t', '', '2020-09-01 10:36:59', '2020-11-09 14:41:21', NULL),
(182, '1', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '50', '12354564', 'flutterwave', 'b4hDaejwqcWVrd96OMJG', '1', '2020-09-01 13:23:04', '2020-11-22 20:26:57', NULL),
(183, '3', 'sunardisukowardi@hotmail.com', 'sunsuk', 'pending', '15', 'bagış', 'paytm', '4ddJ0BKEtQxxaAoR9Ljn', '', '2020-09-01 13:53:56', '2020-09-28 13:53:14', NULL),
(184, '1', 'codewapps@gmail.com', 'Zamani Uwah', 'pending', '15', '12354564', 'manual_payment', 'zJlXP0hJcYoSLOAV87dD', '', '2020-09-01 17:25:39', '2020-11-22 20:26:57', NULL),
(185, '6', 'asd@mailinator.com', 'asda', 'pending', '15', 'Rffe335', 'paypal', 'PaT0qWDfGw2M8KwHeHt6', '', '2020-09-02 12:20:42', '2020-10-29 06:29:20', NULL),
(186, '2', 'kemal@yenal.com', 'kemal', 'pending', '15', '123456789', 'paytm', 'JyyWDz86DZMlDjBBUJYH', '', '2020-09-03 13:55:40', '2020-11-09 14:41:21', NULL),
(187, '2', 'kemal@yenal.com', 'kemal', 'pending', '15', '123456789', 'stripe', 'rxRcBW63vXACkgT7UzZB', '', '2020-09-03 13:55:54', '2020-11-09 14:41:21', NULL),
(188, '2', 'kemal@yenal.com', 'kemal', 'pending', '15', '123456789', 'paystack', 'MXloHKIZOwCF8fmMfbjs', '', '2020-09-03 13:56:14', '2020-11-09 14:41:21', NULL),
(189, '3', 'koka.kurtanidze1992x1@gmail.com', 'alliance group', 'pending', '15', 'bagış', 'mollie', 'NP4pubTVFbyDOQkt9Jw7', '', '2020-09-03 22:47:09', '2020-09-28 13:53:14', NULL),
(190, '2', 'asdasdas@sdasdasdas.com', 'sdsas', 'pending', '15', '123456789', 'manual_payment', 'bz91z9utISBr4qGuLwwi', '', '2020-09-04 04:47:05', '2020-11-09 14:41:21', NULL),
(191, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', '123456789', 'manual_payment', 'UGmKo1UMku4Mwecncni3', '1', '2020-09-04 22:29:54', '2020-11-09 14:41:21', NULL),
(192, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '10', '123456789', 'paytm', '3CeUYUUzQMcqYIcOSMoA', '1', '2020-09-06 09:00:45', '2020-11-09 14:41:21', NULL),
(193, '2', '123@gmail.com', 'kjl', 'pending', '15', '123456789', 'paytm', '9EQ7mygt6FKeJVTYXGAw', '', '2020-09-06 12:48:19', '2020-11-09 14:41:21', NULL),
(194, '1', 'cpsoftltdnigeri@gmail.com', 'john doe', 'pending', '3000', '12354564', 'flutterwave', 'Ko8yPCVO1ColI5pjdMUQ', '', '2020-09-06 21:07:06', '2020-11-22 20:26:57', NULL),
(195, '1', 'cpsoftltdnigeri@gmail.com', 'john doe', 'pending', '1000', '12354564', 'paystack', 'xRWdQFlrHI01WL3DUyUu', '', '2020-09-06 21:07:21', '2020-11-22 20:26:57', NULL),
(196, '1', 'cpsoftltdnigeri@gmail.com', 'john doe', 'pending', '50', '12354564', 'flutterwave', 'jxFHwAF9vxNRZAM4wf4J', '', '2020-09-06 21:07:36', '2020-11-22 20:26:57', NULL),
(197, '6', 'student@example.com', 'asdasdasd', 'pending', '100', 'Rffe335', 'manual_payment', 'SuI5TctFN7vEN7WIvt9F', '', '2020-09-07 04:42:24', '2020-10-29 06:29:20', NULL),
(198, '6', 'admin@example.com', 'asdasdasd', 'pending', '10', 'Rffe335', 'manual_payment', 'mKsO2LgaWdkKS3HOREAP', '', '2020-09-07 04:43:02', '2020-10-29 06:29:20', NULL),
(199, '5', 'admin@example.com', 'codex', 'pending', '15', '12', 'paytm', 'hCu5ZDhYouMn0JCDHy0i', '', '2020-09-07 04:53:59', '2020-10-23 01:28:10', NULL),
(200, '14', 'thenwk2012@gmail.com', 'abdul ahad alam', 'pending', '10', NULL, 'paypal', 'o3YbUyh2mQyDQbMszeZP', '', '2020-09-07 13:28:24', '2020-09-07 13:28:24', NULL),
(201, '3', 'jlkjkewql@gmailc.com', 'jess', 'complete', '15', 'bagış', 'mollie', 'O0TWJFGiyCvq5ZvyrOtX', '', '2020-09-08 07:30:14', '2020-09-28 13:53:14', NULL),
(202, '3', 'jlkjkewql@gmailc.com', 'jess', 'pending', '50000', 'bagış', 'flutterwave', 'bVyETSSMxazYQ6zrg4he', '', '2020-09-08 07:31:35', '2020-09-28 13:53:14', NULL),
(203, '3', 'jlkjkewql@gmailc.com', 'jess', 'complete', '50000', 'bagış', 'stripe', 'RNFbTOGvAeDI7KeEJQ36', '', '2020-09-08 07:31:45', '2020-09-28 13:53:14', NULL),
(204, '1', 'ahmedmohamedelhady2003@gmail.com', 'Ahmed Abdelhady', 'pending', '25', '12354564', 'paypal', 'Fr5RQztDAkfPY0ulIUrG', '', '2020-09-08 11:47:15', '2020-11-22 20:26:57', NULL),
(205, '3', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', 'bagış', 'paytm', 'K08OC86LI6r1HpJd8mEQ', '1', '2020-09-08 18:09:57', '2020-09-28 13:53:14', NULL),
(206, '18', 'teste@teste.com', 'teste', 'pending', '50', NULL, 'stripe', 'DK1EzotawHBPzf6frmaJ', '', '2020-09-08 21:36:18', '2020-09-08 21:36:18', NULL),
(207, '4', 'zoom@pokemail.net', 'Robert', 'pending', '15', 'BNI', 'manual_payment', 'vhyoARUNAgzcwvILNZp8', '', '2020-09-09 15:44:03', '2020-09-09 15:44:39', NULL),
(208, '4', 'zoom@pokemail.net', 'Anwar Irawan', 'pending', '1000', 'BNI', 'manual_payment', 'ynmXYd7AUDzXwKyelRBc', '', '2020-09-09 15:44:39', '2020-09-09 15:44:39', NULL),
(209, '3', 'admin@admin.com', 'vhvm', 'pending', '15', 'bagış', 'paytm', '8sO854cp7K9OctgvtX55', '', '2020-09-10 11:38:47', '2020-09-28 13:53:14', NULL),
(210, '10', 'dasfsdf@gdfhfh.com', 'kemal', 'pending', '15', NULL, 'paypal', 'fbTeQT1twyKO8cZuALa3', '', '2020-09-12 19:15:52', '2020-09-12 19:15:52', NULL),
(211, '6', 'aasas@gmail.com', 'Anish Tr', 'pending', '20', 'Rffe335', 'paytm', 'VPL7JRonkhwRapxaGoNa', '', '2020-09-13 00:48:14', '2020-10-29 06:29:20', NULL),
(212, '1', 'solucionescompucaribe@gmail.com', 'JAVIER MOTA', 'pending', '15', '12354564', 'paytm', '9OQqb6G7qlYXBRlRM8oJ', '', '2020-09-14 23:56:00', '2020-11-22 20:26:57', NULL),
(213, '1', 'solucionescompucaribe@gmail.com', 'JAVIER MOTA', 'pending', '15', '12354564', 'paypal', 'bAkNZNpOqQ2ugCh1W4s8', '', '2020-09-14 23:56:27', '2020-11-22 20:26:57', NULL),
(214, '1', 'solucionescompucaribe@gmail.com', 'JAVIER MOTA', 'pending', '15', '12354564', 'stripe', 'v2bJ3f3RXC9HFXlT4tNJ', '', '2020-09-14 23:57:10', '2020-11-22 20:26:57', NULL),
(215, '1', 'solucionescompucaribe@gmail.com', 'JAVIER MOTA', 'pending', '15', '12354564', 'manual_payment', 'DEd10vgN1rDqVVQkxs6W', '', '2020-09-14 23:57:26', '2020-11-22 20:26:57', NULL),
(216, '1', 'admin@cf.com', 'Ok', 'pending', '15', '12354564', 'paytm', 'ixPiwjej3GYJRmYSDqke', '', '2020-09-16 14:05:18', '2020-11-22 20:26:57', NULL),
(217, '3', 'a@gmail.com', 'karthik', 'pending', '15', 'bagış', 'razorpay', 't24qC8Trw4Uaxj9ycoU0', '', '2020-09-17 10:49:44', '2020-09-28 13:53:14', NULL),
(218, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '15', 'bagış', 'stripe', 'FB6Q2RhT56SHO3TRdYn6', '', '2020-09-17 15:54:09', '2020-09-28 13:53:14', NULL),
(219, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '15', 'bagış', 'manual_payment', 'W8tdrqDDSBeFOY7EbHw2', '', '2020-09-17 15:54:22', '2020-09-28 13:53:14', NULL),
(220, '2', 'admin@admin.com', 'Arafat', 'pending', '15', '123456789', 'paytm', 'rGC9S2UFjY7629JPVG6C', '', '2020-09-17 21:06:32', '2020-11-09 14:41:21', NULL),
(221, '5', 'davis.xavier@yahoo.fr', 'Davis', 'pending', '15', '12', 'stripe', 'P91ij6KbcHWZqoyT4fie', '', '2020-09-18 15:27:17', '2020-10-23 01:28:10', NULL),
(222, '5', 'davis.xavier@yahoo.fr', 'Davis', 'pending', '15', '12', 'manual_payment', 'QEG2sKwy7An2itlbCwA7', '', '2020-09-18 15:27:38', '2020-10-23 01:28:10', NULL),
(223, '6', 'sa@gmail.com', 'sadfa', 'pending', '15', 'Rffe335', 'paypal', 'Edy2z5Jt78WFf0sYYldX', '', '2020-09-18 19:42:42', '2020-10-29 06:29:20', NULL),
(224, '5', 'moad@dawtechbd.com', 'Miad', 'pending', '15', '12', 'paytm', 'zN5XcvpI3miYZFbV353T', '', '2020-09-18 21:14:55', '2020-10-23 01:28:10', NULL),
(225, '5', 'malika.puti57@gmail.com', 'testing 123', 'pending', '15', '12', 'paytm', 'Jb5qYRFshRZbxdDDyaN4', '', '2020-09-19 13:01:56', '2020-10-23 01:28:10', NULL),
(226, '2', 'mazenashraf2539@gmail.com', 'Mazen Leno', 'pending', '50', '123456789', 'flutterwave', 'acpVNpcrbQKTjBKqculJ', '68', '2020-09-20 08:34:25', '2020-11-09 14:41:21', NULL),
(227, '2', 'abc@gmail.com', 'Abc', 'pending', '15', '123456789', 'paytm', 'wdwcOapjU7v52Jd1whvo', '', '2020-09-21 15:12:53', '2020-11-09 14:41:21', NULL),
(228, '1', 'prashantsoniit@gmail.com', 'Prashant Soni', 'pending', '15', '12354564', 'paytm', 'L4jNCFrkP7uHlNfW1dy2', '', '2020-09-23 12:10:25', '2020-11-22 20:26:57', NULL),
(229, '3', 'dsfd@fdrsetfr.nj', 'seds', 'complete', '15', 'bagış', 'paystack', 'Wuy5NdULPzwJY6gR0xBR', '', '2020-09-23 19:11:12', '2020-09-28 13:53:14', NULL),
(230, '5', 'kotaje@mailinator.com', 'Hayley Wolf', 'pending', '26', '12', 'paytm', 'p5crqShOoZhym8yWjPVc', '', '2020-09-23 21:14:29', '2020-10-23 01:28:10', NULL),
(231, '3', 'sasads@gmail.com', '132', 'pending', '15', 'bagış', 'mollie', 'JzJ9AW7IMaZVku4Lx1Tq', '', '2020-09-24 07:52:35', '2020-09-28 13:53:14', NULL),
(232, '5', 'asd@dsa.com', 'aasdsad', 'pending', '50', '12', 'stripe', 'whvSPambq9bNCK8nsoQt', '', '2020-09-26 00:14:33', '2020-10-23 01:28:10', NULL),
(233, '1', 'sd@gag.com', 'aa', 'pending', '15', '12354564', 'paytm', 'b61kIfYUQKtE0MoChkSm', '', '2020-09-26 12:38:31', '2020-11-22 20:26:57', NULL),
(234, '6', 'aliferik481@gmail.com', 'alif', 'pending', '10', 'Rffe335', 'paypal', 'MIRGQCAPZOVw81BgQPp6', '', '2020-09-26 17:11:46', '2020-10-29 06:29:20', NULL),
(235, '2', 'k@gmail.com', 'sasdsf gddgf', 'pending', '15', '123456789', 'flutterwave', 'czAV6KjLAmSHLxhlRnNQ', '', '2020-09-28 08:17:07', '2020-11-09 14:41:21', NULL),
(236, '3', 'email@email.com', 'tes', 'pending', '15', 'bagış', 'manual_payment', 'gEtEk5MZ4x8C81B8ItAg', '', '2020-09-28 11:37:21', '2020-09-28 13:53:14', NULL),
(237, '5', 'waleedahmedbarakat@gmail.com', 'Waleed Barakat', 'pending', '15', '12', 'paypal', 'Wu91gsAo0qwTjYBps5OM', '21', '2020-09-28 12:54:07', '2020-10-23 01:28:10', NULL),
(238, '2', 'njugunamwash5@gmail.com', 'Joseph Mwangi', 'pending', '50', '123456789', 'flutterwave', 'OkH2QUVz1ofI4w2hS8MC', '', '2020-09-28 13:03:32', '2020-11-09 14:41:21', NULL),
(239, '3', 'jisank01@gmail.com', 'cvvv', 'pending', '15', 'bagış', 'paytm', 't1efLhKQ0Istpp9UVhHQ', '', '2020-09-28 13:49:16', '2020-09-28 13:53:14', NULL),
(240, '5', 'jisank01@gmail.com', 'toms', 'pending', '15', '12', 'mollie', '2lIZrQgakHe56bc8aEIp', '', '2020-09-28 13:51:33', '2020-10-23 01:28:10', NULL),
(241, '3', 'info@edirnerentacars.com', 'Ercan Jalil', 'pending', '15', 'bagış', 'manual_payment', 'dPOZDCpYZNnDnFSkntCO', '', '2020-09-28 13:53:14', '2020-09-28 13:53:14', NULL),
(242, '1', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', '12354564', 'paytm', 'htX9kFXPbIJfkhHIrESO', '1', '2020-09-28 13:53:38', '2020-11-22 20:26:57', NULL),
(243, '1', 'domainking41@gmail.com', 'James Lexie', 'pending', '15', '12354564', 'paytm', 'KkAe4iRpbXqpaZHdCISx', '', '2020-09-28 13:55:04', '2020-11-22 20:26:57', NULL),
(244, '1', 'domainking41@gmail.com', 'James Lexie', 'pending', '15', '12354564', 'flutterwave', 'P3o061Jc2n7qgkEx8LHp', '', '2020-09-28 13:56:21', '2020-11-22 20:26:57', NULL),
(245, '1', 'domainking41@gmail.com', 'James Lexie', 'complete', '30', '12354564', 'mollie', '9Kl10wm6Z7PJd9mcUsRp', '', '2020-09-28 13:57:43', '2020-11-22 20:26:57', NULL),
(246, '2', 'naturalpresenter2@yahoo.com', 'Abegunde Gbenga Oluwatosin', 'complete', '50', '123456789', 'paystack', 'rbXbwlCcX52MWudyHCK7', '', '2020-09-28 15:05:25', '2020-11-09 14:41:21', NULL),
(247, '6', 'micfoe@gmail.com', 'hh', 'pending', '10', 'Rffe335', 'paypal', 'HOtJl3DH51IwzYA2VDvz', '', '2020-09-28 16:14:35', '2020-10-29 06:29:20', NULL),
(248, '2', 'john.tubudi98@gmail.com', 'Nakul carter', 'pending', '40', '123456789', 'paytm', 's1Xvs7yNY1pPyAJO69Xa', '', '2020-09-28 17:03:01', '2020-11-09 14:41:21', NULL),
(249, '2', 'jean.tubudi2018@gmail.com', 'John', 'pending', '15', '123456789', 'paypal', 'E0IyCk5wOGWqh9cAb9Sv', '', '2020-09-28 17:05:34', '2020-11-09 14:41:21', NULL),
(250, '2', 'jean.tubudi2018@gmail.com', 'John', 'pending', '30', '123456789', 'razorpay', 'sIMmSySLcmhiqHI7Qk9b', '', '2020-09-28 17:06:44', '2020-11-09 14:41:21', NULL),
(251, '2', 'jean.tubudi2018@gmail.com', 'John', 'pending', '15', '123456789', 'razorpay', 'Nusj6wzR2av7eAz8K1V9', '', '2020-09-28 17:08:59', '2020-11-09 14:41:21', NULL),
(252, '2', 'jean.tubudi2018@gmail.com', 'John', 'pending', '40', '123456789', 'paypal', 'Z59CYangzd1Cf7yHLO4X', '', '2020-09-28 17:09:37', '2020-11-09 14:41:21', NULL),
(253, '5', 'jean.tubudi98@gmail.com', 'John', 'pending', '15', '12', 'manual_payment', 's3tQOf2Nt3z3w1o3gjvD', '', '2020-09-28 17:23:57', '2020-10-23 01:28:10', NULL),
(254, '1', 'kkk@kk.col', 'kkk', 'pending', '15', '12354564', 'razorpay', 'wnGHM8fGHhiHp4SUWQx6', '', '2020-09-28 18:01:22', '2020-11-22 20:26:57', NULL),
(255, '1', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', '12354564', 'paypal', 'hxePWnwwwEE6KE6xtpJe', '1', '2020-09-29 05:43:12', '2020-11-22 20:26:57', NULL),
(256, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', '123456789', 'paytm', '9zhtoJOcQ4t1SqNTAMmc', '1', '2020-09-29 06:25:54', '2020-11-09 14:41:21', NULL),
(257, '1', '123@gm', 'ju', 'pending', '15', '12354564', 'paytm', 'rhfV8kHid1sIPB5u8QXn', '', '2020-09-29 11:12:05', '2020-11-22 20:26:57', NULL),
(258, '13', 'engmohabdelalem@gmail.com', 'mohamed ali', 'pending', '15', NULL, 'paytm', '1dpIyBQHWWFJS26UGQCX', '', '2020-09-29 16:15:46', '2020-09-29 16:15:46', NULL),
(259, '2', 'john.cena@owlymail.com', 'katmik', 'pending', '20', '123456789', 'paypal', 'PQsS08uv2hJBMmybO28c', '', '2020-09-29 21:55:46', '2020-11-09 14:41:21', NULL),
(260, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', '123456789', 'paytm', '6xrP59O9coD0zpoBrSfI', '1', '2020-09-30 00:05:58', '2020-11-09 14:41:21', NULL),
(261, '2', 'rear#rear@rear.cc', 'ear', 'pending', '15', '123456789', 'paytm', 'siszSUQHmqeUf3eBLYCM', '', '2020-09-30 00:48:28', '2020-11-09 14:41:21', NULL),
(262, '3', 'alexmwnderitu@gmail.com', 'Alex Ndaritu', 'complete', '15', 'txn_1HWv0DEmGOuJLTMsqQ9AhqO0', 'stripe', 'jEvKNvDOkJluSOLCdAhu', '', '2020-09-30 06:24:52', '2020-09-30 06:25:09', NULL),
(263, '2', 'hjkhkhkj@sdfs.sdf', 'hkjhkhkj', 'pending', '15', '123456789', 'paytm', 'QJw973k27XUB4QubgFSi', '', '2020-09-30 09:22:05', '2020-11-09 14:41:21', NULL),
(264, '2', 'khjhk@sd.sf', 'hjhkkj', 'pending', '15', '123456789', 'paypal', 'YdHEKdxzbEOrssGYdlCC', '', '2020-09-30 09:22:49', '2020-11-09 14:41:21', NULL),
(265, '2', 'm.umar.israr@gmail.com', 'Muhammad Umar Mahaar', 'pending', '15', '123456789', 'flutterwave', 'SaCHMCHgh8IZ0iJdDECM', '', '2020-09-30 14:26:02', '2020-11-09 14:41:21', NULL),
(266, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', '123456789', 'stripe', 'ucwY0V3yQo0R0FV9ho0v', '1', '2020-10-01 05:03:54', '2020-11-09 14:41:21', NULL),
(267, '3', 'tarekmonjur@gmail.com', 'Sharifur', 'complete', '50', '7R008875NS9417805', 'paypal', 'Hg62B0efFPefoIoDiGMz', '', '2020-10-01 10:25:13', '2020-10-01 10:26:34', NULL),
(268, '6', 'daherlive@gmail.com', 'Pedro', 'pending', '15', 'Rffe335', 'paytm', 'Kz3DBDETwudmAMBFVkzo', '', '2020-10-01 14:09:10', '2020-10-29 06:29:20', NULL),
(269, '5', 'stylesoftwares@gmail.com', 'Style Software Ltd', 'pending', '15', '12', 'stripe', 'JVVCjRBUkjRsNdqvVGxD', '', '2020-10-02 14:30:46', '2020-10-23 01:28:10', NULL),
(270, '5', 'stylesoftwares@gmail.com', 'Style Software Ltd', 'pending', '15', '12', 'manual_payment', 'S37p2J21qzukscUI0FxT', '', '2020-10-02 14:31:21', '2020-10-23 01:28:10', NULL),
(271, '2', 'vermajitenderguitar@gmail.com', 'xzczx', 'pending', '15', '123456789', 'paytm', '9tc8AhkAJrpvsKJL6qW0', '', '2020-10-02 20:09:32', '2020-11-09 14:41:21', NULL),
(272, '3', 'admin@horusformula4.com', 'Horus Eye Care Capsule - Formula 4', 'pending', '15', NULL, 'paytm', 'oxz8uSHEb9fNtSWgc8X0', '', '2020-10-02 22:41:11', '2020-10-02 22:41:11', NULL),
(273, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '15', NULL, 'paypal', 'WODKznEMxoO4EofqYnxw', '', '2020-10-04 12:23:38', '2020-10-04 12:23:38', NULL),
(274, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '10', NULL, 'paystack', '7l1JFMsaOqfX6xG1f9td', '', '2020-10-07 00:01:52', '2020-10-07 00:01:52', NULL),
(275, '2', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '50', '123456789', 'paytm', 'LKrRRSMuLz3ZODkkCGHX', '', '2020-10-07 00:13:34', '2020-11-09 14:41:21', NULL),
(276, '2', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '15', '123456789', 'paytm', 'UJWeVZ7NmKfBHYPgLizo', '', '2020-10-07 00:14:07', '2020-11-09 14:41:21', NULL),
(277, '2', 'ios888cod@gmail.com', 'Franc', 'pending', '30', '123456789', 'paypal', 'uWlfwdO33buKTX0VwBZl', '', '2020-10-07 03:51:15', '2020-11-09 14:41:21', NULL),
(278, '2', 'ios888cod@gmail.com', 'Franc', 'pending', '50', '123456789', 'stripe', 'IeHQ2lSa6ESbguW3R7cv', '', '2020-10-07 03:51:34', '2020-11-09 14:41:21', NULL),
(279, '1', 'harry_sh52@yahoo.com', 'rajeev', 'pending', '15', '12354564', 'paytm', 'oNsxsrAHlRXMyjL07rFt', '', '2020-10-07 15:26:14', '2020-11-22 20:26:57', NULL),
(280, '3', 'harry_sh52@yahoo.com', 'dsadasdasdas', 'pending', '15', NULL, 'paytm', 'X2CCDJprKZwwPjnlMlFu', '', '2020-10-07 15:45:03', '2020-10-07 15:45:03', NULL),
(281, '1', 'harry_sh52@yahoo.com', 'fdfssfsd', 'pending', '15', '12354564', 'razorpay', 'LU0XgdyvquIzrABg7OQn', '', '2020-10-07 15:45:36', '2020-11-22 20:26:57', NULL),
(282, '2', 'admin@admin.com', 'zvdz', 'pending', '10', '123456789', 'paypal', 'kgZK0G9UE5mLLXvRO1sY', '', '2020-10-08 15:07:35', '2020-11-09 14:41:21', NULL),
(283, '1', 'faiz_ahmed4@yahoo.com', 'Uu8', 'pending', '15', '12354564', 'stripe', 'CpPg5aVfhCFTBMB9QAt0', '', '2020-10-09 07:52:03', '2020-11-22 20:26:57', NULL),
(284, '2', 'kjvjhvjh@hgo.vom', ',hjv', 'complete', '15', '123456789', 'razorpay', 'C5mZbmhS530zhczQH1G7', '', '2020-10-09 10:11:30', '2020-11-09 14:41:21', NULL),
(285, '2', 'amoskid1996@gmail.com', 'Amos Oluwasegun', 'pending', '30', '123456789', 'paystack', 'q15andsoia4rxsFBkR5u', '', '2020-10-09 14:56:56', '2020-11-09 14:41:21', NULL),
(286, '2', 'tester@tester.com', 'test', 'pending', '50', '123456789', 'paytm', 'A8zgqobzqg9a2L6DcWV5', '', '2020-10-09 15:23:15', '2020-11-09 14:41:21', NULL),
(287, '1', 'info.jolad@gmail.com', 'Jide Oladunjoye', 'pending', '10000', '12354564', 'paystack', 'O7u3YU1xnQXwmt6DknOM', '', '2020-10-09 22:26:41', '2020-11-22 20:26:57', NULL),
(288, '1', 'azizzakari67@gmail.com', 'Aziz Zakari', 'pending', '50', '12354564', 'paystack', '8NzBeEWiyjUoKrLIrZdg', '', '2020-10-13 01:55:20', '2020-11-22 20:26:57', NULL),
(289, '3', 'rwerwer@f.com', 'Main menu', 'pending', '15', NULL, 'stripe', 'LpIGBeilDBkxhg32zIZ7', '', '2020-10-13 11:12:41', '2020-10-13 11:12:41', NULL),
(290, '4', 'email@email.com', 'name', 'pending', '500000', NULL, 'paypal', '2GmAW9csFjW8wfusSPLo', '', '2020-10-15 13:16:15', '2020-10-15 13:16:15', NULL),
(291, '1', 'aziz@kedah.gov.my', 't6yuj', 'pending', '15', '12354564', 'razorpay', 'H4XqTI8TbjYbdwE4n8LO', '', '2020-10-16 13:11:59', '2020-11-22 20:26:57', NULL),
(292, '4', 'asdf@sdfg.com', 'assh', 'pending', '15', NULL, 'paytm', 'fzkzyilx96MenlI8ySfs', '', '2020-10-17 02:08:51', '2020-10-17 02:08:51', NULL),
(293, '1', 'srdjan.p@blic.net', 'zicer', 'pending', '10', '12354564', 'manual_payment', 'jDaBKhAEX6xTGiieggWa', '', '2020-10-17 04:03:36', '2020-11-22 20:26:57', NULL),
(294, '5', 'srdjan.p@blic.net', 'zicer', 'pending', '15', '12', 'paypal', 'sxVN3OYwBmCmdFAlWPKc', '', '2020-10-17 04:04:30', '2020-10-23 01:28:10', NULL),
(295, '5', 'uzeyirha111kanceylan@gmail.com', 'üzeyir', 'pending', '15', '12', 'paytm', 'Ww6H7lufN5fOFwopx4Zr', '', '2020-10-17 17:48:24', '2020-10-23 01:28:10', NULL),
(296, '7', 'wdsturkey@gmail.com', 'Ali Aslan', 'pending', '15', NULL, 'stripe', '40UmBehXxPozLdIwCHdD', '', '2020-10-17 21:59:08', '2020-10-17 21:59:08', NULL),
(297, '5', 'femiakinde1@gmail.com', 'Femi', 'pending', '15', '12', 'paytm', 'vYpa9g0p6J0DaoBWiRT0', '', '2020-10-18 12:25:07', '2020-10-23 01:28:10', NULL),
(298, '1', 'femiakinde1@gmail.com', 'Femi', 'pending', '15', '12354564', 'paypal', 'ho4zNd8C1VyJjhTnxBbK', '', '2020-10-18 12:26:15', '2020-11-22 20:26:57', NULL),
(299, '1', 'femiakinde1@gmail.com', 'Femi', 'pending', '15', '12354564', 'stripe', 'PCN2ULfxnCXTHncB2cQN', '', '2020-10-18 12:27:26', '2020-11-22 20:26:57', NULL),
(300, '1', 'femiakinde1@gmail.com', 'Femi', 'pending', '15', '12354564', 'stripe', 'PssyrBg1IWBzDjIqMZjE', '', '2020-10-18 12:27:47', '2020-11-22 20:26:57', NULL),
(301, '1', 'femiakinde1@gmail.com', 'Femi', 'pending', '15', '12354564', 'paystack', 'zUz17ZAuNt4UtpYmiy7x', '', '2020-10-18 12:27:55', '2020-11-22 20:26:57', NULL),
(302, '1', 'femiakinde1@gmail.com', 'Femi', 'pending', '15', '12354564', 'flutterwave', 'deIO0JShhvyxNkT2n2Ar', '', '2020-10-18 12:30:17', '2020-11-22 20:26:57', NULL);
INSERT INTO `donation_logs` (`id`, `donation_id`, `email`, `name`, `status`, `amount`, `transaction_id`, `payment_gateway`, `track`, `user_id`, `created_at`, `updated_at`, `anonymous`) VALUES
(303, '2', 'femiakinde1@gmail.com', 'Femi', 'pending', '15', '123456789', 'paytm', '4Ho3man1qRKtUYnN1Vfk', '', '2020-10-18 12:31:06', '2020-11-09 14:41:21', NULL),
(304, '6', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '50', 'Rffe335', 'flutterwave', 'LkZrjWUr3rRHXEiifdHl', '1', '2020-10-19 00:48:28', '2020-10-29 06:29:20', NULL),
(305, '6', 'juba.kitiashvili@gmail.com', 'Juba Kitiashvili', 'pending', '5000', 'Rffe335', 'paytm', 'GbVTqFyPQXy17zd3OU99', '', '2020-10-19 04:28:23', '2020-10-29 06:29:20', NULL),
(306, '6', 'juba.kitiashvili@gmail.com', 'Juba Kitiashvili', 'pending', '5000', 'Rffe335', 'flutterwave', '5Fy0jExquJHjj9s3efUL', '', '2020-10-19 04:28:35', '2020-10-29 06:29:20', NULL),
(307, '6', 'juba.kitiashvili@gmail.com', 'Juba Kitiashvili', 'pending', '5000', 'Rffe335', 'paypal', 'bQxWRMUsu1oKHbvfsmB8', '', '2020-10-19 04:28:41', '2020-10-29 06:29:20', NULL),
(308, '2', 'ajajaj@djdjdjdj.com', 'aaaaaaaaa aaaaaaaa', 'pending', '15', '123456789', 'razorpay', 'vxqn9ggGQFIYBNTmpaCR', '', '2020-10-20 13:05:48', '2020-11-09 14:41:21', NULL),
(309, '1', 'xxxiews@gmail.com', 'saurabh kumar', 'pending', '15', '12354564', 'paytm', 'RHS6sHny8pvPxjJ8F9Ei', '', '2020-10-21 09:14:33', '2020-11-22 20:26:57', NULL),
(310, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '50', '123456789', 'paypal', 'pFnPSHM1socG2804BhBt', '1', '2020-10-21 12:17:15', '2020-11-09 14:41:21', NULL),
(311, '2', 'infographiste.franckyao@gmail.com', 'Franck', 'pending', '15', '123456789', 'stripe', 'xmIlmHyteExNTrh3rshK', '', '2020-10-22 01:34:37', '2020-11-09 14:41:21', NULL),
(312, '5', 'rider@email.com', 'Hosting', 'pending', '15', '12', 'manual_payment', '7ZneTavtfeC9a5WaG9VD', '', '2020-10-23 01:28:10', '2020-10-23 01:28:10', NULL),
(313, '17', 'tesy5@gmail.com', 'test', 'pending', '15', NULL, 'stripe', 'vLmtkD7oj6Ldq8LJ7ZX2', '', '2020-10-27 01:36:22', '2020-10-27 01:36:22', NULL),
(314, '3', 'samet.kusbey@berayazilim.net', 'Web Tasarım', 'pending', '15', NULL, 'stripe', 'SLO9ZiiSfzZ4x8dvzP6g', '', '2020-10-27 11:00:48', '2020-10-27 11:00:48', NULL),
(315, '2', 'adithsuhassv@gmail.com', 'Adith Suhas', 'pending', '15', '123456789', 'mollie', 'DL7r2SUP1Y8IzUpaIehO', '', '2020-10-27 19:59:05', '2020-11-09 14:41:21', NULL),
(316, '3', 'adithsuhassv@gmail.com', 'Adith Suhas', 'pending', '15', NULL, 'paytm', 'X3mEUbOZMaS2yFm61oU0', '', '2020-10-27 20:30:57', '2020-10-27 20:30:57', NULL),
(317, '6', 'dd@hb.com', 'Ddh', 'pending', '50', 'Rffe335', 'manual_payment', 'jlVfPVn1iwl1XYuixJQz', '', '2020-10-29 06:29:20', '2020-10-29 06:29:20', NULL),
(318, '7', 'database2577@gmail.com', 'Aldar Group', 'pending', '15', NULL, 'stripe', '5O0RFJLDeRAnZxASG96Y', '', '2020-10-29 12:42:40', '2020-10-29 12:42:40', NULL),
(319, '3', 'ice_g_war@hotmail.com', 'Tekasys Internacional', 'pending', '15', NULL, 'stripe', 'YFL9e2B52LG9curA5SHW', '', '2020-10-29 13:31:50', '2020-10-29 13:31:50', NULL),
(320, '11', 'sss@sss.com', 'sss', 'pending', '40', NULL, 'paypal', '5ciXmN3mF1KYzmLwadNR', '', '2020-10-29 23:14:52', '2020-10-29 23:14:52', NULL),
(321, '2', 'admin@example.com', 'M Alamin', 'pending', '15', '123456789', 'stripe', 'PtMcrr9HJ22LL0ihFpgb', '', '2020-10-29 23:33:12', '2020-11-09 14:41:21', NULL),
(322, '6', 'business@vishalchavan.com', 'Vishal Chavan', 'pending', '15', NULL, 'paytm', 'EPADYKOaLf6KTYwsVzk5', '', '2020-11-01 11:21:47', '2020-11-01 11:21:47', NULL),
(323, '5', 'iam@vishalchavan.com', 'Vishal Chavan', 'pending', '15', NULL, 'stripe', '2atzN5EjIKU47W4hRTsZ', '', '2020-11-01 11:23:59', '2020-11-01 11:23:59', NULL),
(324, '5', 'iam@vishalchavan.com', 'Vishal Chavan', 'pending', '15', NULL, 'razorpay', 'Tca9ddxFwf8ywbTmXPBi', '', '2020-11-01 11:24:20', '2020-11-01 11:24:20', NULL),
(325, '5', 'iam@vishalchavan.com', 'Vishal Chavan', 'pending', '15', NULL, 'paystack', 'c0xMsq9pPajBMwhrrS1D', '', '2020-11-01 11:24:54', '2020-11-01 11:24:54', NULL),
(326, '1', 'abdimu65@gmail.com', 'Abedi', 'pending', '15', '12354564', 'flutterwave', 'UsSJSTMYx79f0evKk1i3', '', '2020-11-01 16:01:51', '2020-11-22 20:26:57', NULL),
(327, '1', 'abdimu65@gmail.com', 'Abedi', 'pending', '15', '12354564', 'manual_payment', 'EkxpsV05oJTSokRPTVHt', '', '2020-11-01 16:02:42', '2020-11-22 20:26:57', NULL),
(328, '1', 's@w.in', 'etre', 'pending', '15', '12354564', 'paytm', 'mUrQXsX3k5y6Sd0ZIoXx', '', '2020-11-01 21:14:57', '2020-11-22 20:26:57', NULL),
(329, '1', 'sunmughan@gmail.com', 'Sunmughan Swamy', 'pending', '15', '12354564', 'razorpay', 'kZh8lGiAA7C23YZBvawn', '', '2020-11-02 02:20:36', '2020-11-22 20:26:57', NULL),
(330, '1', 'zidangrcfc@yahoo.com', 'indonesia', 'pending', '15', '12354564', 'paytm', 'nrpvU9nnECZTFyMHcP1J', '', '2020-11-04 00:12:35', '2020-11-22 20:26:57', NULL),
(331, '2', 'admin@admin.com', 'TOYATA LIZZ', 'pending', '15', '123456789', 'flutterwave', 'q7wWWqmZXroxa32Ei4JN', '', '2020-11-04 17:37:41', '2020-11-09 14:41:21', NULL),
(332, '5', 'moseshb17@outlook.com', 'Moses Mwila', 'pending', '15', NULL, 'flutterwave', 'uucK0Vzl2SRJ3sbdvtL3', '', '2020-11-05 17:57:56', '2020-11-05 17:57:56', NULL),
(333, '14', 'fg@hg.jgg', 'Gg', 'pending', '15', NULL, 'paytm', '0Ti2Wx50f7m3hy5kfW1A', '', '2020-11-06 16:28:23', '2020-11-06 16:28:23', NULL),
(334, '1', 'zeeshan.codes@gmail.com', 'ZEESHAN AMIN', 'pending', '1', '12354564', 'paytm', 'l9Ac0O5OS3w2EVguaDfG', '', '2020-11-06 17:02:50', '2020-11-22 20:26:57', NULL),
(335, '5', 'ysbabatunde@gmail.com', 'dddd Babatunde', 'complete', '30', '1zt6BmFjz0Dou2CQ9jTnYoJ9Y', 'paystack', 'jO5MqL8wHl8rcTdndqb0', '', '2020-11-06 22:57:57', '2020-11-06 22:58:19', NULL),
(336, '2', 'tezavisionmedia@gmail.com', 'Arun Trisal', 'pending', '15', '123456789', 'paytm', 'yYbGWnC7Gb1hp2kmTDS4', '', '2020-11-08 15:41:26', '2020-11-09 14:41:21', NULL),
(337, '2', 'athambawa@yahoo.com', 'Atham Bawa', 'pending', '15', '123456789', 'paytm', 'MzH7Rqt2W26qusdpaO34', '', '2020-11-09 14:40:27', '2020-11-09 14:41:21', NULL),
(338, '2', 'athambawa@yahoo.com', 'Atham Bawa', 'pending', '15', '123456789', 'stripe', 'cM6ZDl4DNpTdROVIDBoa', '', '2020-11-09 14:40:56', '2020-11-09 14:41:21', NULL),
(339, '2', 'athambawa@yahoo.com', 'Atham Bawa', 'pending', '15', '123456789', 'manual_payment', 'TX8ip5IClKnrvKHPekxB', '', '2020-11-09 14:41:21', '2020-11-09 14:41:21', NULL),
(340, '5', 'cryptoghanaboy@gmail.com', 'Osei Akenten Parker Bernard', 'pending', '50', NULL, 'flutterwave', 'yndNMFtJNFHSvRqIDPsV', '', '2020-11-10 12:41:11', '2020-11-10 12:41:11', NULL),
(341, '6', 'suhaibkashmiri@gmail.com', 'Muhammad suhaib', 'pending', '15', NULL, 'paytm', 'tyA9cg7SzqF7XBknAImG', '', '2020-11-11 21:50:51', '2020-11-11 21:50:51', NULL),
(342, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '20', NULL, 'paypal', 'ql9IUKaTxZ5GqZIb07oa', '1', '2020-11-13 00:40:37', '2020-11-13 00:40:37', NULL),
(343, '2', 'tom@tom.com', 'tom', 'pending', '40', NULL, 'razorpay', 'eN01aRx9giW3woasVCmb', '', '2020-11-15 07:08:36', '2020-11-15 07:08:36', NULL),
(344, '4', 'nooo@europe.com', 'noooo', 'pending', '15', NULL, 'stripe', 'p73IgwtuMBTisv1zP7yB', '', '2020-11-15 22:28:17', '2020-11-15 22:28:17', NULL),
(345, '6', 'freephpbr@gmail.com', 'Php', 'pending', '15', NULL, 'paypal', 'sGsrHLiCAY5HoMInOjx5', '', '2020-11-16 16:08:48', '2020-11-16 16:08:48', NULL),
(346, '2', 'gabimartinez123456@gmail.com', 'Gabriel Martínez', 'pending', '15', NULL, 'paypal', '0HjaUNJkZPH2HI1fs41W', '94', '2020-11-18 02:04:55', '2020-11-18 02:04:55', NULL),
(347, '6', 'mohammed.alihaggag@gmail.com', 'Mohammed Ali', 'pending', '15', NULL, 'paytm', 'z3QXbk57sdTssvBpPoUM', '', '2020-11-19 20:06:48', '2020-11-19 20:06:48', NULL),
(348, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '350', NULL, 'paystack', 'Xved2kVn29UBXGQAv57i', '', '2020-11-19 21:17:30', '2020-11-19 21:17:30', NULL),
(349, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '20', NULL, 'paystack', 'J4W73WgTb8bwkRdLp5nz', '', '2020-11-19 21:18:07', '2020-11-19 21:18:07', NULL),
(350, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'pending', '10', NULL, 'paytm', 'Nl4BTAetVNJ1OsaDZ5T2', '', '2020-11-19 21:18:21', '2020-11-19 21:18:21', NULL),
(351, '3', 'dvrobin4@gmail.com', 'Sharifur Rahmam', 'complete', '15', 'X1nyqLCB6JFUu2TLcE0mlVedl', 'paystack', 'vcHcl4C1TGJWX3ncXvja', '', '2020-11-19 21:18:37', '2020-11-19 22:34:43', NULL),
(352, '1', 'agrejdeanu@gmail.com', 'Andrei', 'pending', '15', '12354564', 'paypal', 't33sUySX8XyPD2xP2hhq', '', '2020-11-19 22:42:27', '2020-11-22 20:26:57', NULL),
(353, '6', 'bob@baob.pl', 'Bill', 'pending', '30', NULL, 'paytm', 'um4YMxjy0xqAwk6nUz98', '', '2020-11-22 01:00:33', '2020-11-22 01:00:33', NULL),
(354, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', NULL, 'paytm', '64jb2j2Bmo4itUI7ei5N', '1', '2020-11-22 17:19:17', '2020-11-22 17:19:17', NULL),
(355, '1', 'admin@accfrance.com', 'Nicolas Mosca', 'pending', '15', '12354564', 'manual_payment', 'vsH6SrFgO1xMmA390qpo', '', '2020-11-22 20:26:57', '2020-11-22 20:26:57', NULL),
(356, '1', 'dvdplb@gmail.com', 'Daid', 'pending', '50', NULL, 'razorpay', 'vUlFP1gKPATUxu7NqYbM', '', '2020-11-23 12:55:26', '2020-11-23 12:55:26', NULL),
(357, '3', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'complete', '15', 'Kp0fBmkfHNZtimov4tyryehr2', 'paystack', 'IG486BTjoG1sL7s3VbBT', '1', '2020-11-24 12:22:32', '2020-11-24 12:23:26', NULL),
(358, '3', 'tmacraftservice@gmail.com', 'Mane', 'pending', '15', NULL, 'paystack', 'nxcWkHJCNlhZJfIjmlZ3', '98', '2020-11-24 16:49:50', '2020-11-24 16:49:50', NULL),
(359, '2', '55555655@gmail.com', 'Gaston Alexis Barria', 'pending', '15', NULL, 'paytm', '7s8qjPZKqcJZd0CTGqxd', '', '2020-11-24 19:10:41', '2020-11-24 19:10:41', NULL),
(360, '5', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', NULL, 'manual_payment', 'LQmgqj40iKzJ6bkufqEB', '1', '2020-11-24 22:16:03', '2020-11-24 22:16:03', NULL),
(361, '3', 'salmankhanoss782@gmail.com', 'Salman Khan', 'pending', '15', NULL, 'paytm', 'TtTgHmWcgbL2jifCUgyL', '', '2020-11-25 11:10:17', '2020-11-25 11:10:17', NULL),
(362, '2', 'dgbdg@gmail.com', 'dgh', 'complete', '15', 'vaGj1SSrXFPbxvofNGSStr4Do', 'paystack', 'su7HaZ5atgBWQgXZDpdg', '', '2020-11-25 12:05:19', '2020-11-25 12:06:28', NULL),
(363, '11', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', NULL, 'paytm', 'WyEduC5DcDlkzyYyezy0', '1', '2020-11-25 16:20:23', '2020-11-25 16:20:23', NULL),
(364, '2', 'dsgdfsg@dsfdf.nrt', 'eggfdgdsfg', 'pending', '15', NULL, 'paytm', 'AoNpL7K9c4wcyyh0sCmE', '', '2020-11-26 10:43:46', '2020-11-26 10:43:46', NULL),
(365, '2', 'dvrobin4@gmail.com', 'Sharifur Rahman', 'pending', '15', NULL, 'paytm', 'lrVmqAicPqUHs5MqiP1T', '1', '2020-11-26 16:29:51', '2020-11-26 16:29:51', NULL),
(366, '2', 'ewrwer@ger.com', 'fsf', 'pending', '15', NULL, 'razorpay', 'Mk0UvvizxELx4BfK6lfd', '', '2020-12-22 09:16:22', '2020-12-22 09:16:22', 1),
(367, '10', 'tasarlasan@gmail.com', 'serdar', 'pending', '15', NULL, 'paytm', 'yArbEkpm918oCVpjVFtA', '', '2020-12-23 23:58:16', '2020-12-23 23:58:16', 1),
(368, '6', 'test@gg.com', 'test', 'pending', '15', NULL, 'flutterwave', 'dBq1ydyKOSXveskLlTH2', '', '2020-12-24 00:56:28', '2020-12-24 00:56:28', 0),
(369, '2', 'sffd@asd.com', 'sdsfd', 'complete', '15', 'pay_GH8eBeqzik2gZD', 'razorpay', 'a23ZpjVfG1yrVwu6Rryn', '', '2020-12-25 09:19:52', '2020-12-25 09:20:28', 1),
(370, '2', 'sdasdasda@fesd.com', 'sad', 'pending', '15050', NULL, 'razorpay', 'jvSlqt6Nu0iqNUSfzASV', '', '2020-12-25 09:21:06', '2020-12-25 09:21:06', 1),
(371, '6', 'SSF@dzffds.com', 'sfdfds', 'pending', '15', NULL, 'razorpay', 'c9v8ZoZT7rJZUDzOQSiR', '', '2020-12-25 09:22:38', '2020-12-25 09:22:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_tickets` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `venue_location` text COLLATE utf8mb4_unicode_ci,
  `venue_phone` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `category_id`, `status`, `lang`, `date`, `time`, `cost`, `available_tickets`, `image`, `organizer`, `organizer_email`, `organizer_website`, `organizer_phone`, `venue`, `slug`, `venue_location`, `venue_phone`, `meta_tags`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Brother set had private his letters observe outward resolve', '<p>Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p><br></p><p>Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p><br></p><p>Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law age brother sending amongst why covered.&nbsp;</p><p><br></p><p>Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p><br></p><p>Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p><br></p><p>Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use.&nbsp;</p><p><br></p><p>Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '1', 'publish', 'en', '2020-09-25', '10:00AM - 12:00PM', '20', '29', '51', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'brother-set-had-private-his-letters-observe-outward-resolve', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 05:58:56', '2020-09-03 17:25:28'),
(2, 'Şimdi sıkıcı utangaç kalıcı kadınları açtı', '<p>Şimdi sıkıcı utangaç kalıcı kadınları açtı. Dashwood marianne girişinde mümkün bina merak. Hızla margaret içinde taşıma meraklı merak etti. Tamamen duyarsız bir değişiklik yapmayı bıraktı. Bay yerleşme vesilesiyle mesafe hanımefendisinde ısrar etti. Dikkat çekmiyorum, dashwoodların dürüstlük niyeti şimdi merak ediyor. Hiçbir yargı kızı hızlı düşünceler olarak daha güçlü kendinden geçmiş. Daha da kötüsü, mahkeme bunları ileri sürmedi.</p><p><br></p><p>Kardeş setin mektupları dışa dönük olarak gözlemledi. Panjurlar evlilik olarak bizleri fırlatmak için. Etkisi kabul ederse dilek hayranı diledi. Ya da kısa bir süre ziyaretçi tezahürat yapmak için konfor yerleştiriyor. Birkaç tepenin gözyaşı haftalarca gördü. Kısmi duyarsız kutlanır. Gezinti düşünceleri büyük bir dost olarak kırgınım. Akşam üstü bereketli maruz kaldı. Atları görmek biz beklemek için bol doğa oynadı. Genç led tepelerin durdu kendi şey olsun diyor.</p><p><br></p><p>Bana sürekli telafi istişare etti. Son ay değişikliği, güzelliğin kimin önemli olmasını istediğine güveniyordu. John gerçek parkın çobanı çok dinlenelim. Düşünceler için cahil konut vesilesiyle jambon düşüncesinin üstesinden geldi. Nazikçe elinor bağlıdır. Onun konuşulmamış etkisi layık barton. Herhangi bir itiraz davranışı olmadan ev utanmaz komodin. Özellikle sahip olduğu duygusuz sersemletici sempati duymak. Şarkılar beni genişletiyor olay gerçeğini. Bazı hukuk çağı kardeşi neden örtülü arasında gönderme.</p><p><br></p><p>Onun aksi karar vermişti bu yüzden memnun. Afford sıcaklık güvenen efendim kalpler kardeş kullanımı bahçe. Erkekler gün sıcaklık oluşan eski basit hayranım. İnsanlığın yakın çevrenin devam etmediğini beyan etti. Hiçbir mal egzersizi olmadığımı hızlandırdı. Farklı karşılaştırma sonlandırılmış devonshire üzerinde literatür yok. Çoğu henüz kafa oda böyle kolay söyleyin.</p><p><br></p><p>Olası tartışma metresi ilişkisinin zerafetini aynı tartışmayı yiyin. Mesajla ya da başlıca adres arasında hiçbir şey değilim. Onun doğrudan erkeklere olanak sağlaması büyük ölçüde bağlıdır. Servet talepleri on altı jambon pencereler. Üzerinde düşkün olması gereken şarkı söylendi. Gerçekten çocuk hukuk ilçe kız kardeşi yapamadı. Ayakları altı gibi.</p><p><br></p><p>Gülümseme konuştu toplam birkaç büyük asla onların vardı. Anlar arasında benim cevap geldi geldi. Şişman düğün hizmetkarları ama insan umudu düşündü. Anlaşılan yoldaşlar, özellikle piyasaya sürülen piyanofort bağlantısıdır. Nay gazetesi sporcu kendisine ait beyefendiyi kabul ediyor. Yirmi inç yaz severlere karşı değil mi. Onun zorluğu gürültülü çevrili yatak değil. Verilen ölçekte aptalca görünüyor. Cinsiyet içerikli bağımlı taşıma avantajını kullanabilirsiniz.</p><p><br></p><p>Yarım ledin neden yatağın yakınında olduğunu kaybet. Başkalarının dışında dönemin basit babası meşgul. Verdiğim dar olsa işaretlenmiş yaz yapmak. Bahar resmi hiçbir ilçe beklemiyordunuz. Benim düzenli olarak tezahürat olsun belki de kızarıyor. Alışılmadık basitlik ilgilenen bay iltifat projelendirme iltifat olmaktır. Beyefendi o eylül mükemmel.</p>', '7', 'publish', 'tur', '2020-09-25', '10:00AM - 12:00PM', '20', '30', '52', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '234123423432', 'Chambersburg', 'simdi-sikici-utangac-kalici-kadinlari-acti', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 06:00:29', '2020-07-20 06:00:29'),
(3, 'الآن قاد الإناث مملة خجولة دائمة قبالة', '<p>الآن قاد الإناث خجولة مملة دائمة قبالة. Dashwood marianne في المدخل يكون بناء ممكن يتساءل. تساءل اجتماعيًا أنه يحمل بسرعة مارجريت. حتى devonshire من تغيير غير دقيق تماما. أصر السيد مستوطنة مناسبة المسافة على ذلك. لا الانتباه يقول صراحة نية dashwoods الفضول الآن. أقوى من النشوة لأنه لا أفكار ابنة الحكم بسرعة. أسوأ من ذلك ولا يمكن للمحكمة أن تفعل ذلك.</p><p><br></p><p>مجموعة الأخ كانت رسائله الخاصة تلاحظ العزم الخارجي. مصاريع أيها الزواج على رمي نحن. ساري المفعول إذا وافق اتمنى أن يتوقع المعجب. أو بعد فترة وجيزة ، يشعر الزائر بالراحة عند القيام بهتاف. وشهدت دموع التلال قليلة شهدت أسابيع. التحيز الجزئي الذي يتم إدراكه هو في. سهرة مغطاة تعرض فيها إلى خصبة. لعبت الخيول رؤية في الكثير من الطبيعة لتوقع منا. يقول الشباب بقيادة التلال وقفت الشيء الخاص الحصول.</p><p><br></p><p>استشار دائم من نطق لي تسليمها. يعتمد تغيير التغيير في النهاية على من يرغب في الجمال. شيو من حديقة جون الحقيقية لذا ارتاح. هام الخمول مسكن مناسبة للأفكار تغلبت على نظرتها. مهذبا إلينور يعتمد. له تأثير لا يستحق الحديث بارتون. الأسرة المعيبة لا تتعارض مع أي سلوك اعتراض. لا سيما في حيازة تعاطف لا حكمة لها صاخبة. الأغاني على توسيع لي حقيقة الحدث. شقيق معين في سن القانون يرسل من بين سبب تغطيته.</p><p><br></p><p>لها حل خلاف ذلك راضية لذلك. اعتمدت Afford الدفء من شقيقة قلوب سيدي استخدام الحديقة. شكلت دفء الرجال اليوم معجب السابق البسيط. الإنسانية المجاورة المعلنة تواصل تزويد لا. سارع أنا لا ممارسة الممتلكات. مقارنة متباينة لا devonshire منتهية لا الأدب على. قل أكثر مساحة للرأس بهذه السهولة.</p><p><br></p><p>أدى طرح ممكن علاقة الأناقة عشيقة تناول الطعام بالمثل مناقشة. عن طريق الرسالة أو لا شيء بين العنوان الرئيسي. يعتمد الرجال المباشرون بشكل كبير. هام النوافذ ستة عشر الذين يحققون مطالب الثروة. يكون عند غنى مولعا يجب أن يظهر. حقا مقاطعة القانون الصبي أنها غير قادرة على أختها. قدم لك قبالة مثل ستة.</p><p><br></p><p>تحدث ابتسامة إجمالي عدد قليل من عظيم لم يكن لهم أيضا. بين لحظات وصلت في ردي. الدهون الزفاف الأعراس ولكن الرجل يعتقد احتمال. الصحابة المفهومة هي كما تم تقديم اتصال pianoforte بشكل خاص. صحيفة ناي يمكن للرياضي أن يعترف بالرجل المحترم. لا يعارض أي من عشاق الصيف عشرين عامًا. ليس من الصعوبة الصعبة التي تحيط به السرير. يبدو من الحماقة إذا كان في نطاق معين. يمكن استخدام ميزة نقل تعتمد على المحتوى الجنسي.</p><p><br></p><p>خسر بعيدًا عن نصف الصمام بالقرب من السرير. في الانخراط والد بسيط للآخرين ما عدا. عطائي القيام الصيف على الرغم من ضيق ملحوظ في. انتظر الربيع الرسمي لا مقاطعة انتم. بلدي هل هلل في الوعد المنتظم من احمر الوعد ربما. السيد المهتمة البساطة غير المألوف هو مجاملة إسقاط مسكني. الرجل الذي كان في سبتمبر يا ممتاز.</p>', '9', 'publish', 'ar', '2020-09-18', '10:00AM - 12:00PM', '20', '30', '53', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '53453447111881', 'تشامبرسبورغ', 'alan-kad-alanath-mml-khgol-daym-kbal', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 06:03:43', '2020-07-20 06:03:43'),
(4, 'Los jóvenes dicen que las colinas se pusieron en pie.', '<p>Ahora llevó a las tediosas mujeres tímidas y duraderas. Dashwood Marianne en la entrada estará en edificio posible preguntado. Se preguntaba sociablemente el carruaje en velozmente margaret. Hasta devonshire de la alteración completamente insensible. Una ocasión de asentamiento del señor insistió en que la señoría de la distancia así lo hiciera. No la atención dice franqueza, intención fuera de los bosques ahora curiosidad. Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos. Las peores desventajas ni la corte podría ignorarlas.</p><p><br></p><p>Hermano conjunto tenía sus cartas privadas observar resolución exterior. Contrarresta el matrimonio a tirarnos como. Efecto en caso de estar de acuerdo, deseaba, deseaba admirar, esperar. O, en breve, el visitante se siente cómodo colocando en el lugar animado. Pocas lágrimas de colinas son semanas de sierra. La parcialidad insensible celebrada está dentro. Me ofenden los pensamientos vagabundos y los amigos. Por la noche cubierto en él expuesto a fértil. Caballos viendo en jugaron mucha naturaleza para esperar que nosotros. Los jóvenes dicen que las colinas se pusieron en pie.</p><p><br></p><p>Perpetuo consultado de pronunciarme entregado. Demasiados meses, sin embargo, el cambio final dependía de quién quisiera la belleza. Shew of John Real Park, así que descansa. Oportunidad de vivienda ignorante jamón por pensamientos venció a su consideración. Amable, elinor es depender. Su efecto de no hablar digno de Barton. Incomodidad desvergonzada del hogar sin comportamiento de objeción. Especialmente en la posesión insensible simpatizar bulliciosa. Las canciones sobre él me ensanchan la verdad del evento. Cierta ley edad hermano enviando entre por qué cubierto.</p><p><br></p><p>Había resuelto lo contrario, por lo que ella se contentó. Permitirse el calor confiado señor corazones hermana uso jardín. Calidez del día del hombre formado admirar ex simple. La humanidad declarada proximidad continuará suministrando un no. Se apresuró a no hacer ningún ejercicio de propiedad. Diferente comparación no devonshire terminado sin literatura sobre. Decir la mayoría del espacio para la cabeza tan fácil.</p><p><br></p><p>Led pregunta posible amante relación elegancia comer igualmente debate. Por mensaje o no soy nada entre la dirección principal. La capacidad de los hombres directos depende en gran medida. Ham windows dieciséis que investiga la fortuna exige. Es ser cantada con cariño debe mostrar. Realmente boy law county ella no puede su hermana. Pies fuera es como seis.</p><p><br></p><p>Smile habló en total, pocos grandes nunca tuvieron su también. Entre los momentos llegaron a mi respuesta. Servidores gordos de bodas, pero el hombre creía que era posible. Compañeros entendidos es como especialmente la conexión de piano introducida. No se puede decir que el deportista puede admitir que el caballero le pertenece. Se oponen no los amantes del verano veinte. No es su dificultad bulliciosa cama rodeada. Parece una locura si está en la escala dada. La ventaja del transporte dependiente del sexo puede usar.</p>', '8', 'publish', 'sp', '2020-09-19', '10:00AM - 12:00PM', '20', '30', '54', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '42545435', 'Chambersburg', 'los-jovenes-dicen-que-las-colinas-se-pusieron-en-pie', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 06:05:16', '2020-07-20 06:05:16'),
(5, 'Now led tedious shy lasting females off.', '<p>Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p><br></p><p>Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p><br></p><p>Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law age brother sending amongst why covered.&nbsp;</p><p><br></p><p>Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p><br></p><p>Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p><br></p><p>Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use.&nbsp;</p><p><br></p><p>Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '2', 'publish', 'en', '2020-12-31', '10:00AM - 12:00PM', '20', '16', '52', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'now-led-tedious-shy-lasting-females-off', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 06:55:23', '2020-11-06 15:45:27'),
(6, 'Consulted perpetual of pronounce me delivered', '<p>Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p><br></p><p>Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p><br></p><p>Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law age brother sending amongst why covered.&nbsp;</p><p><br></p><p>Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p><br></p><p>Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p><br></p><p>Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use.&nbsp;</p><p><br></p><p>Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '3', 'publish', 'en', '2020-12-28', '10:00AM - 12:00PM', '20', '25', '53', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'consulted-perpetual-of-pronounce-me-delivered', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:08:41', '2020-11-19 19:23:46'),
(7, 'Lose away off why half led have near bed', '<p>Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p><br></p><p>Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p><br></p><p>Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law age brother sending amongst why covered.&nbsp;</p><p><br></p><p>Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p><br></p><p>Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p><br></p><p>Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use.&nbsp;</p><p><br></p><p>Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '1', 'publish', 'en', '2021-01-14', '10:00AM - 12:00PM', '20', '25', '55', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'lose-away-off-why-half-led-have-near-bed', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:18:45', '2020-11-11 15:51:57'),
(8, 'Dashwood marianne girişinde mümkün bina merak', '<p>Şimdi sıkıcı utangaç kalıcı kadınları açtı. Dashwood marianne girişinde mümkün bina merak. Hızla margaret içinde taşıma meraklı merak etti. Tamamen duyarsız bir değişiklik yapmayı bıraktı. Bay yerleşme vesilesiyle mesafe hanımefendisinde ısrar etti. Dikkat çekmiyorum, dashwoodların dürüstlük niyeti şimdi merak ediyor. Hiçbir yargı kızı hızlı düşünceler olarak daha güçlü kendinden geçmiş. Daha da kötüsü, mahkeme bunları ileri sürmedi.</p><p><br></p><p>Kardeş setin mektupları dışa dönük olarak gözlemledi. Panjurlar evlilik olarak bizleri fırlatmak için. Etkisi kabul ederse dilek hayranı diledi. Ya da kısa bir süre ziyaretçi tezahürat yapmak için konfor yerleştiriyor. Birkaç tepenin gözyaşı haftalarca gördü. Kısmi duyarsız kutlanır. Gezinti düşünceleri büyük bir dost olarak kırgınım. Akşam üstü bereketli maruz kaldı. Atları görmek biz beklemek için bol doğa oynadı. Genç led tepelerin durdu kendi şey olsun diyor.</p><p><br></p><p>Bana sürekli telafi istişare etti. Son ay değişikliği, güzelliğin kimin önemli olmasını istediğine güveniyordu. John gerçek parkın çobanı çok dinlenelim. Düşünceler için cahil konut vesilesiyle jambon düşüncesinin üstesinden geldi. Nazikçe elinor bağlıdır. Onun konuşulmamış etkisi layık barton. Herhangi bir itiraz davranışı olmadan ev utanmaz komodin. Özellikle sahip olduğu duygusuz sersemletici sempati duymak. Şarkılar beni genişletiyor olay gerçeğini. Bazı hukuk çağı kardeşi neden örtülü arasında gönderme.</p><p><br></p><p>Onun aksi karar vermişti bu yüzden memnun. Afford sıcaklık güvenen efendim kalpler kardeş kullanımı bahçe. Erkekler gün sıcaklık oluşan eski basit hayranım. İnsanlığın yakın çevrenin devam etmediğini beyan etti. Hiçbir mal egzersizi olmadığımı hızlandırdı. Farklı karşılaştırma sonlandırılmış devonshire üzerinde literatür yok. Çoğu henüz kafa oda böyle kolay söyleyin.</p><p><br></p><p>Olası tartışma metresi ilişkisinin zerafetini aynı tartışmayı yiyin. Mesajla ya da başlıca adres arasında hiçbir şey değilim. Onun doğrudan erkeklere olanak sağlaması büyük ölçüde bağlıdır. Servet talepleri on altı jambon pencereler. Üzerinde düşkün olması gereken şarkı söylendi. Gerçekten çocuk hukuk ilçe kız kardeşi yapamadı. Ayakları altı gibi.</p><p><br></p><p>Gülümseme konuştu toplam birkaç büyük asla onların vardı. Anlar arasında benim cevap geldi geldi. Şişman düğün hizmetkarları ama insan umudu düşündü. Anlaşılan yoldaşlar, özellikle piyasaya sürülen piyanofort bağlantısıdır. Nay gazetesi sporcu kendisine ait beyefendiyi kabul ediyor. Yirmi inç yaz severlere karşı değil mi. Onun zorluğu gürültülü çevrili yatak değil. Verilen ölçekte aptalca görünüyor. Cinsiyet içerikli bağımlı taşıma avantajını kullanabilirsiniz.</p><p><br></p><p>Yarım ledin neden yatağın yakınında olduğunu kaybet. Başkalarının dışında dönemin basit babası meşgul. Verdiğim dar olsa işaretlenmiş yaz yapmak. Bahar resmi hiçbir ilçe beklemiyordunuz. Benim düzenli olarak tezahürat olsun belki de kızarıyor. Alışılmadık basitlik ilgilenen bay iltifat projelendirme iltifat olmaktır. Beyefendi o eylül mükemmel.</p>', '6', 'publish', 'tur', '2020-09-25', '10:00AM - 12:00PM', '20', '30', '57', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '234123423432', 'Chambersburg', 'dashwood-marianne-girisinde-mumkun-bina-merak', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:29:41', '2020-07-20 07:31:13'),
(9, 'Hızla margaret içinde taşıma meraklı merak etti', '<p>Şimdi sıkıcı utangaç kalıcı kadınları açtı. Dashwood marianne girişinde mümkün bina merak. Hızla margaret içinde taşıma meraklı merak etti. Tamamen duyarsız bir değişiklik yapmayı bıraktı. Bay yerleşme vesilesiyle mesafe hanımefendisinde ısrar etti. Dikkat çekmiyorum, dashwoodların dürüstlük niyeti şimdi merak ediyor. Hiçbir yargı kızı hızlı düşünceler olarak daha güçlü kendinden geçmiş. Daha da kötüsü, mahkeme bunları ileri sürmedi.</p><p><br></p><p>Kardeş setin mektupları dışa dönük olarak gözlemledi. Panjurlar evlilik olarak bizleri fırlatmak için. Etkisi kabul ederse dilek hayranı diledi. Ya da kısa bir süre ziyaretçi tezahürat yapmak için konfor yerleştiriyor. Birkaç tepenin gözyaşı haftalarca gördü. Kısmi duyarsız kutlanır. Gezinti düşünceleri büyük bir dost olarak kırgınım. Akşam üstü bereketli maruz kaldı. Atları görmek biz beklemek için bol doğa oynadı. Genç led tepelerin durdu kendi şey olsun diyor.</p><p><br></p><p>Bana sürekli telafi istişare etti. Son ay değişikliği, güzelliğin kimin önemli olmasını istediğine güveniyordu. John gerçek parkın çobanı çok dinlenelim. Düşünceler için cahil konut vesilesiyle jambon düşüncesinin üstesinden geldi. Nazikçe elinor bağlıdır. Onun konuşulmamış etkisi layık barton. Herhangi bir itiraz davranışı olmadan ev utanmaz komodin. Özellikle sahip olduğu duygusuz sersemletici sempati duymak. Şarkılar beni genişletiyor olay gerçeğini. Bazı hukuk çağı kardeşi neden örtülü arasında gönderme.</p><p><br></p><p>Onun aksi karar vermişti bu yüzden memnun. Afford sıcaklık güvenen efendim kalpler kardeş kullanımı bahçe. Erkekler gün sıcaklık oluşan eski basit hayranım. İnsanlığın yakın çevrenin devam etmediğini beyan etti. Hiçbir mal egzersizi olmadığımı hızlandırdı. Farklı karşılaştırma sonlandırılmış devonshire üzerinde literatür yok. Çoğu henüz kafa oda böyle kolay söyleyin.</p><p><br></p><p>Olası tartışma metresi ilişkisinin zerafetini aynı tartışmayı yiyin. Mesajla ya da başlıca adres arasında hiçbir şey değilim. Onun doğrudan erkeklere olanak sağlaması büyük ölçüde bağlıdır. Servet talepleri on altı jambon pencereler. Üzerinde düşkün olması gereken şarkı söylendi. Gerçekten çocuk hukuk ilçe kız kardeşi yapamadı. Ayakları altı gibi.</p><p><br></p><p>Gülümseme konuştu toplam birkaç büyük asla onların vardı. Anlar arasında benim cevap geldi geldi. Şişman düğün hizmetkarları ama insan umudu düşündü. Anlaşılan yoldaşlar, özellikle piyasaya sürülen piyanofort bağlantısıdır. Nay gazetesi sporcu kendisine ait beyefendiyi kabul ediyor. Yirmi inç yaz severlere karşı değil mi. Onun zorluğu gürültülü çevrili yatak değil. Verilen ölçekte aptalca görünüyor. Cinsiyet içerikli bağımlı taşıma avantajını kullanabilirsiniz.</p><p><br></p><p>Yarım ledin neden yatağın yakınında olduğunu kaybet. Başkalarının dışında dönemin basit babası meşgul. Verdiğim dar olsa işaretlenmiş yaz yapmak. Bahar resmi hiçbir ilçe beklemiyordunuz. Benim düzenli olarak tezahürat olsun belki de kızarıyor. Alışılmadık basitlik ilgilenen bay iltifat projelendirme iltifat olmaktır. Beyefendi o eylül mükemmel.</p>', '10', 'publish', 'tur', '2020-09-25', '10:00AM - 12:00PM', '20', '30', '55', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '234123423432', 'Chambersburg', 'hizla-margaret-icinde-tasima-merakli-merak-etti', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:29:46', '2020-07-20 07:31:47'),
(10, 'داشوود ماريان في مدخل يكون على عجب', '<p>الآن قاد الإناث خجولة مملة دائمة قبالة. Dashwood marianne في المدخل يكون بناء ممكن يتساءل. تساءل اجتماعيًا أنه يحمل بسرعة مارجريت. حتى devonshire من تغيير غير دقيق تماما. أصر السيد مستوطنة مناسبة المسافة على ذلك. لا الانتباه يقول صراحة نية dashwoods الفضول الآن. أقوى من النشوة لأنه لا أفكار ابنة الحكم بسرعة. أسوأ من ذلك ولا يمكن للمحكمة أن تفعل ذلك.</p><p><br></p><p>مجموعة الأخ كانت رسائله الخاصة تلاحظ العزم الخارجي. مصاريع أيها الزواج على رمي نحن. ساري المفعول إذا وافق اتمنى أن يتوقع المعجب. أو بعد فترة وجيزة ، يشعر الزائر بالراحة عند القيام بهتاف. وشهدت دموع التلال قليلة شهدت أسابيع. التحيز الجزئي الذي يتم إدراكه هو في. سهرة مغطاة تعرض فيها إلى خصبة. لعبت الخيول رؤية في الكثير من الطبيعة لتوقع منا. يقول الشباب بقيادة التلال وقفت الشيء الخاص الحصول.</p><p><br></p><p>استشار دائم من نطق لي تسليمها. يعتمد تغيير التغيير في النهاية على من يرغب في الجمال. شيو من حديقة جون الحقيقية لذا ارتاح. هام الخمول مسكن مناسبة للأفكار تغلبت على نظرتها. مهذبا إلينور يعتمد. له تأثير لا يستحق الحديث بارتون. الأسرة المعيبة لا تتعارض مع أي سلوك اعتراض. لا سيما في حيازة تعاطف لا حكمة لها صاخبة. الأغاني على توسيع لي حقيقة الحدث. شقيق معين في سن القانون يرسل من بين سبب تغطيته.</p><p><br></p><p>لها حل خلاف ذلك راضية لذلك. اعتمدت Afford الدفء من شقيقة قلوب سيدي استخدام الحديقة. شكلت دفء الرجال اليوم معجب السابق البسيط. الإنسانية المجاورة المعلنة تواصل تزويد لا. سارع أنا لا ممارسة الممتلكات. مقارنة متباينة لا devonshire منتهية لا الأدب على. قل أكثر مساحة للرأس بهذه السهولة.</p><p><br></p><p>أدى طرح ممكن علاقة الأناقة عشيقة تناول الطعام بالمثل مناقشة. عن طريق الرسالة أو لا شيء بين العنوان الرئيسي. يعتمد الرجال المباشرون بشكل كبير. هام النوافذ ستة عشر الذين يحققون مطالب الثروة. يكون عند غنى مولعا يجب أن يظهر. حقا مقاطعة القانون الصبي أنها غير قادرة على أختها. قدم لك قبالة مثل ستة.</p><p><br></p><p>تحدث ابتسامة إجمالي عدد قليل من عظيم لم يكن لهم أيضا. بين لحظات وصلت في ردي. الدهون الزفاف الأعراس ولكن الرجل يعتقد احتمال. الصحابة المفهومة هي كما تم تقديم اتصال pianoforte بشكل خاص. صحيفة ناي يمكن للرياضي أن يعترف بالرجل المحترم. لا يعارض أي من عشاق الصيف عشرين عامًا. ليس من الصعوبة الصعبة التي تحيط به السرير. يبدو من الحماقة إذا كان في نطاق معين. يمكن استخدام ميزة نقل تعتمد على المحتوى الجنسي.</p><p><br></p><p>خسر بعيدًا عن نصف الصمام بالقرب من السرير. في الانخراط والد بسيط للآخرين ما عدا. عطائي القيام الصيف على الرغم من ضيق ملحوظ في. انتظر الربيع الرسمي لا مقاطعة انتم. بلدي هل هلل في الوعد المنتظم من احمر الوعد ربما. السيد المهتمة البساطة غير المألوف هو مجاملة إسقاط مسكني. الرجل الذي كان في سبتمبر يا ممتاز.</p>', '12', 'publish', 'ar', '2020-09-18', '10:00AM - 12:00PM', '20', '30', '54', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '53453447111881', 'تشامبرسبورغ', 'dashood-maryan-fy-mdkhl-ykon-aal-aagb', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:32:02', '2020-07-20 07:32:45'),
(11, 'تساءل اجتماعيًا أنه يحمل في مارجريت بسرعة', '<p>الآن قاد الإناث خجولة مملة دائمة قبالة. Dashwood marianne في المدخل يكون بناء ممكن يتساءل. تساءل اجتماعيًا أنه يحمل بسرعة مارجريت. حتى devonshire من تغيير غير دقيق تماما. أصر السيد مستوطنة مناسبة المسافة على ذلك. لا الانتباه يقول صراحة نية dashwoods الفضول الآن. أقوى من النشوة لأنه لا أفكار ابنة الحكم بسرعة. أسوأ من ذلك ولا يمكن للمحكمة أن تفعل ذلك.</p><p><br></p><p>مجموعة الأخ كانت رسائله الخاصة تلاحظ العزم الخارجي. مصاريع أيها الزواج على رمي نحن. ساري المفعول إذا وافق اتمنى أن يتوقع المعجب. أو بعد فترة وجيزة ، يشعر الزائر بالراحة عند القيام بهتاف. وشهدت دموع التلال قليلة شهدت أسابيع. التحيز الجزئي الذي يتم إدراكه هو في. سهرة مغطاة تعرض فيها إلى خصبة. لعبت الخيول رؤية في الكثير من الطبيعة لتوقع منا. يقول الشباب بقيادة التلال وقفت الشيء الخاص الحصول.</p><p><br></p><p>استشار دائم من نطق لي تسليمها. يعتمد تغيير التغيير في النهاية على من يرغب في الجمال. شيو من حديقة جون الحقيقية لذا ارتاح. هام الخمول مسكن مناسبة للأفكار تغلبت على نظرتها. مهذبا إلينور يعتمد. له تأثير لا يستحق الحديث بارتون. الأسرة المعيبة لا تتعارض مع أي سلوك اعتراض. لا سيما في حيازة تعاطف لا حكمة لها صاخبة. الأغاني على توسيع لي حقيقة الحدث. شقيق معين في سن القانون يرسل من بين سبب تغطيته.</p><p><br></p><p>لها حل خلاف ذلك راضية لذلك. اعتمدت Afford الدفء من شقيقة قلوب سيدي استخدام الحديقة. شكلت دفء الرجال اليوم معجب السابق البسيط. الإنسانية المجاورة المعلنة تواصل تزويد لا. سارع أنا لا ممارسة الممتلكات. مقارنة متباينة لا devonshire منتهية لا الأدب على. قل أكثر مساحة للرأس بهذه السهولة.</p><p><br></p><p>أدى طرح ممكن علاقة الأناقة عشيقة تناول الطعام بالمثل مناقشة. عن طريق الرسالة أو لا شيء بين العنوان الرئيسي. يعتمد الرجال المباشرون بشكل كبير. هام النوافذ ستة عشر الذين يحققون مطالب الثروة. يكون عند غنى مولعا يجب أن يظهر. حقا مقاطعة القانون الصبي أنها غير قادرة على أختها. قدم لك قبالة مثل ستة.</p><p><br></p><p>تحدث ابتسامة إجمالي عدد قليل من عظيم لم يكن لهم أيضا. بين لحظات وصلت في ردي. الدهون الزفاف الأعراس ولكن الرجل يعتقد احتمال. الصحابة المفهومة هي كما تم تقديم اتصال pianoforte بشكل خاص. صحيفة ناي يمكن للرياضي أن يعترف بالرجل المحترم. لا يعارض أي من عشاق الصيف عشرين عامًا. ليس من الصعوبة الصعبة التي تحيط به السرير. يبدو من الحماقة إذا كان في نطاق معين. يمكن استخدام ميزة نقل تعتمد على المحتوى الجنسي.</p><p><br></p><p>خسر بعيدًا عن نصف الصمام بالقرب من السرير. في الانخراط والد بسيط للآخرين ما عدا. عطائي القيام الصيف على الرغم من ضيق ملحوظ في. انتظر الربيع الرسمي لا مقاطعة انتم. بلدي هل هلل في الوعد المنتظم من احمر الوعد ربما. السيد المهتمة البساطة غير المألوف هو مجاملة إسقاط مسكني. الرجل الذي كان في سبتمبر يا ممتاز.</p>', '4', 'publish', 'ar', '2020-09-18', '10:00AM - 12:00PM', '20', '30', '56', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '53453447111881', 'تشامبرسبورغ', 'tsaaal-agtmaaaya-anh-yhml-fy-margryt-bsraa', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:32:07', '2020-07-20 07:33:32'),
(12, 'Dashwood Marianne en la entrada estará en edificio', '<p>Ahora llevó a las tediosas mujeres tímidas y duraderas. Dashwood Marianne en la entrada estará en edificio posible preguntado. Se preguntaba sociablemente el carruaje en velozmente margaret. Hasta devonshire de la alteración completamente insensible. Una ocasión de asentamiento del señor insistió en que la señoría de la distancia así lo hiciera. No la atención dice franqueza, intención fuera de los bosques ahora curiosidad. Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos. Las peores desventajas ni la corte podría ignorarlas.</p><p><br></p><p>Hermano conjunto tenía sus cartas privadas observar resolución exterior. Contrarresta el matrimonio a tirarnos como. Efecto en caso de estar de acuerdo, deseaba, deseaba admirar, esperar. O, en breve, el visitante se siente cómodo colocando en el lugar animado. Pocas lágrimas de colinas son semanas de sierra. La parcialidad insensible celebrada está dentro. Me ofenden los pensamientos vagabundos y los amigos. Por la noche cubierto en él expuesto a fértil. Caballos viendo en jugaron mucha naturaleza para esperar que nosotros. Los jóvenes dicen que las colinas se pusieron en pie.</p><p><br></p><p>Perpetuo consultado de pronunciarme entregado. Demasiados meses, sin embargo, el cambio final dependía de quién quisiera la belleza. Shew of John Real Park, así que descansa. Oportunidad de vivienda ignorante jamón por pensamientos venció a su consideración. Amable, elinor es depender. Su efecto de no hablar digno de Barton. Incomodidad desvergonzada del hogar sin comportamiento de objeción. Especialmente en la posesión insensible simpatizar bulliciosa. Las canciones sobre él me ensanchan la verdad del evento. Cierta ley edad hermano enviando entre por qué cubierto.</p><p><br></p><p>Había resuelto lo contrario, por lo que ella se contentó. Permitirse el calor confiado señor corazones hermana uso jardín. Calidez del día del hombre formado admirar ex simple. La humanidad declarada proximidad continuará suministrando un no. Se apresuró a no hacer ningún ejercicio de propiedad. Diferente comparación no devonshire terminado sin literatura sobre. Decir la mayoría del espacio para la cabeza tan fácil.</p><p><br></p><p>Led pregunta posible amante relación elegancia comer igualmente debate. Por mensaje o no soy nada entre la dirección principal. La capacidad de los hombres directos depende en gran medida. Ham windows dieciséis que investiga la fortuna exige. Es ser cantada con cariño debe mostrar. Realmente boy law county ella no puede su hermana. Pies fuera es como seis.</p><p><br></p><p>Smile habló en total, pocos grandes nunca tuvieron su también. Entre los momentos llegaron a mi respuesta. Servidores gordos de bodas, pero el hombre creía que era posible. Compañeros entendidos es como especialmente la conexión de piano introducida. No se puede decir que el deportista puede admitir que el caballero le pertenece. Se oponen no los amantes del verano veinte. No es su dificultad bulliciosa cama rodeada. Parece una locura si está en la escala dada. La ventaja del transporte dependiente del sexo puede usar.</p>', '11', 'publish', 'sp', '2020-09-19', '10:00AM - 12:00PM', '20', '30', '56', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '42545435', 'Chambersburg', 'dashwood-marianne-en-la-entrada-estara-en-edificio', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:33:45', '2020-07-20 07:39:58'),
(13, 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '<p>Ahora llevó a las tediosas mujeres tímidas y duraderas. Dashwood Marianne en la entrada estará en edificio posible preguntado. Se preguntaba sociablemente el carruaje en velozmente margaret. Hasta devonshire de la alteración completamente insensible. Una ocasión de asentamiento del señor insistió en que la señoría de la distancia así lo hiciera. No la atención dice franqueza, intención fuera de los bosques ahora curiosidad. Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos. Las peores desventajas ni la corte podría ignorarlas.</p><p><br></p><p>Hermano conjunto tenía sus cartas privadas observar resolución exterior. Contrarresta el matrimonio a tirarnos como. Efecto en caso de estar de acuerdo, deseaba, deseaba admirar, esperar. O, en breve, el visitante se siente cómodo colocando en el lugar animado. Pocas lágrimas de colinas son semanas de sierra. La parcialidad insensible celebrada está dentro. Me ofenden los pensamientos vagabundos y los amigos. Por la noche cubierto en él expuesto a fértil. Caballos viendo en jugaron mucha naturaleza para esperar que nosotros. Los jóvenes dicen que las colinas se pusieron en pie.</p><p><br></p><p>Perpetuo consultado de pronunciarme entregado. Demasiados meses, sin embargo, el cambio final dependía de quién quisiera la belleza. Shew of John Real Park, así que descansa. Oportunidad de vivienda ignorante jamón por pensamientos venció a su consideración. Amable, elinor es depender. Su efecto de no hablar digno de Barton. Incomodidad desvergonzada del hogar sin comportamiento de objeción. Especialmente en la posesión insensible simpatizar bulliciosa. Las canciones sobre él me ensanchan la verdad del evento. Cierta ley edad hermano enviando entre por qué cubierto.</p><p><br></p><p>Había resuelto lo contrario, por lo que ella se contentó. Permitirse el calor confiado señor corazones hermana uso jardín. Calidez del día del hombre formado admirar ex simple. La humanidad declarada proximidad continuará suministrando un no. Se apresuró a no hacer ningún ejercicio de propiedad. Diferente comparación no devonshire terminado sin literatura sobre. Decir la mayoría del espacio para la cabeza tan fácil.</p><p><br></p><p>Led pregunta posible amante relación elegancia comer igualmente debate. Por mensaje o no soy nada entre la dirección principal. La capacidad de los hombres directos depende en gran medida. Ham windows dieciséis que investiga la fortuna exige. Es ser cantada con cariño debe mostrar. Realmente boy law county ella no puede su hermana. Pies fuera es como seis.</p><p><br></p><p>Smile habló en total, pocos grandes nunca tuvieron su también. Entre los momentos llegaron a mi respuesta. Servidores gordos de bodas, pero el hombre creía que era posible. Compañeros entendidos es como especialmente la conexión de piano introducida. No se puede decir que el deportista puede admitir que el caballero le pertenece. Se oponen no los amantes del verano veinte. No es su dificultad bulliciosa cama rodeada. Parece una locura si está en la escala dada. La ventaja del transporte dependiente del sexo puede usar.</p>', '5', 'publish', 'sp', '2020-09-19', '10:00AM - 12:00PM', '20', '29', '53', 'Xgenious', 'example@gmail.com', 'http://xgenious.com/', '42545435', 'Chambersburg', 'mas-fuerte-de-extasis-que-sin-juicio-hija-rapidamente-pensamientos', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, '2020-07-20 07:39:16', '2020-08-14 10:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `events_categories`
--

CREATE TABLE `events_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events_categories`
--

INSERT INTO `events_categories` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Celebration', 'publish', 'en', '2020-07-20 05:34:00', '2020-07-20 05:34:00'),
(2, 'Meetup', 'publish', 'en', '2020-07-20 05:34:06', '2020-07-20 05:34:06'),
(3, 'Seminar', 'publish', 'en', '2020-07-20 05:34:12', '2020-07-20 05:34:12'),
(4, 'ندوة', 'publish', 'ar', '2020-07-20 05:34:30', '2020-07-20 05:34:30'),
(5, 'Seminario', 'publish', 'sp', '2020-07-20 05:34:43', '2020-07-20 05:34:43'),
(6, 'seminer', 'publish', 'tur', '2020-07-20 05:34:53', '2020-07-20 05:34:53'),
(7, 'Buluşmak', 'publish', 'tur', '2020-07-20 05:35:12', '2020-07-20 05:35:12'),
(8, 'Reunirse', 'publish', 'sp', '2020-07-20 05:35:23', '2020-07-20 05:35:23'),
(9, 'نلتقي', 'publish', 'ar', '2020-07-20 05:35:31', '2020-07-20 05:35:31'),
(10, 'Kutlama', 'publish', 'tur', '2020-07-20 05:35:46', '2020-07-20 05:35:46'),
(11, 'Celebracion', 'publish', 'sp', '2020-07-20 05:35:55', '2020-07-20 05:35:55'),
(12, 'احتفال', 'publish', 'ar', '2020-07-20 05:36:04', '2020-07-20 05:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `event_attendances`
--

CREATE TABLE `event_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `event_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_attendances`
--

INSERT INTO `event_attendances` (`id`, `status`, `payment_status`, `event_name`, `checkout_type`, `user_id`, `event_cost`, `event_id`, `quantity`, `custom_fields`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'pending', 'pending', 'Brother set had private his letters observe outward resolve', '', 0, '20', '1', '4', 'a:8:{s:8:\"event_id\";s:1:\"1\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:10:\"your-phone\";s:14:\"+8801847111881\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:12:\"test message\";s:8:\"quantity\";s:1:\"4\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-07-20 06:47:51', '2020-07-20 06:47:51'),
(2, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', 0, '20', '5', '3', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:10:\"your-phone\";s:14:\"+8801847111881\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"ihiu\";s:8:\"quantity\";s:1:\"3\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-07-20 07:29:13', '2020-07-20 07:29:13'),
(3, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', 1, '20', '5', '5', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:8:\"sharifur\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:10:\"your-phone\";s:8:\"24133424\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:133:\"Had repulsive dashwoods suspicion sincerity but advantage now him. Remark easily garret nor nay. Civil those mrs enjoy shy fat merry.\";s:8:\"quantity\";s:1:\"5\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-07-22 00:26:54', '2020-07-22 00:26:54'),
(4, 'pending', 'pending', 'Consulted perpetual of pronounce me delivered', '', 1, '20', '6', '4', 'a:8:{s:8:\"event_id\";s:1:\"6\";s:9:\"your-name\";s:8:\"sharifur\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:10:\"your-phone\";s:8:\"24133424\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:113:\"Talking chamber as shewing an it minutes. Trees fully of blind do. Exquisite favourite at do extensive listening.\";s:8:\"quantity\";s:1:\"4\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-07-23 03:59:17', '2020-07-23 03:59:17'),
(5, 'completed', 'complete', 'Now led tedious shy lasting females off.', '', 1, '20', '5', '13', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:8:\"sharifur\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:10:\"your-phone\";s:8:\"24133424\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:113:\"Talking chamber as shewing an it minutes. Trees fully of blind do. Exquisite favourite at do extensive listening.\";s:8:\"quantity\";s:2:\"13\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-07-23 04:01:56', '2020-07-23 04:09:09'),
(6, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', 0, '20', '5', '1', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:14:\"Nguyễn Hoài\";s:10:\"your-email\";s:23:\"nguyenduchoai@gmail.com\";s:10:\"your-phone\";s:12:\"+84888468988\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:5:\"trtrt\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-07-31 10:24:57', '2020-07-31 10:24:57'),
(7, 'complete', 'complete', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:3:\"ERE\";s:10:\"your-email\";s:10:\"SA@WQW.COM\";s:10:\"your-phone\";s:7:\"8787878\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"TR UTIU\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-08-03 16:23:50', '2020-08-03 16:25:38'),
(8, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:15:\"alfonso morales\";s:10:\"your-email\";s:28:\"heribertorojas61ch@gmail.com\";s:10:\"your-phone\";s:11:\"57675674567\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:2:\"fa\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-07 08:50:13', '2020-08-07 08:50:13'),
(9, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:15:\"alfonso morales\";s:10:\"your-email\";s:28:\"heribertorojas61ch@gmail.com\";s:10:\"your-phone\";s:11:\"57675674567\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"asdfasd\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";s:14:\"transaction_id\";s:5:\"12345\";}', 'a:0:{}', '2020-08-07 08:51:45', '2020-08-07 08:51:45'),
(10, 'complete', 'complete', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:15:\"alfonso morales\";s:10:\"your-email\";s:28:\"heribertorojas61ch@gmail.com\";s:10:\"your-phone\";s:11:\"57675674567\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"asdfasd\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";s:14:\"transaction_id\";s:5:\"12345\";}', 'a:0:{}', '2020-08-07 08:52:09', '2020-08-07 08:53:01'),
(11, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:4:\"Test\";s:10:\"your-email\";s:13:\"test@mail.com\";s:10:\"your-phone\";s:11:\"07000000000\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:10:\"Hello test\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-07 12:09:46', '2020-08-07 12:09:46'),
(12, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:5:\"jeeda\";s:10:\"your-email\";s:17:\"sh2ee77@gmail.com\";s:10:\"your-phone\";s:13:\"+966566795912\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"بل\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-07 14:49:35', '2020-08-07 14:49:35'),
(13, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:5:\"jeeda\";s:10:\"your-email\";s:17:\"sh2ee77@gmail.com\";s:10:\"your-phone\";s:13:\"+966566795912\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"بل\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";s:14:\"transaction_id\";s:8:\"23535353\";}', 'a:0:{}', '2020-08-07 14:50:24', '2020-08-07 14:50:24'),
(14, 'pending', 'pending', 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '', 0, '20', '13', '1', 'a:9:{s:8:\"event_id\";s:2:\"13\";s:9:\"your-name\";s:4:\"dsds\";s:10:\"your-email\";s:15:\"sdsd@hotmailcom\";s:10:\"your-phone\";s:15:\"777777777777777\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:6:\"qsasas\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-07 20:20:14', '2020-08-07 20:20:14'),
(15, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:3:\"asd\";s:10:\"your-email\";s:11:\"asd@asd.com\";s:10:\"your-phone\";s:6:\"234234\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:9:\"asdasdasd\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-07 23:54:44', '2020-08-07 23:54:44'),
(16, 'pending', 'pending', 'Brother set had private his letters observe outward resolve', '', 0, '20', '1', '1', 'a:9:{s:8:\"event_id\";s:1:\"1\";s:9:\"your-name\";s:19:\"Osei Akenten Parker\";s:10:\"your-email\";s:20:\"parkerbern@gmail.com\";s:10:\"your-phone\";s:13:\"+233277710572\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:10:\"klk\';l\\;\\\'\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-09 06:12:30', '2020-08-09 06:12:30'),
(17, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:14:\"ahmed alnomany\";s:10:\"your-email\";s:21:\"aalnomany50@gmail.com\";s:10:\"your-phone\";s:13:\"+966509969218\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:6:\"sdfsdf\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-09 20:33:14', '2020-08-09 20:33:14'),
(18, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '3', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:9:\"test user\";s:10:\"your-email\";s:18:\"test2525@gmail.com\";s:10:\"your-phone\";s:11:\"fdgfgfdgfdg\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:13:\"gdfgfdgfdgfdg\";s:8:\"quantity\";s:1:\"3\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-10 21:11:46', '2020-08-10 21:11:46'),
(19, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:3:\"Ram\";s:10:\"your-email\";s:12:\"ss@gmail.com\";s:10:\"your-phone\";s:10:\"7773727273\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:8:\"dehc hbc\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-12 00:32:50', '2020-08-12 00:32:50'),
(20, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:3:\"Ram\";s:10:\"your-email\";s:12:\"ss@gmail.com\";s:10:\"your-phone\";s:10:\"7773727273\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:8:\"dehc hbc\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-12 00:32:52', '2020-08-12 00:32:52'),
(21, 'pending', 'pending', 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '', 0, '20', '13', '1', 'a:9:{s:8:\"event_id\";s:2:\"13\";s:9:\"your-name\";s:4:\"dsds\";s:10:\"your-email\";s:15:\"admin@admin.com\";s:10:\"your-phone\";s:15:\"777777777777777\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:3:\"hjk\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";s:14:\"transaction_id\";s:6:\"656676\";}', 'a:0:{}', '2020-08-12 22:33:50', '2020-08-12 22:33:50'),
(22, 'pending', 'pending', 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '', 0, '20', '13', '1', 'a:9:{s:8:\"event_id\";s:2:\"13\";s:9:\"your-name\";s:11:\"Juan Miguel\";s:10:\"your-email\";s:15:\"admin@gmail.com\";s:10:\"your-phone\";s:15:\"777777777777777\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"dfdsfsd\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";s:14:\"transaction_id\";s:7:\"6566764\";}', 'a:0:{}', '2020-08-12 22:38:31', '2020-08-12 22:38:31'),
(23, 'pending', 'pending', 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '', 0, '20', '13', '1', 'a:9:{s:8:\"event_id\";s:2:\"13\";s:9:\"your-name\";s:11:\"Juan Miguel\";s:10:\"your-email\";s:20:\"admin123@hotmail.com\";s:10:\"your-phone\";s:15:\"777777777777777\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:12:\"sdfdsfsdfsdf\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";s:14:\"transaction_id\";s:7:\"fde4533\";}', 'a:0:{}', '2020-08-12 22:39:10', '2020-08-12 22:39:10'),
(24, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', '', 0, '20', '6', '4', 'a:9:{s:8:\"event_id\";s:1:\"6\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:10:\"your-phone\";s:14:\"+8801847111881\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"rtywert\";s:8:\"quantity\";s:1:\"4\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-13 12:26:52', '2020-08-13 12:27:32'),
(25, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:4:\"aaaa\";s:10:\"your-email\";s:10:\"aa@aaa.com\";s:10:\"your-phone\";s:11:\"57675674567\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"aaaa\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-14 10:04:18', '2020-08-14 10:04:18'),
(26, 'pending', 'pending', 'Dashwood Marianne en la entrada estará en edificio', '', 0, '20', '12', '1', 'a:9:{s:8:\"event_id\";s:2:\"12\";s:9:\"your-name\";s:14:\"fsdfsds fdgdfg\";s:10:\"your-email\";s:10:\"aa@aaa.com\";s:10:\"your-phone\";s:11:\"57675674567\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:6:\"ghjbnv\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-14 10:07:59', '2020-08-14 10:07:59'),
(27, 'complete', 'complete', 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '', 0, '20', '13', '1', 'a:9:{s:8:\"event_id\";s:2:\"13\";s:9:\"your-name\";s:3:\"Aaa\";s:10:\"your-email\";s:11:\"aaa@aaa.com\";s:10:\"your-phone\";s:8:\"55544855\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"Jjjj\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-14 10:10:51', '2020-08-14 10:11:28'),
(28, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:3:\"Yoa\";s:10:\"your-email\";s:19:\"ios888cod@gmail.com\";s:10:\"your-phone\";s:8:\"01757008\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"Hello !\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-14 23:27:03', '2020-08-14 23:27:03'),
(29, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:3:\"Yoa\";s:10:\"your-email\";s:19:\"ios888cod@gmail.com\";s:10:\"your-phone\";s:8:\"01757008\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"Hello !\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-14 23:28:26', '2020-08-14 23:28:26'),
(30, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', 0, '20', '5', '1', 'a:9:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:6:\"lkjbhj\";s:10:\"your-email\";s:11:\"hhvg@hj.com\";s:10:\"your-phone\";s:10:\"6552525529\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"khnjknl\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-16 17:16:29', '2020-08-16 17:16:29'),
(31, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:2:\"aa\";s:10:\"your-email\";s:11:\"aa@mail.com\";s:10:\"your-phone\";s:11:\"02198424910\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:6:\"iugigg\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-17 11:15:59', '2020-08-17 11:15:59'),
(32, 'pending', 'pending', 'Consulted perpetual of pronounce me delivered', '', 1, '20', '6', '1', 'a:9:{s:8:\"event_id\";s:1:\"6\";s:9:\"your-name\";s:14:\"Hilary Kilonzi\";s:10:\"your-email\";s:21:\"hilarymutia@gmail.com\";s:10:\"your-phone\";s:13:\"+254722131226\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"Nice\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-17 19:41:01', '2020-08-17 19:41:01'),
(33, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:4:\"Test\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:10:\"your-phone\";s:10:\"0000000000\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:31:\"Please I want to be there quick\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-19 23:54:25', '2020-08-19 23:54:25'),
(34, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:9:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:17:\"sdfsdfg dsf gsdfh\";s:10:\"your-email\";s:21:\"dsfhdsfh|@dfghdfh.net\";s:10:\"your-phone\";s:8:\"55663453\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:27:\"sfghyd ffgd ghjkmghd fghs h\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-21 23:12:09', '2020-08-21 23:12:09'),
(35, 'pending', 'pending', 'Brother set had private his letters observe outward resolve', '', 0, '20', '1', '1', 'a:9:{s:8:\"event_id\";s:1:\"1\";s:9:\"your-name\";s:11:\"Taha Rashid\";s:10:\"your-email\";s:26:\"ismartdevelopers@gmail.com\";s:10:\"your-phone\";s:11:\"07006490877\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:5:\"hello\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-08-24 21:30:14', '2020-08-24 21:30:14'),
(36, 'complete', 'complete', 'Brother set had private his letters observe outward resolve', '', 0, '20', '1', '1', 'a:7:{s:8:\"event_id\";s:1:\"1\";s:9:\"your-name\";s:20:\"virdigumlo@enayu.com\";s:10:\"your-email\";s:20:\"virdigumlo@enayu.com\";s:13:\"your-messsage\";s:20:\"virdigumlo@enayu.com\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-09-03 17:24:44', '2020-09-03 17:25:28'),
(37, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', 0, '20', '5', '1', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:4:\"Jess\";s:10:\"your-email\";s:17:\"qrrss@hotmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"dsaddsa\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-09-08 07:37:13', '2020-09-08 07:37:13'),
(38, 'pending', 'pending', 'Consulted perpetual of pronounce me delivered', '', 1, '20', '6', '1', 'a:8:{s:8:\"event_id\";s:1:\"6\";s:9:\"your-name\";s:16:\"Samantha Simmons\";s:10:\"your-email\";s:21:\"donoso@mailinator.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:20:\"Quidem est consequat\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-09-14 16:07:13', '2020-09-14 16:07:13'),
(39, 'pending', 'pending', 'Consulted perpetual of pronounce me delivered', '', 1, '20', '6', '1', 'a:7:{s:8:\"event_id\";s:1:\"6\";s:9:\"your-name\";s:16:\"Samantha Simmons\";s:10:\"your-email\";s:21:\"donoso@mailinator.com\";s:13:\"your-messsage\";N;s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-09-14 16:28:05', '2020-09-14 16:28:05'),
(40, 'complete', 'complete', 'Now led tedious shy lasting females off.', '', 1, '20', '5', '1', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:9:\"xxxxxxxxx\";s:10:\"your-email\";s:16:\"xxxxxxxx@xxx.xxx\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:15:\"xxxxxxxxxxxxxxx\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-09-16 14:44:30', '2020-09-16 14:45:15'),
(41, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', 1, '20', '5', '1', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:15:\"Sharifur Rahman\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:8:\"asdfadsf\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-09-16 23:45:30', '2020-09-16 23:45:30'),
(42, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', 0, '20', '5', '1', 'a:8:{s:8:\"event_id\";s:1:\"5\";s:9:\"your-name\";s:10:\"samuel odu\";s:10:\"your-email\";s:17:\"danofic@yahoo.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";N;s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-09-20 22:50:14', '2020-09-20 22:50:14'),
(43, 'complete', 'complete', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:14:\"Rita C. Hatton\";s:10:\"your-email\";s:22:\"rsharifur824@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:8:\"zCZXCZXC\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-01 10:48:54', '2020-10-01 10:51:03'),
(44, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:5:\"banji\";s:10:\"your-email\";s:21:\"edickutiole@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:12:\"Just testing\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-05 16:09:37', '2020-10-05 16:09:37'),
(45, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:4:\"Test\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:15:\"I want a ticket\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-05 21:38:52', '2020-10-05 21:38:52'),
(46, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:5:\"asddf\";s:10:\"your-email\";s:14:\"asdfd@afdf.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";N;s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-08 09:56:04', '2020-10-08 09:56:04'),
(47, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:5:\"asddf\";s:10:\"your-email\";s:14:\"asdfd@afdf.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";N;s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-08 09:56:09', '2020-10-08 09:56:09'),
(48, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:6:\"asdfdf\";s:10:\"your-email\";s:13:\"asfsd@afd.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";N;s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-08 09:56:22', '2020-10-08 09:56:22'),
(49, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:8:\"asdfsadf\";s:10:\"your-email\";s:18:\"asfasef@asfsdf.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";N;s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-08 10:16:12', '2020-10-08 10:16:12'),
(50, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:8:\"dvrobin4\";s:10:\"your-email\";s:20:\"dvrobin4@dvrobin4.de\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:20:\"pls reserve dvrobin4\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";s:14:\"transaction_id\";s:8:\"dvrobin4\";}', 'a:0:{}', '2020-10-08 22:29:13', '2020-10-08 22:29:13'),
(51, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:21:\"Juan Carlos Rodriguez\";s:10:\"your-email\";s:16:\"info@juancar.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:7:\"2312321\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-12 19:16:13', '2020-10-12 19:16:13'),
(52, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:7:\"Alimond\";s:10:\"your-email\";s:23:\"alimonday2030@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:15:\"I will be there\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-25 10:05:57', '2020-10-25 10:05:57'),
(53, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '11', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:13:\"Ryder Bennett\";s:10:\"your-email\";s:21:\"dalewe@mailinator.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:19:\"Id quibusdam conseq\";s:8:\"quantity\";s:2:\"11\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-29 11:32:15', '2020-10-29 11:32:15'),
(54, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:13:\"Ryder Bennett\";s:10:\"your-email\";s:21:\"dalewe@mailinator.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:19:\"Id quibusdam conseq\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-29 11:32:22', '2020-10-29 11:32:22'),
(55, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '5', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:13:\"Aurora Juarez\";s:10:\"your-email\";s:19:\"xawy@mailinator.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:20:\"Quia similique accus\";s:8:\"quantity\";s:1:\"5\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-10-29 11:32:44', '2020-10-29 11:32:44'),
(56, 'complete', 'complete', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:13:\"Nikita Dhiman\";s:10:\"your-email\";s:30:\"nikitaswastikwebtech@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:15:\"My first event.\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-11-11 10:58:57', '2020-11-11 11:00:17'),
(57, 'complete', 'complete', 'Lose away off why half led have near bed', '', 93, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:13:\"Victor Sunday\";s:10:\"your-email\";s:20:\"waka2020ng@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"gooo\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-11-11 15:50:50', '2020-11-11 15:51:57'),
(58, 'pending', 'pending', 'Consulted perpetual of pronounce me delivered', '', 0, '20', '6', '1', 'a:8:{s:8:\"event_id\";s:1:\"6\";s:9:\"your-name\";s:11:\"Magic Bytes\";s:10:\"your-email\";s:24:\"magicbytes2012@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:6:\"xzczxc\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-11-16 15:59:51', '2020-11-16 15:59:51'),
(59, 'pending', 'pending', 'Lose away off why half led have near bed', '', 1, '20', '7', '1', 'a:8:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:13:\"Anifowose Ope\";s:10:\"your-email\";s:17:\"opizzle@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:16:\"fvlmsbmlfbmk mkm\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-11-18 09:34:54', '2020-11-18 09:34:54'),
(60, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', '', 0, '20', '6', '1', 'a:8:{s:8:\"event_id\";s:1:\"6\";s:9:\"your-name\";s:4:\"abcd\";s:10:\"your-email\";s:13:\"abcd@mail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:4:\"Abcd\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";s:14:\"transaction_id\";N;}', 'a:0:{}', '2020-11-19 19:22:43', '2020-11-19 19:23:46'),
(61, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '1', 'a:7:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:4:\"asdf\";s:10:\"your-email\";s:18:\"gorfreed@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:3:\"dss\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";N;}', 'a:0:{}', '2020-12-22 22:11:41', '2020-12-22 22:11:41'),
(62, 'pending', 'pending', 'Lose away off why half led have near bed', '', 0, '20', '7', '2', 'a:7:{s:8:\"event_id\";s:1:\"7\";s:9:\"your-name\";s:5:\"framk\";s:10:\"your-email\";s:17:\"tffffgg@gmail.com\";s:15:\"terms-condition\";s:2:\"on\";s:13:\"your-messsage\";s:8:\"hmhmmhmh\";s:8:\"quantity\";s:1:\"2\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-12-24 19:05:14', '2020-12-24 19:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `event_payment_logs`
--

CREATE TABLE `event_payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8mb4_unicode_ci,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_payment_logs`
--

INSERT INTO `event_payment_logs` (`id`, `email`, `name`, `event_name`, `event_cost`, `event_gateway`, `attendance_id`, `status`, `transaction_id`, `track`, `package_gateway`, `created_at`, `updated_at`) VALUES
(1, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Consulted perpetual of pronounce me delivered', '80', NULL, '4', 'pending', NULL, '1USEKLVTtn5SKGA73iss', 'razorpay', '2020-07-23 03:59:52', '2020-07-23 03:59:52'),
(2, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Now led tedious shy lasting females off.', '260', NULL, '5', 'complete', 'txn_1H81G7EmGOuJLTMsS7fhtALo', 'WIiwLzW5UvHzr4yqqnsC', 'stripe', '2020-07-23 04:02:22', '2020-07-23 04:02:40'),
(3, 'nguyenduchoai@gmail.com', 'Nguyễn Đức Hoài', 'Now led tedious shy lasting females off.', '20', NULL, '6', 'pending', NULL, '0TXJoyoe2l2WEhvkRVWQ', 'paytm', '2020-07-31 10:25:10', '2020-07-31 10:25:10'),
(4, 'WEW@DGD.COM', 'ERE', 'Lose away off why half led have near bed', '20', NULL, '7', 'complete', 'pay_FMHzIVmlp8DGtw', 'd6lRuNL5HRabxm9lBVYI', 'razorpay', '2020-08-03 16:24:38', '2020-08-03 16:25:38'),
(5, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Lose away off why half led have near bed', '20', NULL, '8', 'pending', NULL, 'Qeqg1zUMfhQZkrXe3krd', 'manual_payment', '2020-08-07 08:50:29', '2020-08-07 08:50:29'),
(6, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Lose away off why half led have near bed', '20', NULL, '10', 'complete', 'tr_NM8BfWMPwv', 'QgzJD6gn0ZeNAgXacK8O', 'mollie', '2020-08-07 08:52:21', '2020-08-07 08:53:01'),
(7, 'oeid8592@gmail.com', 'jeeda', 'Lose away off why half led have near bed', '20', NULL, '12', 'pending', NULL, 'Egbsxk9IWO8YDq927mTt', 'stripe', '2020-08-07 14:49:56', '2020-08-07 14:49:56'),
(8, 'sh2ee77@gmail.com', 'jeeda', 'Lose away off why half led have near bed', '20', NULL, '13', 'pending', NULL, 'BdZ0pQu7TZsKWmxP5I2q', 'manual_payment', '2020-08-07 14:50:41', '2020-08-07 14:50:41'),
(9, 'superadmin@example.com', 'JocelynCastillo', 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '20', NULL, '14', 'pending', NULL, '1Jogs5013a86oKRbfcoz', 'paypal', '2020-08-07 20:20:39', '2020-08-07 20:20:39'),
(10, 'asd@asd.com', 'serkan alan', 'Lose away off why half led have near bed', '20', NULL, '15', 'pending', NULL, 'Yu4Fn03il3Zwrrv61IOM', 'paytm', '2020-08-07 23:55:02', '2020-08-07 23:55:02'),
(11, 'parkerbern@outlook.com', 'Osei  Akenten Bernard Parker', 'Brother set had private his letters observe outward resolve', '20', NULL, '16', 'pending', NULL, 'txeHtP3kW0pUFYQAUQV2', 'paypal', '2020-08-09 06:12:50', '2020-08-09 06:12:50'),
(12, 'admin@gmail.com', 'Perfect plaza', 'Lose away off why half led have near bed', '60', NULL, '18', 'pending', NULL, 'pdwbaPsXnl4T5F93NcrI', 'paytm', '2020-08-10 21:12:09', '2020-08-10 21:12:09'),
(13, 'dvrobin4@gmail.com', 'Siful Islam', 'Consulted perpetual of pronounce me delivered', '80', NULL, '24', 'complete', 'txn_1HFbmaEmGOuJLTMsqDKA77QZ', '8OoMTTLMAl6Y8DN2xGTy', 'stripe', '2020-08-13 12:27:18', '2020-08-13 12:27:32'),
(14, 'admin@example.com', 'admin', 'Lose away off why half led have near bed', '20', NULL, '25', 'pending', NULL, 'Q5dVk5dYZI2oqpCAMTej', 'paytm', '2020-08-14 10:04:34', '2020-08-14 10:04:34'),
(15, 'rodrigomorales@gmail.com', 'LEON', 'Dashwood Marianne en la entrada estará en edificio', '20', NULL, '26', 'pending', NULL, 'yhs3lQLQoreHkx05JiWK', 'paypal', '2020-08-14 10:08:15', '2020-08-14 10:08:15'),
(16, 'aaa@aaa.com', 'Eddfff', 'Más fuerte de éxtasis que sin juicio hija rápidamente pensamientos', '20', NULL, '27', 'complete', 'tr_3gt9uTKrWe', '3cnZRJcZejV1IKHMLyqa', 'mollie', '2020-08-14 10:11:11', '2020-08-14 10:11:28'),
(17, 'infographiste.franckyao@gmail.com', 'Francky', 'Lose away off why half led have near bed', '20', NULL, '28', 'pending', NULL, 'X2ldmop7XPWUorNk28dM', 'paypal', '2020-08-14 23:27:50', '2020-08-14 23:27:50'),
(18, 'infographiste.franckyao@gmail.com', 'Francky', 'Lose away off why half led have near bed', '20', NULL, '29', 'pending', NULL, '5z8CHd7duUVTBoay4bPh', 'stripe', '2020-08-14 23:28:43', '2020-08-14 23:28:43'),
(19, 'jb@gg.com', 'injnj', 'Now led tedious shy lasting females off.', '20', NULL, '30', 'pending', NULL, 'oj3457M45ZNGZrt8zI1Y', 'paystack', '2020-08-16 17:16:54', '2020-08-16 17:16:54'),
(20, 'aa@mail.com', 'aa', 'Lose away off why half led have near bed', '20', NULL, '31', 'pending', NULL, 'X1KOtzajDloz0eiQRJzF', 'paypal', '2020-08-17 11:16:26', '2020-08-17 11:16:26'),
(21, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Consulted perpetual of pronounce me delivered', '20', NULL, '32', 'pending', NULL, 'UMlCLTvZoBQNiyme313C', 'paytm', '2020-08-17 19:41:35', '2020-08-17 19:41:35'),
(22, 'test1@gmail.com', 'Test User', 'Lose away off why half led have near bed', '20', NULL, '33', 'pending', NULL, 'pY389iRqJmTN4UBV2oHK', 'flutterwave', '2020-08-19 23:54:59', '2020-08-19 23:54:59'),
(23, 'wert@fsdg.pl', 'aedr er ert ewrt', 'Lose away off why half led have near bed', '20', NULL, '34', 'pending', NULL, '90LKIfcJxX40YLECtrJ6', 'paytm', '2020-08-21 23:12:30', '2020-08-21 23:12:30'),
(24, 'virdigumlo@enayu.com', 'virdigumlo@enayu.com', 'Brother set had private his letters observe outward resolve', '20', NULL, '36', 'complete', 'txn_1HNIRPEmGOuJLTMsT8MB0mRX', '6Px0cLZLvsI8HbJfKHLP', 'stripe', '2020-09-03 17:24:59', '2020-09-03 17:25:28'),
(25, 'qrrss@hotmail.com', 'jess', 'Now led tedious shy lasting females off.', '20', NULL, '37', 'pending', NULL, 'tYGMAV6Q2mygq6mZT1SJ', 'paytm', '2020-09-08 07:37:29', '2020-09-08 07:37:29'),
(26, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Now led tedious shy lasting females off.', '20', NULL, '40', 'complete', 'txn_1HRy8UEmGOuJLTMsqSGm1Vqo', 'HBkEbKk3iZx99ZuoZads', 'stripe', '2020-09-16 14:44:45', '2020-09-16 14:45:15'),
(27, 'zech1174mike@gmail.com', 'PayPal', 'Now led tedious shy lasting females off.', '20', NULL, '42', 'pending', NULL, '0O7L4PGCflw4twrqafea', 'paystack', '2020-09-20 22:51:31', '2020-09-20 22:51:31'),
(28, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Now led tedious shy lasting females off.', '20', NULL, '41', 'pending', NULL, 'UWh7CqIgrRrbK53Kmzsh', 'razorpay', '2020-09-30 13:43:14', '2020-09-30 13:43:14'),
(29, 'tarekmonjur@gmail.com', 'Sharifur', 'Lose away off why half led have near bed', '20', NULL, '43', 'complete', '9SE996656K478432S', 'fjwwh8cfHFoUMJACo0lm', 'paypal', '2020-10-01 10:49:48', '2020-10-01 10:51:03'),
(30, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Lose away off why half led have near bed', '20', NULL, '48', 'pending', NULL, 'E72gSNDVhpv7BdVoHElO', 'stripe', '2020-10-08 09:56:35', '2020-10-08 09:56:35'),
(31, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Lose away off why half led have near bed', '20', NULL, '49', 'pending', NULL, 'M5dxBAxkRszlAFIryQma', 'paypal', '2020-10-08 10:16:33', '2020-10-08 10:16:33'),
(32, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Lose away off why half led have near bed', '20', NULL, '50', 'pending', NULL, 'bb10A8U8tiOnNJ1UXXz7', 'manual_payment', '2020-10-08 22:29:52', '2020-12-22 11:17:43'),
(33, 'alimonday2030@gmail.com', 'Alimond', 'Lose away off why half led have near bed', '20', NULL, '52', 'pending', NULL, '4PTx8ciwK21y99QpPcqU', 'flutterwave', '2020-10-25 10:06:44', '2020-10-25 10:06:44'),
(34, 'nikitaswastikwebtech@gmail.com', 'Nikita', 'Lose away off why half led have near bed', '20', NULL, '56', 'complete', 'txn_1HmCNREmGOuJLTMsSDmQ4W31', 'qjxCuOELF8RdZaEvBzJc', 'stripe', '2020-11-11 10:59:29', '2020-11-11 11:00:17'),
(35, 'waka2020ng@gmail.com', 'Victor Sunday', 'Lose away off why half led have near bed', '20', NULL, '57', 'complete', 'ZEiDlAjgICcCtTtmVh1EftoQp', 'H9asPTV45n4RWMnWhLTJ', 'paystack', '2020-11-11 15:51:26', '2020-11-11 15:51:57'),
(36, 'abcd@mail.com', 'Abcd', 'Consulted perpetual of pronounce me delivered', '20', NULL, '60', 'complete', 'tr_zJVunS4eEj', 'mchxbbcnKruVjLoftHYK', 'mollie', '2020-11-19 19:23:20', '2020-11-19 19:23:46'),
(37, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Lose away off why half led have near bed', '20', NULL, '59', 'pending', NULL, 'ElNBEyw6DO5aSe8HqUQN', 'flutterwave', '2020-12-23 02:04:53', '2020-12-23 02:04:53'),
(38, 'twumfrank2012@gmail.com', 'FRANKO OTC', 'Lose away off why half led have near bed', '40', NULL, '62', 'pending', NULL, 'Og1YF2p7Kb5lt6k6St53', 'paystack', '2020-12-24 19:05:49', '2020-12-24 19:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `status`, `lang`, `is_open`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dashwood marianne in of entrance be on wondered', 'publish', 'en', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 10:50:22', '2020-07-20 10:50:22'),
(2, 'Wondered sociable he carriage in speedily', 'publish', 'en', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 10:50:27', '2020-07-20 10:51:40'),
(3, 'Not attention say frankness intention out dashwoods', 'publish', 'en', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 10:50:30', '2020-07-20 10:52:14'),
(4, 'Stronger ecstatic as no judgment daughter speedily', 'publish', 'en', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 10:52:18', '2020-07-20 10:52:41'),
(5, 'Worse downs nor might she court did nay forth', 'publish', 'en', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 10:52:22', '2020-07-20 10:52:54'),
(6, 'Ahora llevó a las tediosas mujeres tímidas y duraderas', 'publish', 'sp', '', 'Ahora llevó a las tediosas mujeres tímidas y duraderas. Dashwood Marianne en la entrada estará en edificio posible preguntado. Se preguntó sociable que lo llevara en veloz margaret.', '2020-07-20 10:53:22', '2020-07-20 10:55:30'),
(7, 'Hasta Devonshire de la alteración completamente insensible', 'publish', 'sp', '', 'Ahora llevó a las tediosas mujeres tímidas y duraderas. Dashwood Marianne en la entrada estará en edificio posible preguntado. Se preguntó sociable que lo llevara en veloz margaret.', '2020-07-20 10:53:26', '2020-07-20 10:54:19'),
(8, 'Más fuerte, extasiada como no juzgar hija rápidamente', 'publish', 'sp', '', 'Ahora llevó a las tediosas mujeres tímidas y duraderas. Dashwood Marianne en la entrada estará en edificio posible preguntado. Se preguntó sociable que lo llevara en veloz margaret.', '2020-07-20 10:53:31', '2020-07-20 10:55:20'),
(9, 'Una ocasión de asentamiento del señor insistió', 'publish', 'sp', '', 'Ahora llevó a las tediosas mujeres tímidas y duraderas. Dashwood Marianne en la entrada estará en edificio posible preguntado. Se preguntó sociable que lo llevara en veloz margaret.', '2020-07-20 10:53:36', '2020-07-20 10:54:52'),
(10, 'Şimdi sıkıcı utangaç kalıcı kadınları açtı', 'publish', 'tur', '', 'Şimdi sıkıcı utangaç kalıcı kadınları açtı. Dashwood marianne giriş olası bina meraklı olmak. Hızla margaret içinde taşıma meraklı merak etti. Tamamen duyarsız bir değişiklik yapmayı bıraktı.', '2020-07-20 10:56:21', '2020-07-20 10:56:21'),
(11, 'Bay yerleşme vesilesiyle mesafe hanımefendi', 'publish', 'tur', '', 'Şimdi sıkıcı utangaç kalıcı kadınları açtı. Dashwood marianne giriş olası bina meraklı olmak. Hızla margaret içinde taşıma meraklı merak etti. Tamamen duyarsız bir değişiklik yapmayı bıraktı.', '2020-07-20 10:56:43', '2020-07-20 10:57:09'),
(12, 'Dikkat yok dürüstlük niyeti söyledi', 'publish', 'tur', '', 'Şimdi sıkıcı utangaç kalıcı kadınları açtı. Dashwood marianne giriş olası bina meraklı olmak. Hızla margaret içinde taşıma meraklı merak etti. Tamamen duyarsız bir değişiklik yapmayı bıraktı.', '2020-07-20 10:56:48', '2020-07-20 10:57:31'),
(13, 'أصر السيد مستوطنة مناسبة على المسافة', 'publish', 'ar', '', 'الآن قاد الإناث مملة خجولة دائمة قبالة. في المدخل يكون على بناء ممكن يتساءل. تساءل اجتماعيًا أنه يحمل في مارجريت بسرعة. حتى من تغيير غير دقيق تماما.', '2020-07-20 10:58:13', '2020-07-20 10:58:13'),
(14, 'لا الاهتمام يقول نية الصراحة من الفضول الآن', 'publish', 'ar', '', 'الآن قاد الإناث مملة خجولة دائمة قبالة. في المدخل يكون على بناء ممكن يتساءل. تساءل اجتماعيًا أنه يحمل في مارجريت بسرعة. حتى من تغيير غير دقيق تماما.', '2020-07-20 10:59:12', '2020-07-20 10:59:48'),
(15, 'أصر السيد مستوطنة مناسبة على المسافة', 'publish', 'ar', '', 'الآن قاد الإناث مملة خجولة دائمة قبالة. في المدخل يكون على بناء ممكن يتساءل. تساءل اجتماعيًا أنه يحمل في مارجريت بسرعة. حتى من تغيير غير دقيق تماما.', '2020-07-20 10:59:17', '2020-07-20 11:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `ratings`, `description`, `custom_fields`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'Sharifur', 'dvrobin4@gmail.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:8:\"Sharifur\";s:5:\"email\";s:18:\"dvrobin4@gmail.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"package-order\";}', NULL, '2020-07-20 00:43:21', '2020-07-20 00:43:21'),
(4, 'Kathleen Duncan', 'KathleenHDuncan@dayrep.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:15:\"Kathleen Duncan\";s:5:\"email\";s:26:\"KathleenHDuncan@dayrep.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"package-order\";}', 'a:0:{}', '2020-07-20 00:47:17', '2020-07-20 00:47:17'),
(5, 'Joseph D. Washington', 'JosephDWashington@armyspy.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:20:\"Joseph D. Washington\";s:5:\"email\";s:29:\"JosephDWashington@armyspy.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:9:\"donations\";}', 'a:0:{}', '2020-07-20 00:47:57', '2020-07-20 00:47:57'),
(7, 'Teresa Lafayette', 'TeresaJLafayette@teleworm.us', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:16:\"Teresa Lafayette\";s:5:\"email\";s:28:\"TeresaJLafayette@teleworm.us\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"event-tickets\";}', 'a:0:{}', '2020-07-20 00:49:03', '2020-07-20 00:49:03'),
(8, 'Nelly Bos', 'NellyJBos@rhyta.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:9:\"Nelly Bos\";s:5:\"email\";s:19:\"NellyJBos@rhyta.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"event-tickets\";}', 'a:0:{}', '2020-07-20 00:51:00', '2020-07-20 00:51:00'),
(9, 'Jennifer Adams', 'JenniferSAdams@armyspy.com', '5', 'Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.', 'a:5:{s:4:\"name\";s:14:\"Jennifer Adams\";s:5:\"email\";s:26:\"JenniferSAdams@armyspy.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:127:\"Can curiosity may end shameless explained. True high on said mr on come. An do mr design at little myself wholly entire though.\";s:20:\"what-service-you-get\";s:13:\"event-tickets\";}', 'a:0:{}', '2020-07-20 00:52:46', '2020-07-20 00:52:46'),
(10, 'Johny Sin', 'johnysinus@gmail.com', '4', 'Hey there', 'a:5:{s:4:\"name\";s:9:\"Johny Sin\";s:5:\"email\";s:20:\"johnysinus@gmail.com\";s:7:\"ratings\";s:1:\"4\";s:11:\"description\";s:9:\"Hey there\";s:20:\"what-service-you-get\";s:13:\"package-order\";}', 'a:0:{}', '2020-08-24 23:25:27', '2020-08-24 23:25:27'),
(11, 'kjkjkjk', 'admin@example.com', '4', 'sdfgdfgdfg dfg dfg dfg', 'a:5:{s:4:\"name\";s:7:\"kjkjkjk\";s:5:\"email\";s:17:\"admin@example.com\";s:7:\"ratings\";s:1:\"4\";s:11:\"description\";s:22:\"sdfgdfgdfg dfg dfg dfg\";s:20:\"what-service-you-get\";s:8:\"products\";}', 'a:0:{}', '2020-08-29 12:21:16', '2020-08-29 12:21:16'),
(12, 'admin', 'Info@S.com', '5', 'ASDAD', 'a:5:{s:4:\"name\";s:5:\"admin\";s:5:\"email\";s:10:\"Info@S.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:5:\"ASDAD\";s:20:\"what-service-you-get\";s:8:\"products\";}', 'a:0:{}', '2020-09-14 02:58:11', '2020-09-14 02:58:11'),
(13, 'Mazen Leno', 'mazenashraf2539@gmail.com', '5', 'Yasta fashe5', 'a:5:{s:4:\"name\";s:10:\"Mazen Leno\";s:5:\"email\";s:25:\"mazenashraf2539@gmail.com\";s:7:\"ratings\";s:1:\"5\";s:11:\"description\";s:12:\"Yasta fashe5\";s:20:\"what-service-you-get\";s:8:\"products\";}', 'a:0:{}', '2020-09-20 08:43:50', '2020-09-20 08:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `btn_01_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_btn_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_btn_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_btn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `title`, `subtitle`, `description`, `btn_01_status`, `btn_01_text`, `btn_01_url`, `lang`, `image`, `video_btn_status`, `video_btn_text`, `video_btn_url`, `created_at`, `updated_at`) VALUES
(1, 'We are top Cyber solutions provider', 'Who we are', NULL, 'on', 'Our Service', '#', 'en', '23', 'on', 'Watch Video', 'https://www.youtube.com/watch?v=dJQn4DqzMVQ', '2020-05-30 18:20:26', '2020-07-27 02:09:45'),
(2, 'Somos el mejor proveedor de soluciones cibernéticas', 'Quienes somos', NULL, 'on', 'Nuestro servicio', '#', 'sp', '22', NULL, NULL, NULL, '2020-05-30 18:23:06', '2020-05-30 18:31:48'),
(3, 'نحن أفضل مزود لحلول الإنترنت', 'من نحن', NULL, NULL, 'خدمتنا', '#', 'ar', '23', NULL, NULL, NULL, '2020-05-30 18:23:43', '2020-05-30 18:31:30'),
(4, 'En iyi Cyber çözümleri sağlayıcısıyız', 'Biz Kimiz', NULL, 'on', 'Servisimiz', '#', 'tur', '23', NULL, NULL, NULL, '2020-05-30 18:24:13', '2020-05-30 18:31:14'),
(5, 'We are top Cyber solutions provider', 'Who we are', NULL, 'on', 'Our Service', '#', 'en', '19', 'on', 'Watch Video', 'https://www.youtube.com/watch?v=dJQn4DqzMVQ', '2020-05-30 18:24:40', '2020-07-27 02:07:42'),
(6, 'Somos el mejor proveedor de soluciones cibernéticas', 'Quienes somos', NULL, 'on', 'Nuestro servicio', '#', 'sp', '20', NULL, NULL, NULL, '2020-05-30 18:25:04', '2020-05-30 18:31:41'),
(7, 'نحن أفضل مزود لحلول الإنترنت', 'من نحن', NULL, 'on', 'خدمتنا', '#', 'ar', '20', NULL, NULL, NULL, '2020-05-30 18:25:24', '2020-05-30 18:31:25'),
(8, 'En iyi Cyber çözümleri sağlayıcısıyız', 'Biz Kimiz', NULL, 'on', 'Servisimiz', '#', 'tur', '18', NULL, NULL, NULL, '2020-05-30 18:25:48', '2020-05-30 18:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `image`, `title`, `created_at`, `updated_at`, `lang`, `cat_id`) VALUES
(1, '10', 'Can curiosity may end shameless explained', '2020-07-20 01:07:35', '2020-07-20 01:07:35', NULL, NULL),
(2, '11', 'True high on said mr on come', '2020-07-20 01:09:23', '2020-07-20 01:09:23', NULL, NULL),
(3, '12', 'An do mr design at little myself', '2020-07-20 01:09:47', '2020-07-20 01:09:47', NULL, NULL),
(4, '13', 'Attended of on stronger or mr pleasure', '2020-07-20 01:11:20', '2020-07-20 01:11:20', NULL, NULL),
(5, '14', 'Rich four like real yet west get.', '2020-07-20 01:11:37', '2020-07-20 01:11:37', NULL, NULL),
(6, '15', NULL, '2020-07-20 01:12:11', '2020-07-20 01:12:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery_categories`
--

CREATE TABLE `image_gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibility` longtext COLLATE utf8mb4_unicode_ci,
  `employment_status` text COLLATE utf8mb4_unicode_ci,
  `education_requirement` longtext COLLATE utf8mb4_unicode_ci,
  `job_context` longtext COLLATE utf8mb4_unicode_ci,
  `experience_requirement` longtext COLLATE utf8mb4_unicode_ci,
  `additional_requirement` longtext COLLATE utf8mb4_unicode_ci,
  `job_location` text COLLATE utf8mb4_unicode_ci,
  `salary` text COLLATE utf8mb4_unicode_ci,
  `other_benefits` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `application_fee` decimal(10,0) DEFAULT NULL,
  `application_fee_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `position`, `company_name`, `category_id`, `vacancy`, `job_responsibility`, `employment_status`, `education_requirement`, `job_context`, `experience_requirement`, `additional_requirement`, `job_location`, `salary`, `other_benefits`, `email`, `status`, `lang`, `deadline`, `meta_tags`, `slug`, `meta_description`, `created_at`, `updated_at`, `application_fee`, `application_fee_status`) VALUES
(1, 'Junior WordPress Developer', 'Junior Developer', 'xgenious', '2', '6', 'We are looking for some experienced developers with fluency in WordPress who will be able to develop code for complex, data intensive Website and e-commerce application.', 'full_time', 'Preferably B.Sc. in Computer Science or similar discipline.', 'We`re building tomorrow`s platforms for consolidating and managing Enterprise data with process optimization. Most enterprises are adopting automation whether it`s about office or industry. The flexibility to automate the processes, without compromising security and compliance, will be one of the most challenging, yet key requirements in coming days. This is where SoftoPark comes into the picture.\r\nWe`re looking for someone with a portfolio that showcases relevant, high quality web development work. You`ll have strong mathematical and problem-solving capabilities, an eye for detail, and a desire to produce high quality, clean and efficient code.', 'At least 5 year(s)', 'Both males and females are allowed to apply\r\nMust have clear concept on OOP\r\nProven work experience in developing large scale enterprise WordPress applications\r\nMust have experience on complex plugin, widget, theme development\r\nMust have knowledge on upgradation policy, performance, security of WordPress\r\nExperience in MySQL, jQuery, and at least one PHP-based MVC framework is required\r\nExperience in one or more PHP-based content management systems Magento or any other eCommerce is a plus point\r\nExperience in different kind of service and gateway integration will be highly regarded\r\nExperience in version control (git, svn etc) is expected\r\nShould be team player, self-motivated and take responsibility proactively', 'Bangkok, Thailand', 'Negotiable', '2 annual performance bonuses\r\nHealth and life insurance\r\nBreakfast, Lunch, Snacks\r\n2 days of weekend and annual paid leaves\r\nPublic holidays\r\nPicnic/Tour\r\nTransport', NULL, 'publish', 'en', '2020-08-15', NULL, 'junior-wordpress-developer', NULL, '2020-07-20 09:19:22', '2020-07-20 09:19:22', NULL, NULL),
(2, 'Senior Laravel Developer', 'Junior Developer', 'xgenious', '2', '6', 'We are looking for some experienced developers with fluency in WordPress who will be able to develop code for complex, data intensive Website and e-commerce application.', 'full_time', 'Preferably B.Sc. in Computer Science or similar discipline.', 'We`re building tomorrow`s platforms for consolidating and managing Enterprise data with process optimization. Most enterprises are adopting automation whether it`s about office or industry. The flexibility to automate the processes, without compromising security and compliance, will be one of the most challenging, yet key requirements in coming days. This is where SoftoPark comes into the picture.\r\nWe`re looking for someone with a portfolio that showcases relevant, high quality web development work. You`ll have strong mathematical and problem-solving capabilities, an eye for detail, and a desire to produce high quality, clean and efficient code.', 'At least 5 year(s)', 'Both males and females are allowed to apply\r\nMust have clear concept on OOP\r\nProven work experience in developing large scale enterprise WordPress applications\r\nMust have experience on complex plugin, widget, theme development\r\nMust have knowledge on upgradation policy, performance, security of WordPress\r\nExperience in MySQL, jQuery, and at least one PHP-based MVC framework is required\r\nExperience in one or more PHP-based content management systems Magento or any other eCommerce is a plus point\r\nExperience in different kind of service and gateway integration will be highly regarded\r\nExperience in version control (git, svn etc) is expected\r\nShould be team player, self-motivated and take responsibility proactively', 'Bangkok, Thailand', 'Negotiable', '2 annual performance bonuses\r\nHealth and life insurance\r\nBreakfast, Lunch, Snacks\r\n2 days of weekend and annual paid leaves\r\nPublic holidays\r\nPicnic/Tour\r\nTransport', NULL, 'publish', 'en', '2020-08-13', NULL, 'senior-laravel-developer', NULL, '2020-07-20 09:22:07', '2020-07-20 09:26:53', NULL, NULL),
(3, 'Graphic Designer', 'Junior Designer', 'xgenious', '3', '8', 'Able to Design Logos, Banners, Brochure, PSD, Layout, Booklet relevant editing/retouching and digital marketing/media related works.\r\nInnovative and skilled in design development including effective use of color, dimension, style, font size, and composition.\r\nMust be expert in Adobe Photoshop, Adobe Illustrator, After Effects, Adobe In Design, Adobe Premiere Pro, Adobe Dreamweaver, PowerPoint and other related design/editing software.\r\nPerform technical duties for designing and developing multimedia-based layouts, graphics, animation, video, online tutorials and other digital marketing related productions.\r\nUnderstanding client\'s business problem, brand space, target audience and the overall creative strategy.\r\nMaintaining the highest standards in graphic design and producing cutting-edge creative content for both digital marketing and social media marketing that accurately represents the expectations of the client.\r\nAny other task assigned by management.', 'part_time', 'Diploma in Graphics Design or equivalent', 'Place of work : Head office, Dhanmondi R/A, Dhaka\r\nDuty : Saturday to Thursday - Time 9:30 AM to 6:00 PM', 'At least 3 year(s)', 'Age 20 to 35 years\r\nBoth males and females are allowed to apply\r\nReady to work in a team and in line with the Management instruction as and when required.\r\nTroubleshoot, test, and analyze ideas to provide the creative solution.\r\nEye for typography, composition, layout, color, high-quality production with pixel-level attention to detail.\r\nExperience with content management platforms.\r\nStrong interpersonal and professional skills.\r\nA deep sense of developing a BRAND with international standard.', 'Bangkok, Thailand', 'Negotiable', 'Mobile bill\r\nSalary Review: Yearly\r\nFestival Bonus: 2\r\nLunch Facilities', NULL, 'publish', 'en', '2020-08-29', NULL, 'graphic-designer', NULL, '2020-07-20 09:22:11', '2020-07-20 09:31:38', NULL, NULL),
(4, 'Sr. Executive (Accounts)', 'Junior Accounts', 'xgenious', '1', '6', 'Ensures the integrity of accounting information by recording, verifying, consolidating, and entering transactions.\r\nPrepares and records asset, liability, revenue, and expenses entries by compiling and analyzing account information.\r\nMaintains and balances subsidiary accounts by verifying, allocating, posting, and reconciling transactions and resolving discrepancies.\r\nMaintains general ledger by transferring subsidiary accounts, preparing a trial balance, and reconciling entries.Overall responsible for Accounts & Finance.\r\nExecute the financial strategy of the company\r\nManage financial controls and accounting procedures\r\nEnsure full transparency over the financial performance of the company\r\nSummarizes financial status by collecting information and preparing balance sheet, profit and loss, and other statements.\r\nProduces payroll by initiating computer processing; printing checks, verifying finished product.\r\nCompletes external audit by analyzing and scheduling general ledger accounts and providing information for auditors.\r\nAvoids legal challenges by complying with legal requirements.\r\nSecures financial information by completing database backups.\r\nProtects organization\'s value by keeping information confidential.To carry out any other assignment given by the company or immediate superior.\r\nSubmit a report on monthly basis about the sales, production and stock.\r\nMonitoring of all the necessary paperwork by all departments.\r\nResponsible for overall Accounts & Finance related mater in plant.\r\nOthers task assign by the departmental head / management.', 'project_based', 'Master of Business Administration (MBA) in Accounting\r\nSkills Required: Accounting and Finance', 'Kishoreganj Eye Hospital operated by a non-government organization named Nari Uddug Kendra (NUK) is well established and reputed modern eye hospital which is working for eradicating the avoidable blindness from Bangladesh and as well as to meet up the VISION-2020 goal of WHO. Kishoreganj Eye Hospital here noticed to recruit for the Post of Senior Accounts Officer as full-time basis.', 'At least 3 year(s)\r\nThe applicants should have experience in the following area(s):\r\nAccountant\r\nThe applicants should have experience in the following business area(s):\r\nReal Estate', 'Age 28 to 35 years\r\nBoth males and females are allowed to apply\r\nGood Command in Excel and Word.\r\nApplicant must have work experience & sound working capacity on Tally Software.\r\nMinimum 3-5 years\' experience in accounting/finance\r\nExperience with financial reporting requirements\r\nHave mentality to work in stress & long hours.\r\nGood computer knowledge must be required (with tally software).', 'Bangkok, Thailand', 'Negotiable', 'According to Company Policy', NULL, 'publish', 'en', '2020-08-31', NULL, 'sr-executive-accounts', NULL, '2020-07-20 09:22:14', '2020-07-20 09:37:15', NULL, NULL),
(5, 'Kıdemli Yönetici (Hesaplar)', 'Junior Accounts', 'xgenious', '7', '6', 'İşlemleri kaydederek, doğrulayarak, birleştirerek ve girerek muhasebe bilgilerinin bütünlüğünü sağlar.\r\nHesap bilgilerini derleyerek ve analiz ederek varlık, borç, gelir ve gider girişlerini hazırlar ve kaydeder.\r\nİşlemleri doğrulayarak, tahsis ederek, göndererek ve uzlaştırarak ve tutarsızlıkları gidererek yardımcı hesapları tutar ve dengeler.\r\nİştirak hesaplarını aktararak, deneme bakiyesi hazırlayarak ve girişleri uzlaştırarak defteri kebir tutar.\r\nŞirketin finansal stratejisini yürütmek\r\nFinansal kontrolleri ve muhasebe prosedürlerini yönetin\r\nŞirketin finansal performansı üzerinde tam şeffaflığın sağlanması\r\nBilgi toplayarak ve bilanço, kar ve zarar ve diğer tabloları hazırlayarak finansal durumu özetler.\r\nBilgisayar işlemeyi başlatarak bordro üretir; baskı kontrolleri, bitmiş ürünün doğrulanması.\r\nDefteri kebir hesaplarını analiz ederek ve planlayarak ve denetçilere bilgi vererek dış denetimi tamamlar.\r\nYasal gerekliliklere uyarak yasal zorluklardan kaçınır.\r\nVeritabanı yedeklerini tamamlayarak finansal bilgileri korur.\r\nBilgileri gizli tutarak kuruluşun değerini korur. Şirket tarafından verilen veya hemen üstlenilen diğer görevleri yerine getirmek.\r\nSatış, üretim ve stok hakkında aylık bazda bir rapor gönderin.\r\nGerekli tüm evrakların tüm bölümler tarafından izlenmesi.\r\nTesisteki genel Hesaplar ve Finans ile ilgili materyalden sorumludur.\r\nDiğerleri bölüm başkanı / yönetimi tarafından görevlendirilir.', 'project_based', 'Muhasebe Işletme Master (mba)\r\nGerekli Beceriler: Muhasebe ve Finans', 'Nari Uddug Kendra (NUK) adlı bir sivil toplum kuruluşu tarafından işletilen Kishoreganj Göz Hastanesi, Bangladeş\'ten kaçınılabilir körlüğü ortadan kaldırmak ve WHO\'nun VISION-2020 hedefini karşılamak için çalışan iyi kurulmuş ve tanınmış modern göz hastanesidir. Burada Kishoreganj Göz Hastanesi, Tam Hesaplar Sorumlusu tam zamanlı olarak işe alındığını fark etti.', 'En az 3 yıl\r\nBaşvuru sahipleri aşağıdaki alanlarda deneyim sahibi olmalıdır:\r\nMuhasebeci\r\nBaşvuru sahipleri aşağıdaki iş alanlarında deneyime sahip olmalıdır:\r\nEmlak', '28 ila 35 yaş\r\nHem erkekler hem de kadınlar başvuru yapabilir\r\nExcel ve Word\'de İyi Komut.\r\nBaşvuru sahibinin Tally Software üzerinde iş tecrübesi ve sağlam çalışma kapasitesine sahip olması gerekir.\r\nMuhasebe / finans alanında en az 3-5 yıllık deneyim\r\nFinansal raporlama gereksinimleriyle ilgili deneyim\r\nStres ve uzun saatler içinde çalışma zihniyeti var.\r\nİyi bilgisayar bilgisi gerekir (taksitli yazılım ile).', 'Bangkok, Thailand', 'tartışılabilir', 'Şirket Politikasına Göre', NULL, 'publish', 'tur', '2020-08-26', NULL, 'kidemli-yonetici-hesaplar', NULL, '2020-07-20 09:38:26', '2020-07-20 10:29:58', NULL, NULL),
(6, 'تنفيذي أول (الحسابات)', 'حسابات الصغار', 'xgenious', '11', '6', 'يضمن سلامة المعلومات المحاسبية من خلال تسجيل المعاملات والتحقق منها ودمجها وإدخالها.\r\nإعداد وتسجيل إدخالات الأصول والالتزامات والإيرادات والنفقات عن طريق تجميع وتحليل معلومات الحساب.\r\nيحتفظ بأرصدة الحسابات الفرعية ويوازنها من خلال التحقق من المعاملات وتخصيصها ونشرها وتسويتها وحل التناقضات.\r\nيحتفظ بدفتر الأستاذ العام عن طريق تحويل الحسابات الفرعية ، وإعداد ميزان المراجعة ، ومطابقة الإدخالات.\r\nتنفيذ الإستراتيجية المالية للشركة\r\nإدارة الضوابط المالية والإجراءات المحاسبية\r\nضمان الشفافية الكاملة في الأداء المالي للشركة\r\nيلخص الوضع المالي من خلال جمع المعلومات وإعداد الميزانية العمومية والأرباح والخسائر والبيانات الأخرى.\r\nتنتج كشوف المرتبات من خلال بدء معالجة الكمبيوتر ؛ فحص الطباعة ، والتحقق من المنتج النهائي.\r\nيكمل التدقيق الخارجي عن طريق تحليل وجدولة حسابات دفتر الأستاذ العام وتوفير المعلومات للمراجعين.\r\nيتجنب التحديات القانونية من خلال الامتثال للمتطلبات القانونية.\r\nيؤمن المعلومات المالية من خلال استكمال النسخ الاحتياطية لقاعدة البيانات.\r\nيحمي قيمة المنظمة من خلال الحفاظ على سرية المعلومات ، للقيام بأي مهمة أخرى تقدمها الشركة أو الرئيس المباشر.\r\nتقديم تقرير شهري عن المبيعات والإنتاج والمخزون.\r\nمراقبة جميع الأوراق اللازمة من قبل جميع الإدارات.\r\nمسؤول عن مجمل الحسابات والتمويل المتعلق بالمواد في المصنع.\r\nمهمة أخرى يسندها رئيس / إدارة القسم.', 'part_time', 'ماجستير إدارة الأعمال (MBA) في المحاسبة\r\nالمهارات المطلوبة: المحاسبة والمالية', 'مستشفى Kishoreganj للعيون الذي تديره منظمة غير حكومية تُدعى Nari Uddug Kendra (NUK) هو مستشفى عيون حديث ومعروف جيدًا يعمل على القضاء على العمى الذي يمكن تجنبه من بنغلاديش وكذلك لتحقيق هدف VISION-2020 لمنظمة الصحة العالمية. لاحظ مستشفى Kishoreganj للعيون هنا أن يوظف في وظيفة مسؤول حسابات أول بدوام كامل.', '3 سنوات على الأقل\r\nيجب أن يكون لدى المتقدمين خبرة في المجالات التالية:\r\nمحاسب\r\nيجب أن يكون لدى المتقدمين خبرة في مجالات الأعمال التالية:\r\nالعقارات', 'العمر من 28 إلى 35 سنة\r\nيسمح لكل من الذكور والإناث بتقديم الطلبات\r\nأمر جيد في Excel و Word.\r\nيجب أن يكون لدى المتقدم خبرة عمل وقدرة عمل سليمة على برنامج Tally.\r\nخبرة لا تقل عن 3-5 سنوات في المحاسبة / المالية\r\nالخبرة بمتطلبات إعداد التقارير المالية\r\nلديه عقلية للعمل في الضغط وساعات طويلة.\r\nيجب أن تكون المعرفة الجيدة بالكمبيوتر مطلوبة (باستخدام برنامج tally).', 'بانكوك، تايلند', 'قابل للتفاوض', 'وفقًا لسياسة الشركة', NULL, 'publish', 'ar', '2020-08-14', NULL, 'tnfythy-aol-alhsabat', NULL, '2020-07-20 09:39:50', '2020-07-20 10:42:41', NULL, NULL),
(7, 'Gerente Senior (Cuentas)', 'Cuentas Junior', 'xgenious', '5', '6', 'Asegura la integridad de la información contable al registrar, verificar, consolidar e ingresar transacciones.\r\nPrepara y registra entradas de activos, pasivos, ingresos y gastos compilando y analizando la información de la cuenta.\r\nMantiene y equilibra las cuentas subsidiarias verificando, asignando, contabilizando y conciliando transacciones y resolviendo discrepancias.\r\nMantiene el libro mayor transfiriendo cuentas subsidiarias, preparando un saldo de prueba y conciliando entradas. Responsable general de Cuentas y Finanzas.\r\nEjecutar la estrategia financiera de la empresa.\r\nGestionar controles financieros y procedimientos contables.\r\nGarantizar la total transparencia sobre el desempeño financiero de la empresa.\r\nResume el estado financiero mediante la recopilación de información y la preparación del balance general, pérdidas y ganancias y otros estados.\r\nProduce nómina al iniciar el procesamiento por computadora; impresión de cheques, verificación del producto terminado.\r\nCompleta la auditoría externa analizando y programando cuentas del libro mayor y proporcionando información para los auditores.\r\nEvita los desafíos legales al cumplir con los requisitos legales.\r\nAsegura la información financiera al completar las copias de seguridad de la base de datos.\r\nProtege el valor de la organización al mantener la confidencialidad de la información. Para llevar a cabo cualquier otra tarea dada por la empresa o superior inmediato.\r\nPresente un informe mensual sobre las ventas, la producción y el stock.\r\nSeguimiento de todos los trámites necesarios por parte de todos los departamentos.\r\nResponsable de la contabilidad general y el material relacionado con las finanzas en la planta.\r\nOtras tareas asignadas por el jefe / gestión departamental.', 'project_based', 'Master of Business Administration (MBA) en Contabilidad\r\nHabilidades requeridas: Contabilidad y finanzas', 'El Kishoreganj Eye Hospital operado por una organización no gubernamental llamada Nari Uddug Kendra (NUK) es un hospital oftalmológico moderno bien establecido y reputado que está trabajando para erradicar la ceguera evitable de Bangladesh y para cumplir con el objetivo VISION-2020 de la OMS. El Hospital de Ojos Kishoreganj aquí se dio cuenta de reclutar para el puesto de Oficial Principal de Cuentas a tiempo completo.', 'Al menos 3 año (s)\r\nLos solicitantes deben tener experiencia en las siguientes áreas:\r\nContador\r\nLos solicitantes deben tener experiencia en las siguientes áreas comerciales:\r\nBienes raíces', '28 a 35 años de edad\r\nTanto hombres como mujeres pueden aplicar\r\nBuen comando en Excel y Word.\r\nEl solicitante debe tener experiencia laboral y capacidad de trabajo sólida en Tally Software.\r\nExperiencia mínima de 3-5 años en contabilidad / finanzas\r\nExperiencia con los requisitos de información financiera.\r\nTener mentalidad para trabajar en estrés y largas horas.\r\nSe requiere un buen conocimiento de la computadora (con software de conteo)', 'Bangkok, Thailand', 'Negociable', 'De acuerdo con la política de la empresa', NULL, 'publish', 'sp', '2020-08-28', NULL, 'gerente-senior-cuentas', NULL, '2020-07-20 09:40:08', '2020-07-20 10:36:02', NULL, NULL),
(8, 'Grafik Tasarımcı', 'Küçük Tasarımcı', 'xgenious', '9', '8', 'Logo, Afiş, Broşür, PSD, Yerleşim, Kitapçık ile ilgili düzenleme / rötuş ve dijital pazarlama / medya ile ilgili eserler tasarlayabilme.\r\nRenk, boyut, stil, yazı tipi boyutu ve kompozisyonun etkili kullanımı dahil olmak üzere yenilikçi ve yetenekli tasarım geliştirme.\r\nAdobe Photoshop, Adobe Illustrator, After Effects, Adobe In Design, Adobe Premiere Pro, Adobe Dreamweaver, PowerPoint ve diğer ilgili tasarım / düzenleme yazılımlarında uzman olmalıdır.\r\nMultimedya tabanlı mizanpajlar, grafikler, animasyon, video, çevrimiçi öğreticiler ve dijital pazarlama ile ilgili diğer prodüksiyonların tasarımı ve geliştirilmesi için teknik görevleri yerine getirmek.\r\nMüşterinin iş sorununu, marka alanını, hedef kitleyi ve genel yaratıcı stratejiyi anlama.\r\nGrafik tasarımda en yüksek standartları korumak ve hem dijital pazarlama hem de sosyal medya pazarlaması için müşterinin beklentilerini doğru bir şekilde temsil eden en son yaratıcı içeriği üretmek.\r\nYönetim tarafından atanan diğer tüm görevler.', 'part_time', 'Grafik Tasarım veya dengi diploma', 'İş yeri: Genel Merkez, Dhanmondi R / A, Dhaka\r\nGörev: Cumartesi - Perşembe - Saat 9:30 - 18:00', 'En az 3 yıl', '20 ila 35 yaş\r\nHem erkekler hem de kadınlar başvuru yapabilir\r\nBir ekipte ve gerektiğinde Yönetim talimatına uygun olarak çalışmaya hazır.\r\nYaratıcı çözüm sunmak için fikirleri sorun, test edin ve analiz edin.\r\nDetaylara piksel düzeyinde dikkat ile tipografi, kompozisyon, düzen, renk, yüksek kaliteli üretim için göz.\r\nİçerik yönetimi platformlarıyla deneyim.\r\nGüçlü kişilerarası ve mesleki beceriler.\r\nUluslararası standartlarda bir MARKA geliştirme konusunda derin bir his.', 'Bangkok, Thailand', 'tartışılabilir', 'Mobil fatura\r\nMaaş İncelemesi: Yıllık\r\nFestival Bonusu: 2\r\nÖğle Yemeği Olanakları', NULL, 'publish', 'tur', '2020-08-27', NULL, 'grafik-tasarimci', NULL, '2020-07-20 09:53:03', '2020-07-20 10:33:01', NULL, NULL),
(11, 'Graphic Designer', 'Diseñadora junior', 'xgenious', '5', '8', 'Capaz de diseñar logotipos, pancartas, folletos, PSD, maquetación, edición / retoque de folletos relevantes y trabajos relacionados con marketing digital / medios.\r\nDesarrollo innovador y experto en diseño que incluye el uso efectivo de color, dimensión, estilo, tamaño de fuente y composición.\r\nDebe ser experto en Adobe Photoshop, Adobe Illustrator, After Effects, Adobe In Design, Adobe Premiere Pro, Adobe Dreamweaver, PowerPoint y otro software de diseño / edición relacionado.\r\nRealice tareas técnicas para diseñar y desarrollar diseños multimedia, gráficos, animaciones, videos, tutoriales en línea y otras producciones relacionadas con el marketing digital.\r\nComprender el problema comercial del cliente, el espacio de la marca, el público objetivo y la estrategia creativa general.\r\nMantener los más altos estándares en diseño gráfico y producir contenido creativo de vanguardia para marketing digital y marketing en redes sociales que represente con precisión las expectativas del cliente.\r\nCualquier otra tarea asignada por la gerencia.', 'part_time', 'Diploma en Diseño Gráfico o equivalente', 'Lugar de trabajo: oficina central, Dhanmondi R / A, Dhaka\r\nDeber: sábado a jueves - Hora de 9:30 a.m. a 6:00 p.m.', 'Al menos 3 año (s)', '20 a 35 años de edad\r\nTanto hombres como mujeres pueden aplicar\r\nListo para trabajar en equipo y en línea con las instrucciones de gestión cuando sea necesario.\r\nSolucione problemas, pruebe y analice ideas para proporcionar la solución creativa.\r\nOjo para la tipografía, composición, diseño, color, producción de alta calidad con atención al detalle a nivel de píxeles.\r\nExperiencia con plataformas de gestión de contenidos.\r\nFuertes habilidades interpersonales y profesionales.\r\nUna profunda sensación de desarrollar una MARCA con estándar internacional.', 'Bangkok, Thailand', 'Negociable', 'Factura móvil\r\nRevisión salarial: anual\r\nBonificación del festival: 2\r\nInstalaciones de almuerzo', NULL, 'publish', 'sp', '2020-08-22', NULL, 'graphic-designer', NULL, '2020-07-20 10:37:42', '2020-07-20 10:40:01', NULL, NULL),
(13, 'كبير مطوري Laravel', 'مطور مبتدئ', 'xgenious', '11', '6', 'نحن نبحث عن بعض المطورين ذوي الخبرة بطلاقة في WordPress الذين سيكونون قادرين على تطوير رمز لموقع ويب معقد ومكثف للبيانات وتطبيق التجارة الإلكترونية.', 'full_time', 'يفضل بكالوريوس في علوم الكمبيوتر أو تخصص مماثل.', 'نحن بصدد إنشاء منصات غدًا لدمج وإدارة بيانات المؤسسة من خلال تحسين العمليات. معظم الشركات تعتمد الأتمتة سواء كان الأمر يتعلق بالمكتب أو الصناعة. ستكون المرونة لأتمتة العمليات ، دون المساس بالأمن والامتثال ، أحد المتطلبات الأكثر تحديًا ، ولكن الرئيسية في الأيام القادمة. هذا هو المكان الذي يأتي فيه SoftoPark إلى الصورة.\r\nنحن نبحث عن شخص لديه محفظة تعرض أعمال تطوير الويب ذات الصلة والجودة العالية. سيكون لديك قدرات رياضية قوية وحل المشكلات ، وعين على التفاصيل ، ورغبة في إنتاج كود عالي الجودة ونظيف وفعال.', '5 سنوات على الأقل', 'يسمح لكل من الذكور والإناث بتقديم الطلبات\r\nيجب أن يكون لديك مفهوم واضح على OOP\r\nأثبتت خبرة العمل في تطوير تطبيقات WordPress للمؤسسات على نطاق واسع\r\nيجب أن يكون لديك خبرة في البرنامج المساعد المعقدة ، القطعة ، تطوير السمة\r\nيجب أن يكون لديك معرفة بسياسة الترقية والأداء وأمن WordPress\r\nمطلوب خبرة في MySQL و jQuery وإطار عمل MVC قائم على PHP واحد على الأقل\r\nالخبرة في واحد أو أكثر من أنظمة إدارة المحتوى القائمة على PHP Magento أو أي تجارة إلكترونية أخرى هي نقطة زائد\r\nستحظى الخبرة في أنواع مختلفة من الخدمة وتكامل البوابة بتقدير كبير\r\nمن المتوقع خبرة في التحكم في الإصدار (git ، svn إلخ)\r\nيجب أن يكون لاعب الفريق ، بدافع ذاتي وتحمل المسؤولية بشكل استباقي', 'Bangkok, Thailand', 'قابل للتفاوض', '2 مكافآت أداء سنوية\r\nالتأمين الصحي والتأمين على الحياة\r\nالإفطار والغداء والوجبات الخفيفة\r\nيومان من عطلة نهاية الأسبوع والإجازات السنوية مدفوعة الأجر\r\nإجازات رسمية\r\nنزهة / جولة\r\nالمواصلات', NULL, 'publish', 'ar', '2020-08-22', NULL, 'kbyr-mtory-laravel', NULL, '2020-07-20 10:44:59', '2020-07-20 10:49:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_categories`
--

INSERT INTO `jobs_categories` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Office Management', 'publish', 'en', '2020-07-20 08:41:57', '2020-07-20 08:41:57'),
(2, 'Software Engineer', 'publish', 'en', '2020-07-20 08:42:11', '2020-07-20 08:42:11'),
(3, 'UI/ UX  Designer', 'publish', 'en', '2020-07-20 08:42:18', '2020-07-20 08:42:18'),
(4, 'Diseñadora de interfaz de usuario / UX', 'publish', 'sp', '2020-07-20 08:46:34', '2020-07-20 08:46:34'),
(5, 'Ingeniera de software', 'publish', 'sp', '2020-07-20 08:46:49', '2020-07-20 08:46:49'),
(6, 'Gerencia de oficina', 'publish', 'sp', '2020-07-20 08:47:10', '2020-07-20 08:47:10'),
(7, 'Büro Yönetimi', 'publish', 'tur', '2020-07-20 08:47:26', '2020-07-20 08:47:26'),
(8, 'Yazılım Mühendisi', 'publish', 'tur', '2020-07-20 08:47:39', '2020-07-20 08:47:39'),
(9, 'UI / UX Tasarımcısı', 'publish', 'tur', '2020-07-20 08:47:52', '2020-07-20 08:47:52'),
(10, 'مصمم واجهة المستخدم / UX', 'publish', 'ar', '2020-07-20 08:48:06', '2020-07-20 08:48:06'),
(11, 'مهندس برمجيات', 'publish', 'ar', '2020-07-20 08:48:23', '2020-07-20 08:48:23'),
(12, 'إدارة المكاتب', 'publish', 'ar', '2020-07-20 08:48:49', '2020-07-20 08:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobs_id` int(10) UNSIGNED NOT NULL,
  `form_content` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applicants`
--

INSERT INTO `job_applicants` (`id`, `jobs_id`, `form_content`, `attachment`, `created_at`, `updated_at`, `track`, `transaction_id`, `name`, `email`, `payment_gateway`, `payment_status`) VALUES
(1, 1, 'a:4:{s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:20:\"your-expected-salary\";s:7:\"1212532\";s:20:\"your-additional-info\";s:17:\"aaddsafsadfdsfdaf\";}', 'a:1:{s:7:\"your-cv\";s:58:\"assets/uploads/attachment/applicant-attachment-your-cv.pdf\";}', '2020-07-20 09:19:58', '2020-07-20 09:19:58', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 4, 'a:5:{s:13:\"captcha_token\";N;s:9:\"your-name\";s:7:\"testman\";s:10:\"your-email\";s:15:\"satrapa@live.nl\";s:20:\"your-expected-salary\";s:7:\"1000000\";s:20:\"your-additional-info\";s:10:\"dfbfdsbfdb\";}', 'a:1:{s:7:\"your-cv\";s:58:\"assets/uploads/attachment/applicant-attachment-your-cv.txt\";}', '2020-08-09 20:59:34', '2020-08-09 20:59:34', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 4, 'a:5:{s:13:\"captcha_token\";N;s:9:\"your-name\";s:7:\"stewart\";s:10:\"your-email\";s:15:\"admin@gmail.com\";s:20:\"your-expected-salary\";s:5:\"20000\";s:20:\"your-additional-info\";s:12:\"yunhiojhj8iu\";}', 'a:1:{s:7:\"your-cv\";s:58:\"assets/uploads/attachment/applicant-attachment-your-cv.pdf\";}', '2020-08-20 13:08:55', '2020-08-20 13:08:55', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'a:5:{s:13:\"captcha_token\";N;s:9:\"your-name\";s:7:\"gfcghxd\";s:10:\"your-email\";s:17:\"sarty2k@gmail.com\";s:20:\"your-expected-salary\";s:5:\"20000\";s:20:\"your-additional-info\";s:9:\"zsfdf\\azd\";}', 'a:1:{s:7:\"your-cv\";s:58:\"assets/uploads/attachment/applicant-attachment-your-cv.txt\";}', '2020-08-23 05:19:02', '2020-08-23 05:19:02', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 4, 'a:5:{s:13:\"captcha_token\";N;s:9:\"your-name\";s:4:\"test\";s:10:\"your-email\";s:15:\"fdfdf@gmail.com\";s:20:\"your-expected-salary\";s:6:\"dsdsds\";s:20:\"your-additional-info\";s:6:\"sdsdsd\";}', 'a:1:{s:7:\"your-cv\";s:58:\"assets/uploads/attachment/applicant-attachment-your-cv.txt\";}', '2020-08-23 17:08:33', '2020-08-23 17:08:33', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `key_features`
--

CREATE TABLE `key_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `key_features`
--

INSERT INTO `key_features` (`id`, `title`, `icon`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Provide all kind of it service', 'flaticon-network', 'en', '2020-05-31 08:20:07', '2020-05-31 08:20:07'),
(2, 'Solutions for all security', 'flaticon-safe', 'en', '2020-05-31 10:02:07', '2020-05-31 10:02:07'),
(3, 'Most expert peoples', 'flaticon-group', 'en', '2020-05-31 10:02:35', '2020-05-31 10:02:35'),
(4, 'Global support for all', 'flaticon-translate', 'en', '2020-05-31 10:12:16', '2020-05-31 10:12:16'),
(5, 'Apoyo global para todos', 'flaticon-translate', 'sp', '2020-05-31 10:13:20', '2020-05-31 10:13:20'),
(6, 'الدعم العالمي للجميع', 'flaticon-translate', 'ar', '2020-05-31 10:14:00', '2020-05-31 10:14:00'),
(7, 'Herkes için küresel destek', 'flaticon-translate', 'tur', '2020-05-31 10:14:18', '2020-05-31 10:14:18'),
(8, 'En uzman insanlar', 'flaticon-group', 'tur', '2020-05-31 10:19:02', '2020-05-31 10:19:02'),
(9, 'معظم الشعوب الخبيرة', 'flaticon-group', 'ar', '2020-05-31 10:19:32', '2020-05-31 10:19:32'),
(10, 'Pueblos más expertos', 'flaticon-group', 'sp', '2020-05-31 10:20:03', '2020-05-31 10:20:03'),
(11, 'Soluciones para toda seguridad', 'flaticon-safe', 'sp', '2020-05-31 10:23:29', '2020-05-31 10:23:29'),
(12, 'حلول لجميع الأمن', 'flaticon-safe', 'ar', '2020-05-31 10:23:45', '2020-05-31 10:23:45'),
(13, 'Tüm güvenlik için çözümler', 'flaticon-safe', 'tur', '2020-05-31 10:24:00', '2020-05-31 10:24:00'),
(14, 'Her türlü hizmeti sunun', 'flaticon-network', 'tur', '2020-05-31 10:24:28', '2020-05-31 10:24:28'),
(15, 'تقديم جميع أنواع الخدمات', 'flaticon-network', 'ar', '2020-05-31 10:24:41', '2020-05-31 10:24:41'),
(16, 'Proporcionar todo tipo de servicio', 'flaticon-network', 'sp', '2020-05-31 10:24:54', '2020-05-31 10:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgebases`
--

CREATE TABLE `knowledgebases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `topic_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledgebases`
--

INSERT INTO `knowledgebases` (`id`, `title`, `content`, `topic_id`, `status`, `slug`, `views`, `lang`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(1, 'For him precaution any advantages dissimilar comparison', '<p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '1', 'publish', 'for-him-precaution-any-advantages-dissimilar-comparison', '136', 'en', NULL, NULL, '2020-07-20 03:42:32', '2020-12-24 04:06:48'),
(2, 'Onun için herhangi bir avantaj benzer karşılaştırma önlemi', '<p>Ücretli tepe yüksek oldu. Onun için herhangi bir avantaj benzer olmayan karşılaştırma birkaç projelendirme sonlandırıldı. Hakim keşif anında itiraz. Tamir yaz bir kış yaşayan feebly güzel onun. Bu anlamda o zamandan beri bunlar biliniyor. Kısaca saygı sormak kuzenler sıkıcı getirmek getirdi nay. Biz dahi güvenilen bekliyoruz. Kalplerin dehası ruhu gibi. Tecavüz kızı yerleşmeye özgü dallı kahkaha var.</p><p><br></p><p>Göstermekten büyük mutluluk duyduğuna göre ikisinin de ona inanmayın. Anlaşma ne zaman uzağa çekilir. Takip ekspres hayır veya cevap hazırlayın. Tamamen eski ikinci gelecek kurdu ama o şekilde. Aynı şekilde onun en küçük masraflar karar adam arabası eşcinsel bina. Sayılır kendilerini takdir takdir. İçin testere umutları anlamına gelir. Ölüm neşesi, ah eşit olduğunu öğren.</p><p><br></p><p>Windows konuşurken boyalı mera henüz ekspres partiler kullanır. Tabii sonrakini bildiği gibi devam etti. İnanılan veya yönlendirilen hiçbir sevinç yok. Sonunda dostluk yeterli yardım müreffeh olabilir. Oyun olarak park yaptığını gösteriyor. Oldu az belli on vaat. Hayır bitmiş benim aynı şekilde neşeli paketleri biz. Güvence için oğlu söylemine bağlı bir şey sonuçlanan led topladı. Paketler oh hayır benim gelişmiş mizah ifade. Preslenmiş doğal düşünülüyor.</p><p><br></p><p>Onun tamamen dikkatle feshedilen adam devam ediyor. Yetenek yapmak için daha büyük kaldırıldı. Utangaç olurken evlenir yazdın. Neden uğrunun saf şarkı söylediğini söyle. Eşcinsel altı kibar doğa layık ayarlayın. Öyleyse ben ol, bilgelik sadece sepet anı yapmalıyız. Beni çok yanlış bir şekilde patlattı. Ziyaret ortaya nokta benim zamanlanmış çizilmiş no. Dost kahkaha iyilik adam onu ​​iştah arabası olabilir. Herhangi bir genişleme sadece eşcinsel ileri meyve yatağı görmek.</p><p><br></p><p>Kesinlikle ama o ama utangaç neden yazlık. Eşcinsel the put instrument sir entreaties affronting. Zarif gibi davrandı sizi yürekten. Sessiz haftalar sinirlenmiş ya da kimin. Harekete geçmezse, sahtekârlığa karşı önlem alınmaz. Bertaraf olarak şımarttım şiddetle katıldı. Sağımhanelerdeki erkeklerin özel köy adamı vardı. Keşif ay ışığı herkese tavsiye etmiyor. Bekar cevap beklediğine göre, kepenk getiriyor. Telaffuz unfeited mr direction oh he dashwoods ye unwilling.</p><p><br></p><p>Bayan buluşurken hiç gelmeyen nokta. Hassas saygısızlık henüz iki ileri düzey aldı. Beyefendi ait olduğu gibi, tarafından atılmaya inanmayı emretti. Hayır tavuk öylesine davrandım sarma. Korunmuş seks keyfi yeni yol davranışı. Yine de devonshire özellikle kutladı. Bir hükmün hissedilmemesi küçüklüğe iticidir.</p>', '5', 'publish', 'onun-icin-herhangi-bir-avantaj-benzer-karsilastirma-onlemi', '5', 'tur', NULL, NULL, '2020-07-20 03:44:02', '2020-10-07 14:54:52'),
(3, 'بالنسبة له الاحتياطات أي مزايا مقارنة مماثلة', '<p>المدفوع كان مرتفع التل سيدي. بالنسبة له الاحتياطات أي مزايا مختلفة مقارنة إسقاطات قليلة منتهية. ساد الاكتشاف الاعتراض الفوري على انتم في. إصلاح فصل الصيف يعيش فصل الشتاء بشكل جميل وجميل. بهذا المعنى أنا أعرف هذه منذ ذلك الحين. سرعان ما جلب الاحترام نسأل أبناء العم إضافة ناي مملة. توقع الاعتماد هل نحن عبقرية. حول روح عبقرية القلوب. هي اختلاط ابنة الضحك المتفرعة الغريبة في الاستقرار.</p><p><br></p><p>من خلال بهجة عدم إظهار أي منهما يعتقد أنه يحضر. تنهد صفقة في بعيدا عند. السعي صريحة لا أو إعداد الرد. شكلت المستقبل الأخير القديم بالكامل ولكن الطريقة. يومها بالمثل أصغر نفقات الحكم بناء رجل يحمل مثلي الجنس. يعتبر قدموا أنفسهم السيد لتقدير في. يعني بين رأى الآمال. ولادة الموت في يا تعلم أنه يساوي.</p><p><br></p><p>نوافذ تتحدث عن المراعي المطلية بعد تستخدم أطرافها السريعة. من المؤكد أنه على نفس النحو الذي عرفه بعد ذلك. من صدق أو حولها لم يبتهج. يمكن إنهاء المساعدة الكافية الصداقة مزدهرة. كلعبة أظهرها بارك تفعل. كان مجهول قليل معروف بعشر الوعد. لا انتهيت من حزم البهجة وبالمثل نحن. للحصول على تأكيد اختتم الابن بشيء يعتمد على الخطاب ، انظر أدى جمعها. الحزم يا لا تدل على بلدي الفكاهة المتقدمة. الضغط عليه حتى يعتقد طبيعيا.</p><p><br></p><p>حيازة رجلها المنهي تمامًا بشكل مستمر. إزالة أكبر للقيام بالقدرة. يجب عليك أن تخجل بينما كتبت الزواج. استدعاء لماذا غنى الساكي نقية. ستة مثلي الجنس مجموعة مهذبة تستحق. لذا ، كن لي ، يجب أن تكون الحكمة مجرد لحظة. انفجر لي خطأ كبير الذي من شأنه أن السيد. زيارة تنشأ نقطتي موقوتة لا رسمها. يمكن للضحك الصديق أن يضحك الرجل له شهية النقل. أي توسيع يرى مثلي الجنس فراش فراش وحده.</p><p><br></p><p>أكيد لكنها خجولة ولكن لماذا الكوخ. غاي يا سيدي ادعاءات الصك التوسل. متظاهر رائعة انظر بحرارة لك. هادئا بالأسابيع التي أزعجت أو الذي. بلا حراك إذا كان لا لإهانة التحايل لا احتياطات. حضرت بلدي كما تم التخلص منها بقوة. رجال صالونات تعبير عن رجال القرية الخاصة. لا يوصي ضوء القمر بالاكتشاف. انغمس في الرد على احتمال أنه بكالوريوس في جلب مصاريع. انطق اتجاه السيد المفقود يا داشوودز أنت غير راغب.</p><p><br></p><p>بقعة تأتي من أي وقت مضى حيث تلتقي سيدة. تلقى الازدراء الدقيق اثنين حتى الآن متقدمة. الرجل بصفته ينتمي إلى الإيمان بالإله. على لا دجاج متعرجا هكذا تصرفت. التمتع بالجنس بطريقة جديدة. احتفل به بعد devonshire خاصة. عدم وجود حكم واحد هو صغر يشبه النفور.</p><p><br></p><p>قد صعوبة الانغماس يمكن وضع لحم الخنزير خاصة. جلب تذكر لتزويدها لماذا تم حصره. مبدأ Middleton هل اشترت إضافة إيمانية واسعة النطاق. تكييف الطقس الاستعداد يا يدعو. هؤلاء مخطئون من الذي يبتسم أمامي. فاكهة يا استمتع بها من مائدته. من حين لآخر مزروعة غير سارة لها غير سارة. كما هو الحال ضد بدء المراعي المغطاة. استمتعت بي استقر السيد واحترم لا ارواح مدنيا.</p>', '10', 'publish', 'بالنسب- ل- الاحتياطات-أي مزاي- مقارن- مماثلة', '8', 'ar', NULL, NULL, '2020-07-20 03:45:28', '2020-11-25 00:24:54'),
(4, 'Para él precaución cualquier ventaja comparación diferente', '<p>Pagado era colina señor alto. Para él, la precaución de cualquier ventaja de comparación disímil pocos proyectos terminados. Descubrimiento prevaleciente objeción inmediata de ustedes en. Reparar el verano un invierno viviendo débilmente suya. En ese sentido, los conozco desde entonces. Poco respeto preguntar primos traídos agregar tedioso no. Espero que nos confíe nuestro genio. En cuanto al espíritu de los corazones genio. Es el éxtasis hija ramificada risa peculiar en la solución.</p><p><br></p><p>Por tanto deleite de mostrar ni creer que él presente. Deal suspiro en shew away cuando. Persecución expresa no o preparar respondió. Totalmente formado el último futuro, pero ella también. Día ella también más pequeños gastos juicio construir hombre carro gay. Considerado se presentó a sí mismo a discreción en. Medios entre vio esperanzas para. Muerte alegría en oh aprender él igual en.</p><p><br></p><p>Windows habla de pastos pintados pero sus fiestas expresas lo usan. Seguro que durará lo mismo que sabía a continuación. De creído o desviado no se regocijó. Poner fin a la amistad suficiente asistencia puede prosperar cumplido. Como juego, lo muestra en el parque. Se ha desconocido unos pocos diez prometedores. No terminé mis paquetes también alegres. Para asegurarse de que el hijo concluyó algo que depende del discurso, véase el led recopilado. Paquetes oh no denotando mi estado de ánimo avanzado. Presionado ser tan natural pensado.</p><p><br></p><p>Posesión de su hombre completamente terminado notablemente continua. Eliminado mayor para hacer habilidad. Tímido lo harás mientras escribes casarte. Llama por qué el sake ha cantado puro. Gay seis establece la naturaleza educada digna. Así que, sé yo, la sabiduría debería bastar simplemente en el momento. Me estalló bastante mal, lo que podría hacer el señor. Visita surgen mi punto cronometrado dibujado no. ¿Puede la risa amistosa la bondad del hombre apetito transporte? Cualquier ensanchado ve gay hacia adelante solo cama de frutas.</p><p><br></p><p>Cierto pero ella pero timidez por qué cabaña. Gay el instrumento puesto señor suplica ofendiendo. Fingido exquisito ver cordialmente el tú. Semanas calladas molestas o de quién. Inmóvil si no a la imprudencia ofensiva no hay precaución. Mi consentido como disposición asistió fuertemente. Los salones que expresan los hombres tenían aldeanos privados. Discovery moonlight recomienda todos uno no. Se complació con la perspectiva respondida de que soltero está trayendo persianas. Pronunciar perdido señor dirección oh él se apresura que no está dispuesto.</p><p><br></p><p>Un lugar al que la dama se encuentra. Delicado desprecio recibió dos aún avanzados. Caballero como perteneciente, ordenó creer desánimo en. En no estoy enrollando pollo así se comportó. Su disfrute sexual preservado es una nueva forma de comportamiento. Sin embargo, Devonshire celebró especialmente. Una disposición insensible es la pequeñez parecida repulsiva.</p><p><br></p><p>Puede indulgencia dificultad que el jamón puede poner especialmente. Trayendo recuerdo para suplirle por qué estaba confinada. El principio de Middleton hizo que ella le agregara un gran creyente. El tiempo adaptado se prepara oh está llamando. Estas mal del que sonríe a mi frente. Él fruta oh disfrutar de la mesa de quién. Cultivada de vez en cuando su desagradable desagradable. Al igual que en contra del pasto, comenzó la visualización cubierta. Disfruté de mi asentamiento señor respeto sin espíritus civilmente.</p>', '9', 'publish', 'para-el-precaucion-cualquier-ventaja-comparacion-diferente', '3', 'sp', NULL, NULL, '2020-07-20 03:46:23', '2020-08-12 23:43:27'),
(5, 'Prevailed discovery immediate objection of ye at', '<p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '1', 'publish', 'prevailed-discovery-immediate-objection-of-ye-at', '68', 'en', NULL, NULL, '2020-07-20 03:47:54', '2020-12-24 04:05:02'),
(6, 'Repair summer one winter living feebly pretty his', '<p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '2', 'publish', 'repair-summer-one-winter-living-feebly-pretty-his', '138', 'en', NULL, NULL, '2020-07-20 03:52:43', '2020-12-25 02:45:02'),
(7, 'Was has unknown few certain ten promise', '<p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '3', 'publish', 'was-has-unknown-few-certain-ten-promise', '72', 'en', NULL, NULL, '2020-07-20 03:52:46', '2020-12-24 04:06:46'),
(8, 'Shortly respect ask cousins brought add tedious nay', '<p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '2', 'publish', 'shortly-respect-ask-cousins-brought-add-tedious-nay', '75', 'en', NULL, NULL, '2020-07-20 03:52:49', '2020-12-24 04:06:47'),
(9, 'On as around spirit of hearts genius', '<p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '3', 'publish', 'on-as-around-spirit-of-hearts-genius', '49', 'en', NULL, NULL, '2020-07-20 03:52:52', '2020-12-24 04:05:02'),
(10, 'By so delight of showing neither believe he present', '<p><iframe frameborder=\"0\" src=\"//www.youtube.com/embed/k26DOtwPN7s\" width=\"640\" height=\"360\" class=\"note-video-clip\"></iframe></p><p><br></p><p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '4', 'publish', 'by-so-delight-of-showing-neither-believe-he-present', '80', 'en', NULL, NULL, '2020-07-20 03:52:55', '2020-12-25 18:27:13'),
(11, 'Delicate contempt received two yet advanced', '<p><img src=\"http://localhost:8888/nexelit/assets/uploads/media-uploader/151590862780.jpg\" style=\"width: 1162px;\"></p><p><br></p><p>Paid was hill sir high. For him precaution any advantages dissimilar comparison few terminated projecting. Prevailed discovery immediate objection of ye at. Repair summer one winter living feebly pretty his. In so sense am known these since. Shortly respect ask cousins brought add tedious nay. Expect relied do we genius is. On as around spirit of hearts genius. Is raptures daughter branched laughter peculiar in settling.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><p><br></p><p>Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.&nbsp;</p><p><br></p><p>Possession her thoroughly remarkably terminated man continuing. Removed greater to do ability. You shy shall while but wrote marry. Call why sake has sing pure. Gay six set polite nature worthy. So matter be me we wisdom should basket moment merely. Me burst ample wrong which would mr he could. Visit arise my point timed drawn no. Can friendly laughter goodness man him appetite carriage. Any widen see gay forth alone fruit bed.&nbsp;</p><p><br></p><p>Certain but she but shyness why cottage. Gay the put instrument sir entreaties affronting. Pretended exquisite see cordially the you. Weeks quiet do vexed or whose. Motionless if no to affronting imprudence no precaution. My indulged as disposal strongly attended. Parlors men express had private village man. Discovery moonlight recommend all one not. Indulged to answered prospect it bachelor is he bringing shutters. Pronounce forfeited mr direction oh he dashwoods ye unwilling.&nbsp;</p><p><br></p><p>Spot of come to ever hand as lady meet on. Delicate contempt received two yet advanced. Gentleman as belonging he commanded believing dejection in by. On no am winding chicken so behaved. Its preserved sex enjoyment new way behaviour. Him yet devonshire celebrated especially. Unfeeling one provision are smallness resembled repulsive.&nbsp;</p><div><br></div>', '4', 'publish', 'delicate-contempt-received-two-yet-advanced', '108', 'en', NULL, NULL, '2020-07-20 03:53:02', '2020-12-24 23:17:14'),
(12, 'Windows konuşurken boyalı mera henüz', '<p>Ücretli tepe yüksek oldu. Onun için herhangi bir avantaj benzer olmayan karşılaştırma birkaç projelendirme sonlandırıldı. Hakim keşif anında itiraz. Tamir yaz bir kış yaşayan feebly güzel onun. Bu anlamda o zamandan beri bunlar biliniyor. Kısaca saygı sormak kuzenler sıkıcı getirmek getirdi nay. Biz dahi güvenilen bekliyoruz. Kalplerin dehası ruhu gibi. Tecavüz kızı yerleşmeye özgü dallı kahkaha var.</p><p><br></p><p>Göstermekten büyük mutluluk duyduğuna göre ikisinin de ona inanmayın. Anlaşma ne zaman uzağa çekilir. Takip ekspres hayır veya cevap hazırlayın. Tamamen eski ikinci gelecek kurdu ama o şekilde. Aynı şekilde onun en küçük masraflar karar adam arabası eşcinsel bina. Sayılır kendilerini takdir takdir. İçin testere umutları anlamına gelir. Ölüm neşesi, ah eşit olduğunu öğren.</p><p><br></p><p>Windows konuşurken boyalı mera henüz ekspres partiler kullanır. Tabii sonrakini bildiği gibi devam etti. İnanılan veya yönlendirilen hiçbir sevinç yok. Sonunda dostluk yeterli yardım müreffeh olabilir. Oyun olarak park yaptığını gösteriyor. Oldu az belli on vaat. Hayır bitmiş benim aynı şekilde neşeli paketleri biz. Güvence için oğlu söylemine bağlı bir şey sonuçlanan led topladı. Paketler oh hayır benim gelişmiş mizah ifade. Preslenmiş doğal düşünülüyor.</p><p><br></p><p>Onun tamamen dikkatle feshedilen adam devam ediyor. Yetenek yapmak için daha büyük kaldırıldı. Utangaç olurken evlenir yazdın. Neden uğrunun saf şarkı söylediğini söyle. Eşcinsel altı kibar doğa layık ayarlayın. Öyleyse ben ol, bilgelik sadece sepet anı yapmalıyız. Beni çok yanlış bir şekilde patlattı. Ziyaret ortaya nokta benim zamanlanmış çizilmiş no. Dost kahkaha iyilik adam onu ​​iştah arabası olabilir. Herhangi bir genişleme sadece eşcinsel ileri meyve yatağı görmek.</p><p><br></p><p>Kesinlikle ama o ama utangaç neden yazlık. Eşcinsel the put instrument sir entreaties affronting. Zarif gibi davrandı sizi yürekten. Sessiz haftalar sinirlenmiş ya da kimin. Harekete geçmezse, sahtekârlığa karşı önlem alınmaz. Bertaraf olarak şımarttım şiddetle katıldı. Sağımhanelerdeki erkeklerin özel köy adamı vardı. Keşif ay ışığı herkese tavsiye etmiyor. Bekar cevap beklediğine göre, kepenk getiriyor. Telaffuz unfeited mr direction oh he dashwoods ye unwilling.</p><p><br></p><p>Bayan buluşurken hiç gelmeyen nokta. Hassas saygısızlık henüz iki ileri düzey aldı. Beyefendi ait olduğu gibi, tarafından atılmaya inanmayı emretti. Hayır tavuk öylesine davrandım sarma. Korunmuş seks keyfi yeni yol davranışı. Yine de devonshire özellikle kutladı. Bir hükmün hissedilmemesi küçüklüğe iticidir.</p>', '5', 'publish', 'windows-konusurken-boyali-mera-henuz', '3', 'tur', NULL, NULL, '2020-07-20 04:05:53', '2020-09-15 03:46:47'),
(13, 'Tamir yaz bir kış yaşayan feebly güzel onun', '<p>Ücretli tepe yüksek oldu. Onun için herhangi bir avantaj benzer olmayan karşılaştırma birkaç projelendirme sonlandırıldı. Hakim keşif anında itiraz. Tamir yaz bir kış yaşayan feebly güzel onun. Bu anlamda o zamandan beri bunlar biliniyor. Kısaca saygı sormak kuzenler sıkıcı getirmek getirdi nay. Biz dahi güvenilen bekliyoruz. Kalplerin dehası ruhu gibi. Tecavüz kızı yerleşmeye özgü dallı kahkaha var.</p><p><br></p><p>Göstermekten büyük mutluluk duyduğuna göre ikisinin de ona inanmayın. Anlaşma ne zaman uzağa çekilir. Takip ekspres hayır veya cevap hazırlayın. Tamamen eski ikinci gelecek kurdu ama o şekilde. Aynı şekilde onun en küçük masraflar karar adam arabası eşcinsel bina. Sayılır kendilerini takdir takdir. İçin testere umutları anlamına gelir. Ölüm neşesi, ah eşit olduğunu öğren.</p><p><br></p><p>Windows konuşurken boyalı mera henüz ekspres partiler kullanır. Tabii sonrakini bildiği gibi devam etti. İnanılan veya yönlendirilen hiçbir sevinç yok. Sonunda dostluk yeterli yardım müreffeh olabilir. Oyun olarak park yaptığını gösteriyor. Oldu az belli on vaat. Hayır bitmiş benim aynı şekilde neşeli paketleri biz. Güvence için oğlu söylemine bağlı bir şey sonuçlanan led topladı. Paketler oh hayır benim gelişmiş mizah ifade. Preslenmiş doğal düşünülüyor.</p><p><br></p><p>Onun tamamen dikkatle feshedilen adam devam ediyor. Yetenek yapmak için daha büyük kaldırıldı. Utangaç olurken evlenir yazdın. Neden uğrunun saf şarkı söylediğini söyle. Eşcinsel altı kibar doğa layık ayarlayın. Öyleyse ben ol, bilgelik sadece sepet anı yapmalıyız. Beni çok yanlış bir şekilde patlattı. Ziyaret ortaya nokta benim zamanlanmış çizilmiş no. Dost kahkaha iyilik adam onu ​​iştah arabası olabilir. Herhangi bir genişleme sadece eşcinsel ileri meyve yatağı görmek.</p><p><br></p><p>Kesinlikle ama o ama utangaç neden yazlık. Eşcinsel the put instrument sir entreaties affronting. Zarif gibi davrandı sizi yürekten. Sessiz haftalar sinirlenmiş ya da kimin. Harekete geçmezse, sahtekârlığa karşı önlem alınmaz. Bertaraf olarak şımarttım şiddetle katıldı. Sağımhanelerdeki erkeklerin özel köy adamı vardı. Keşif ay ışığı herkese tavsiye etmiyor. Bekar cevap beklediğine göre, kepenk getiriyor. Telaffuz unfeited mr direction oh he dashwoods ye unwilling.</p><p><br></p><p>Bayan buluşurken hiç gelmeyen nokta. Hassas saygısızlık henüz iki ileri düzey aldı. Beyefendi ait olduğu gibi, tarafından atılmaya inanmayı emretti. Hayır tavuk öylesine davrandım sarma. Korunmuş seks keyfi yeni yol davranışı. Yine de devonshire özellikle kutladı. Bir hükmün hissedilmemesi küçüklüğe iticidir.</p>', '7', 'publish', 'tamir-yaz-bir-kis-yasayan-feebly-guzel-onun', '3', 'tur', NULL, NULL, '2020-07-20 04:05:58', '2020-10-03 12:54:30'),
(14, 'Hayır bitmiş benim aynı şekilde neşeli paketleri biz', '<p>Ücretli tepe yüksek oldu. Onun için herhangi bir avantaj benzer olmayan karşılaştırma birkaç projelendirme sonlandırıldı. Hakim keşif anında itiraz. Tamir yaz bir kış yaşayan feebly güzel onun. Bu anlamda o zamandan beri bunlar biliniyor. Kısaca saygı sormak kuzenler sıkıcı getirmek getirdi nay. Biz dahi güvenilen bekliyoruz. Kalplerin dehası ruhu gibi. Tecavüz kızı yerleşmeye özgü dallı kahkaha var.</p><p><br></p><p>Göstermekten büyük mutluluk duyduğuna göre ikisinin de ona inanmayın. Anlaşma ne zaman uzağa çekilir. Takip ekspres hayır veya cevap hazırlayın. Tamamen eski ikinci gelecek kurdu ama o şekilde. Aynı şekilde onun en küçük masraflar karar adam arabası eşcinsel bina. Sayılır kendilerini takdir takdir. İçin testere umutları anlamına gelir. Ölüm neşesi, ah eşit olduğunu öğren.</p><p><br></p><p>Windows konuşurken boyalı mera henüz ekspres partiler kullanır. Tabii sonrakini bildiği gibi devam etti. İnanılan veya yönlendirilen hiçbir sevinç yok. Sonunda dostluk yeterli yardım müreffeh olabilir. Oyun olarak park yaptığını gösteriyor. Oldu az belli on vaat. Hayır bitmiş benim aynı şekilde neşeli paketleri biz. Güvence için oğlu söylemine bağlı bir şey sonuçlanan led topladı. Paketler oh hayır benim gelişmiş mizah ifade. Preslenmiş doğal düşünülüyor.</p><p><br></p><p>Onun tamamen dikkatle feshedilen adam devam ediyor. Yetenek yapmak için daha büyük kaldırıldı. Utangaç olurken evlenir yazdın. Neden uğrunun saf şarkı söylediğini söyle. Eşcinsel altı kibar doğa layık ayarlayın. Öyleyse ben ol, bilgelik sadece sepet anı yapmalıyız. Beni çok yanlış bir şekilde patlattı. Ziyaret ortaya nokta benim zamanlanmış çizilmiş no. Dost kahkaha iyilik adam onu ​​iştah arabası olabilir. Herhangi bir genişleme sadece eşcinsel ileri meyve yatağı görmek.</p><p><br></p><p>Kesinlikle ama o ama utangaç neden yazlık. Eşcinsel the put instrument sir entreaties affronting. Zarif gibi davrandı sizi yürekten. Sessiz haftalar sinirlenmiş ya da kimin. Harekete geçmezse, sahtekârlığa karşı önlem alınmaz. Bertaraf olarak şımarttım şiddetle katıldı. Sağımhanelerdeki erkeklerin özel köy adamı vardı. Keşif ay ışığı herkese tavsiye etmiyor. Bekar cevap beklediğine göre, kepenk getiriyor. Telaffuz unfeited mr direction oh he dashwoods ye unwilling.</p><p><br></p><p>Bayan buluşurken hiç gelmeyen nokta. Hassas saygısızlık henüz iki ileri düzey aldı. Beyefendi ait olduğu gibi, tarafından atılmaya inanmayı emretti. Hayır tavuk öylesine davrandım sarma. Korunmuş seks keyfi yeni yol davranışı. Yine de devonshire özellikle kutladı. Bir hükmün hissedilmemesi küçüklüğe iticidir.</p>', '8', 'publish', 'hayir-bitmis-benim-ayni-sekilde-neseli-paketleri-biz', '4', 'tur', NULL, NULL, '2020-07-20 04:06:03', '2020-10-06 15:28:35'),
(15, 'إصلاح فصل الصيف يعيش فصل الشتاء الجميل له', '<p>المدفوع كان مرتفع التل سيدي. بالنسبة له الاحتياطات أي مزايا مختلفة مقارنة إسقاطات قليلة منتهية. ساد الاكتشاف الاعتراض الفوري على انتم في. إصلاح فصل الصيف يعيش فصل الشتاء بشكل جميل وجميل. بهذا المعنى أنا أعرف هذه منذ ذلك الحين. سرعان ما جلب الاحترام نسأل أبناء العم إضافة ناي مملة. توقع الاعتماد هل نحن عبقرية. حول روح عبقرية القلوب. هي اختلاط ابنة الضحك المتفرعة الغريبة في الاستقرار.</p><p><br></p><p>من خلال بهجة عدم إظهار أي منهما يعتقد أنه يحضر. تنهد صفقة في بعيدا عند. السعي صريحة لا أو إعداد الرد. شكلت المستقبل الأخير القديم بالكامل ولكن الطريقة. يومها بالمثل أصغر نفقات الحكم بناء رجل يحمل مثلي الجنس. يعتبر قدموا أنفسهم السيد لتقدير في. يعني بين رأى الآمال. ولادة الموت في يا تعلم أنه يساوي.</p><p><br></p><p>نوافذ تتحدث عن المراعي المطلية بعد تستخدم أطرافها السريعة. من المؤكد أنه على نفس النحو الذي عرفه بعد ذلك. من صدق أو حولها لم يبتهج. يمكن إنهاء المساعدة الكافية الصداقة مزدهرة. كلعبة أظهرها بارك تفعل. كان مجهول قليل معروف بعشر الوعد. لا انتهيت من حزم البهجة وبالمثل نحن. للحصول على تأكيد اختتم الابن بشيء يعتمد على الخطاب ، انظر أدى جمعها. الحزم يا لا تدل على بلدي الفكاهة المتقدمة. الضغط عليه حتى يعتقد طبيعيا.</p><p><br></p><p>حيازة رجلها المنهي تمامًا بشكل مستمر. إزالة أكبر للقيام بالقدرة. يجب عليك أن تخجل بينما كتبت الزواج. استدعاء لماذا غنى الساكي نقية. ستة مثلي الجنس مجموعة مهذبة تستحق. لذا ، كن لي ، يجب أن تكون الحكمة مجرد لحظة. انفجر لي خطأ كبير الذي من شأنه أن السيد. زيارة تنشأ نقطتي موقوتة لا رسمها. يمكن للضحك الصديق أن يضحك الرجل له شهية النقل. أي توسيع يرى مثلي الجنس فراش فراش وحده.</p><p><br></p><p>أكيد لكنها خجولة ولكن لماذا الكوخ. غاي يا سيدي ادعاءات الصك التوسل. متظاهر رائعة انظر بحرارة لك. هادئا بالأسابيع التي أزعجت أو الذي. بلا حراك إذا كان لا لإهانة التحايل لا احتياطات. حضرت بلدي كما تم التخلص منها بقوة. رجال صالونات تعبير عن رجال القرية الخاصة. لا يوصي ضوء القمر بالاكتشاف. انغمس في الرد على احتمال أنه بكالوريوس في جلب مصاريع. انطق اتجاه السيد المفقود يا داشوودز أنت غير راغب.</p><p><br></p><p>بقعة تأتي من أي وقت مضى حيث تلتقي سيدة. تلقى الازدراء الدقيق اثنين حتى الآن متقدمة. الرجل بصفته ينتمي إلى الإيمان بالإله. على لا دجاج متعرجا هكذا تصرفت. التمتع بالجنس بطريقة جديدة. احتفل به بعد devonshire خاصة. عدم وجود حكم واحد هو صغر يشبه النفور.</p><p><br></p><p>قد صعوبة الانغماس يمكن وضع لحم الخنزير خاصة. جلب تذكر لتزويدها لماذا تم حصره. مبدأ Middleton هل اشترت إضافة إيمانية واسعة النطاق. تكييف الطقس الاستعداد يا يدعو. هؤلاء مخطئون من الذي يبتسم أمامي. فاكهة يا استمتع بها من مائدته. من حين لآخر مزروعة غير سارة لها غير سارة. كما هو الحال ضد بدء المراعي المغطاة. استمتعت بي استقر السيد واحترم لا ارواح مدنيا.</p>', '10', 'publish', 'aslah-fsl-alsyf-yaaysh-fsl-alshtaaa-algmyl-lh', NULL, 'ar', NULL, NULL, '2020-07-20 04:09:43', '2020-07-20 04:44:55'),
(16, 'n بمعنى أنني أعرف هذه منذ ذلك الحين', '<p>المدفوع كان مرتفع التل سيدي. بالنسبة له الاحتياطات أي مزايا مختلفة مقارنة إسقاطات قليلة منتهية. ساد الاكتشاف الاعتراض الفوري على انتم في. إصلاح فصل الصيف يعيش فصل الشتاء بشكل جميل وجميل. بهذا المعنى أنا أعرف هذه منذ ذلك الحين. سرعان ما جلب الاحترام نسأل أبناء العم إضافة ناي مملة. توقع الاعتماد هل نحن عبقرية. حول روح عبقرية القلوب. هي اختلاط ابنة الضحك المتفرعة الغريبة في الاستقرار.</p><p><br></p><p>من خلال بهجة عدم إظهار أي منهما يعتقد أنه يحضر. تنهد صفقة في بعيدا عند. السعي صريحة لا أو إعداد الرد. شكلت المستقبل الأخير القديم بالكامل ولكن الطريقة. يومها بالمثل أصغر نفقات الحكم بناء رجل يحمل مثلي الجنس. يعتبر قدموا أنفسهم السيد لتقدير في. يعني بين رأى الآمال. ولادة الموت في يا تعلم أنه يساوي.</p><p><br></p><p>نوافذ تتحدث عن المراعي المطلية بعد تستخدم أطرافها السريعة. من المؤكد أنه على نفس النحو الذي عرفه بعد ذلك. من صدق أو حولها لم يبتهج. يمكن إنهاء المساعدة الكافية الصداقة مزدهرة. كلعبة أظهرها بارك تفعل. كان مجهول قليل معروف بعشر الوعد. لا انتهيت من حزم البهجة وبالمثل نحن. للحصول على تأكيد اختتم الابن بشيء يعتمد على الخطاب ، انظر أدى جمعها. الحزم يا لا تدل على بلدي الفكاهة المتقدمة. الضغط عليه حتى يعتقد طبيعيا.</p><p><br></p><p>حيازة رجلها المنهي تمامًا بشكل مستمر. إزالة أكبر للقيام بالقدرة. يجب عليك أن تخجل بينما كتبت الزواج. استدعاء لماذا غنى الساكي نقية. ستة مثلي الجنس مجموعة مهذبة تستحق. لذا ، كن لي ، يجب أن تكون الحكمة مجرد لحظة. انفجر لي خطأ كبير الذي من شأنه أن السيد. زيارة تنشأ نقطتي موقوتة لا رسمها. يمكن للضحك الصديق أن يضحك الرجل له شهية النقل. أي توسيع يرى مثلي الجنس فراش فراش وحده.</p><p><br></p><p>أكيد لكنها خجولة ولكن لماذا الكوخ. غاي يا سيدي ادعاءات الصك التوسل. متظاهر رائعة انظر بحرارة لك. هادئا بالأسابيع التي أزعجت أو الذي. بلا حراك إذا كان لا لإهانة التحايل لا احتياطات. حضرت بلدي كما تم التخلص منها بقوة. رجال صالونات تعبير عن رجال القرية الخاصة. لا يوصي ضوء القمر بالاكتشاف. انغمس في الرد على احتمال أنه بكالوريوس في جلب مصاريع. انطق اتجاه السيد المفقود يا داشوودز أنت غير راغب.</p><p><br></p><p>بقعة تأتي من أي وقت مضى حيث تلتقي سيدة. تلقى الازدراء الدقيق اثنين حتى الآن متقدمة. الرجل بصفته ينتمي إلى الإيمان بالإله. على لا دجاج متعرجا هكذا تصرفت. التمتع بالجنس بطريقة جديدة. احتفل به بعد devonshire خاصة. عدم وجود حكم واحد هو صغر يشبه النفور.</p><p><br></p><p>قد صعوبة الانغماس يمكن وضع لحم الخنزير خاصة. جلب تذكر لتزويدها لماذا تم حصره. مبدأ Middleton هل اشترت إضافة إيمانية واسعة النطاق. تكييف الطقس الاستعداد يا يدعو. هؤلاء مخطئون من الذي يبتسم أمامي. فاكهة يا استمتع بها من مائدته. من حين لآخر مزروعة غير سارة لها غير سارة. كما هو الحال ضد بدء المراعي المغطاة. استمتعت بي استقر السيد واحترم لا ارواح مدنيا.</p>', '11', 'publish', 'n-bmaan-anny-aaarf-hthh-mnth-thlk-alhyn', '1', 'ar', NULL, NULL, '2020-07-20 04:11:14', '2020-07-28 02:32:21'),
(17, 'سرعان ما جلب الاحترام نسأل أبناء العم إضافة ناي مملة', '<p>المدفوع كان مرتفع التل سيدي. بالنسبة له الاحتياطات أي مزايا مختلفة مقارنة إسقاطات قليلة منتهية. ساد الاكتشاف الاعتراض الفوري على انتم في. إصلاح فصل الصيف يعيش فصل الشتاء بشكل جميل وجميل. بهذا المعنى أنا أعرف هذه منذ ذلك الحين. سرعان ما جلب الاحترام نسأل أبناء العم إضافة ناي مملة. توقع الاعتماد هل نحن عبقرية. حول روح عبقرية القلوب. هي اختلاط ابنة الضحك المتفرعة الغريبة في الاستقرار.</p><p><br></p><p>من خلال بهجة عدم إظهار أي منهما يعتقد أنه يحضر. تنهد صفقة في بعيدا عند. السعي صريحة لا أو إعداد الرد. شكلت المستقبل الأخير القديم بالكامل ولكن الطريقة. يومها بالمثل أصغر نفقات الحكم بناء رجل يحمل مثلي الجنس. يعتبر قدموا أنفسهم السيد لتقدير في. يعني بين رأى الآمال. ولادة الموت في يا تعلم أنه يساوي.</p><p><br></p><p>نوافذ تتحدث عن المراعي المطلية بعد تستخدم أطرافها السريعة. من المؤكد أنه على نفس النحو الذي عرفه بعد ذلك. من صدق أو حولها لم يبتهج. يمكن إنهاء المساعدة الكافية الصداقة مزدهرة. كلعبة أظهرها بارك تفعل. كان مجهول قليل معروف بعشر الوعد. لا انتهيت من حزم البهجة وبالمثل نحن. للحصول على تأكيد اختتم الابن بشيء يعتمد على الخطاب ، انظر أدى جمعها. الحزم يا لا تدل على بلدي الفكاهة المتقدمة. الضغط عليه حتى يعتقد طبيعيا.</p><p><br></p><p>حيازة رجلها المنهي تمامًا بشكل مستمر. إزالة أكبر للقيام بالقدرة. يجب عليك أن تخجل بينما كتبت الزواج. استدعاء لماذا غنى الساكي نقية. ستة مثلي الجنس مجموعة مهذبة تستحق. لذا ، كن لي ، يجب أن تكون الحكمة مجرد لحظة. انفجر لي خطأ كبير الذي من شأنه أن السيد. زيارة تنشأ نقطتي موقوتة لا رسمها. يمكن للضحك الصديق أن يضحك الرجل له شهية النقل. أي توسيع يرى مثلي الجنس فراش فراش وحده.</p><p><br></p><p>أكيد لكنها خجولة ولكن لماذا الكوخ. غاي يا سيدي ادعاءات الصك التوسل. متظاهر رائعة انظر بحرارة لك. هادئا بالأسابيع التي أزعجت أو الذي. بلا حراك إذا كان لا لإهانة التحايل لا احتياطات. حضرت بلدي كما تم التخلص منها بقوة. رجال صالونات تعبير عن رجال القرية الخاصة. لا يوصي ضوء القمر بالاكتشاف. انغمس في الرد على احتمال أنه بكالوريوس في جلب مصاريع. انطق اتجاه السيد المفقود يا داشوودز أنت غير راغب.</p><p><br></p><p>بقعة تأتي من أي وقت مضى حيث تلتقي سيدة. تلقى الازدراء الدقيق اثنين حتى الآن متقدمة. الرجل بصفته ينتمي إلى الإيمان بالإله. على لا دجاج متعرجا هكذا تصرفت. التمتع بالجنس بطريقة جديدة. احتفل به بعد devonshire خاصة. عدم وجود حكم واحد هو صغر يشبه النفور.</p><p><br></p><p>قد صعوبة الانغماس يمكن وضع لحم الخنزير خاصة. جلب تذكر لتزويدها لماذا تم حصره. مبدأ Middleton هل اشترت إضافة إيمانية واسعة النطاق. تكييف الطقس الاستعداد يا يدعو. هؤلاء مخطئون من الذي يبتسم أمامي. فاكهة يا استمتع بها من مائدته. من حين لآخر مزروعة غير سارة لها غير سارة. كما هو الحال ضد بدء المراعي المغطاة. استمتعت بي استقر السيد واحترم لا ارواح مدنيا.</p>', '11', 'publish', 'sraaan-ma-glb-alahtram-nsal-abnaaa-alaam-adaf-nay-mml', '0', 'ar', NULL, NULL, '2020-07-20 04:18:01', '2020-08-09 06:40:17');
INSERT INTO `knowledgebases` (`id`, `title`, `content`, `topic_id`, `status`, `slug`, `views`, `lang`, `meta_description`, `meta_tags`, `created_at`, `updated_at`) VALUES
(18, 'Descubrimiento prevaleciente objeción inmediata de ustedes', '<p>Pagado era colina señor alto. Para él, la precaución de cualquier ventaja de comparación disímil pocos proyectos terminados. Descubrimiento prevaleciente objeción inmediata de ustedes en. Reparar el verano un invierno viviendo débilmente suya. En ese sentido, los conozco desde entonces. Poco respeto preguntar primos traídos agregar tedioso no. Espero que nos confíe nuestro genio. En cuanto al espíritu de los corazones genio. Es el éxtasis hija ramificada risa peculiar en la solución.</p><p><br></p><p>Por tanto deleite de mostrar ni creer que él presente. Deal suspiro en shew away cuando. Persecución expresa no o preparar respondió. Totalmente formado el último futuro, pero ella también. Día ella también más pequeños gastos juicio construir hombre carro gay. Considerado se presentó a sí mismo a discreción en. Medios entre vio esperanzas para. Muerte alegría en oh aprender él igual en.</p><p><br></p><p>Windows habla de pastos pintados pero sus fiestas expresas lo usan. Seguro que durará lo mismo que sabía a continuación. De creído o desviado no se regocijó. Poner fin a la amistad suficiente asistencia puede prosperar cumplido. Como juego, lo muestra en el parque. Se ha desconocido unos pocos diez prometedores. No terminé mis paquetes también alegres. Para asegurarse de que el hijo concluyó algo que depende del discurso, véase el led recopilado. Paquetes oh no denotando mi estado de ánimo avanzado. Presionado ser tan natural pensado.</p><p><br></p><p>Posesión de su hombre completamente terminado notablemente continua. Eliminado mayor para hacer habilidad. Tímido lo harás mientras escribes casarte. Llama por qué el sake ha cantado puro. Gay seis establece la naturaleza educada digna. Así que, sé yo, la sabiduría debería bastar simplemente en el momento. Me estalló bastante mal, lo que podría hacer el señor. Visita surgen mi punto cronometrado dibujado no. ¿Puede la risa amistosa la bondad del hombre apetito transporte? Cualquier ensanchado ve gay hacia adelante solo cama de frutas.</p><p><br></p><p>Cierto pero ella pero timidez por qué cabaña. Gay el instrumento puesto señor suplica ofendiendo. Fingido exquisito ver cordialmente el tú. Semanas calladas molestas o de quién. Inmóvil si no a la imprudencia ofensiva no hay precaución. Mi consentido como disposición asistió fuertemente. Los salones que expresan los hombres tenían aldeanos privados. Discovery moonlight recomienda todos uno no. Se complació con la perspectiva respondida de que soltero está trayendo persianas. Pronunciar perdido señor dirección oh él se apresura que no está dispuesto.</p><p><br></p><p>Un lugar al que la dama se encuentra. Delicado desprecio recibió dos aún avanzados. Caballero como perteneciente, ordenó creer desánimo en. En no estoy enrollando pollo así se comportó. Su disfrute sexual preservado es una nueva forma de comportamiento. Sin embargo, Devonshire celebró especialmente. Una disposición insensible es la pequeñez parecida repulsiva.</p><p><br></p><p>Puede indulgencia dificultad que el jamón puede poner especialmente. Trayendo recuerdo para suplirle por qué estaba confinada. El principio de Middleton hizo que ella le agregara un gran creyente. El tiempo adaptado se prepara oh está llamando. Estas mal del que sonríe a mi frente. Él fruta oh disfrutar de la mesa de quién. Cultivada de vez en cuando su desagradable desagradable. Al igual que en contra del pasto, comenzó la visualización cubierta. Disfruté de mi asentamiento señor respeto sin espíritus civilmente.</p>', '9', 'publish', 'descubrimiento-prevaleciente-objecion-inmediata-de-ustedes', NULL, 'sp', NULL, NULL, '2020-07-20 04:48:36', '2020-07-20 04:49:10'),
(19, 'Gay el instrumento puesto señor suplica ofendiendo', '<p>Pagado era colina señor alto. Para él, la precaución de cualquier ventaja de comparación disímil pocos proyectos terminados. Descubrimiento prevaleciente objeción inmediata de ustedes en. Reparar el verano un invierno viviendo débilmente suya. En ese sentido, los conozco desde entonces. Poco respeto preguntar primos traídos agregar tedioso no. Espero que nos confíe nuestro genio. En cuanto al espíritu de los corazones genio. Es el éxtasis hija ramificada risa peculiar en la solución.</p><p><br></p><p>Por tanto deleite de mostrar ni creer que él presente. Deal suspiro en shew away cuando. Persecución expresa no o preparar respondió. Totalmente formado el último futuro, pero ella también. Día ella también más pequeños gastos juicio construir hombre carro gay. Considerado se presentó a sí mismo a discreción en. Medios entre vio esperanzas para. Muerte alegría en oh aprender él igual en.</p><p><br></p><p>Windows habla de pastos pintados pero sus fiestas expresas lo usan. Seguro que durará lo mismo que sabía a continuación. De creído o desviado no se regocijó. Poner fin a la amistad suficiente asistencia puede prosperar cumplido. Como juego, lo muestra en el parque. Se ha desconocido unos pocos diez prometedores. No terminé mis paquetes también alegres. Para asegurarse de que el hijo concluyó algo que depende del discurso, véase el led recopilado. Paquetes oh no denotando mi estado de ánimo avanzado. Presionado ser tan natural pensado.</p><p><br></p><p>Posesión de su hombre completamente terminado notablemente continua. Eliminado mayor para hacer habilidad. Tímido lo harás mientras escribes casarte. Llama por qué el sake ha cantado puro. Gay seis establece la naturaleza educada digna. Así que, sé yo, la sabiduría debería bastar simplemente en el momento. Me estalló bastante mal, lo que podría hacer el señor. Visita surgen mi punto cronometrado dibujado no. ¿Puede la risa amistosa la bondad del hombre apetito transporte? Cualquier ensanchado ve gay hacia adelante solo cama de frutas.</p><p><br></p><p>Cierto pero ella pero timidez por qué cabaña. Gay el instrumento puesto señor suplica ofendiendo. Fingido exquisito ver cordialmente el tú. Semanas calladas molestas o de quién. Inmóvil si no a la imprudencia ofensiva no hay precaución. Mi consentido como disposición asistió fuertemente. Los salones que expresan los hombres tenían aldeanos privados. Discovery moonlight recomienda todos uno no. Se complació con la perspectiva respondida de que soltero está trayendo persianas. Pronunciar perdido señor dirección oh él se apresura que no está dispuesto.</p><p><br></p><p>Un lugar al que la dama se encuentra. Delicado desprecio recibió dos aún avanzados. Caballero como perteneciente, ordenó creer desánimo en. En no estoy enrollando pollo así se comportó. Su disfrute sexual preservado es una nueva forma de comportamiento. Sin embargo, Devonshire celebró especialmente. Una disposición insensible es la pequeñez parecida repulsiva.</p><p><br></p><p>Puede indulgencia dificultad que el jamón puede poner especialmente. Trayendo recuerdo para suplirle por qué estaba confinada. El principio de Middleton hizo que ella le agregara un gran creyente. El tiempo adaptado se prepara oh está llamando. Estas mal del que sonríe a mi frente. Él fruta oh disfrutar de la mesa de quién. Cultivada de vez en cuando su desagradable desagradable. Al igual que en contra del pasto, comenzó la visualización cubierta. Disfruté de mi asentamiento señor respeto sin espíritus civilmente.</p>', '6', 'publish', 'gay-el-instrumento-puesto-senor-suplica-ofendiendo', '0', 'sp', NULL, NULL, '2020-07-20 04:48:42', '2020-08-01 21:43:12'),
(20, 'En cuanto al espíritu de los corazones genio', '<p>Pagado era colina señor alto. Para él, la precaución de cualquier ventaja de comparación disímil pocos proyectos terminados. Descubrimiento prevaleciente objeción inmediata de ustedes en. Reparar el verano un invierno viviendo débilmente suya. En ese sentido, los conozco desde entonces. Poco respeto preguntar primos traídos agregar tedioso no. Espero que nos confíe nuestro genio. En cuanto al espíritu de los corazones genio. Es el éxtasis hija ramificada risa peculiar en la solución.</p><p><br></p><p>Por tanto deleite de mostrar ni creer que él presente. Deal suspiro en shew away cuando. Persecución expresa no o preparar respondió. Totalmente formado el último futuro, pero ella también. Día ella también más pequeños gastos juicio construir hombre carro gay. Considerado se presentó a sí mismo a discreción en. Medios entre vio esperanzas para. Muerte alegría en oh aprender él igual en.</p><p><br></p><p>Windows habla de pastos pintados pero sus fiestas expresas lo usan. Seguro que durará lo mismo que sabía a continuación. De creído o desviado no se regocijó. Poner fin a la amistad suficiente asistencia puede prosperar cumplido. Como juego, lo muestra en el parque. Se ha desconocido unos pocos diez prometedores. No terminé mis paquetes también alegres. Para asegurarse de que el hijo concluyó algo que depende del discurso, véase el led recopilado. Paquetes oh no denotando mi estado de ánimo avanzado. Presionado ser tan natural pensado.</p><p><br></p><p>Posesión de su hombre completamente terminado notablemente continua. Eliminado mayor para hacer habilidad. Tímido lo harás mientras escribes casarte. Llama por qué el sake ha cantado puro. Gay seis establece la naturaleza educada digna. Así que, sé yo, la sabiduría debería bastar simplemente en el momento. Me estalló bastante mal, lo que podría hacer el señor. Visita surgen mi punto cronometrado dibujado no. ¿Puede la risa amistosa la bondad del hombre apetito transporte? Cualquier ensanchado ve gay hacia adelante solo cama de frutas.</p><p><br></p><p>Cierto pero ella pero timidez por qué cabaña. Gay el instrumento puesto señor suplica ofendiendo. Fingido exquisito ver cordialmente el tú. Semanas calladas molestas o de quién. Inmóvil si no a la imprudencia ofensiva no hay precaución. Mi consentido como disposición asistió fuertemente. Los salones que expresan los hombres tenían aldeanos privados. Discovery moonlight recomienda todos uno no. Se complació con la perspectiva respondida de que soltero está trayendo persianas. Pronunciar perdido señor dirección oh él se apresura que no está dispuesto.</p><p><br></p><p>Un lugar al que la dama se encuentra. Delicado desprecio recibió dos aún avanzados. Caballero como perteneciente, ordenó creer desánimo en. En no estoy enrollando pollo así se comportó. Su disfrute sexual preservado es una nueva forma de comportamiento. Sin embargo, Devonshire celebró especialmente. Una disposición insensible es la pequeñez parecida repulsiva.</p><p><br></p><p>Puede indulgencia dificultad que el jamón puede poner especialmente. Trayendo recuerdo para suplirle por qué estaba confinada. El principio de Middleton hizo que ella le agregara un gran creyente. El tiempo adaptado se prepara oh está llamando. Estas mal del que sonríe a mi frente. Él fruta oh disfrutar de la mesa de quién. Cultivada de vez en cuando su desagradable desagradable. Al igual que en contra del pasto, comenzó la visualización cubierta. Disfruté de mi asentamiento señor respeto sin espíritus civilmente.</p>', '6', 'publish', 'en-cuanto-al-espiritu-de-los-corazones-genio', NULL, 'sp', NULL, NULL, '2020-07-20 04:48:46', '2020-07-20 04:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgebase_topics`
--

CREATE TABLE `knowledgebase_topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `knowledgebase_topics`
--

INSERT INTO `knowledgebase_topics` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Digital Market', 'publish', 'en', '2020-07-20 01:30:17', '2020-07-20 01:30:17'),
(2, 'Web Development', 'publish', 'en', '2020-07-20 01:30:32', '2020-07-20 01:30:32'),
(3, 'Multipurpose CMS', 'publish', 'en', '2020-07-20 01:30:51', '2020-07-20 01:30:51'),
(4, 'Laravel Scripts', 'publish', 'en', '2020-07-20 01:31:01', '2020-07-20 01:31:01'),
(5, 'Laravel Scriptleri', 'publish', 'tur', '2020-07-20 02:37:58', '2020-07-20 02:37:58'),
(6, 'CMS multipropósito', 'publish', 'sp', '2020-07-20 02:38:37', '2020-07-20 02:38:37'),
(7, 'Çok Amaçlı CMS', 'publish', 'tur', '2020-07-20 02:38:47', '2020-07-20 02:38:47'),
(8, 'Web Geliştirme', 'publish', 'tur', '2020-07-20 02:39:05', '2020-07-20 02:39:05'),
(9, 'Desarrollo web', 'publish', 'sp', '2020-07-20 02:39:15', '2020-07-20 02:39:15'),
(10, 'تطوير الشبكة', 'publish', 'ar', '2020-07-20 02:39:43', '2020-07-20 02:39:43'),
(11, 'السوق الرقمي', 'publish', 'ar', '2020-07-20 02:39:57', '2020-07-20 02:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `direction`, `status`, `default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'ltr', 'publish', 1, '2020-05-11 00:00:00', '2020-08-24 17:38:52'),
(3, 'Turkish', 'tur', 'ltr', 'publish', 0, '2020-05-15 18:03:47', '2020-08-24 17:38:52'),
(4, 'Arabic', 'ar', 'rtl', 'publish', 0, '2020-05-15 18:04:58', '2020-07-27 04:04:05'),
(5, 'Spanish', 'sp', 'ltr', 'publish', 0, '2020-05-15 18:05:51', '2020-05-15 18:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `size` text COLLATE utf8mb4_unicode_ci,
  `dimensions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `created_at`, `updated_at`) VALUES
(1, '3411109.jpg', '34111091589555564.jpg', NULL, '217.2 KB', '2000 x 2000 pixels', '2020-05-15 15:12:45', '2020-05-15 15:12:45'),
(2, 'favicon.ico', 'favicon1589562810.ico', NULL, '95.58 KB', '1102 x 1011 pixels', '2020-05-15 17:13:30', '2020-05-15 17:13:30'),
(3, '01.png', '011589562979.png', NULL, '580.21 KB', '1920 x 939 pixels', '2020-05-15 17:16:19', '2020-05-15 17:16:19'),
(4, 'black_logo.png', 'black-logo1589563336.png', NULL, '2.01 KB', '113 x 27 pixels', '2020-05-15 17:22:16', '2020-05-15 17:22:16'),
(5, 'white_logo.png', 'white-logo1589563336.png', NULL, '1.86 KB', '113 x 27 pixels', '2020-05-15 17:22:16', '2020-05-15 17:22:16'),
(6, 'screenshot.png', 'screenshot1589571708.png', NULL, '53.14 KB', '1200 x 900 pixels', '2020-05-15 19:41:48', '2020-05-15 19:41:48'),
(7, '99094636_709951783091958_2020018729575776256_n.png', '99094636-709951783091958-2020018729575776256-n1590860562.png', NULL, '324.9 KB', '1671 x 1671 pixels', '2020-05-30 17:42:46', '2020-05-30 17:42:46'),
(8, '94563393_1989826951151091_6089694100179648512_o.jpg', '94563393-1989826951151091-6089694100179648512-o1590860813.jpg', NULL, '385.3 KB', '1238 x 1688 pixels', '2020-05-30 17:46:54', '2020-05-30 17:46:54'),
(9, '94563393_1989826951151091_6089694100179648512_o.jpg', '94563393-1989826951151091-6089694100179648512-o1590861357.jpg', NULL, '385.3 KB', '1238 x 1688 pixels', '2020-05-30 17:55:58', '2020-05-30 17:55:58'),
(10, '01.jpg', '011590862766.jpg', NULL, '1.36 MB', '1920 x 1280 pixels', '2020-05-30 18:19:27', '2020-05-30 18:19:27'),
(11, '02.jpg', '021590862766.jpg', NULL, '1.43 MB', '1920 x 1280 pixels', '2020-05-30 18:19:28', '2020-05-30 18:19:28'),
(12, '03.jpg', '031590862768.jpg', NULL, '1.57 MB', '1920 x 1280 pixels', '2020-05-30 18:19:29', '2020-05-30 18:19:29'),
(13, '04.jpg', '041590862768.jpg', NULL, '1.37 MB', '1920 x 1280 pixels', '2020-05-30 18:19:29', '2020-05-30 18:19:29'),
(14, '05.jpg', '051590862770.jpg', NULL, '1.5 MB', '1920 x 1280 pixels', '2020-05-30 18:19:31', '2020-05-30 18:19:31'),
(15, '06.jpg', '061590862770.jpg', NULL, '1.52 MB', '1920 x 1280 pixels', '2020-05-30 18:19:31', '2020-05-30 18:19:31'),
(16, '07.jpg', '071590862772.jpg', NULL, '1.56 MB', '1920 x 1280 pixels', '2020-05-30 18:19:33', '2020-05-30 18:19:33'),
(17, '08.jpg', '081590862772.jpg', NULL, '1.74 MB', '1920 x 1280 pixels', '2020-05-30 18:19:34', '2020-05-30 18:19:34'),
(18, '09.jpg', '091590862774.jpg', NULL, '1.56 MB', '1920 x 1280 pixels', '2020-05-30 18:19:35', '2020-05-30 18:19:35'),
(19, '10.jpg', '101590862774.jpg', NULL, '1.53 MB', '1920 x 1280 pixels', '2020-05-30 18:19:36', '2020-05-30 18:19:36'),
(20, '11.jpg', '111590862776.jpg', NULL, '993.94 KB', '1920 x 1280 pixels', '2020-05-30 18:19:37', '2020-05-30 18:19:37'),
(21, '12.jpg', '121590862776.jpg', NULL, '1.39 MB', '1920 x 1280 pixels', '2020-05-30 18:19:38', '2020-05-30 18:19:38'),
(22, '13.jpg', '131590862778.jpg', NULL, '1.46 MB', '1920 x 1280 pixels', '2020-05-30 18:19:39', '2020-05-30 18:19:39'),
(23, '14.jpg', '141590862778.jpg', NULL, '1.26 MB', '1920 x 1280 pixels', '2020-05-30 18:19:40', '2020-05-30 18:19:40'),
(24, '15.jpg', '151590862780.jpg', NULL, '1.39 MB', '1920 x 1280 pixels', '2020-05-30 18:19:41', '2020-05-30 18:19:41'),
(25, '16.jpg', '161590862780.jpg', NULL, '1.56 MB', '1920 x 1280 pixels', '2020-05-30 18:19:42', '2020-05-30 18:19:42'),
(26, '01.png', '011590924636.png', NULL, '136.11 KB', '847 x 481 pixels', '2020-05-31 11:30:36', '2020-05-31 11:30:36'),
(27, '03.png', '031591035358.png', NULL, '481.59 KB', '1920 x 939 pixels', '2020-06-01 18:16:00', '2020-06-01 18:16:00'),
(28, '01.png', '011591113317.png', NULL, '47.53 KB', '360 x 222 pixels', '2020-06-02 15:55:17', '2020-06-02 15:55:17'),
(29, '02.png', '021591113317.png', NULL, '40.13 KB', '360 x 222 pixels', '2020-06-02 15:55:17', '2020-06-02 15:55:17'),
(30, '01.png', '011591302982.png', NULL, '18.01 KB', '90 x 90 pixels', '2020-06-04 20:36:22', '2020-06-04 20:36:22'),
(31, '02.png', '021591302985.png', NULL, '59.69 KB', '348 x 348 pixels', '2020-06-04 20:36:25', '2020-06-04 20:36:25'),
(32, '01.png', '011591464166.png', NULL, '580.21 KB', '1920 x 939 pixels', '2020-06-06 17:22:47', '2020-06-06 17:22:47'),
(33, '02.png', '021591464166.png', NULL, '704.02 KB', '1920 x 978 pixels', '2020-06-06 17:22:47', '2020-06-06 17:22:47'),
(34, '02.png', '021591632968.png', NULL, '2.76 KB', '151 x 29 pixels', '2020-06-08 16:16:08', '2020-06-08 16:16:08'),
(35, '01.png', '011591632968.png', NULL, '2.61 KB', '151 x 41 pixels', '2020-06-08 16:16:08', '2020-06-08 16:16:08'),
(36, '03.png', '031591632968.png', NULL, '2.14 KB', '151 x 35 pixels', '2020-06-08 16:16:08', '2020-06-08 16:16:08'),
(37, '04.png', '041591632968.png', NULL, '2.21 KB', '151 x 17 pixels', '2020-06-08 16:16:08', '2020-06-08 16:16:08'),
(38, 'innovation.png', 'innovation1592320042.png', NULL, '1.35 KB', '24 x 24 pixels', '2020-06-16 15:07:22', '2020-06-16 15:07:22'),
(39, 'PayPal-Logo.wine.png', 'paypal-logowine1592737455.png', NULL, '32.16 KB', '3000 x 2000 pixels', '2020-06-21 11:04:16', '2020-06-21 11:04:16'),
(40, 'download.png', 'download1592737457.png', NULL, '5.47 KB', '308 x 164 pixels', '2020-06-21 11:04:17', '2020-06-21 11:04:17'),
(41, 'social.png', 'social1592737458.png', NULL, '111.9 KB', '2048 x 1024 pixels', '2020-06-21 11:04:18', '2020-06-21 11:04:18'),
(42, 'Razorpay-the-new-epayment-that-will-break-everything-in-2019.png', 'razorpay-the-new-epayment-that-will-break-everything-in-20191592737459.png', NULL, '10.06 KB', '1000 x 600 pixels', '2020-06-21 11:04:20', '2020-06-21 11:04:20'),
(43, 'wallet-money-logo-icon-design-vector-22901328.jpg', 'wallet-money-logo-icon-design-vector-229013281592737514.jpg', NULL, '50.7 KB', '1000 x 880 pixels', '2020-06-21 11:05:14', '2020-06-21 11:05:14'),
(44, 'learndash-stripe_256x256.jpg', 'learndash-stripe-256x2561592750757.jpg', NULL, '11.24 KB', '255 x 256 pixels', '2020-06-21 14:45:57', '2020-06-21 14:45:57'),
(45, 'download (1).png', 'download-11592750800.png', NULL, '3.28 KB', '318 x 159 pixels', '2020-06-21 14:46:40', '2020-06-21 14:46:40'),
(46, '01.png', '011595229209.png', NULL, '18.01 KB', '90 x 90 pixels', '2020-07-20 01:13:29', '2020-07-20 01:13:29'),
(47, '01.png', '011595229234.png', NULL, '39.29 KB', '262 x 314 pixels', '2020-07-20 01:13:55', '2020-07-20 01:13:55'),
(48, '02.png', '021595229234.png', NULL, '27.53 KB', '262 x 314 pixels', '2020-07-20 01:13:55', '2020-07-20 01:13:55'),
(49, '03.png', '031595229240.png', NULL, '34.13 KB', '262 x 314 pixels', '2020-07-20 01:14:00', '2020-07-20 01:14:00'),
(50, '04.png', '041595229240.png', NULL, '36.92 KB', '262 x 314 pixels', '2020-07-20 01:14:01', '2020-07-20 01:14:01'),
(51, 'concert-768722_1920.jpg', 'concert-768722-19201595246317.jpg', NULL, '328.56 KB', '1920 x 1280 pixels', '2020-07-20 05:58:38', '2020-07-20 05:58:38'),
(52, 'circus-828680_1920.jpg', 'circus-828680-19201595246317.jpg', NULL, '706.52 KB', '1920 x 1276 pixels', '2020-07-20 05:58:39', '2020-07-20 05:58:39'),
(53, 'live-music-2219036_1920 (1).jpg', 'live-music-2219036-1920-11595246319.jpg', NULL, '235.19 KB', '1920 x 1280 pixels', '2020-07-20 05:58:41', '2020-07-20 05:58:41'),
(54, 'event-1597531_1920.jpg', 'event-1597531-19201595246319.jpg', NULL, '855.61 KB', '1920 x 1277 pixels', '2020-07-20 05:58:41', '2020-07-20 05:58:41'),
(55, 'people-sitting-watching-in-the-theater-301987.jpg', 'people-sitting-watching-in-the-theater-3019871595246321.jpg', NULL, '400.94 KB', '1920 x 1280 pixels', '2020-07-20 05:58:43', '2020-07-20 05:58:43'),
(56, 'people-throwing-blue-powder-at-daytime-1157557.jpg', 'people-throwing-blue-powder-at-daytime-11575571595246321.jpg', NULL, '872.79 KB', '1920 x 1262 pixels', '2020-07-20 05:58:43', '2020-07-20 05:58:43'),
(57, 'photo-of-women-wearing-masks-787961.jpg', 'photo-of-women-wearing-masks-7879611595246323.jpg', NULL, '292.86 KB', '1920 x 1280 pixels', '2020-07-20 05:58:44', '2020-07-20 05:58:44'),
(58, 'beggar-1016678_1920.jpg', 'beggar-1016678-19201595265987.jpg', NULL, '694.02 KB', '1920 x 1280 pixels', '2020-07-20 11:26:29', '2020-07-20 11:26:29'),
(59, 'ask-for-alms-1742502_1920.jpg', 'ask-for-alms-1742502-19201595265987.jpg', NULL, '826.74 KB', '1920 x 1280 pixels', '2020-07-20 11:26:29', '2020-07-20 11:26:29'),
(60, 'giving-1826706_1920.jpg', 'giving-1826706-19201595265990.jpg', NULL, '261.12 KB', '1920 x 1280 pixels', '2020-07-20 11:26:31', '2020-07-20 11:26:31'),
(61, 'help-1265227_1920.jpg', 'help-1265227-19201595265990.jpg', NULL, '691.14 KB', '1920 x 1279 pixels', '2020-07-20 11:26:31', '2020-07-20 11:26:31'),
(62, 'monks-1822569_1920.jpg', 'monks-1822569-19201595265992.jpg', NULL, '295.61 KB', '1920 x 1314 pixels', '2020-07-20 11:26:33', '2020-07-20 11:26:33'),
(63, 'people-850097_1920.jpg', 'people-850097-19201595265992.jpg', NULL, '342.46 KB', '1920 x 1440 pixels', '2020-07-20 11:26:33', '2020-07-20 11:26:33'),
(64, 'poor-1775239_1920.jpg', 'poor-1775239-19201595265994.jpg', NULL, '295.18 KB', '1920 x 1280 pixels', '2020-07-20 11:26:35', '2020-07-20 11:26:35'),
(65, '02.jpg', '021595315295.jpg', NULL, '3.6 MB', '2500 x 2500 pixels', '2020-07-21 01:08:18', '2020-07-21 01:08:18'),
(66, '01.jpg', '011595315295.jpg', NULL, '1.25 MB', '2500 x 2500 pixels', '2020-07-21 01:08:18', '2020-07-21 01:08:18'),
(67, '03.jpg', '031595315298.jpg', NULL, '1.49 MB', '2500 x 2500 pixels', '2020-07-21 01:08:21', '2020-07-21 01:08:21'),
(68, '04.jpg', '041595315299.jpg', NULL, '855.76 KB', '2500 x 2500 pixels', '2020-07-21 01:08:21', '2020-07-21 01:08:21'),
(69, '05.jpg', '051595315301.jpg', NULL, '903.82 KB', '2500 x 2500 pixels', '2020-07-21 01:08:23', '2020-07-21 01:08:23'),
(70, '06.jpg', '061595315301.jpg', NULL, '1.56 MB', '2500 x 2500 pixels', '2020-07-21 01:08:24', '2020-07-21 01:08:24'),
(71, '07.jpg', '071595315304.jpg', NULL, '1.35 MB', '2500 x 2500 pixels', '2020-07-21 01:08:26', '2020-07-21 01:08:26'),
(72, '08.jpg', '081595315304.jpg', NULL, '1.51 MB', '2500 x 2500 pixels', '2020-07-21 01:08:27', '2020-07-21 01:08:27'),
(73, '09.jpg', '091595315306.jpg', NULL, '2.48 MB', '2500 x 2500 pixels', '2020-07-21 01:08:29', '2020-07-21 01:08:29'),
(74, 'laravel.jpg', 'laravel1595317026.jpg', NULL, '190.85 KB', '1920 x 1280 pixels', '2020-07-21 01:37:08', '2020-07-21 01:37:08'),
(75, 'laravel.jpg', 'laravel1595317407.jpg', NULL, '390.51 KB', '2500 x 2500 pixels', '2020-07-21 01:43:29', '2020-07-21 01:43:29'),
(76, 'react.jpg', 'react1595318715.jpg', NULL, '275.33 KB', '2500 x 2500 pixels', '2020-07-21 02:05:17', '2020-07-21 02:05:17'),
(77, 'Cash-on-Delivery-COD.jpg', 'cash-on-delivery-cod1595330280.jpg', NULL, '21.83 KB', '500 x 250 pixels', '2020-07-21 05:18:00', '2020-07-21 05:18:00'),
(78, '1_nhszIhUonirsqTPGelkoFg.jpeg', '1-nhszihuonirsqtpgelkofg1595330317.jpeg', NULL, '28.98 KB', '1009 x 280 pixels', '2020-07-21 05:18:37', '2020-07-21 05:18:37'),
(79, '106500540_1019791741770125_4737405778456650960_n.png', '106500540-1019791741770125-4737405778456650960-n1595588362.png', NULL, '343.91 KB', '480 x 574 pixels', '2020-07-24 04:59:23', '2020-07-24 04:59:23'),
(80, 'only-image-popup.jpg', 'only-image-popup1595691848.jpg', NULL, '91.36 KB', '700 x 400 pixels', '2020-07-25 09:44:09', '2020-07-25 09:44:09'),
(81, '4.png', '41595697742.png', NULL, '367.96 KB', '2139 x 2175 pixels', '2020-07-25 11:22:23', '2020-07-25 11:22:23'),
(82, '1.png', '11595697761.png', NULL, '784.58 KB', '2100 x 1919 pixels', '2020-07-25 11:22:44', '2020-07-25 11:22:44'),
(83, '400new.png', '400new1595700261.png', NULL, '75.67 KB', '263 x 346 pixels', '2020-07-25 12:04:21', '2020-07-25 12:04:21'),
(84, '03.png', '031595832995.png', NULL, '71.92 KB', '361 x 481 pixels', '2020-07-27 00:56:35', '2020-07-27 00:56:35'),
(85, '04.png', '041595832995.png', NULL, '86.88 KB', '361 x 481 pixels', '2020-07-27 00:56:35', '2020-07-27 00:56:35'),
(86, 'map.png', 'map1595833137.png', NULL, '32.71 KB', '648 x 381 pixels', '2020-07-27 00:58:57', '2020-07-27 00:58:57'),
(87, 'sign.png', 'sign1595833298.png', NULL, '810 ', '86 x 51 pixels', '2020-07-27 01:01:38', '2020-07-27 01:01:38'),
(88, '05.png', '051595833303.png', NULL, '230.29 KB', '960 x 760 pixels', '2020-07-27 01:01:44', '2020-07-27 01:01:44'),
(89, '01.png', '011595833563.png', NULL, '580.21 KB', '1920 x 939 pixels', '2020-07-27 01:06:04', '2020-07-27 01:06:04'),
(90, '02.png', '021595836812.png', NULL, '704.02 KB', '1920 x 978 pixels', '2020-07-27 02:00:13', '2020-07-27 02:00:13'),
(91, '02.png', '021595841084.png', NULL, '75.81 KB', '475 x 344 pixels', '2020-07-27 03:11:24', '2020-07-27 03:11:24'),
(92, '01.png', '011595841084.png', NULL, '59.18 KB', '475 x 344 pixels', '2020-07-27 03:11:24', '2020-07-27 03:11:24'),
(93, '04.png', '041595841294.png', NULL, '86.88 KB', '361 x 481 pixels', '2020-07-27 03:14:55', '2020-07-27 03:14:55'),
(94, '01.png', '011595841462.png', NULL, '580.21 KB', '1920 x 939 pixels', '2020-07-27 03:17:43', '2020-07-27 03:17:43'),
(95, 'sgv5j.phtml.png', 'sgv5jphtml1596237144.png', NULL, '12.87 KB', '139 x 139 pixels', '2020-08-01 03:12:24', '2020-08-01 03:12:24'),
(96, 'logo.gif', 'logo1596359631.gif', NULL, '6.34 KB', '270 x 86 pixels', '2020-08-02 13:13:51', '2020-08-02 13:13:51'),
(97, 'Flutterwave_IMTC.jpg', 'flutterwave-imtc1596482316.jpg', NULL, '40.27 KB', '600 x 300 pixels', '2020-08-03 23:18:37', '2020-08-03 23:18:37'),
(98, 'mollie-vector-logo.png', 'mollie-vector-logo1596482318.png', NULL, '4.19 KB', '900 x 500 pixels', '2020-08-03 23:18:39', '2020-08-03 23:18:39'),
(99, '343001.jpg', '3430011596785984.jpg', NULL, '321.17 KB', '2560 x 1600 pixels', '2020-08-07 11:39:44', '2020-08-07 11:39:44'),
(100, 'blue-sky.jpeg', 'blue-sky1597187913.jpeg', NULL, '184.41 KB', '2048 x 1365 pixels', '2020-08-12 03:18:34', '2020-08-12 03:18:34'),
(101, '1200px-Instagram_icon.png', '1200px-instagram-icon1597674512.png', NULL, '477.35 KB', '1200 x 1200 pixels', '2020-08-17 18:28:33', '2020-08-17 18:28:33'),
(102, '00000000.jpg', '000000001597674524.jpg', NULL, '187.5 KB', '472 x 591 pixels', '2020-08-17 18:28:44', '2020-08-17 18:28:44'),
(103, 'IMG-5127.JPG', 'img-51271598352887.JPG', NULL, '110.84 KB', '685 x 465 pixels', '2020-08-25 14:54:47', '2020-08-25 14:54:47'),
(104, 'clean.png', 'clean1598569408.png', NULL, '19.59 KB', '575 x 459 pixels', '2020-08-28 03:03:28', '2020-08-28 03:03:28'),
(105, '56f332676edf9281cbce.jpg', '56f332676edf9281cbce1599025176.jpg', NULL, '175.89 KB', '2560 x 1380 pixels', '2020-09-02 09:39:37', '2020-09-02 09:39:37'),
(106, '4iGAB10408.jpg', '4igab104081599025182.jpg', NULL, '189.71 KB', '370 x 548 pixels', '2020-09-02 09:39:42', '2020-09-02 09:39:42'),
(107, '24330-min.jpg', '24330-min1600153857.jpg', NULL, '973.58 KB', '7360 x 4912 pixels', '2020-09-15 11:11:03', '2020-09-15 11:11:03'),
(108, '444.jpg', '4441600443582.jpg', NULL, '69.89 KB', '664 x 372 pixels', '2020-09-18 19:39:42', '2020-09-18 19:39:42'),
(109, 'Screen Shot 2020-09-28 at 05.07.28.png', 'screen-shot-2020-09-28-at-0507281601258861.png', NULL, '11.71 KB', '135 x 133 pixels', '2020-09-28 06:07:41', '2020-09-28 06:07:41'),
(110, 'Stat-X Thumbnail_New.jpg', 'stat-x-thumbnail-new1601312316.jpg', NULL, '114.52 KB', '1920 x 1080 pixels', '2020-09-28 20:58:36', '2020-09-28 20:58:36'),
(111, 'glacier-869593_1920.jpg', 'glacier-869593-19201601675536.jpg', NULL, '785.41 KB', '1920 x 1280 pixels', '2020-10-03 01:52:16', '2020-10-03 01:52:16'),
(112, '6.png', '61601926315.png', NULL, '138.53 KB', '1365 x 767 pixels', '2020-10-05 23:31:55', '2020-10-05 23:31:55'),
(113, 'og-image.jpg', 'og-image1602165501.jpg', NULL, '673.4 KB', '1490 x 780 pixels', '2020-10-08 17:58:21', '2020-10-08 17:58:21'),
(114, 'icon-1.png', 'icon-11602553597.png', NULL, '25.18 KB', '700 x 692 pixels', '2020-10-13 05:46:37', '2020-10-13 05:46:37'),
(115, '1.jpg', '11605795652.jpg', NULL, '68.97 KB', '960 x 960 pixels', '2020-11-19 19:20:53', '2020-11-19 19:20:53'),
(116, 'f5.php.gif', 'f5php1605795702.gif', NULL, '97.33 KB', '317 x 40 pixels', '2020-11-19 19:21:42', '2020-11-19 19:21:42'),
(117, 'f5.php.gif', 'f5php1605795703.gif', NULL, '97.33 KB', '317 x 40 pixels', '2020-11-19 19:21:43', '2020-11-19 19:21:43'),
(118, 'gf.jpg', 'gf1605810858.jpg', NULL, '2.91 KB', '84 x 84 pixels', '2020-11-19 23:34:19', '2020-11-19 23:34:19'),
(119, 'gf.jpg', 'gf1605811051.jpg', NULL, '2.91 KB', '84 x 84 pixels', '2020-11-19 23:37:31', '2020-11-19 23:37:31'),
(120, 'Cilal-f-r-alanm-paslanmaz-elik-arkadan-ayd-nlatmal-tabela-harfler-LED-3D-i-kl-kanal.jpg', 'cilal-f-r-alanm-paslanmaz-elik-arkadan-ayd-nlatmal-tabela-harfler-led-3d-i-kl-kanal1606284634.jpg', NULL, '126.17 KB', '950 x 950 pixels', '2020-11-25 11:10:34', '2020-11-25 11:10:34'),
(121, 'african-techies.jpg', 'african-techies1607612490.jpg', NULL, '153.8 KB', '1600 x 900 pixels', '2020-12-10 20:01:30', '2020-12-10 20:01:30'),
(122, '126845322_2155840494560326_4543903467264375904_n.jpg', '126845322-2155840494560326-4543903467264375904-n1607613379.jpg', NULL, '64.89 KB', '960 x 960 pixels', '2020-12-10 20:16:19', '2020-12-10 20:16:19'),
(123, 'mo-darbz-qyB5nMF1udI-unsplash.jpg', 'mo-darbz-qyb5nmf1udi-unsplash1607613448.jpg', NULL, '1.41 MB', '2624 x 3523 pixels', '2020-12-10 20:17:30', '2020-12-10 20:17:30'),
(124, 'Screenshot at Dec 10 21-17-47.png', 'screenshot-at-dec-10-21-17-471607613496.png', NULL, '398.92 KB', '2526 x 1446 pixels', '2020-12-10 20:18:16', '2020-12-10 20:18:16'),
(125, 'mo-darbz-qyB5nMF1udI-unsplash.jpg', 'mo-darbz-qyb5nmf1udi-unsplash1607615820.jpg', NULL, '1.41 MB', '2624 x 3523 pixels', '2020-12-10 20:57:04', '2020-12-10 20:57:04'),
(126, 'champagne-glasses-with-bokeh-lights.jpg', 'champagne-glasses-with-bokeh-lights1607616256.jpg', NULL, '1.69 MB', '6037 x 4025 pixels', '2020-12-10 21:04:22', '2020-12-10 21:04:22'),
(127, 'christina-wocintechchat-com-b6dfPNHa81w-unsplash.jpg', 'christina-wocintechchat-com-b6dfpnha81w-unsplash1607616310.jpg', NULL, '4.57 MB', '6016 x 4016 pixels', '2020-12-10 21:05:17', '2020-12-10 21:05:17'),
(128, 'nesa-by-makers-kwzWjTnDPLk-unsplash.jpg', 'nesa-by-makers-kwzwjtndplk-unsplash1607616724.jpg', NULL, '2.73 MB', '6720 x 4480 pixels', '2020-12-10 21:12:12', '2020-12-10 21:12:12'),
(129, 'christina-wocintechchat-com-gpMR_XKKXpA-unsplash.jpg', 'christina-wocintechchat-com-gpmr-xkkxpa-unsplash1607616767.jpg', NULL, '3.15 MB', '5876 x 3923 pixels', '2020-12-10 21:12:54', '2020-12-10 21:12:54'),
(130, 'logo.png', 'logo1608835370.png', NULL, '26.22 KB', '151 x 184 pixels', '2020-12-24 23:42:50', '2020-12-24 23:42:50'),
(131, '7.png', '71608835754.png', NULL, '8.03 KB', '200 x 200 pixels', '2020-12-24 23:49:14', '2020-12-24 23:49:14'),
(132, '9.png', '91608835755.png', NULL, '7.35 KB', '200 x 200 pixels', '2020-12-24 23:49:15', '2020-12-24 23:49:15'),
(133, '14.png', '141608835755.png', NULL, '5.68 KB', '200 x 200 pixels', '2020-12-24 23:49:15', '2020-12-24 23:49:15'),
(134, '17.png', '171608835757.png', NULL, '15.98 KB', '200 x 200 pixels', '2020-12-24 23:49:17', '2020-12-24 23:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `lang`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu [ENG]', 'en', '[{\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_name\",\"ptype\":\"static\",\"id\":2,\"children\":[{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_name\",\"ptype\":\"static\",\"id\":3},{\"pslug\":\"clients_feedback_page_slug\",\"pname\":\"clients_feedback_page_en_name\",\"ptype\":\"static\",\"id\":4},{\"pslug\":\"image_gallery_page_slug\",\"pname\":\"image_gallery_page_en_name\",\"ptype\":\"static\",\"id\":5},{\"pslug\":\"team_page_slug\",\"pname\":\"team_page_en_name\",\"ptype\":\"static\",\"id\":6},{\"pslug\":\"testimonial_page_slug\",\"pname\":\"testimonial_page_en_name\",\"ptype\":\"static\",\"id\":7}]},{\"icon\":\"2,3,5\",\"items_id\":\"1,2,3,4,5,6,7,8\",\"ptype\":\"service_mega_menu\",\"id\":3},{\"items_id\":\"1,2,3,4,5,6,7,8\",\"ptype\":\"work_mega_menu\",\"id\":4},{\"pname\":\"Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":5,\"children\":[{\"pname\":\"Inner Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":6,\"children\":[{\"pslug\":\"work_page_slug\",\"pname\":\"work_page_en_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"blog_page_slug\",\"pname\":\"blog_page_en_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"product_page_slug\",\"pname\":\"product_page_en_name\",\"ptype\":\"static\",\"id\":9},{\"pslug\":\"service_page_slug\",\"pname\":\"service_page_en_name\",\"ptype\":\"static\",\"id\":10},{\"pslug\":\"price_plan_page_slug\",\"pname\":\"price_plan_page_en_name\",\"ptype\":\"static\",\"id\":11}]},{\"pslug\":\"knowledgebase_page_slug\",\"pname\":\"knowledgebase_page_en_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"events_page_slug\",\"pname\":\"events_page_en_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"donation_page_slug\",\"pname\":\"donation_page_en_name\",\"ptype\":\"static\",\"id\":9},{\"ptype\":\"static\",\"pslug\":\"donor_page_slug\",\"pname\":\"donor_page_en_name\",\"id\":29},{\"pslug\":\"career_with_us_page_slug\",\"pname\":\"career_with_us_page_en_name\",\"ptype\":\"static\",\"id\":10},{\"pname\":\"Others Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":11,\"children\":[{\"pslug\":\"feedback_page_slug\",\"pname\":\"feedback_page_en_name\",\"ptype\":\"static\",\"id\":12},{\"pslug\":\"faq_page_slug\",\"pname\":\"faq_page_en_name\",\"ptype\":\"static\",\"id\":13},{\"pslug\":\"quote_page_slug\",\"pname\":\"quote_page_en_name\",\"ptype\":\"static\",\"id\":14}]},{\"pid\":1,\"ptype\":\"dynamic\",\"id\":12}]},{\"items_id\":\"1,2,6,7,8,9,10,11\",\"ptype\":\"product_mega_menu\",\"id\":6},{\"items_id\":\"1,2,3,4,5,6\",\"ptype\":\"donation_mega_menu\",\"id\":7},{\"pslug\":\"contact_page_slug\",\"pname\":\"contact_page_en_name\",\"ptype\":\"static\",\"id\":8}]', 'default', '2020-05-27 19:53:38', '2020-08-11 22:35:07'),
(2, 'Menu with Icon', 'en', '[{\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"pslug\":\"service_page_slug\",\"pname\":\"service_page_en_name\",\"ptype\":\"static\",\"id\":2},{\"pslug\":\"work_page_slug\",\"pname\":\"work_page_en_name\",\"ptype\":\"static\",\"id\":3,\"children\":[{\"pslug\":\"team_page_slug\",\"pname\":\"team_page_en_name\",\"ptype\":\"static\",\"id\":4,\"children\":[{\"icon\":\"fas fa-question-circle\",\"pslug\":\"faq_page_slug\",\"pname\":\"faq_page_en_name\",\"ptype\":\"static\",\"id\":5}]}]}]', '', '2020-05-31 16:54:39', '2020-06-01 10:15:26'),
(3, 'Useful Links', 'en', '[{\"icon\":\"fas fa-angle-right\",\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_name\",\"ptype\":\"static\",\"id\":2},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"service_page_slug\",\"pname\":\"service_page_en_name\",\"ptype\":\"static\",\"id\":3},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"work_page_slug\",\"pname\":\"work_page_en_name\",\"ptype\":\"static\",\"id\":4}]', NULL, '2020-06-17 15:33:46', '2020-06-17 15:38:45'),
(4, 'Useful Links [turkish]', 'tur', NULL, NULL, '2020-06-17 16:31:34', '2020-06-17 16:31:34'),
(5, 'Useful Links[spanish]', 'sp', '[{\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1}]', NULL, '2020-06-17 16:31:46', '2020-06-17 16:32:02'),
(6, 'Useful Links[arabic]', 'ar', NULL, NULL, '2020-06-17 16:32:19', '2020-06-17 16:32:19'),
(7, 'Primary Menu [Turk]', 'tur', '[{\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_tur_name\",\"ptype\":\"static\",\"id\":2,\"children\":[{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_tur_name\",\"ptype\":\"static\",\"id\":3},{\"pslug\":\"clients_feedback_page_slug\",\"pname\":\"clients_feedback_page_tur_name\",\"ptype\":\"static\",\"id\":4},{\"pslug\":\"image_gallery_page_slug\",\"pname\":\"image_gallery_page_tur_name\",\"ptype\":\"static\",\"id\":5},{\"pslug\":\"team_page_slug\",\"pname\":\"team_page_tur_name\",\"ptype\":\"static\",\"id\":6},{\"pslug\":\"testimonial_page_slug\",\"pname\":\"testimonial_page_tur_name\",\"ptype\":\"static\",\"id\":7}]},{\"icon\":\"2,3,5\",\"items_id\":\"9,10,11,12,13,14,17\",\"ptype\":\"service_mega_menu\",\"id\":3},{\"items_id\":\"9,10,11,12,13,15,16,17\",\"ptype\":\"work_mega_menu\",\"id\":4},{\"pname\":\"Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":5,\"children\":[{\"pname\":\"Inner Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":6,\"children\":[{\"pslug\":\"work_page_slug\",\"pname\":\"work_page_tur_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"blog_page_slug\",\"pname\":\"blog_page_tur_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"product_page_slug\",\"pname\":\"product_page_tur_name\",\"ptype\":\"static\",\"id\":9},{\"pslug\":\"service_page_slug\",\"pname\":\"service_page_tur_name\",\"ptype\":\"static\",\"id\":10},{\"pslug\":\"price_plan_page_slug\",\"pname\":\"price_plan_page_tur_name\",\"ptype\":\"static\",\"id\":11}]},{\"pslug\":\"knowledgebase_page_slug\",\"pname\":\"knowledgebase_page_tur_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"events_page_slug\",\"pname\":\"events_page_tur_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"donation_page_slug\",\"pname\":\"donation_page_tur_name\",\"ptype\":\"static\",\"id\":9},{\"pslug\":\"career_with_us_page_slug\",\"pname\":\"career_with_us_page_tur_name\",\"ptype\":\"static\",\"id\":10},{\"pname\":\"Others Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":11,\"children\":[{\"pslug\":\"feedback_page_slug\",\"pname\":\"feedback_page_tur_name\",\"ptype\":\"static\",\"id\":12},{\"pslug\":\"faq_page_slug\",\"pname\":\"faq_page_tur_name\",\"ptype\":\"static\",\"id\":13},{\"pslug\":\"quote_page_slug\",\"pname\":\"quote_page_tur_name\",\"ptype\":\"static\",\"id\":14}]},{\"pid\":1,\"ptype\":\"dynamic\",\"id\":12}]},{\"items_id\":12,\"ptype\":\"product_mega_menu\",\"id\":6},{\"items_id\":\"7,9,10,11\",\"ptype\":\"donation_mega_menu\",\"id\":7},{\"pslug\":\"contact_page_slug\",\"pname\":\"contact_page_tur_name\",\"ptype\":\"static\",\"id\":8}]', 'default', '2020-07-27 03:31:47', '2020-07-27 04:28:17'),
(8, 'Primary Menu [AR]', 'ar', '[{\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_ar_name\",\"ptype\":\"static\",\"id\":2,\"children\":[{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_ar_name\",\"ptype\":\"static\",\"id\":3},{\"pslug\":\"clients_feedback_page_slug\",\"pname\":\"clients_feedback_page_ar_name\",\"ptype\":\"static\",\"id\":4},{\"pslug\":\"image_gallery_page_slug\",\"pname\":\"image_gallery_page_ar_name\",\"ptype\":\"static\",\"id\":5},{\"pslug\":\"team_page_slug\",\"pname\":\"team_page_ar_name\",\"ptype\":\"static\",\"id\":6},{\"pslug\":\"testimonial_page_slug\",\"pname\":\"testimonial_page_ar_name\",\"ptype\":\"static\",\"id\":7}]},{\"icon\":\"2,3,5\",\"items_id\":\"24,26,27,28,29,30\",\"ptype\":\"service_mega_menu\",\"id\":3},{\"items_id\":\"18,27,28,29,30,31,32\",\"ptype\":\"work_mega_menu\",\"id\":4},{\"pname\":\"Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":5,\"children\":[{\"pname\":\"Inner Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":6,\"children\":[{\"pslug\":\"work_page_slug\",\"pname\":\"work_page_ar_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"blog_page_slug\",\"pname\":\"blog_page_ar_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"product_page_slug\",\"pname\":\"product_page_ar_name\",\"ptype\":\"static\",\"id\":9},{\"pslug\":\"service_page_slug\",\"pname\":\"service_page_ar_name\",\"ptype\":\"static\",\"id\":10},{\"pslug\":\"price_plan_page_slug\",\"pname\":\"price_plan_page_ar_name\",\"ptype\":\"static\",\"id\":11}]},{\"pslug\":\"knowledgebase_page_slug\",\"pname\":\"knowledgebase_page_ar_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"events_page_slug\",\"pname\":\"events_page_ar_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"donation_page_slug\",\"pname\":\"donation_page_ar_name\",\"ptype\":\"static\",\"id\":9},{\"pslug\":\"career_with_us_page_slug\",\"pname\":\"career_with_us_page_ar_name\",\"ptype\":\"static\",\"id\":10},{\"pname\":\"Others Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":11,\"children\":[{\"pslug\":\"feedback_page_slug\",\"pname\":\"feedback_page_ar_name\",\"ptype\":\"static\",\"id\":12},{\"pslug\":\"faq_page_slug\",\"pname\":\"faq_page_ar_name\",\"ptype\":\"static\",\"id\":13},{\"pslug\":\"quote_page_slug\",\"pname\":\"quote_page_ar_name\",\"ptype\":\"static\",\"id\":14}]}]},{\"items_id\":\"17,18,19,20\",\"ptype\":\"product_mega_menu\",\"id\":6},{\"items_id\":\"8,12,13,14\",\"ptype\":\"donation_mega_menu\",\"id\":7},{\"pslug\":\"contact_page_slug\",\"pname\":\"contact_page_ar_name\",\"ptype\":\"static\",\"id\":8}]', 'default', '2020-07-27 08:43:13', '2020-07-27 23:41:26'),
(9, 'Primary Menu [SPA]', 'sp', '[{\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_sp_name\",\"ptype\":\"static\",\"id\":2,\"children\":[{\"pslug\":\"about_page_slug\",\"pname\":\"about_page_sp_name\",\"ptype\":\"static\",\"id\":3},{\"pslug\":\"clients_feedback_page_slug\",\"pname\":\"clients_feedback_page_sp_name\",\"ptype\":\"static\",\"id\":4},{\"pslug\":\"image_gallery_page_slug\",\"pname\":\"image_gallery_page_sp_name\",\"ptype\":\"static\",\"id\":5},{\"pslug\":\"team_page_slug\",\"pname\":\"team_page_sp_name\",\"ptype\":\"static\",\"id\":6},{\"pslug\":\"testimonial_page_slug\",\"pname\":\"testimonial_page_sp_name\",\"ptype\":\"static\",\"id\":7}]},{\"icon\":\"2,3,5\",\"items_id\":\"18,19,20,21,22,23,25\",\"ptype\":\"service_mega_menu\",\"id\":3},{\"items_id\":\"19,20,21,22,23,24,25,26\",\"ptype\":\"work_mega_menu\",\"id\":4},{\"pname\":\"Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":5,\"children\":[{\"pname\":\"Inner Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":6,\"children\":[{\"pslug\":\"work_page_slug\",\"pname\":\"work_page_sp_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"blog_page_slug\",\"pname\":\"blog_page_sp_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"product_page_slug\",\"pname\":\"product_page_sp_name\",\"ptype\":\"static\",\"id\":9},{\"pslug\":\"service_page_slug\",\"pname\":\"service_page_sp_name\",\"ptype\":\"static\",\"id\":10},{\"pslug\":\"price_plan_page_slug\",\"pname\":\"price_plan_page_sp_name\",\"ptype\":\"static\",\"id\":11}]},{\"pslug\":\"knowledgebase_page_slug\",\"pname\":\"knowledgebase_page_sp_name\",\"ptype\":\"static\",\"id\":7},{\"pslug\":\"events_page_slug\",\"pname\":\"events_page_sp_name\",\"ptype\":\"static\",\"id\":8},{\"pslug\":\"donation_page_slug\",\"pname\":\"donation_page_sp_name\",\"ptype\":\"static\",\"id\":9},{\"pslug\":\"career_with_us_page_slug\",\"pname\":\"career_with_us_page_sp_name\",\"ptype\":\"static\",\"id\":10},{\"pname\":\"Others Pages\",\"purl\":\"#\",\"ptype\":\"custom\",\"id\":11,\"children\":[{\"pslug\":\"feedback_page_slug\",\"pname\":\"feedback_page_sp_name\",\"ptype\":\"static\",\"id\":12},{\"pslug\":\"faq_page_slug\",\"pname\":\"faq_page_sp_name\",\"ptype\":\"static\",\"id\":13},{\"pslug\":\"quote_page_slug\",\"pname\":\"quote_page_sp_name\",\"ptype\":\"static\",\"id\":14}]},{\"pid\":1,\"ptype\":\"dynamic\",\"id\":12}]},{\"items_id\":\"21,22,23\",\"ptype\":\"product_mega_menu\",\"id\":6},{\"items_id\":\"15,16,17,18\",\"ptype\":\"donation_mega_menu\",\"id\":7},{\"pslug\":\"contact_page_slug\",\"pname\":\"contact_page_sp_name\",\"ptype\":\"static\",\"id\":8}]', 'default', '2020-07-27 08:44:49', '2020-07-27 08:58:24');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(5, '2019_12_07_082524_create_static_options_table', 1),
(6, '2019_12_13_221931_create_languages_table', 1),
(7, '2020_03_29_075123_create_admin_roles_table', 1),
(8, '2019_12_07_071950_create_contact_info_items_table', 2),
(9, '2019_12_08_171750_create_counterups_table', 2),
(10, '2019_12_09_063224_create_testimonials_table', 2),
(11, '2019_12_10_210247_create_blog_categories_table', 2),
(12, '2019_12_11_074345_create_blogs_table', 2),
(13, '2019_12_28_140343_create_key_features_table', 2),
(14, '2019_12_28_161343_create_services_table', 2),
(15, '2019_12_29_094857_create_price_plans_table', 2),
(16, '2019_12_29_113138_create_team_members_table', 2),
(17, '2020_01_21_132648_create_header_sliders_table', 2),
(18, '2020_01_23_162404_create_service_categories_table', 2),
(20, '2020_01_23_193805_create_works_categories_table', 2),
(21, '2020_01_25_155448_create_pages_table', 2),
(22, '2020_01_25_174849_create_menus_table', 2),
(23, '2020_04_14_082508_create_media_uploads_table', 2),
(24, '2020_04_20_073746_create_quotes_table', 2),
(25, '2020_04_20_170818_create_orders_table', 2),
(26, '2020_04_21_142420_create_payment_logs_table', 2),
(27, '2020_02_04_010636_create_newsletters_table', 3),
(28, '2020_01_23_193759_create_works_table', 4),
(29, '2019_12_29_180216_create_brands_table', 5),
(30, '2020_06_14_081955_create_widgets_table', 6),
(31, '2019_12_10_125607_create_social_icons_table', 7),
(32, '2014_10_12_000000_create_users_table', 8),
(33, '2020_01_28_054211_create_faqs_table', 9),
(34, '2020_04_22_065550_create_jobs_table', 9),
(35, '2020_04_22_065603_create_jobs_categories_table', 9),
(36, '2020_04_23_140942_create_events_table', 9),
(37, '2020_04_23_141011_create_events_categories_table', 9),
(38, '2020_04_24_154518_create_knowledgebase_topics_table', 9),
(39, '2020_04_24_154524_create_knowledgebases_table', 9),
(40, '2020_07_02_125439_create_job_applicants_table', 9),
(41, '2020_07_03_043813_create_price_plan_categories_table', 9),
(42, '2020_07_04_143731_create_event_attendances_table', 9),
(43, '2020_07_04_173333_create_event_payment_logs_table', 9),
(44, '2020_07_06_154309_create_donations_table', 9),
(45, '2020_07_07_150250_create_donation_logs_table', 9),
(46, '2020_07_08_132910_create_product_cupons_table', 9),
(47, '2020_07_08_161737_create_product_shippings_table', 9),
(48, '2020_07_09_084606_create_product_categories_table', 9),
(49, '2020_07_09_133432_create_products_table', 9),
(50, '2020_07_13_124351_create_product_orders_table', 9),
(51, '2020_07_16_111906_create_feedback_table', 9),
(52, '2020_07_17_162008_create_image_galleries_table', 9),
(53, '2020_07_21_053307_create_product_ratings_table', 10),
(54, '2020_07_22_132250_create_popup_builders_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'dvrobin4@gmail.com', '2020-05-30 15:56:27', '2020-05-30 15:56:27'),
(2, 'demo@gmail.com', '2020-08-01 16:10:01', '2020-08-01 16:10:01'),
(3, 'gndndn@gmail.com', '2020-08-07 10:57:26', '2020-08-07 10:57:26'),
(4, 'user@gmail.com', '2020-08-07 17:46:35', '2020-08-07 17:46:35'),
(5, 'admin@admin.com', '2020-08-07 18:35:17', '2020-08-07 18:35:17'),
(6, 'babu.ram21@gmail.com', '2020-08-07 20:54:26', '2020-08-07 20:54:26'),
(7, 'rifatahmed0182099@gmail.com', '2020-08-07 22:51:31', '2020-08-07 22:51:31'),
(8, 'aaa@aaa.com', '2020-08-08 15:59:14', '2020-08-08 15:59:14'),
(9, 'admin@example.com', '2020-08-08 17:39:01', '2020-08-08 17:39:01'),
(10, 'alexfagundes@hotmail.com', '2020-08-08 18:42:42', '2020-08-08 18:42:42'),
(11, 'shiponchandrapaul@gmail.com', '2020-08-08 18:46:43', '2020-08-08 18:46:43'),
(12, 'superadmin@example.com', '2020-08-09 14:34:29', '2020-08-09 14:34:29'),
(13, 'markt@infoeus.com', '2020-08-10 11:08:44', '2020-08-10 11:08:44'),
(14, 'demo@ecommerce.com', '2020-08-11 12:55:45', '2020-08-11 12:55:45'),
(15, 'udhavb32@gmail.com', '2020-08-14 21:46:43', '2020-08-14 21:46:43'),
(16, 'magaza@ah0ageld6lli.com', '2020-08-17 23:48:28', '2020-08-17 23:48:28'),
(17, 'vermajitenderguitar@gmail.com', '2020-08-19 22:46:28', '2020-08-19 22:46:28'),
(18, 'vermajitenderguitar@gmail.com2', '2020-08-19 22:46:35', '2020-08-19 22:46:35'),
(19, 'vvvvvvv@gmail.com', '2020-08-20 00:25:06', '2020-08-20 00:25:06'),
(20, 'baidou@gmail.com', '2020-08-21 00:57:58', '2020-08-21 00:57:58'),
(21, 'nvdarian@gmail.com', '2020-08-24 10:35:37', '2020-08-24 10:35:37'),
(22, 'shipo@gmail.com', '2020-08-24 18:41:47', '2020-08-24 18:41:47'),
(23, 'admin@gmail.com', '2020-09-03 01:02:46', '2020-09-03 01:02:46'),
(24, 'tosonoc527@mail-dj.com', '2020-09-27 00:58:13', '2020-09-27 00:58:13'),
(25, 'rajiniyn@gmail.com', '2020-10-14 21:21:22', '2020-10-14 21:21:22'),
(26, 'no@mail.com', '2020-10-20 16:57:14', '2020-10-20 16:57:14'),
(27, '78aho@gmail.com', '2020-10-21 04:40:48', '2020-10-21 04:40:48'),
(28, 'beatriz.nobile@adagio.adm.br', '2020-10-22 00:01:06', '2020-10-22 00:01:06'),
(29, 'great@gmail.com', '2020-10-25 09:59:30', '2020-10-25 09:59:30'),
(30, 'admin@exampler.com', '2020-10-29 05:10:00', '2020-10-29 05:10:00'),
(31, 'binenive@mailinator.com', '2020-11-07 11:11:27', '2020-11-07 11:11:27'),
(32, 'infive@mail.com', '2020-11-08 14:09:42', '2020-11-08 14:09:42'),
(34, 'banzaaasaba@gmail.com', '2020-11-24 14:41:34', '2020-11-24 14:41:34'),
(35, 'sajinrani@gmail.com', '2020-12-22 18:36:43', '2020-12-22 18:36:43'),
(36, 'twumfrank2012@gmail.com', '2020-12-24 18:48:34', '2020-12-24 18:48:34'),
(37, 'gorerazasandy10@gmail.com', '2020-12-25 01:12:18', '2020-12-25 01:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `checkout_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `checkout_type`, `user_id`, `payment_status`, `package_name`, `package_price`, `package_id`, `custom_fields`, `attachment`, `created_at`, `updated_at`) VALUES
(9, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:8:\"sharifur\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:133:\"Had repulsive dashwoods suspicion sincerity but advantage now him. Remark easily garret nor nay. Civil those mrs enjoy shy fat merry.\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-07-22 01:15:32', '2020-07-22 01:15:32'),
(10, 'pending', '', 1, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:8:\"sharifur\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:133:\"Had repulsive dashwoods suspicion sincerity but advantage now him. Remark easily garret nor nay. Civil those mrs enjoy shy fat merry.\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-07-22 01:16:48', '2020-07-22 01:20:01'),
(11, 'pending', '', 0, 'complete', 'اعمال', '49', '10', 'a:5:{s:7:\"package\";s:2:\"10\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:8:\"sdfadffd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-07-27 22:12:51', '2020-07-27 22:21:32'),
(12, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:12:\"dasjdjkasjkd\";s:10:\"your-email\";s:24:\"hdjasjhkdajksd@dasd.acom\";s:12:\"your-message\";s:11:\"dasjidjiasd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-07-30 22:31:49', '2020-07-30 22:31:49'),
(13, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:5:\"david\";s:10:\"your-email\";s:25:\"private@theangrydog.co.uk\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-07-30 22:56:30', '2020-07-30 22:56:30'),
(14, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:5:\"david\";s:10:\"your-email\";s:25:\"private@theangrydog.co.uk\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-07-30 22:57:22', '2020-07-30 22:57:22'),
(15, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:6:\"timoty\";s:10:\"your-email\";s:21:\"redbeamjunk@gmail.com\";s:12:\"your-message\";s:25:\"Accept File Type: txt,pdf\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-07-30 23:18:29', '2020-07-30 23:18:29'),
(16, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:17:\"Dukens Thelemaque\";s:10:\"your-email\";s:21:\"dukenst2006@gmail.com\";s:12:\"your-message\";s:11:\"jeeeen eeei\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-07-31 01:32:34', '2020-07-31 01:32:34'),
(17, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:7:\"fsdafds\";s:10:\"your-email\";s:17:\"dfasdfd@gmail.com\";s:12:\"your-message\";s:9:\"dfdasfsdf\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-07-31 10:00:55', '2020-07-31 10:00:55'),
(18, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:10:\"っっっf\";s:10:\"your-email\";s:24:\"yuuki.matubara@gmail.com\";s:12:\"your-message\";s:7:\"gthrthr\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-01 09:59:16', '2020-08-01 09:59:16'),
(19, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:2:\"QW\";s:10:\"your-email\";s:3:\"q@w\";s:12:\"your-message\";s:3:\"qwq\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-08-01 14:47:09', '2020-08-01 14:47:09'),
(20, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:5:\"qwqwq\";s:10:\"your-email\";s:8:\"qw@s.com\";s:12:\"your-message\";s:3:\"qwq\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-08-01 14:47:56', '2020-08-01 14:47:56'),
(21, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:6:\"xcvbnm\";s:10:\"your-email\";s:18:\"sdfghj@dfghjkl.com\";s:12:\"your-message\";s:6:\"sdfghj\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-01 20:01:12', '2020-08-01 20:01:12'),
(22, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"test\";s:10:\"your-email\";s:10:\"test@tt.co\";s:12:\"your-message\";s:4:\"fdas\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-08-01 22:07:03', '2020-08-01 22:07:03'),
(23, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"gaas\";s:10:\"your-email\";s:14:\"gaas@gmail.com\";s:12:\"your-message\";s:4:\"gaas\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-02 10:22:43', '2020-08-02 10:22:43'),
(24, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"gaas\";s:10:\"your-email\";s:14:\"gaas@gmail.com\";s:12:\"your-message\";s:4:\"gaas\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-02 11:42:47', '2020-08-02 11:42:47'),
(25, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:2:\"ss\";s:10:\"your-email\";s:13:\"sssss@ssss.ss\";s:12:\"your-message\";s:2:\"ss\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-02 21:40:59', '2020-08-02 21:40:59'),
(26, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"the\";s:10:\"your-email\";s:9:\"test@test\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-03 02:52:52', '2020-08-03 02:52:52'),
(27, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:4:\"TEST\";s:10:\"your-email\";s:12:\"test@test.fr\";s:12:\"your-message\";s:4:\"vsvz\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-04 00:14:26', '2020-08-04 00:14:26'),
(28, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:5:\"xcsdc\";s:10:\"your-email\";s:7:\"a@g.com\";s:12:\"your-message\";s:6:\"dswdce\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-28-your-file.pdf\";}', '2020-08-04 08:27:15', '2020-08-04 08:27:15'),
(29, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:11:\"Julius Gold\";s:10:\"your-email\";s:22:\"giftgolden71@gmail.com\";s:12:\"your-message\";s:14:\"This is a test\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-04 16:33:13', '2020-08-04 16:33:13'),
(30, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:2:\"ab\";s:10:\"your-email\";s:12:\"df@gmail.com\";s:12:\"your-message\";s:1:\"b\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-08-06 08:52:46', '2020-08-06 08:52:46'),
(31, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:9:\"underpool\";s:10:\"your-email\";s:12:\"pae@gmai.com\";s:12:\"your-message\";s:5:\"fgdfg\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-06 19:21:52', '2020-08-06 19:21:52'),
(32, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:1:\"d\";s:10:\"your-email\";s:9:\"dd@dd.com\";s:12:\"your-message\";s:4:\"dddd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-07 02:25:30', '2020-08-07 02:25:30'),
(33, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Elkanah Delalom\";s:10:\"your-email\";s:25:\"elkanahonly4you@gmail.com\";s:12:\"your-message\";s:6:\"jkbkn,\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-07 03:13:00', '2020-08-07 03:13:00'),
(34, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:12:\"Mumtaz Ahmed\";s:10:\"your-email\";s:26:\"umitsolutionasda@gmail.com\";s:12:\"your-message\";s:8:\"asdadasd\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-07 10:45:26', '2020-08-07 10:45:26'),
(35, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:2:\"vv\";s:10:\"your-email\";s:12:\"nn@gmail.com\";s:12:\"your-message\";s:3:\"nnn\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-07 11:02:54', '2020-08-07 11:02:54'),
(36, 'pending', '', 0, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"Brown\";s:10:\"your-email\";s:22:\"bulley110011@gmail.com\";s:12:\"your-message\";s:7:\"jejfjjw\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-08-07 12:08:30', '2020-08-07 12:09:43'),
(37, 'pending', '', 12, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"Brown\";s:10:\"your-email\";s:22:\"bullet110011@gmail.com\";s:12:\"your-message\";s:8:\"jdgjkgwk\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-08-07 12:15:37', '2020-08-07 12:18:11'),
(38, 'pending', '', 0, 'pending', 'iş', '49', '8', 'a:5:{s:7:\"package\";s:1:\"8\";s:9:\"your-name\";s:15:\"Ramazan Erdogan\";s:10:\"your-email\";s:20:\"mtzworld01@gmail.com\";s:12:\"your-message\";s:14:\"Aldım verdım\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-07 13:41:38', '2020-08-07 13:41:38'),
(39, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"test\";s:10:\"your-email\";s:16:\"ac@rodeospot.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-07 16:41:07', '2020-08-07 16:41:07'),
(40, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:12:\"Ayoub Bablil\";s:10:\"your-email\";s:21:\"ayoubbablil@gmail.com\";s:12:\"your-message\";s:12:\"qsdqsdqsdqsd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-07 16:49:51', '2020-08-07 16:49:51'),
(41, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:16:\"Pushpendra Singh\";s:10:\"your-email\";s:27:\"pushpendra@saminfratech.com\";s:12:\"your-message\";s:32:\"Instantify Instantify Instantify\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-07 17:40:02', '2020-08-07 17:40:02'),
(42, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:2:\"df\";s:10:\"your-email\";s:12:\"ad@gmail.com\";s:12:\"your-message\";s:3:\"sdf\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-07 18:03:43', '2020-08-07 18:03:43'),
(43, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:2:\"Rr\";s:10:\"your-email\";s:13:\"rrr@gmail.com\";s:12:\"your-message\";s:2:\"Hj\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-07 18:09:34', '2020-08-07 18:09:34'),
(44, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:12:\"UGONNA UGWAH\";s:10:\"your-email\";s:21:\"ugonnaugwah@gmail.com\";s:12:\"your-message\";s:6:\"arefee\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-08-07 18:10:09', '2020-08-07 18:10:09'),
(45, 'pending', '', 0, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"Test\";s:10:\"your-email\";s:12:\"tes@mail.com\";s:12:\"your-message\";s:6:\"Bsbdbd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-07 19:01:50', '2020-08-07 19:02:55'),
(46, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:13:\"Balmukund jha\";s:10:\"your-email\";s:20:\"mukund2401@gmail.com\";s:12:\"your-message\";s:4:\"Test\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-07 19:21:00', '2020-08-07 19:21:00'),
(47, 'pending', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:5:\"teste\";s:10:\"your-email\";s:14:\"tees@teste.com\";s:12:\"your-message\";s:8:\"fghfhfgh\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-07 20:04:01', '2020-08-07 20:04:01'),
(48, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"cxcvx\";s:10:\"your-email\";s:14:\"xccv@asad.ccom\";s:12:\"your-message\";s:6:\"nbmbmn\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-07 20:07:04', '2020-08-07 20:07:04'),
(49, 'pending', '', 1, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"cxcvx\";s:10:\"your-email\";s:14:\"xccv@asad.ccom\";s:12:\"your-message\";s:6:\"nbmbmn\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-07 20:07:52', '2020-08-07 20:08:16'),
(50, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:11:\"fahad ahmed\";s:10:\"your-email\";s:24:\"fahad.qidwai55@gmail.com\";s:12:\"your-message\";s:5:\"ghhgh\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-07 20:11:04', '2020-08-07 20:11:04'),
(51, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"test\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:12:\"your-message\";s:6:\"Messeg\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-07 20:21:02', '2020-08-07 20:21:02'),
(52, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:10:\"Jean Oscar\";s:10:\"your-email\";s:15:\"oscar@gmail.com\";s:12:\"your-message\";s:7:\"jhgghgh\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";}', 'a:0:{}', '2020-08-07 20:31:11', '2020-08-07 20:31:11'),
(53, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:1:\"0\";s:10:\"your-email\";s:13:\"bilgi@kmk.com\";s:12:\"your-message\";s:4:\"0000\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-07 20:40:57', '2020-08-07 20:40:57'),
(54, 'pending', '', 1, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"yui\";s:10:\"your-email\";s:11:\"rrr@fff.com\";s:12:\"your-message\";s:4:\"huuu\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-07 20:53:33', '2020-08-07 20:54:47'),
(55, 'pending', '', 0, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:8:\"kokomama\";s:10:\"your-email\";s:13:\"koko@mama.com\";s:12:\"your-message\";s:8:\"some msg\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-08 00:47:09', '2020-08-08 00:47:41'),
(56, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"Mayur Wadtkar\";s:10:\"your-email\";s:18:\"mwadtkar@gmail.com\";s:12:\"your-message\";s:8:\"12345678\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-08 09:43:53', '2020-08-08 09:43:53'),
(57, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"Mayur Wadtkar\";s:10:\"your-email\";s:18:\"mwadtkar@gmail.com\";s:12:\"your-message\";s:8:\"12345678\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-08 09:44:20', '2020-08-08 09:44:20'),
(58, 'pending', '', 1, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"Mayur Wadtkar\";s:10:\"your-email\";s:18:\"mwadtkar@gmail.com\";s:12:\"your-message\";s:8:\"12345678\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-08-08 09:44:33', '2020-08-08 09:45:08'),
(59, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:6:\"Morele\";s:10:\"your-email\";s:19:\"skillsjam@gmail.com\";s:12:\"your-message\";s:10:\"Do me well\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-59-your-file.pdf\";}', '2020-08-08 13:50:33', '2020-08-08 13:50:33'),
(60, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"dsdsad\";s:10:\"your-email\";s:27:\"dasdsdsadsa@waadwa.sadsadas\";s:12:\"your-message\";s:12:\"sadadsdasdas\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-60-your-file.txt\";}', '2020-08-08 18:48:05', '2020-08-08 18:48:05'),
(61, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:14:\"Vijay Bahuguna\";s:10:\"your-email\";s:28:\"Vijay.bahuguna1996@gmail.com\";s:12:\"your-message\";s:6:\"scxxcx\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-08 20:21:40', '2020-08-08 20:21:40'),
(62, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:14:\"Vijay Bahuguna\";s:10:\"your-email\";s:28:\"Vijay.bahuguna1996@gmail.com\";s:12:\"your-message\";s:6:\"scxxcx\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-08 20:22:12', '2020-08-08 20:22:12'),
(63, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:8:\"dvrobin4\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:12:\"your-message\";s:15:\"Hello, Test 123\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-08-08 20:53:20', '2020-08-08 20:53:20'),
(64, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:5:\"dogan\";s:10:\"your-email\";s:15:\"satrapa@live.nl\";s:12:\"your-message\";s:8:\"tyjrjrtj\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";}', 'a:0:{}', '2020-08-09 01:13:01', '2020-08-09 01:13:01'),
(65, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:6:\"xanadu\";s:10:\"your-email\";s:16:\"xanadu@gmail.com\";s:12:\"your-message\";s:11:\"It\'s a test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-09 05:53:30', '2020-08-09 05:53:30'),
(66, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:11:\"CHZAPPS INC\";s:10:\"your-email\";s:17:\"chzapps@gmail.com\";s:12:\"your-message\";s:7:\"\\\\\\\\\\\\\\\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-09 17:38:11', '2020-08-09 17:38:11'),
(67, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"manish\";s:10:\"your-email\";s:16:\"msjkdj@gmail.com\";s:12:\"your-message\";s:4:\"fefr\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-09 20:49:13', '2020-08-09 20:49:13'),
(68, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:19:\"Shipon Chandra Paul\";s:10:\"your-email\";s:16:\"shipon@gmail.com\";s:12:\"your-message\";s:5:\"fvgdf\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-09 23:39:22', '2020-08-09 23:39:22'),
(69, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:12:\"ducan migthy\";s:10:\"your-email\";s:13:\"jyfyt@tyj.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-10 00:10:50', '2020-08-10 00:10:50'),
(70, 'pending', '', 0, 'pending', 'Negocio', '19', '13', 'a:5:{s:7:\"package\";s:2:\"13\";s:9:\"your-name\";s:11:\"Arty Rascon\";s:10:\"your-email\";s:27:\"arturo.alarcon31w@gmail.com\";s:12:\"your-message\";s:4:\"eeee\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-70-your-file.pdf\";}', '2020-08-10 10:21:12', '2020-08-10 10:21:12'),
(71, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:3:\"asd\";s:10:\"your-email\";s:21:\"ice_g_war@hotmail.com\";s:12:\"your-message\";s:3:\"asd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-10 12:46:42', '2020-08-10 12:46:42'),
(72, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:7:\"austine\";s:10:\"your-email\";s:22:\"erzblinkstar@gmail.com\";s:12:\"your-message\";s:2:\"Hi\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-08-10 16:53:03', '2020-08-10 16:53:03'),
(73, 'pending', '', 22, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:10:\"Amom Souza\";s:10:\"your-email\";s:22:\"amom-souza@hotmail.com\";s:12:\"your-message\";s:3:\"sdx\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-10 18:04:55', '2020-08-10 18:04:55'),
(74, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:9:\"Adnan Ali\";s:10:\"your-email\";s:23:\"a03484511296b@gmail.com\";s:12:\"your-message\";s:5:\"avdaf\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-10 21:33:51', '2020-08-10 21:33:51'),
(75, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:8:\"Raj Test\";s:10:\"your-email\";s:13:\"raj@gmail.com\";s:12:\"your-message\";s:11:\"Testing 123\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-11 21:50:08', '2020-08-11 21:50:08'),
(76, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:14:\"Amir El-Gohary\";s:10:\"your-email\";s:23:\"amir_gohary@hotmail.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-11 21:51:37', '2020-08-11 21:51:38'),
(77, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"dddd\";s:10:\"your-email\";s:7:\"d@r.com\";s:12:\"your-message\";s:4:\"ssss\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-11 22:37:26', '2020-08-11 22:37:26'),
(78, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:17:\"charles umeanakor\";s:10:\"your-email\";s:26:\"Charlesumeanakor@gmail.com\";s:12:\"your-message\";s:42:\"plpdldplpd[ldpldpldpldpdlpdldpldpldpldpdpd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-78-your-file.txt\";}', '2020-08-12 04:44:28', '2020-08-12 04:44:28'),
(79, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Elkanah Delalom\";s:10:\"your-email\";s:25:\"oomphmultimedia@gmail.com\";s:12:\"your-message\";s:4:\"uuuh\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";}', 'a:0:{}', '2020-08-12 12:01:30', '2020-08-12 12:01:30'),
(80, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:3:\"dee\";s:10:\"your-email\";s:15:\"hkjgh@gmail.com\";s:12:\"your-message\";s:3:\"555\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-12 13:15:45', '2020-08-12 13:15:45'),
(81, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:8:\"eraserer\";s:10:\"your-email\";s:16:\"seseef@sdfff.com\";s:12:\"your-message\";s:27:\"dwhhbt =? sdfkdf sdf sdfsdf\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-12 16:58:08', '2020-08-12 16:58:08'),
(82, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"wfqe\";s:10:\"your-email\";s:24:\"bufiutomoneuro@gmail.com\";s:12:\"your-message\";s:4:\"adsf\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-13 11:52:36', '2020-08-13 11:52:37'),
(83, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"wfqe\";s:10:\"your-email\";s:24:\"bufiutomoneuro@gmail.com\";s:12:\"your-message\";s:4:\"adsf\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";}', 'a:0:{}', '2020-08-13 11:52:51', '2020-08-13 11:52:51'),
(84, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:12:\"soumya swain\";s:10:\"your-email\";s:23:\"smtservices18@gmail.com\";s:12:\"your-message\";s:2:\"jb\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-13 22:30:33', '2020-08-13 22:30:33'),
(85, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Rashid PASHAYEV\";s:10:\"your-email\";s:26:\"rashidpashayev77@gmail.com\";s:12:\"your-message\";s:3:\"m m\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-13 23:07:35', '2020-08-13 23:07:35'),
(86, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"asdf\";s:10:\"your-email\";s:13:\"asdf@adsf.com\";s:12:\"your-message\";s:4:\"adsf\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-14 03:09:29', '2020-08-14 03:09:29'),
(87, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:11:\"fahad ahmed\";s:10:\"your-email\";s:24:\"fahad.qidwai55@gmail.com\";s:12:\"your-message\";s:1:\"j\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-14 18:34:59', '2020-08-14 18:34:59'),
(88, 'pending', '', 0, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:9:\"testerman\";s:10:\"your-email\";s:19:\"vincomsvg@gmail.com\";s:12:\"your-message\";s:11:\"buying test\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-14 21:15:36', '2020-08-14 21:16:17'),
(89, 'pending', '', 33, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:10:\"tester man\";s:10:\"your-email\";s:19:\"vincomsvg@gmail.com\";s:12:\"your-message\";s:6:\"sadsad\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-14 21:19:47', '2020-08-14 21:19:47'),
(90, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:9:\"alok kale\";s:10:\"your-email\";s:20:\"alokkale08@gmail.com\";s:12:\"your-message\";s:2:\"hi\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-15 17:43:42', '2020-08-15 17:43:42'),
(91, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:11:\"hhhhhhhhhhh\";s:10:\"your-email\";s:30:\"alex.sandroradical@hotmail.com\";s:12:\"your-message\";s:10:\"hhhhhhhhhh\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-16 20:26:58', '2020-08-16 20:26:58'),
(92, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"fffffffffffff\";s:10:\"your-email\";s:24:\"lucasradical87@gmail.com\";s:12:\"your-message\";s:9:\"fffffffff\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-16 20:27:54', '2020-08-16 20:27:54'),
(93, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:12:\"Wakil Ahamed\";s:10:\"your-email\";s:26:\"wakilahamedhhgx8@gmail.com\";s:12:\"your-message\";s:7:\"Welcome\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-16 23:29:52', '2020-08-16 23:29:52'),
(94, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:4:\"asda\";s:10:\"your-email\";s:20:\"sdasdqasd@asdasd.com\";s:12:\"your-message\";s:9:\"asdasdsad\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-16 23:48:01', '2020-08-16 23:48:01'),
(95, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"Yves\";s:10:\"your-email\";s:22:\"yvesbatokwa6@gmail.com\";s:12:\"your-message\";s:5:\"hello\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-17 13:22:37', '2020-08-17 13:22:37'),
(96, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:18:\"Kolawole Akinsumbo\";s:10:\"your-email\";s:23:\"kolawole@lucrative.tech\";s:12:\"your-message\";s:12:\"teathjgiyfty\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-08-17 15:03:21', '2020-08-17 15:03:21'),
(97, 'pending', '', 1, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"Kuda\";s:10:\"your-email\";s:14:\"kuda@yahoo.com\";s:12:\"your-message\";s:25:\"yes, i want to order this\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-17 15:22:08', '2020-08-17 15:23:27'),
(98, 'pending', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:4:\"Kuda\";s:10:\"your-email\";s:14:\"kuda@yahoo.com\";s:12:\"your-message\";s:13:\"dasdasd sadsa\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-17 15:26:21', '2020-08-17 15:26:21'),
(99, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:17:\"Martin Ndanganeni\";s:10:\"your-email\";s:21:\"Enq@brandlovers.co.za\";s:12:\"your-message\";s:7:\"mmmmmmm\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";}', 'a:0:{}', '2020-08-17 17:11:36', '2020-08-17 17:11:36'),
(100, 'pending', '', 0, 'pending', 'iş', '49', '8', 'a:5:{s:7:\"package\";s:1:\"8\";s:9:\"your-name\";s:4:\"wdwd\";s:10:\"your-email\";s:12:\"qwswd@wd.com\";s:12:\"your-message\";s:7:\"wdwdwdw\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-17 17:16:45', '2020-08-17 17:16:45'),
(101, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"test\";s:10:\"your-email\";s:13:\"test@test.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-17 19:06:07', '2020-08-17 19:06:07'),
(102, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Muhammad Nawaz\";s:10:\"your-email\";s:18:\"gul70009@gmail.com\";s:12:\"your-message\";s:1:\"j\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-17 20:51:50', '2020-08-17 20:51:50'),
(103, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"Adam\";s:10:\"your-email\";s:10:\"you@me.com\";s:12:\"your-message\";s:1:\"T\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-103-your-file.pdf\";}', '2020-08-18 22:00:09', '2020-08-18 22:00:09'),
(104, 'pending', '', 1, 'complete', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:9:\"Alex Musa\";s:10:\"your-email\";s:10:\"me@mail.ng\";s:12:\"your-message\";s:19:\"dvrobin4 Goes there\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-104-your-file.txt\";}', '2020-08-19 11:14:27', '2020-08-19 11:16:02'),
(105, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:4:\"Andy\";s:10:\"your-email\";s:18:\"atmerlas@gmail.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-19 16:06:00', '2020-08-19 16:06:00'),
(106, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:7:\"mohamed\";s:10:\"your-email\";s:23:\"m.lazrak.pro@outlook.fr\";s:12:\"your-message\";s:4:\"tttt\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-19 21:09:47', '2020-08-19 21:09:47'),
(107, 'pending', '', 41, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"Ser\";s:10:\"your-email\";s:22:\"sergey.linko@gmail.com\";s:12:\"your-message\";s:2:\"Hi\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-19 23:42:55', '2020-08-19 23:42:55'),
(108, 'pending', '', 41, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"Ser\";s:10:\"your-email\";s:22:\"sergey.linko@gmail.com\";s:12:\"your-message\";s:2:\"Hi\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-19 23:43:50', '2020-08-19 23:43:50'),
(109, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:12:\"Deepak Kumar\";s:10:\"your-email\";s:19:\"dipkfilms@gmail.com\";s:12:\"your-message\";s:2:\"hi\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-20 12:26:28', '2020-08-20 12:26:28'),
(110, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:12:\"Deepak Kumar\";s:10:\"your-email\";s:19:\"dipkfilms@gmail.com\";s:12:\"your-message\";s:2:\"hi\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-20 12:27:19', '2020-08-20 12:27:19'),
(111, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:12:\"Deepak Kumar\";s:10:\"your-email\";s:19:\"dipkfilms@gmail.com\";s:12:\"your-message\";s:2:\"hi\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-20 12:27:49', '2020-08-20 12:27:49'),
(112, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:8:\"dvrobin4\";s:10:\"your-email\";s:17:\"admin@example.com\";s:12:\"your-message\";s:2:\"po\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-20 15:27:38', '2020-08-20 15:27:38'),
(113, 'pending', '', 0, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:7:\"Vakkkuk\";s:10:\"your-email\";s:16:\"9vadis@gmail.com\";s:12:\"your-message\";s:6:\"dfghjk\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-20 17:17:23', '2020-08-20 17:17:57'),
(114, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:15:\"kimarne delecia\";s:10:\"your-email\";s:24:\"blaclight11111@gmail.com\";s:12:\"your-message\";s:9:\"eerwerwer\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-20 23:30:08', '2020-08-20 23:30:08'),
(115, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:8:\"dvrobin4\";s:10:\"your-email\";s:13:\"jjk@gmail.com\";s:12:\"your-message\";s:4:\"tste\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-21 00:54:06', '2020-08-21 00:54:06'),
(116, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:11:\"troy dorsey\";s:10:\"your-email\";s:23:\"troydosrey111@gmail.com\";s:12:\"your-message\";s:2:\"bn\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-21 12:14:22', '2020-08-21 12:14:22'),
(117, 'pending', '', 45, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Muhammad Ameen\";s:10:\"your-email\";s:22:\"itsameen1988@gmail.com\";s:12:\"your-message\";s:9:\"ddsdsdsds\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-21 13:53:00', '2020-08-21 13:53:00'),
(118, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"Psfsd\";s:10:\"your-email\";s:15:\"dfgfg@gmail.com\";s:12:\"your-message\";s:5:\"dfghj\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-22 13:01:42', '2020-08-22 13:01:42'),
(119, 'pending', '', 0, 'complete', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:4:\"test\";s:10:\"your-email\";s:14:\"tset@gmail.com\";s:12:\"your-message\";s:7:\"gjhjkgk\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-23 19:33:20', '2020-08-23 19:34:19'),
(120, 'pending', '', 49, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"Paco\";s:10:\"your-email\";s:18:\"petechus@gmail.com\";s:12:\"your-message\";s:4:\"Utgj\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-23 22:05:25', '2020-08-23 22:05:25'),
(121, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"kevein\";s:10:\"your-email\";s:17:\"testing@gmail.com\";s:12:\"your-message\";s:5:\"lkmlk\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-23 22:44:46', '2020-08-23 22:44:46'),
(122, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:10:\"jdkkfjkjfd\";s:10:\"your-email\";s:29:\"KNDKJSDJKSDJ2kjkdj@kjkjkj.com\";s:12:\"your-message\";s:14:\"kmxsmksmkmkmsx\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-24 05:50:13', '2020-08-24 05:50:13'),
(123, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:8:\"asdasdas\";s:10:\"your-email\";s:14:\"asdsad@asd.com\";s:12:\"your-message\";s:6:\"asdasd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-24 15:57:27', '2020-08-24 15:57:27'),
(124, 'pending', '', 0, 'complete', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"SAFSAF\";s:10:\"your-email\";s:9:\"ASD@SF.SF\";s:12:\"your-message\";s:6:\"ASDASD\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-08-24 16:55:25', '2020-08-24 16:56:09'),
(125, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:11:\"Teste Teste\";s:10:\"your-email\";s:15:\"teste@gmail.com\";s:12:\"your-message\";s:3:\"tst\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-24 21:53:32', '2020-08-24 21:53:32'),
(126, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"Ari\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-25 08:10:47', '2020-08-25 08:10:47'),
(127, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:15:\"Mohammad Khalaf\";s:10:\"your-email\";s:20:\"mak@ultimateserv.com\";s:12:\"your-message\";s:7:\"ccxvsdf\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-25 19:32:11', '2020-08-25 19:32:11'),
(128, 'pending', '', 0, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:15:\"Sowrove Hossain\";s:10:\"your-email\";s:19:\"mhsowrove@gmail.com\";s:12:\"your-message\";s:6:\"768768\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-25 22:20:01', '2020-08-25 22:21:32'),
(129, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:4:\"erst\";s:10:\"your-email\";s:14:\"ewaa@gmail.com\";s:12:\"your-message\";s:2:\"ff\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-26 16:52:09', '2020-08-26 16:52:09'),
(130, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:13:\"jesse brookes\";s:10:\"your-email\";s:18:\"angab704@gmail.com\";s:12:\"your-message\";s:144:\"jdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkkjdjkkk\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-130-your-file.txt\";}', '2020-08-26 20:48:00', '2020-08-26 20:48:00'),
(131, 'pending', '', 36, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:8:\"kkkkkkkk\";s:10:\"your-email\";s:24:\"lucasradical87@gmail.com\";s:12:\"your-message\";s:11:\"kkkkkkkkkkk\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-27 19:15:49', '2020-08-27 19:15:49'),
(132, 'pending', '', 0, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Cecilia Chapman\";s:10:\"your-email\";s:15:\"admin@gmail.com\";s:12:\"your-message\";s:10:\"arsdxfgchv\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-27 22:46:54', '2020-08-27 22:47:27'),
(133, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"ser\";s:10:\"your-email\";s:14:\"dasdasdsa@vcom\";s:12:\"your-message\";s:2:\"sa\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-08-28 15:21:13', '2020-08-28 15:21:13'),
(134, 'pending', '', 0, 'complete', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:3:\"sdf\";s:10:\"your-email\";s:17:\"dsffasdd@dafs.com\";s:12:\"your-message\";s:16:\"2313254654sadasd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-08-28 22:39:23', '2020-08-28 22:40:11'),
(135, 'pending', '', 0, 'pending', 'Profesional', '199', '7', 'a:5:{s:7:\"package\";s:1:\"7\";s:9:\"your-name\";s:3:\"sdf\";s:10:\"your-email\";s:17:\"dsffasdd@dafs.com\";s:12:\"your-message\";s:8:\"13254654\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-08-28 22:57:28', '2020-08-28 22:57:28'),
(136, 'pending', '', 57, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:5:\"Ijjjj\";s:10:\"your-email\";s:8:\"bb@h.com\";s:12:\"your-message\";s:2:\"Bb\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-08-29 21:15:40', '2020-08-29 21:15:40'),
(137, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"Akash\";s:10:\"your-email\";s:22:\"akashcse7812@gmail.com\";s:12:\"your-message\";s:8:\"lkkkkkkl\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-09-02 02:09:57', '2020-09-02 02:09:57'),
(138, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"dvgd\";s:10:\"your-email\";s:26:\"erkan.beyazpinar@gmail.com\";s:12:\"your-message\";s:11:\"bdbzdbzdbdb\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-02 14:58:39', '2020-09-02 14:58:39'),
(139, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:11:\"Suman Kundu\";s:10:\"your-email\";s:23:\"sumankundu513@gmail.com\";s:12:\"your-message\";s:2:\"dd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-03 00:32:48', '2020-09-03 00:32:48'),
(140, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:11:\"Suman Kundu\";s:10:\"your-email\";s:23:\"sumankundu513@gmail.com\";s:12:\"your-message\";s:2:\"dd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-03 00:32:48', '2020-09-03 00:32:48'),
(141, 'pending', '', 0, 'pending', 'Negocio', '19', '13', 'a:5:{s:7:\"package\";s:2:\"13\";s:9:\"your-name\";s:3:\"asd\";s:10:\"your-email\";s:12:\"asd@mail.com\";s:12:\"your-message\";s:2:\"as\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-09-03 20:15:45', '2020-09-03 20:15:45'),
(142, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:18:\"Gyarsilal Ramavtar\";s:10:\"your-email\";s:22:\"mr.proofer45@gmail.com\";s:12:\"your-message\";s:4:\"sfdh\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-05 11:21:09', '2020-09-05 11:21:09'),
(143, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:10:\"Amar Tyagi\";s:10:\"your-email\";s:23:\"amartyagi4all@gmail.com\";s:12:\"your-message\";s:4:\"Good\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-06 16:42:52', '2020-09-06 16:42:52'),
(144, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"Faizan Mumtaz\";s:10:\"your-email\";s:18:\"faizanym@gmail.com\";s:12:\"your-message\";s:5:\"ijjlk\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-09-07 21:56:31', '2020-09-07 21:56:31'),
(145, 'pending', '', 0, 'complete', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:4:\"test\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-09-08 17:57:06', '2020-09-08 17:58:14'),
(146, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:18:\"Muhammad Mohiuddin\";s:10:\"your-email\";s:22:\"mohiuddin_67@yahoo.com\";s:12:\"your-message\";s:11:\"lorem ipsum\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-08 19:45:50', '2020-09-08 19:45:50'),
(147, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:2:\"fd\";s:10:\"your-email\";s:9:\"fd@fd.com\";s:12:\"your-message\";s:2:\"fc\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-09 12:27:58', '2020-09-09 12:27:58'),
(148, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:4:\"khjk\";s:10:\"your-email\";s:8:\"mm@kk.li\";s:12:\"your-message\";s:6:\", ,,,,\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-10 04:24:28', '2020-09-10 04:24:28'),
(149, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:6:\"ghsdfg\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-11 09:39:48', '2020-09-11 09:39:48'),
(150, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:6:\"ghsdfg\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-11 09:39:59', '2020-09-11 09:39:59'),
(151, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:15:\"Baptiste Badani\";s:10:\"your-email\";s:25:\"BADANIBAPTISTE@ICLOUD.COM\";s:12:\"your-message\";s:1:\"$\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-12 02:34:14', '2020-09-12 02:34:14'),
(152, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:6:\"adssad\";s:10:\"your-email\";s:12:\"asdsa@sdf.af\";s:12:\"your-message\";s:7:\"asffsad\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-09-12 13:49:11', '2020-09-12 13:49:11'),
(153, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"Anoop\";s:10:\"your-email\";s:13:\"ak@anoopk.com\";s:12:\"your-message\";s:10:\"xznzkxlzXl\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-09-12 15:04:26', '2020-09-12 15:04:26'),
(154, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"malay\";s:10:\"your-email\";s:15:\"malay@gmail.com\";s:12:\"your-message\";s:14:\"gdashdjskjd;as\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-14 07:13:59', '2020-09-14 07:13:59'),
(155, 'pending', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:4:\"user\";s:10:\"your-email\";s:14:\"user@gmail.com\";s:12:\"your-message\";s:4:\"oder\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-14 20:28:28', '2020-09-14 20:28:28'),
(156, 'pending', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:4:\"user\";s:10:\"your-email\";s:14:\"user@gmail.com\";s:12:\"your-message\";s:4:\"oder\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-09-14 20:29:42', '2020-09-14 20:29:42'),
(157, 'pending', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:4:\"user\";s:10:\"your-email\";s:14:\"user@gmail.com\";s:12:\"your-message\";s:4:\"oder\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-09-14 20:30:47', '2020-09-14 20:30:47'),
(158, 'pending', '', 0, 'complete', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"juan hernandez\";s:10:\"your-email\";s:20:\"dsmagic.mx@gmial.com\";s:12:\"your-message\";s:2:\"sd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-14 23:44:06', '2020-09-14 23:44:35'),
(159, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:3:\"kjh\";s:10:\"your-email\";s:9:\"oh@kh.com\";s:12:\"your-message\";s:5:\";lkjk\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-15 22:39:41', '2020-09-15 22:39:41');
INSERT INTO `orders` (`id`, `status`, `checkout_type`, `user_id`, `payment_status`, `package_name`, `package_price`, `package_id`, `custom_fields`, `attachment`, `created_at`, `updated_at`) VALUES
(160, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:13:\"Fannie Benson\";s:10:\"your-email\";s:14:\"metmol@aol.com\";s:12:\"your-message\";s:4:\"agko\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-16 01:33:45', '2020-09-16 01:33:45'),
(161, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:7:\"zakaria\";s:10:\"your-email\";s:23:\"zak.albarouni@gmail.com\";s:12:\"your-message\";s:4:\"dddd\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-161-your-file.pdf\";}', '2020-09-16 20:33:37', '2020-09-16 20:33:37'),
(162, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:14:\"Rahul Deshmukh\";s:10:\"your-email\";s:24:\"rahul0deshmukh@gmail.com\";s:12:\"your-message\";s:14:\"mjn kknn  llml\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-17 12:57:23', '2020-09-17 12:57:23'),
(163, 'pending', '', 0, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:20:\"vamlalegne@enayu.com\";s:10:\"your-email\";s:20:\"vamlalegne@enayu.com\";s:12:\"your-message\";s:20:\"vamlalegne@enayu.com\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-18 18:14:59', '2020-09-18 18:15:29'),
(164, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:13:\"Aditya Mishra\";s:10:\"your-email\";s:21:\"mishra07adi@gmail.com\";s:12:\"your-message\";s:8:\"jdnjdcnd\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-19 01:26:11', '2020-09-19 01:26:11'),
(165, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:17:\"amit kumar mishra\";s:10:\"your-email\";s:23:\"mishra.amitkr@gmail.com\";s:12:\"your-message\";s:2:\"ko\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-19 22:22:53', '2020-09-19 22:22:53'),
(166, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"Ass\";s:10:\"your-email\";s:14:\"uhdj@gmail.com\";s:12:\"your-message\";s:5:\"hgchg\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-19 22:23:06', '2020-09-19 22:23:06'),
(167, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:12:\"Suraj Singha\";s:10:\"your-email\";s:14:\"test@mvkdj.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-09-20 23:27:35', '2020-09-20 23:27:35'),
(168, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"ezfs\";s:10:\"your-email\";s:14:\"ferg@gyfht.drg\";s:12:\"your-message\";s:8:\"dcscsefv\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-21 05:22:12', '2020-09-21 05:22:12'),
(169, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:5:\"asdas\";s:10:\"your-email\";s:18:\"dasdasda@gmail.com\";s:12:\"your-message\";s:8:\"asdasdsa\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-23 17:54:29', '2020-09-23 17:54:29'),
(170, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"gfhfhd\";s:10:\"your-email\";s:16:\"gfhfdz@gamil.com\";s:12:\"your-message\";s:5:\"fdhhg\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-24 13:30:19', '2020-09-24 13:30:19'),
(171, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:16:\"DHARMENDRA VERMA\";s:10:\"your-email\";s:21:\"dkverma0132@gmail.com\";s:12:\"your-message\";s:8:\"12345678\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-27 20:21:06', '2020-09-27 20:21:06'),
(172, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:19:\"abdulkadir yildirim\";s:10:\"your-email\";s:27:\"abdokadiryildirim@gmail.com\";s:12:\"your-message\";s:2:\"th\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-27 21:04:18', '2020-09-27 21:04:18'),
(173, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"Tester\";s:10:\"your-email\";s:22:\"testing@testers123.com\";s:12:\"your-message\";s:7:\"Testing\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";}', 'a:0:{}', '2020-09-28 00:19:20', '2020-09-28 00:19:20'),
(174, 'pending', '', 0, 'pending', 'Negocio', '19', '13', 'a:5:{s:7:\"package\";s:2:\"13\";s:9:\"your-name\";s:22:\"Gonzalo Carvajal Vidal\";s:10:\"your-email\";s:21:\"carvajalg63@gmail.com\";s:12:\"your-message\";s:6:\"wertgh\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-28 08:38:13', '2020-09-28 08:38:13'),
(175, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"momo\";s:10:\"your-email\";s:17:\"ssssdds@gmail.com\";s:12:\"your-message\";s:3:\"new\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-28 08:56:14', '2020-09-28 08:56:14'),
(176, 'pending', '', 1, 'pending', 'Popüler', '19', '9', 'a:5:{s:7:\"package\";s:1:\"9\";s:9:\"your-name\";s:6:\"Hfhnnn\";s:10:\"your-email\";s:16:\"dddddd@ddddd.com\";s:12:\"your-message\";s:13:\"Kjhghnmmkjjjj\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-28 12:01:28', '2020-09-28 12:01:28'),
(177, 'pending', '', 0, 'pending', 'اعمال', '49', '10', 'a:5:{s:7:\"package\";s:2:\"10\";s:9:\"your-name\";s:14:\"darhost hamody\";s:10:\"your-email\";s:15:\"admin@aljup.com\";s:12:\"your-message\";s:2:\",,\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-09-28 17:19:50', '2020-09-28 17:19:50'),
(178, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:5:\"peter\";s:10:\"your-email\";s:15:\"kalei@gmail.com\";s:12:\"your-message\";s:11:\"i need this\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-09-29 01:10:23', '2020-09-29 01:10:23'),
(179, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:14:\"Ari Widiansyah\";s:10:\"your-email\";s:16:\"ssapta@gmail.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-09-29 09:45:16', '2020-09-29 09:45:16'),
(180, 'pending', '', 1, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:7:\"jjjjjoo\";s:10:\"your-email\";s:10:\"aaa@aa.com\";s:12:\"your-message\";s:5:\"iiiii\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-09-29 20:23:12', '2020-09-29 20:23:59'),
(181, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"tester\";s:10:\"your-email\";s:18:\"tester@testers.com\";s:12:\"your-message\";s:7:\"testing\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-09-29 21:26:20', '2020-09-29 21:26:20'),
(182, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:11:\"mywa sender\";s:10:\"your-email\";s:20:\"mywasender@gmail.com\";s:12:\"your-message\";s:5:\"ssasa\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-09-30 19:06:06', '2020-09-30 19:06:06'),
(183, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:14:\"Rita C. Hatton\";s:10:\"your-email\";s:22:\"rsharifur824@gmail.com\";s:12:\"your-message\";s:9:\"dvsdfasdf\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-10-01 10:52:32', '2020-10-01 10:52:32'),
(184, 'pending', '', 0, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:14:\"Rita C. Hatton\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:9:\"xcvzxfsdf\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-10-01 10:58:27', '2020-10-01 11:00:04'),
(185, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:7:\"Anirudh\";s:10:\"your-email\";s:18:\"makapa12@gmail.com\";s:12:\"your-message\";s:32:\"Sasi The Don - your vayle paache\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-01 16:47:06', '2020-10-01 16:47:06'),
(186, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"Paul\";s:10:\"your-email\";s:24:\"paul.musimbago@gmail.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-10-01 23:49:50', '2020-10-01 23:49:50'),
(187, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"orel\";s:10:\"your-email\";s:20:\"twitoorel1@gmail.com\";s:12:\"your-message\";s:9:\"asvvaavds\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-10-02 01:45:07', '2020-10-02 01:45:07'),
(188, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:7:\"asdfdsf\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";}', 'a:0:{}', '2020-10-05 16:17:47', '2020-10-05 16:17:47'),
(189, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:16:\"MD HUMAYAN KABIR\";s:10:\"your-email\";s:18:\"bdrocky4@gmail.com\";s:12:\"your-message\";s:14:\"vvjvh,chmmhcmc\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-10-05 18:15:24', '2020-10-05 18:15:24'),
(190, 'pending', '', 1, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:8:\"assdfsdf\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";}', 'a:0:{}', '2020-10-07 11:11:10', '2020-10-07 11:11:31'),
(191, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:10:\"Trung Tran\";s:10:\"your-email\";s:20:\"codertrung@gmail.com\";s:12:\"your-message\";s:4:\"ấc\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-10-07 19:21:28', '2020-10-07 19:21:28'),
(192, 'pending', '', 0, 'pending', 'المحترفين', '199', '6', 'a:5:{s:7:\"package\";s:1:\"6\";s:9:\"your-name\";s:15:\"Zakaria Ibrahim\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:12:\"your-message\";s:11:\"test script\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-10-07 20:00:12', '2020-10-07 20:00:12'),
(193, 'pending', '', 0, 'complete', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:7:\"sfasdfs\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-10-08 11:28:46', '2020-10-08 11:29:47'),
(194, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:9:\"testtestt\";s:10:\"your-email\";s:23:\"testtestere@testere.com\";s:12:\"your-message\";s:7:\"message\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-09 15:43:23', '2020-10-09 15:43:23'),
(195, 'pending', '', 0, 'pending', 'Básica', '49', '12', 'a:5:{s:7:\"package\";s:2:\"12\";s:9:\"your-name\";s:15:\"Gustavo Sanchez\";s:10:\"your-email\";s:22:\"cableplaynet@gmail.com\";s:12:\"your-message\";s:9:\"565465465\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-10-11 07:59:17', '2020-10-11 07:59:17'),
(196, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"qdqwd\";s:10:\"your-email\";s:8:\"sad@dwqd\";s:12:\"your-message\";s:5:\"qwdqd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-11 08:36:26', '2020-10-11 08:36:26'),
(197, 'pending', '', 0, 'pending', 'Popüler', '19', '9', 'a:5:{s:7:\"package\";s:1:\"9\";s:9:\"your-name\";s:6:\"deneme\";s:10:\"your-email\";s:16:\"hoho@hotmail.com\";s:12:\"your-message\";s:7:\"fgfdgfd\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-10-16 01:18:03', '2020-10-16 01:18:03'),
(198, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"Femi\";s:10:\"your-email\";s:21:\"Femiakinde1@gmail.com\";s:12:\"your-message\";s:5:\"Hello\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-10-18 12:32:23', '2020-10-18 12:32:23'),
(199, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:2:\"tt\";s:10:\"your-email\";s:13:\"teste@bol.com\";s:12:\"your-message\";s:2:\"tt\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-10-18 18:27:30', '2020-10-18 18:27:30'),
(200, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:14:\"Brianne Barton\";s:10:\"your-email\";s:21:\"BrianneBarton@aol.com\";s:12:\"your-message\";s:6:\"EEZR4R\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-20 05:58:21', '2020-10-20 05:58:21'),
(201, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"wet\";s:10:\"your-email\";s:15:\"tetst@gmail.com\";s:12:\"your-message\";s:7:\"twetwtw\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-201-your-file.txt\";}', '2020-10-22 23:26:55', '2020-10-22 23:26:55'),
(202, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:7:\"Ranjeet\";s:10:\"your-email\";s:17:\"ranjeet@gmail.com\";s:12:\"your-message\";s:6:\"hsjsjs\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-25 00:22:14', '2020-10-25 00:22:14'),
(203, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:12:\"Rajesh Singh\";s:10:\"your-email\";s:12:\"rr@gmail.com\";s:12:\"your-message\";s:6:\"hshsjd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-25 02:24:37', '2020-10-25 02:24:37'),
(204, 'pending', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:10:\"Amit singh\";s:10:\"your-email\";s:14:\"amit@gmail.com\";s:12:\"your-message\";s:5:\"hhhhh\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-25 02:31:25', '2020-10-25 02:31:25'),
(205, 'pending', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:3:\"aaa\";s:10:\"your-email\";s:12:\"aa@gmail.com\";s:12:\"your-message\";s:2:\"ee\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-25 02:46:54', '2020-10-25 02:46:54'),
(206, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:11:\"asdafaefqaf\";s:10:\"your-email\";s:16:\"adadaw@gmail.com\";s:12:\"your-message\";s:8:\"zczczczc\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-10-26 10:18:43', '2020-10-26 10:18:43'),
(207, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:10:\"g4io 4gnez\";s:10:\"your-email\";s:13:\"5y3@gmail.com\";s:12:\"your-message\";s:4:\"test\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-10-26 16:55:20', '2020-10-26 16:55:20'),
(208, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:3:\"rrr\";s:10:\"your-email\";s:19:\"rocletts1@gmail.com\";s:12:\"your-message\";s:4:\"effd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-208-your-file.txt\";}', '2020-10-27 10:04:58', '2020-10-27 10:04:58'),
(209, 'pending', '', 0, 'complete', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:11:\"Tamer Essam\";s:10:\"your-email\";s:16:\"tasadasd@sad.com\";s:12:\"your-message\";s:9:\"sadasdasd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-209-your-file.txt\";}', '2020-10-29 07:07:47', '2020-10-29 07:08:10'),
(210, 'pending', '', 0, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:21:\"Tekasys Internacional\";s:10:\"your-email\";s:21:\"ice_g_war@hotmail.com\";s:12:\"your-message\";s:12:\"dsfsdfsdfsdf\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-10-29 13:37:26', '2020-10-29 13:37:49'),
(211, 'pending', '', 0, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:21:\"Tekasys Internacional\";s:10:\"your-email\";s:21:\"ice_g_war@hotmail.com\";s:12:\"your-message\";s:12:\"sdfsdfsdfsdf\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-10-29 13:43:09', '2020-10-29 13:43:21'),
(212, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"Dani\";s:10:\"your-email\";s:16:\"imdani@gmail.con\";s:12:\"your-message\";s:4:\"None\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-10-31 17:25:22', '2020-10-31 17:25:22'),
(213, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:7:\"M CYMAN\";s:10:\"your-email\";s:23:\"mariusz.cyman@gmail.com\";s:12:\"your-message\";s:8:\"ewfrefew\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-11-02 12:47:33', '2020-11-02 12:47:33'),
(214, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:6:\"asdasd\";s:10:\"your-email\";s:10:\"asd@asd.ru\";s:12:\"your-message\";s:3:\"asd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-11-02 20:33:30', '2020-11-02 20:33:30'),
(215, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:9:\"blaser654\";s:10:\"your-email\";s:10:\"aaa@aaa.es\";s:12:\"your-message\";s:6:\"sdsdsd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-04 11:20:08', '2020-11-04 11:20:08'),
(216, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:5:\"framk\";s:10:\"your-email\";s:17:\"tffffgg@gmail.com\";s:12:\"your-message\";s:5:\"11111\";s:24:\"selected_payment_gateway\";s:8:\"paystack\";}', 'a:0:{}', '2020-11-04 17:26:09', '2020-11-04 17:26:09'),
(217, 'pending', '', 0, 'complete', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:3:\"Raj\";s:10:\"your-email\";s:21:\"wpcodeninja@gmail.com\";s:12:\"your-message\";s:8:\"testings\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-05 10:18:35', '2020-11-05 10:19:50'),
(218, 'pending', '', 0, 'pending', 'اعمال', '49', '10', 'a:5:{s:7:\"package\";s:2:\"10\";s:9:\"your-name\";s:6:\"ewrwer\";s:10:\"your-email\";s:20:\"abdizoro89@gmail.com\";s:12:\"your-message\";s:9:\"ewrwerwer\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-218-your-file.pdf\";}', '2020-11-05 15:04:27', '2020-11-05 15:04:27'),
(219, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:3:\"Ass\";s:10:\"your-email\";s:16:\"anmuom@gmail.com\";s:12:\"your-message\";s:1:\"H\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-11-06 01:08:42', '2020-11-06 01:08:42'),
(220, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:9:\"blaser654\";s:10:\"your-email\";s:10:\"aaa@aaa.es\";s:12:\"your-message\";s:9:\"asdsadasd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-06 14:20:16', '2020-11-06 14:20:16'),
(221, 'pending', '', 1, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:4:\"asdd\";s:10:\"your-email\";s:13:\"asdas@asad.es\";s:12:\"your-message\";s:7:\"adsadsd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-06 14:42:42', '2020-11-06 14:42:42'),
(222, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:12:\"Hadi Bakkari\";s:10:\"your-email\";s:21:\"playlive.sa@gmail.com\";s:12:\"your-message\";s:10:\"dfgadeaerg\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-11-07 05:28:57', '2020-11-07 05:28:57'),
(223, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:7:\"sdsdsad\";s:10:\"your-email\";s:16:\"sdsadasd@aas.com\";s:12:\"your-message\";s:10:\"dfsfdsfsdf\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-11-08 02:32:10', '2020-11-08 02:32:10'),
(224, 'pending', '', 1, 'pending', 'iş', '49', '8', 'a:5:{s:7:\"package\";s:1:\"8\";s:9:\"your-name\";s:23:\"İbrahim Halil ACIOĞLU\";s:10:\"your-email\";s:21:\"aslanhack63@gmail.com\";s:12:\"your-message\";s:15:\"qweqweqwewqeqwe\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-11-08 17:22:04', '2020-11-08 17:22:04'),
(225, 'pending', '', 91, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:10:\"Zubair Rao\";s:10:\"your-email\";s:23:\"raozubair1441@gmail.com\";s:12:\"your-message\";s:5:\"hmmmm\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-11-09 14:43:06', '2020-11-09 14:43:06'),
(226, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:9:\"blaser654\";s:10:\"your-email\";s:10:\"aaa@aaa.es\";s:12:\"your-message\";s:9:\"fghfghfhg\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-10 23:26:45', '2020-11-10 23:26:45'),
(227, 'pending', '', 0, 'complete', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:9:\"blaser654\";s:10:\"your-email\";s:10:\"aaa@aaa.es\";s:12:\"your-message\";s:7:\"aasasas\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-11 02:08:17', '2020-11-11 02:10:44'),
(228, 'pending', '', 0, 'complete', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:9:\"blaser654\";s:10:\"your-email\";s:10:\"aaa@aaa.es\";s:12:\"your-message\";s:6:\"asasas\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-11 02:13:16', '2020-11-11 02:14:43'),
(229, 'pending', '', 0, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:9:\"blaser654\";s:10:\"your-email\";s:10:\"aaa@aaa.es\";s:12:\"your-message\";s:6:\"sadasd\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-11 18:19:31', '2020-11-11 18:19:31'),
(230, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:8:\"asdfadsf\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2020-11-11 18:35:41', '2020-11-11 18:35:41'),
(231, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:10:\"aertwerter\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";}', 'a:0:{}', '2020-11-14 19:34:53', '2020-11-14 19:34:53'),
(232, 'pending', '', 1, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:12:\"jkhkhk kjhkj\";s:10:\"your-email\";s:17:\"kjhjkjk@gmail.com\";s:12:\"your-message\";s:10:\"ukukkjkhjk\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-11-15 15:52:06', '2020-11-15 15:52:06'),
(233, 'pending', '', 0, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:3:\"Php\";s:10:\"your-email\";s:12:\"oi@gmail.com\";s:12:\"your-message\";s:3:\"666\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-11-16 02:50:29', '2020-11-16 02:50:29'),
(234, 'cancel', '', 1, 'pending', 'Basic', '19', '1', 'a:5:{s:7:\"package\";s:1:\"1\";s:9:\"your-name\";s:3:\"666\";s:10:\"your-email\";s:11:\"66662@GR.YT\";s:12:\"your-message\";s:4:\"6565\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-11-16 15:22:03', '2020-12-21 23:35:43'),
(235, 'pending', '', 0, 'pending', 'Popular', '49', '2', 'a:5:{s:7:\"package\";s:1:\"2\";s:9:\"your-name\";s:11:\"Magic Bytes\";s:10:\"your-email\";s:24:\"magicbytes2012@gmail.com\";s:12:\"your-message\";s:4:\"sdsa\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";}', 'a:0:{}', '2020-11-16 15:56:38', '2020-11-16 15:56:38'),
(236, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";N;s:10:\"your-email\";s:15:\"ffggg@gmail.com\";s:12:\"your-message\";s:9:\"Ehehnenen\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-11-17 08:35:36', '2020-11-17 08:35:36'),
(237, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:4:\"Iptv\";s:10:\"your-email\";s:15:\"besiptv@mail.ru\";s:12:\"your-message\";s:4:\"iptv\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-11-19 22:46:07', '2020-11-19 22:46:07'),
(238, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"teguh narwadi\";s:10:\"your-email\";s:22:\"teguhnarwadi@gmail.com\";s:12:\"your-message\";s:4:\"sdsd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-11-24 19:00:56', '2020-11-24 19:00:56'),
(239, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"teguh narwadi\";s:10:\"your-email\";s:22:\"teguhnarwadi@gmail.com\";s:12:\"your-message\";s:4:\"sdsd\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-11-24 19:03:28', '2020-11-24 19:03:28'),
(240, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:13:\"teguh narwadi\";s:10:\"your-email\";s:22:\"teguhnarwadi@gmail.com\";s:12:\"your-message\";s:4:\"sdsd\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-11-24 19:08:02', '2020-11-24 19:08:02'),
(241, 'pending', '', 0, 'complete', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:6:\"Bugger\";s:10:\"your-email\";s:14:\"test@gmail.com\";s:12:\"your-message\";s:18:\"this is si sosisis\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";}', 'a:0:{}', '2020-11-25 12:04:04', '2020-11-25 12:04:33'),
(242, 'pending', '', 96, 'pending', 'Business', '99', '3', 'a:5:{s:7:\"package\";s:1:\"3\";s:9:\"your-name\";s:3:\"art\";s:10:\"your-email\";s:14:\"arun@gmail.com\";s:12:\"your-message\";s:10:\"web design\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:1:{s:9:\"your-file\";s:54:\"assets/uploads/attachment/attachment-242-your-file.pdf\";}', '2020-11-26 12:56:52', '2020-11-26 12:56:52'),
(243, 'pending', '', 0, 'pending', 'iş', '49', '8', 'a:5:{s:7:\"package\";s:1:\"8\";s:9:\"your-name\";s:7:\"sdfasdf\";s:10:\"your-email\";s:21:\"asdfasdfasdf@asds.com\";s:12:\"your-message\";s:15:\"sdfasdfasdfasdf\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2020-12-22 15:34:05', '2020-12-22 15:34:05'),
(244, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"fff\";s:10:\"your-email\";s:12:\"bb@gmail.com\";s:12:\"your-message\";s:2:\"ff\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2020-12-22 16:52:08', '2020-12-22 16:52:08'),
(245, 'pending', '', 1, 'pending', 'Negocio', '19', '13', 'a:5:{s:7:\"package\";s:2:\"13\";s:9:\"your-name\";s:3:\"rud\";s:10:\"your-email\";s:9:\"ru@gg.com\";s:12:\"your-message\";s:11:\"shdkjsdhfkj\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:1:{s:9:\"your-file\";s:93:\"assets/uploads/attachment/applicant/attachment-kwzmgVSns6OJGu6qXgL3qQoYkV8nP9Pp-your-file.txt\";}', '2020-12-22 18:44:13', '2020-12-22 18:44:13'),
(246, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:2:\"df\";s:10:\"your-email\";s:15:\"sdffsd@dssf.com\";s:12:\"your-message\";s:2:\"gg\";s:24:\"selected_payment_gateway\";N;}', 'a:0:{}', '2020-12-22 20:49:26', '2020-12-22 20:49:26'),
(247, 'pending', '', 0, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:3:\"asd\";s:10:\"your-email\";s:14:\"asasd@dsas.com\";s:12:\"your-message\";s:5:\"asdas\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2020-12-23 00:13:28', '2020-12-23 00:13:28'),
(248, 'pending', '', 0, 'pending', 'iş', '49', '8', 'a:5:{s:7:\"package\";s:1:\"8\";s:9:\"your-name\";N;s:10:\"your-email\";s:9:\"eee@e.com\";s:12:\"your-message\";s:5:\"waeae\";s:24:\"selected_payment_gateway\";N;}', 'a:0:{}', '2020-12-23 01:20:58', '2020-12-23 01:20:58'),
(249, 'pending', '', 1, 'pending', 'Proffesional', '199', '4', 'a:5:{s:7:\"package\";s:1:\"4\";s:9:\"your-name\";s:6:\"tewtwe\";s:10:\"your-email\";s:14:\"test1@test.com\";s:12:\"your-message\";s:6:\"retret\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2020-12-23 03:01:46', '2020-12-23 03:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `meta_tags`, `meta_description`, `content`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Dynamic Page [ENG]', 'dynamic-page', 'dynamic page', 'this is dynamic page meta description', '<p>Warmly little before cousin sussex entire men set. Blessing it ladyship on sensible judgment settling outweigh. Worse linen an of civil jokes leave offer. Parties all clothes removal cheered calling prudent her. And residence for met the estimable disposing. Mean if he they been no hold mr. Is at much do made took held help. Latter person am secure of estate genius at.&nbsp;<img src=\"http://192.168.64.2/nexelit/assets/uploads/media-uploader/34111091589555564.jpg\" style=\"width: 997px;\"></p><p><br></p><p>Comfort reached gay perhaps chamber his six detract besides add. Moonlight newspaper up he it enjoyment agreeable depending. Timed voice share led his widen noisy young. On weddings believed laughing although material do exercise of. Up attempt offered ye civilly so sitting to. She new course get living within elinor joy. She her rapturous suffering concealed.&nbsp;</p><p><br></p><p>Fulfilled direction use continual set him propriety continued. Saw met applauded favourite deficient engrossed concealed and her. Concluded boy perpetual old supposing. Farther related bed and passage comfort civilly. Dashwoods see frankness objection abilities the. As hastened oh produced prospect formerly up am. Placing forming nay looking old married few has. Margaret disposed add screened rendered six say his striking confined.&nbsp;</p>', 'en', 'publish', '2020-05-27 19:57:59', '2020-05-27 19:57:59'),
(2, 'Privacy Policy', 'privacy-policy', NULL, NULL, '<p>Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages. Unpleasing has ask acceptance partiality alteration understood two. Worth no tiled my at house added. Married he hearing am it totally removal. Remove but suffer wanted his lively length. Moonlight two applauded conveying end direction old principle but. Are expenses distance weddings perceive strongly who age domestic.&nbsp;</p><p><br></p><p>Greatly hearted has who believe. Drift allow green son walls years for blush. Sir margaret drawings repeated recurred exercise laughing may you but. Do repeated whatever to welcomed absolute no. Fat surprise although outlived and informed shy dissuade property. Musical by me through he drawing savings an. No we stand avoid decay heard mr. Common so wicket appear to sudden worthy on. Shade of offer ye whole stood hoped.&nbsp;</p><div><br></div>', 'en', 'publish', '2020-07-24 11:01:55', '2020-07-24 11:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('dvrobin4@gmail.com', 'tBrVsCSxrJA0eJsOSkpFyNgeXleI1p', NULL),
('rajivkissy@gmail.com', 'lgcF2ZVWyOOZTG6BiP3c7gUmchTKDA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_logs`
--

CREATE TABLE `payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8mb4_unicode_ci,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_logs`
--

INSERT INTO `payment_logs` (`id`, `email`, `name`, `package_name`, `package_price`, `package_gateway`, `order_id`, `status`, `transaction_id`, `track`, `created_at`, `updated_at`) VALUES
(1, 'dvrobin4@gmail.com', 'Siful Islam', 'Business', '$99', 'paytm', '6', 'pending', NULL, 'ozsk2tHtnsNEv3XbSK3D', '2020-06-22 09:32:54', '2020-06-22 09:32:54'),
(2, 'saifulislamwfu@gmail.com', 'Siful Islam', 'Business', '$99', 'stripe', '7', 'pending', NULL, 'Xpz3GpDuYqgHmLN7Z39B', '2020-06-22 09:41:16', '2020-06-22 09:41:16'),
(3, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '$49', 'razorpay', '8', 'pending', NULL, 'DnUcPFmEuGAoSgnquuU1', '2020-07-22 01:13:44', '2020-07-22 01:13:44'),
(4, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'razorpay', '9', 'pending', NULL, 'bWieC62tozlmSLlMMWp8', '2020-07-22 01:16:21', '2020-07-22 01:16:21'),
(5, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'stripe', '10', 'complete', 'txn_1H7cFAEmGOuJLTMs9lkj0KhU', 'Xq4EHjSYKib8hZu6D3gO', '2020-07-22 01:17:22', '2020-07-22 01:20:01'),
(6, 'dvrobin4@gmail.com', 'Siful Islam', 'اعمال', '49', 'stripe', '11', 'complete', 'txn_1H9kJjEmGOuJLTMsQ1YAoRfG', 'q4RTkCxQr7hemvIWSnKO', '2020-07-27 22:15:52', '2020-07-27 22:21:32'),
(7, 'est@tesgrt.fr', 'Franck Herval', 'Business', '99', 'stripe', '27', 'pending', NULL, 'cljuB6WlxP5xPLQAeKfw', '2020-08-04 00:15:02', '2020-08-04 00:15:02'),
(8, 'test123@happ.com', 'Julius Gold', 'Business', '99', 'paytm', '29', 'pending', NULL, 'jFydVfUjJeloJ8bWrCo5', '2020-08-04 16:53:31', '2020-08-04 16:53:31'),
(9, 'pras@gmail.com', 'prs', 'Business', '99', 'razorpay', '30', 'pending', NULL, 'bcSBV4ch4I9IQwkbsZng', '2020-08-06 08:53:16', '2020-08-06 08:53:16'),
(10, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paytm', '31', 'pending', NULL, 'ebMGwTWWKHq4jMQokllI', '2020-08-06 19:22:11', '2020-08-06 19:22:11'),
(11, 'umitsolutiosdfdsfsn@gmail.com', 'Mumtaz Ahmed', 'Popular', '49', 'paytm', '34', 'pending', NULL, 'RZdfnraG8qQJmMCPqfEb', '2020-08-07 10:45:43', '2020-08-07 10:45:43'),
(12, 'admin@markflair.com', 'institution', 'Business', '99', 'paypal', '35', 'pending', NULL, 'IvOeHiAD5cDnHpjSzFZi', '2020-08-07 11:03:12', '2020-08-07 11:03:12'),
(13, 'bulley110011@gmail.com', 'brown', 'Proffesional', '199', 'paystack', '36', 'complete', 'ObYAEDDqkRECYXHcJxLH0j2e4', 'rmyPWJ5fqm8MYf1g8iBm', '2020-08-07 12:08:49', '2020-08-07 12:09:44'),
(14, 'bullet110011@gmail.com', 'brown', 'Proffesional', '199', 'paystack', '37', 'complete', '26RtcEo6coPpJ5gIUPZBjPPFi', 'T7ZSI2x1faYmUluy5Er6', '2020-08-07 12:15:53', '2020-08-07 12:18:11'),
(15, 'pushpendra@saminfratech.com', 'Pushpendra Singh', 'Proffesional', '199', 'paytm', '41', 'pending', NULL, '56BR1w9ZnhXz0nl049v9', '2020-08-07 17:40:27', '2020-08-07 17:40:27'),
(16, 'admin@admin.com', 'Project', 'Business', '99', 'paytm', '42', 'pending', NULL, 'NoS2SW2dUMBXensUKBdF', '2020-08-07 18:04:03', '2020-08-07 18:04:03'),
(17, 'vg@gmail.xom', 'Cf', 'Proffesional', '199', 'paytm', '43', 'pending', NULL, 'Rk51bJ4ixWqa5EFKDMoh', '2020-08-07 18:10:01', '2020-08-07 18:10:01'),
(18, 'ter@mail.com', 'Ttes', 'Popular', '49', 'stripe', '45', 'complete', 'txn_1HDX5vEmGOuJLTMsA5V1YFpg', 'p421frkTnoAMs6IvIUF7', '2020-08-07 19:02:14', '2020-08-07 19:02:55'),
(19, 'admin@gmail.com', 'Balmukund jha', 'Popular', '49', 'paytm', '46', 'pending', NULL, 'v1mJD1IJqQ88FYFNPCh3', '2020-08-07 19:21:14', '2020-08-07 19:21:14'),
(20, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '47', 'pending', NULL, 'iZwrghB8N1YaH5QInWsq', '2020-08-07 20:04:23', '2020-08-07 20:04:23'),
(21, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paypal', '48', 'pending', NULL, '3Bq4LDTP4U9b7r4HTX3c', '2020-08-07 20:07:14', '2020-08-07 20:07:14'),
(22, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'stripe', '49', 'complete', 'txn_1HDY7AEmGOuJLTMsERtKHEk1', '8Vjz8PfDXIheKeLmD0YC', '2020-08-07 20:08:02', '2020-08-07 20:08:16'),
(23, 'admin@cannyoutlet.com', 'Heart Medicine', 'Proffesional', '199', 'stripe', '50', 'pending', NULL, 'I8sy8RHKOMSXLepKb1b1', '2020-08-07 20:11:36', '2020-08-07 20:11:36'),
(24, 'test@gmail.com', 'Test', 'Popular', '49', 'manual_payment', '51', 'pending', '12345678', 'BL4rzHtwXMQUfjdIbPi1', '2020-08-07 20:21:40', '2020-08-07 20:21:40'),
(25, 'oscar@gmail.com', 'Jean Oscar', 'Proffesional', '199', 'mollie', '52', 'pending', NULL, 'wAi0UEYdsce7W0aZ5Wmo', '2020-08-07 20:31:36', '2020-08-07 20:31:36'),
(26, 'nhtsf996@yopmail.com', 'Vadds sancurse', 'Proffesional', '199', 'paytm', '53', 'pending', NULL, 'nzTiMgg7DBX6HyC963i7', '2020-08-07 20:41:39', '2020-08-07 20:41:39'),
(27, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'stripe', '54', 'complete', 'txn_1HDYqAEmGOuJLTMsaL50tRiG', 'A8LRc86icuSxNgGiVV5a', '2020-08-07 20:53:45', '2020-08-07 20:54:47'),
(28, 'koko@mama.com', 'koko mama', 'Popular', '49', 'stripe', '55', 'complete', 'txn_1HDcTYEmGOuJLTMsk8YhpedM', 'xpiw6rbZM9szhJpqkqE6', '2020-08-08 00:47:30', '2020-08-08 00:47:41'),
(29, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'stripe', '56', 'pending', NULL, 'fXk7geTbrvqxwBzIeIfi', '2020-08-08 09:44:02', '2020-08-08 09:44:02'),
(30, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'razorpay', '58', 'complete', 'pay_FO9prpAPczHNqx', 'We3kcMwGJbTUJQifaBMI', '2020-08-08 09:44:41', '2020-08-08 09:45:08'),
(31, 'skillsjam@gmail.com', 'Zamani Uwah', 'Popular', '49', 'manual_payment', '59', 'pending', '100129010', 'KuYqgs8cNhxdR4ioTbGr', '2020-08-08 13:51:03', '2020-08-08 13:51:03'),
(32, 'dwe@fada.dsadas', 'hello', 'Business', '99', 'stripe', '60', 'pending', NULL, 'IzL5DIp7mgJBAbP8Lk0T', '2020-08-08 18:48:43', '2020-08-08 18:48:43'),
(33, 'vijay.bahuguna1996@gmail.com', 'Vijay Bahuguna', 'Proffesional', '199', 'stripe', '61', 'pending', NULL, 'nBzbwchb7dA3kCGwBMlM', '2020-08-08 20:21:56', '2020-08-08 20:21:56'),
(34, 'vijay.bahuguna1996@gmail.com', 'Tea', 'Proffesional', '199', 'paytm', '62', 'pending', NULL, 'oU9buihNRf8zF5WkExzp', '2020-08-08 20:23:16', '2020-08-08 20:23:16'),
(35, 'satrapa@live.nl', 'dogan', 'Basic', '19', 'mollie', '64', 'pending', NULL, 'jKHfxu31y1cvDVI6xHfW', '2020-08-09 01:13:18', '2020-08-09 01:13:18'),
(36, 'mail.dengu@gmail.com', 'Xanadu Futbola', 'Proffesional', '199', 'paypal', '65', 'pending', NULL, 'AIuypwbDu6j8ipRFAy6x', '2020-08-09 05:53:51', '2020-08-09 05:53:51'),
(37, 'admin@theucstore.co', 'CHZAPPS INC', 'Business', '99', 'paytm', '66', 'pending', NULL, 'vehOARZokJoDOjX3BnI0', '2020-08-09 17:38:25', '2020-08-09 17:38:25'),
(38, 'admin@example.com', 'etwey', 'Business', '99', 'paytm', '67', 'pending', NULL, 'DBNSDZi3sONn5eqzrgsR', '2020-08-09 20:49:33', '2020-08-09 20:49:33'),
(39, 'yjcu@th.ca', 'ducan mayaty', 'Basic', '19', 'paypal', '69', 'pending', NULL, 'XrSyS8Vx3ZRGR2oLFADc', '2020-08-10 00:11:20', '2020-08-10 00:11:20'),
(40, 'admin@gmail.com', 'qqq', 'Negocio', '19', 'paypal', '70', 'pending', NULL, 'KO6px9jMEi99kcYsykzH', '2020-08-10 10:21:26', '2020-08-10 10:21:26'),
(41, 'erzblinkstar@gmail.com', 'Aus TI NE', 'Proffesional', '199', 'paystack', '72', 'pending', NULL, 'zLi5XVQiJpaMDapYdX1m', '2020-08-10 16:53:25', '2020-08-10 16:53:25'),
(42, 'amom-souza@hotmail.com', 'Amom Souza', 'Proffesional', '199', 'paypal', '73', 'pending', NULL, 'S7gkMCobDaiRddZaIiVN', '2020-08-10 18:05:04', '2020-08-10 18:05:04'),
(43, 'a03484511296b@gmail.com', 'Adnan Ali', 'Proffesional', '199', 'stripe', '74', 'pending', NULL, '11mUF5rJU5OJxOMH99Od', '2020-08-10 21:34:14', '2020-08-10 21:34:14'),
(44, 'rasj@gmail.com', 'Raaj', 'Proffesional', '199', 'paytm', '75', 'pending', NULL, 'aKJzY8owgXCUcpj8N8Ll', '2020-08-11 21:50:29', '2020-08-11 21:50:29'),
(45, 'user@test.com', 'dd', 'Popular', '49', 'paytm', '77', 'pending', NULL, 'XCQH6MCk4LGubhEafuH0', '2020-08-11 22:37:34', '2020-08-11 22:37:34'),
(46, 'client_10@gmail.com', 'Portokal', 'Business', '99', 'stripe', '80', 'pending', NULL, 'Cii9D4qFguAolpSKl8LC', '2020-08-12 13:16:00', '2020-08-12 13:16:00'),
(47, 'client@test.com', 'yyy', 'Business', '99', 'stripe', '81', 'pending', NULL, 'ffdYvnmPDNvKUy0zBdgb', '2020-08-12 16:58:15', '2020-08-12 16:58:15'),
(48, 'admin@example.com', 'cinta', 'Proffesional', '199', 'flutterwave', '83', 'pending', NULL, 'db9sEF9hDCQYkCCFwQqr', '2020-08-13 11:53:18', '2020-08-13 11:53:18'),
(49, 'sacsac@gmail.com', 'dcc', 'Basic', '19', 'paytm', '84', 'pending', NULL, 'GBn6RHhBh08AT2PNbpNx', '2020-08-13 22:30:56', '2020-08-13 22:30:56'),
(50, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'stripe', '87', 'pending', NULL, 'DTEio3yya7E9DwTwiu0q', '2020-08-14 18:35:09', '2020-08-14 18:35:09'),
(51, 'vincomsvg@gmail.com', 'testerman', 'Proffesional', '199', 'stripe', '88', 'complete', 'txn_1HG6VpEmGOuJLTMsdie9OKRo', 'or3e17aV3woeS0QR3J8p', '2020-08-14 21:15:51', '2020-08-14 21:16:17'),
(52, 'vincomsvg@gmail.com', 'Tester Man', 'Proffesional', '199', 'paytm', '89', 'pending', NULL, 'P54b5PnvZsneGMuXbXUc', '2020-08-14 21:19:56', '2020-08-14 21:19:56'),
(53, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paytm', '90', 'pending', NULL, 'RRCy3JXUYCTChzFFkgJV', '2020-08-15 17:43:54', '2020-08-15 17:43:54'),
(54, 'flucasradical87@gmail.com', 'ffffffffffffffff', 'Proffesional', '199', 'manual_payment', '92', 'pending', '2', 'JBmyBBetEDPJvvA0cTbV', '2020-08-16 20:28:24', '2020-08-16 20:28:24'),
(55, 'wakilahamedx42254@gmail.com', 'Wakil Ahamed', 'Business', '99', 'paytm', '93', 'pending', NULL, 'ElHkXYKCmQRNUZQFueHq', '2020-08-16 23:30:06', '2020-08-16 23:30:06'),
(56, 'asd@asdasd.com', 'asd', 'Business', '99', 'stripe', '94', 'pending', NULL, 'yzKsYR6zczEY0jIT7fx0', '2020-08-16 23:48:10', '2020-08-16 23:48:10'),
(57, 'yvesbatokwa6@gmail.com', 'Yves', 'Proffesional', '199', 'paypal', '95', 'pending', NULL, 'uxQuDgKsvtEmPtZEFq69', '2020-08-17 13:23:14', '2020-08-17 13:23:14'),
(58, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paystack', '96', 'pending', NULL, 'acUUygLcM33hEuE9g4Vj', '2020-08-17 15:03:30', '2020-08-17 15:03:30'),
(59, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'stripe', '97', 'complete', 'txn_1HH6R1EmGOuJLTMskoeC8gz4', 't2l1hJK6enVTnWplHQXk', '2020-08-17 15:22:30', '2020-08-17 15:23:27'),
(60, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'paypal', '98', 'pending', NULL, 'hlv7NtzATXRVdiK9UJel', '2020-08-17 15:26:37', '2020-08-17 15:26:37'),
(61, 'dwdwdw@wd.com', 'wdwdw', 'iş', '49', 'stripe', '100', 'pending', NULL, '9nAFoiH7EixoPisa60MH', '2020-08-17 17:16:58', '2020-08-17 17:16:58'),
(62, 'test@test.com', 'test', 'Popular', '49', 'paypal', '101', 'pending', NULL, '5KIFx7HKPlWgHhUmKA3l', '2020-08-17 19:06:19', '2020-08-17 19:06:19'),
(63, 'esolutionspk9@gmail.com', 'Muhammad Nawaz', 'Business', '99', 'manual_payment', '102', 'pending', '545454554', 'GHhr612VgZnV5Zur85PP', '2020-08-17 20:52:03', '2020-08-17 20:52:03'),
(64, 'demo@demo.com', 'MD REFAUN ISLAM', 'Proffesional', '199', 'paypal', '103', 'pending', NULL, 'i95iyBUn7571tXSRzqZ8', '2020-08-18 22:00:29', '2020-08-18 22:00:29'),
(65, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Business', '99', 'paystack', '104', 'complete', '4Arq7oSxYdXwSJk9OLobVnLTh', '48XQq9p0yQ7zO2meegYU', '2020-08-19 11:14:39', '2020-08-19 11:16:02'),
(66, 'm.lazrak.pro@outlook.fr', 'mohamed', 'Business', '99', 'paypal', '106', 'pending', NULL, 'iIo8tjeSgE4NUnGMFI4Y', '2020-08-19 21:10:02', '2020-08-19 21:10:02'),
(67, 'sergey.linko@gmail.com', 'Ser', 'Proffesional', '199', 'stripe', '107', 'pending', NULL, 'FyC88jm7hdLwECa2WWwT', '2020-08-19 23:43:04', '2020-08-19 23:43:04'),
(68, 'sergey.linko@gmail.com', 'Ser', 'Proffesional', '199', 'paypal', '108', 'pending', NULL, 'hH4JPGIgZ2cgfwor01by', '2020-08-19 23:43:54', '2020-08-19 23:43:54'),
(69, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Business', '99', 'stripe', '109', 'pending', NULL, 'EPswLdNOqWTtTMDtRKMs', '2020-08-20 12:26:35', '2020-08-20 12:26:35'),
(70, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Business', '99', 'paypal', '110', 'pending', NULL, 'HBBq3ldhnTJPj6TKPVkr', '2020-08-20 12:27:26', '2020-08-20 12:27:26'),
(71, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Business', '99', 'paytm', '111', 'pending', NULL, 'bLBE6lodJlHAxwSG17vB', '2020-08-20 12:27:55', '2020-08-20 12:27:55'),
(72, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Business', '99', 'paypal', '112', 'pending', NULL, 'CiBRrXZy57z1tvt8bjzg', '2020-08-20 15:27:56', '2020-08-20 15:27:56'),
(73, 'asd@asd.asd', 'Paul', 'Popular', '49', 'stripe', '113', 'complete', 'txn_1HIDeSEmGOuJLTMseHf3VdpI', 'WS34wH5NEmyDrl69dsrZ', '2020-08-20 17:17:38', '2020-08-20 17:17:57'),
(74, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paypal', '114', 'pending', NULL, 'bkJdsn6mtM9jWOunvZLQ', '2020-08-20 23:30:22', '2020-08-20 23:30:22'),
(75, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'manual_payment', '115', 'pending', 'bamco', 'RHAv3YvUDRuG9sm03khj', '2020-08-21 00:55:30', '2020-08-21 00:55:30'),
(76, 'alihasanmogal117@gmail.com', 'GOOGLE PAY', 'Business', '99', 'paytm', '116', 'pending', NULL, 'fucymNHyvohnCuENuHrx', '2020-08-21 12:14:40', '2020-08-21 12:14:40'),
(77, 'itsameen1988@gmail.com', 'Muhammad Ameen', 'Business', '99', 'manual_payment', '117', 'pending', '1133121212', 't62uWjN61uRlefPP7pJo', '2020-08-21 13:53:15', '2020-08-21 13:53:15'),
(78, 'test@gmail.com', 'test', 'Business', '99', 'stripe', '119', 'complete', 'txn_1HJLD5EmGOuJLTMsfp1Kb6iR', 'N2wsy3ASfMz1cfEVYyZQ', '2020-08-23 19:33:44', '2020-08-23 19:34:19'),
(79, 'petechus@gmail.com', 'Paco', 'Proffesional', '199', 'stripe', '120', 'pending', NULL, 'jALtzIYWx1OJl3yJlwkk', '2020-08-23 22:05:32', '2020-08-23 22:05:32'),
(80, 'test@gmail.com', 'kevin', 'Business', '99', 'paytm', '121', 'pending', NULL, 'zu5RBvTAaDdxN0B7sjnc', '2020-08-23 22:45:02', '2020-08-23 22:45:02'),
(81, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Business', '99', 'manual_payment', '122', 'pending', NULL, 'nPXriMtMGcwJSb840Neg', '2020-08-24 05:50:27', '2020-10-01 01:49:42'),
(82, 'asdasd@gmail.com', 'asdasdasd', 'Business', '99', 'manual_payment', '123', 'pending', 'manual payment gateway description', 'IKFiyu1jC7Q2Xw3dldQE', '2020-08-24 15:57:48', '2020-08-24 15:57:48'),
(83, 'ASD@DFG.SDF', 'sad', 'Business', '99', 'razorpay', '124', 'complete', 'pay_FUbj4xGAQuHnzR', '2AEKOoe1NXhbxJLqHFCQ', '2020-08-24 16:55:35', '2020-08-24 16:56:09'),
(84, 'mak@ultimateserv.com', 'Mohammad Khalaf', 'Proffesional', '199', 'paypal', '127', 'pending', NULL, '5nkNnmnvq1KkJKxLgZAy', '2020-08-25 19:32:21', '2020-08-25 19:32:21'),
(85, 'mhsowrove@gmail.com', 'Bengali', 'Proffesional', '199', 'stripe', '128', 'complete', 'txn_1HK6m0EmGOuJLTMsAjTHknfb', 'q6OwvdJ3eFtnRjPNFX98', '2020-08-25 22:20:18', '2020-08-25 22:21:32'),
(86, 'tsdsdsest@gmail.com', 'rerr', 'Business', '99', 'paytm', '129', 'pending', NULL, 'RhghfTkuivhZZjd0H8CJ', '2020-08-26 16:52:25', '2020-08-26 16:52:25'),
(87, 'lucasradical87@gmail.com', 'sandro', 'Proffesional', '199', 'manual_payment', '131', 'pending', '21', 'L7kW8Z8XzemdcUvM2HV7', '2020-08-27 19:16:11', '2020-08-27 19:16:11'),
(88, 'admin@admin.com', 'Cecilia Chapman', 'Popular', '49', 'stripe', '132', 'complete', 'txn_1HKq8AEmGOuJLTMsLfjw4n7Q', 'KRbSqlHz99qssjekqrNM', '2020-08-27 22:47:02', '2020-08-27 22:47:27'),
(89, 'user@example.com', 'Serhii', 'Proffesional', '199', 'manual_payment', '133', 'pending', NULL, '5OYKDVjnPwlHOvtUckps', '2020-08-28 15:21:37', '2020-08-28 15:21:37'),
(90, 'zxc@asda.com', 'czxc', 'Business', '99', 'stripe', '134', 'complete', 'txn_1HLCUgEmGOuJLTMsbMjaschb', 'n84lRliq5wZXFOrLUF8w', '2020-08-28 22:39:36', '2020-08-28 22:40:11'),
(91, 'zxc@asda.com', 'czxc', 'Profesional', '199', 'paypal', '135', 'pending', NULL, 'ZFfVZK3gTYvNn3JPHm6H', '2020-08-28 22:57:39', '2020-08-28 22:57:39'),
(92, 'rikey9578@gmail.com', 'Jjj', 'Basic', '19', 'paytm', '136', 'pending', NULL, '0YmU9gg8kEu5QwNlf8RJ', '2020-08-29 21:16:14', '2020-08-29 21:16:14'),
(93, 'sumankundu513@gmail.com', 'Suman Kundu', 'Business', '99', 'paypal', '140', 'pending', NULL, '10NnDDzSeh157EJo1fl9', '2020-09-03 00:33:00', '2020-09-03 00:33:00'),
(94, 'asd@mail.com', 'as', 'Negocio', '19', 'manual_payment', '141', 'pending', NULL, 'f0dOD9KyjqSeghERBRNm', '2020-09-03 20:15:57', '2020-09-03 20:15:57'),
(95, '7621954802@gmail.com', 'Kinemaster Pro', 'Proffesional', '199', 'paytm', '142', 'pending', NULL, '9DawgmZIWZ3XnQMVOw9U', '2020-09-05 11:21:34', '2020-09-05 11:21:34'),
(96, 'faizanym@gmail.com', 'Faizan Mumtaz', 'Proffesional', '199', 'manual_payment', '144', 'pending', '89809', 'xAo5dQWyrcwZsvHKCZx4', '2020-09-07 21:56:54', '2020-09-07 21:56:54'),
(97, 'test@test.com', 'test', 'Basic', '19', 'razorpay', '145', 'complete', 'pay_FaYnTHzfGLzkrb', 'yWjPbEcwVCv4h6s9aXGT', '2020-09-08 17:57:17', '2020-09-08 17:58:14'),
(98, 'superadmin@gsms.com', 'Muhammad Mohiuddin', 'Business', '99', 'paytm', '146', 'pending', NULL, 'co3T00HsB8HKe4Qsa3eH', '2020-09-08 19:46:12', '2020-09-08 19:46:12'),
(99, 'kn@it.lk', 'jbjk', 'Business', '99', 'stripe', '148', 'pending', NULL, 'f5FJ74UBhKpb2QCBVZdK', '2020-09-10 04:24:46', '2020-09-10 04:24:46'),
(100, 'dvrobin4@gmail.com', 'Siful Islam', 'Business', '99', 'paypal', '150', 'pending', NULL, 'VDL8ONSgtBgt2ExikqRw', '2020-09-11 09:40:05', '2020-09-11 09:40:05'),
(101, 'baptistebadanigraphisme@gmail.com', 'username', 'Business', '99', 'stripe', '151', 'pending', NULL, 'wWHJ2kyF19iQoAR7wgbS', '2020-09-12 02:34:30', '2020-09-12 02:34:30'),
(102, 'asfsdf@sdsdf.sdf', 'dfsdfsaf', 'Proffesional', '199', 'razorpay', '152', 'pending', NULL, '7QXFxpGPTT7Yv3wMORbk', '2020-09-12 13:49:24', '2020-09-12 13:49:24'),
(103, 'thakurrudra@fmai.com', 'ZAjkl', 'Proffesional', '199', 'razorpay', '153', 'pending', NULL, '8QTjB951NNmjmgIQBWmg', '2020-09-12 15:05:04', '2020-09-12 15:05:04'),
(104, 'malay@gmail.com', 'malay', 'Proffesional', '199', 'paytm', '154', 'pending', NULL, 'tnLV6YNp1lh8GMVSKYOM', '2020-09-14 07:14:31', '2020-09-14 07:14:31'),
(105, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'paypal', '155', 'pending', NULL, 'yD8D9H63jnCCcKGQYprR', '2020-09-14 20:28:44', '2020-09-14 20:28:44'),
(106, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'paystack', '156', 'pending', NULL, 'Kh6icBbHvHt7U7NSrxEz', '2020-09-14 20:29:57', '2020-09-14 20:29:57'),
(107, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '157', 'pending', '14000', 'NxfaJhqtrXq2aaY8ULMM', '2020-09-14 20:31:19', '2020-09-27 20:19:50'),
(108, 'solucionescompucaribe@gmail.com', 'juan', 'Business', '99', 'stripe', '158', 'complete', 'txn_1HRNbLEmGOuJLTMsjhR8Qk96', '9i01RicURHFBwANblTvT', '2020-09-14 23:44:20', '2020-09-14 23:44:35'),
(109, 'lkj@lkj.com', 'lkjlj', 'Business', '99', 'paytm', '159', 'pending', NULL, 'cRQFFslBgWSevSN1YN8j', '2020-09-15 22:39:54', '2020-09-15 22:39:54'),
(110, 'wi@msn.com', 'Belle Dennis', 'Business', '99', 'stripe', '160', 'pending', NULL, 'mr2lJT4ypKUZMKDt2Zv4', '2020-09-16 01:34:02', '2020-09-16 01:34:02'),
(111, 'zak.albarouni@gmail.com', 'zakaria', 'Basic', '19', 'flutterwave', '161', 'pending', NULL, 'tTSnepN0MzclmvVEi136', '2020-09-16 20:34:24', '2020-09-16 20:34:24'),
(112, 'rahul0deshmukh@gmail.com', 'Rahul Deshmukh', 'Proffesional', '199', 'paytm', '162', 'pending', NULL, 'qkfHS7ggHGTMqHit7fQV', '2020-09-17 12:57:43', '2020-09-17 12:57:43'),
(113, 'vamlalegne@enayu.com', 'vamlalegne@enayu.com', 'Popular', '49', 'stripe', '163', 'complete', 'txn_1HSkN2EmGOuJLTMsPjdKjver', 'Jdb98zTLXxuJr1nyzH8u', '2020-09-18 18:15:05', '2020-09-18 18:15:29'),
(114, 'mishra07adi@gmail.com', 'Aditya Mishra', 'Business', '99', 'paytm', '164', 'pending', NULL, 'ncfPcRDewlnzNwbrOQKS', '2020-09-19 01:26:22', '2020-09-19 01:26:22'),
(115, 'mishra.amitkr@gmail.com', 'Amit Kumar Mishra', 'Proffesional', '199', 'paytm', '165', 'pending', NULL, 'JpkeC9EL3vJGBELEg1cN', '2020-09-19 22:23:08', '2020-09-19 22:23:08'),
(116, 'ajdnekjb@gmail.com', 'Aditya', 'Proffesional', '199', 'paytm', '166', 'pending', NULL, 'BFv5I0VfiFUubdSmQ4ga', '2020-09-19 22:23:22', '2020-09-19 22:23:22'),
(117, 'nisharoypradhan@gmail.com', 'Suraj Singha', 'Proffesional', '199', 'razorpay', '167', 'pending', NULL, 'CuDymWlOyPEQreIHxNyH', '2020-09-20 23:28:14', '2020-09-20 23:28:14'),
(118, 'rgerg@jyklu.lth', 'er\'rf', 'Popular', '49', 'stripe', '168', 'pending', NULL, 'qACbLxzVIm3yqEsw8vu4', '2020-09-21 05:22:32', '2020-09-21 05:22:32'),
(119, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'paystack', '156', 'pending', NULL, 'PxpmJts5McYO2cAXiVSt', '2020-09-22 02:19:21', '2020-09-22 02:19:21'),
(120, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paypal', '114', 'pending', NULL, 'bp4LL0VFmka7hbRMqM78', '2020-09-22 09:18:01', '2020-09-22 09:18:01'),
(121, 'admin@example.com', 'asdas', 'Business', '99', 'paypal', '169', 'pending', NULL, 'D5ygnf28a6VWx6Ulo9ib', '2020-09-23 17:54:43', '2020-09-23 17:54:43'),
(122, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '157', 'pending', '14000', 'koXDNciv0XWxsqpVKGzK', '2020-09-24 11:30:31', '2020-09-27 20:19:50'),
(123, 'hdhfd@gmg.com', 'hfhfh', 'Business', '99', 'paytm', '170', 'pending', NULL, 'QXzYEYUAGMoB8fFp2bE8', '2020-09-24 13:30:37', '2020-09-24 13:30:37'),
(124, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '157', 'pending', '14000', 'uU4ncLEAs1yoSujvkj28', '2020-09-27 20:19:50', '2020-09-27 20:19:50'),
(125, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paytm', '171', 'pending', NULL, 'rys431wUDMtsQPxhSK51', '2020-09-27 20:21:11', '2020-09-27 20:21:11'),
(126, 'ukraynabilgi@gmail.com', 'fahrettin aba', 'Business', '99', 'stripe', '172', 'pending', NULL, '9Sw7LqC1OxmEhIW8sN2J', '2020-09-27 21:04:26', '2020-09-27 21:04:26'),
(127, 'tester@testing123.com', 'Tester', 'Business', '99', 'flutterwave', '173', 'pending', NULL, '7WiVfQiLELD7uBPzqh6f', '2020-09-28 00:19:45', '2020-09-28 00:19:45'),
(128, 'carvajalg63@gmail.com', 'Gonzalo', 'Negocio', '19', 'paypal', '174', 'pending', NULL, 'Iwamu5LRQ4kLf1zu4lgP', '2020-09-28 08:38:28', '2020-09-28 08:38:28'),
(129, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paytm', '175', 'pending', NULL, 'BR9tARKDlY2JlHhcV58x', '2020-09-28 08:56:28', '2020-09-28 08:56:28'),
(130, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paytm', '175', 'pending', NULL, 'RF674EFy0wtB1NDXfpWo', '2020-09-28 08:58:22', '2020-09-28 08:58:22'),
(131, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paytm', '175', 'pending', NULL, 'hO3hHP4dUsuLAJcF4Rvs', '2020-09-28 09:57:52', '2020-09-28 09:57:52'),
(132, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paytm', '175', 'pending', NULL, 'dvYNixbnNYKM8zK0npeg', '2020-09-28 10:39:04', '2020-09-28 10:39:04'),
(133, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popüler', '19', 'paytm', '176', 'pending', NULL, 'jeTFekJVEFtRthYKOkHQ', '2020-09-28 12:01:39', '2020-09-28 12:01:39'),
(134, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popüler', '19', 'paytm', '176', 'pending', NULL, 'z6U1e1YpDZtp3O3wmSu9', '2020-09-28 12:18:17', '2020-09-28 12:18:17'),
(135, 'darhost56@gmail.com', 'ارسال تقرير', 'اعمال', '49', 'paypal', '177', 'pending', NULL, 'm26g5DkKyjOlWMX1B2KY', '2020-09-28 17:20:02', '2020-09-28 17:20:02'),
(136, 'ptakalei@gmail.com', 'peter', 'Business', '99', 'paytm', '178', 'pending', NULL, 'AY12HNTzJmRJGVWSIQ9s', '2020-09-29 01:10:50', '2020-09-29 01:10:50'),
(137, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'manual_payment', '179', 'pending', NULL, 'n82yFYUVUTS6QCOYckUo', '2020-09-29 09:45:32', '2020-10-07 09:54:11'),
(138, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'stripe', '180', 'complete', 'txn_1HWlcREmGOuJLTMsYqOz93Ny', 'IYXq1q8SDaPVvBTqul6O', '2020-09-29 20:23:25', '2020-09-29 20:23:59'),
(139, 'tester@testers.com', 'tester', 'Business', '99', 'paystack', '181', 'pending', NULL, 'yFpiByyfNczWd6ILbNzj', '2020-09-29 21:26:35', '2020-09-29 21:26:35'),
(140, 'mywasender@gmail.com', 'mywa sender', 'Proffesional', '199', 'manual_payment', '182', 'pending', NULL, '13rNrbvBnBEKK7LpGqTD', '2020-09-30 19:06:33', '2020-09-30 19:06:33'),
(141, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Business', '99', 'manual_payment', '122', 'pending', NULL, 'pBzMxQIeT25YkaD2k1we', '2020-10-01 01:49:42', '2020-10-01 01:49:42'),
(142, 'tarekmonjur@gmail.com', 'Sharifur', 'Popular', '49', 'paypal', '183', 'pending', NULL, 'VYuCYV4nop6lPRSt2UfZ', '2020-10-01 10:53:37', '2020-10-01 10:53:37'),
(143, 'tarekmonjur@gmail.com', 'Sharifur', 'Proffesional', '199', 'paypal', '184', 'complete', '1GU39022541402424', 'AdVfWbuEqWdMn1mk9DEm', '2020-10-01 10:58:47', '2020-10-01 11:00:04'),
(144, 'makapa12@gmail.com', 'Anirudh', 'Business', '99', 'manual_payment', '185', 'pending', '32108313920PPW', 'Tu2RKe5QPtZrv0gAf2EL', '2020-10-01 16:47:54', '2020-10-01 16:47:54'),
(145, 'paul.musimbago@gmail.com', 'Paul', 'Popular', '49', 'stripe', '186', 'pending', NULL, 'Gi5Ga8d1RuN9TCmvwwJX', '2020-10-01 23:50:01', '2020-10-01 23:50:01'),
(146, 'twitoorel1@Gmail.com', 'asvdads', 'Proffesional', '199', 'stripe', '187', 'pending', NULL, '2YBAgQzRjHDJQZamGkCb', '2020-10-02 01:45:14', '2020-10-02 01:45:14'),
(147, 'dvrobin4@gmail.com', 'Siful Islam', 'Popular', '49', 'mollie', '188', 'pending', NULL, 'ZfRzY41mPvfivW4L08vE', '2020-10-05 16:17:53', '2020-10-05 16:17:53'),
(148, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paypal', '189', 'pending', NULL, 'qglizwWlKSmHXLIEhKMJ', '2020-10-05 18:15:37', '2020-10-05 18:15:37'),
(149, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paypal', '189', 'pending', NULL, 'Ea7CSqMdCFVHHhoySjM6', '2020-10-06 23:10:25', '2020-10-06 23:10:25'),
(150, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'manual_payment', '179', 'pending', NULL, 'LrNbpwuBR7P3juQgLGBC', '2020-10-07 09:54:11', '2020-10-07 09:54:11'),
(151, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'mollie', '190', 'complete', 'tr_bPNy7cudJ9', 'kxbyV9exwUXQgFk2Ua6y', '2020-10-07 11:11:17', '2020-10-07 11:11:31'),
(152, 'rsharifur824@gmail.com', 'Sharifur Rahmam', 'Popular', '49', 'paystack', '193', 'complete', 'w0D0zbUnyJK3UO7eOF9jLq67k', 'hfqAMICocjjP0zwrt7pw', '2020-10-08 11:28:53', '2020-10-08 11:29:47'),
(153, 'srame@name.com', 'name', 'Popular', '49', 'manual_payment', '194', 'pending', NULL, 'EdNf9uEv9yFnt6EfdbBb', '2020-10-09 15:43:47', '2020-10-09 15:43:47'),
(154, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paypal', '189', 'pending', NULL, 'ZQBGla8OyJHIGOfQFXWd', '2020-10-10 08:13:51', '2020-10-10 08:13:51'),
(155, 'info@shakacode.net', 'Gustavo Sanchez', 'Básica', '49', 'paypal', '195', 'pending', NULL, 'M4ZvcJJr3wz3WssnS89S', '2020-10-11 07:59:25', '2020-10-11 07:59:25'),
(156, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paypal', '189', 'pending', NULL, 'xWCk66Ta8zRilv0dqqmP', '2020-10-14 11:30:08', '2020-10-14 11:30:08'),
(157, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paypal', '189', 'pending', NULL, '11lYGJeeaOOcYRDBvDNq', '2020-10-15 10:26:53', '2020-10-15 10:26:53'),
(158, 'hoyyotf@outlook.com.tr', 'gfds', 'Popüler', '19', 'paystack', '197', 'pending', NULL, 'CPuhxy4QaBCqkJqbIYfm', '2020-10-16 01:18:24', '2020-10-16 01:18:24'),
(159, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'paypal', '189', 'pending', NULL, 'WTwuhOsN5JpgQ8I8YgB8', '2020-10-16 21:37:05', '2020-10-16 21:37:05'),
(160, 'thiagovibesp@outlook.com', 'davinci resolve', 'Business', '99', 'stripe', '199', 'pending', NULL, 'lHQFA8B3wnidiCSGyTpz', '2020-10-18 18:28:04', '2020-10-18 18:28:04'),
(161, 'BrianneBarton@aol.com', 'Brianne Barton', 'Business', '99', 'manual_payment', '200', 'pending', 'briannebarton', 'u1l0owEUUGylUvN7HwpU', '2020-10-20 05:58:39', '2020-10-20 05:58:39'),
(162, 'test@gmail.com', 'ewewe', 'Proffesional', '199', 'paypal', '201', 'pending', NULL, 'yMdjsRAPd5Wyn0d7zhu3', '2020-10-22 23:27:17', '2020-10-22 23:27:17'),
(163, 'ranjeet20@gmail.com', 'Ranjeet20', 'Basic', '19', 'manual_payment', '202', 'pending', '1111111', '0nbvBD9lYjezLdT7bh7b', '2020-10-25 00:22:33', '2020-10-25 00:22:33'),
(164, 'rr@gmail.com', 'rajesh singh', 'Popular', '49', 'manual_payment', '203', 'pending', NULL, 'K9Gh0HYHS5SjKEDPmiWb', '2020-10-25 02:24:55', '2020-11-24 12:02:16'),
(165, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '204', 'pending', 'dddd', 'GnZaOQT0khySpET2YmRA', '2020-10-25 02:31:33', '2020-10-25 02:31:33'),
(166, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '205', 'pending', NULL, 'FVRsrkfi6tOmYaD05703', '2020-10-25 02:47:02', '2020-10-28 15:11:43'),
(167, 'hfol2@gmail.com', 'Sy4 ttinez', 'Basic', '19', 'paypal', '207', 'pending', NULL, 'nmmyDGJJZoGmy2QaMtNm', '2020-10-26 16:55:33', '2020-10-26 16:55:33'),
(168, 'rocletts1@gmail.com', 'sdfdwrr', 'Business', '99', 'paypal', '208', 'pending', NULL, 'Ym13xAm7VqvlMSiX9Q9c', '2020-10-27 10:05:16', '2020-10-27 10:05:16'),
(169, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '205', 'pending', NULL, 'HRdsmK7WlsWPX4Q91Cs9', '2020-10-28 06:57:52', '2020-10-28 15:11:43'),
(170, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '205', 'pending', NULL, 'ojUcLSaj3nEj0wh1KTFM', '2020-10-28 15:11:43', '2020-10-28 15:11:43'),
(171, 'tasadasd@sad.com', 'Tamer Essam', 'Business', '99', 'stripe', '209', 'complete', 'txn_1HhRUjEmGOuJLTMsNdBljNdb', 'iorgYS4eqRKmcELtZ4W3', '2020-10-29 07:07:57', '2020-10-29 07:08:10'),
(172, 'ice_g_war@hotmail.com', 'Tekasys Internacional', 'Proffesional', '199', 'stripe', '210', 'complete', 'txn_1HhXZpEmGOuJLTMsRWIJPj44', '39p5xwqIBLQ86TWpSCUh', '2020-10-29 13:37:38', '2020-10-29 13:37:49'),
(173, 'ice_g_war@hotmail.com', 'Tekasys Internacional', 'Proffesional', '199', 'stripe', '211', 'complete', 'txn_1HhXfBEmGOuJLTMsbAcw1Y7R', 'av62rgrT3dRbPNdGkNTN', '2020-10-29 13:43:14', '2020-10-29 13:43:21'),
(174, 'imdaniel@gmail.com', 'Dan', 'Proffesional', '199', 'paystack', '212', 'pending', NULL, 'EF3xCONKnQIvDrn7LcGT', '2020-10-31 17:25:41', '2020-10-31 17:25:41'),
(175, 'info@sallivans.com', 'Rafał', 'Business', '99', 'paytm', '213', 'pending', NULL, 'uIwl84bJwlp7GEKY6MMY', '2020-11-02 12:47:44', '2020-11-02 12:47:44'),
(176, 'aaa@aaa.es', 'demo123', 'Popular', '49', 'stripe', '215', 'pending', NULL, 'eZM1NWSsVTwO9Xgtb6QW', '2020-11-04 11:20:22', '2020-11-04 11:20:22'),
(177, 'admin@admin.com', 'BOBBY\'S PUB', 'Proffesional', '199', 'paystack', '216', 'pending', NULL, 'L32QSKCJuWC0qDzotgcP', '2020-11-04 17:26:25', '2020-11-04 17:26:25'),
(178, 'wpcodeninja@gmail.com', 'Raj', 'Basic', '19', 'stripe', '217', 'complete', 'txn_1Hk0szEmGOuJLTMsKdnvAJWM', 'hSoUI5bNVEEBZ3uOsImY', '2020-11-05 10:18:54', '2020-11-05 10:19:50'),
(179, 'aaa@aaa.es', 'blaser654', 'Proffesional', '199', 'stripe', '220', 'pending', NULL, '3lTrdcDKqdjsklsyJ1UF', '2020-11-06 14:20:31', '2020-11-06 14:20:31'),
(180, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'stripe', '221', 'pending', NULL, 'vOgYZsdydwZVrzbbftVl', '2020-11-06 14:42:45', '2020-11-06 14:42:45'),
(181, 'playlive.sa@gmail.com', 'Hadi Bakkari', 'Business', '99', 'paypal', '222', 'pending', NULL, 'iLBhWAIGi3iu7XkZVCDS', '2020-11-07 05:29:04', '2020-11-07 05:29:04'),
(182, 'admin@demo.com', 'asas', 'Proffesional', '199', 'razorpay', '223', 'pending', NULL, 'r8E0qPGAOkwMy4HeaINL', '2020-11-08 02:32:28', '2020-11-08 02:32:28'),
(183, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'iş', '49', 'manual_payment', '224', 'pending', '23213213123', '2Tf83eydLA2hZO8fswEB', '2020-11-08 17:22:11', '2020-11-08 17:22:15'),
(184, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'iş', '49', 'manual_payment', '224', 'pending', '23213213123', 'it1iqYw8xJr78wbYKvVC', '2020-11-08 17:22:15', '2020-11-08 17:22:15'),
(185, 'raozubair1441@gmail.com', 'Zubair Rao', 'Proffesional', '199', 'manual_payment', '225', 'pending', '1234332221', 'fW2B1il9pg7XyoNb5WyC', '2020-11-09 14:43:16', '2020-11-09 14:43:16'),
(186, 'aaa@aaa.es', 'blaser654', 'Basic', '19', 'stripe', '226', 'pending', NULL, 'DIeNsVQnEctMz3W64yJO', '2020-11-10 23:26:57', '2020-11-10 23:26:57'),
(187, 'aaa@aaa.es', 'blaser654', 'Basic', '19', 'stripe', '227', 'complete', 'txn_1Hm46xEmGOuJLTMsnkjRNn4s', 'uRetQFlpzklQJlmbOerw', '2020-11-11 02:09:56', '2020-11-11 02:10:44'),
(188, 'aaa@aaa.es', 'blaser654', 'Basic', '19', 'stripe', '228', 'complete', 'txn_1Hm4ApEmGOuJLTMs4bhqysVp', 'P4HfqXbIG6GxfNv8EG4I', '2020-11-11 02:13:21', '2020-11-11 02:14:43'),
(189, 'aaa@aaa.es', 'blaser654', 'Basic', '19', 'stripe', '229', 'pending', NULL, 'Pyqxw1wEA8p92d71wE2g', '2020-11-11 18:19:48', '2020-11-11 18:19:48'),
(190, 'dvrobin4@gmail.com', 'Siful Islam', 'Popular', '49', 'stripe', '230', 'pending', NULL, 'akAxLmsNuCYwgz415tEt', '2020-11-11 18:35:48', '2020-11-11 18:35:48'),
(191, 'xgenious51@gmail.com', 'Siful Islam', 'Proffesional', '199', 'flutterwave', '231', 'pending', NULL, 'sAJCCxEFvTC2IAijzMPv', '2020-11-14 19:35:01', '2020-11-14 19:35:01'),
(192, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '234', 'pending', NULL, 'itJbjyCNJ3HBWMC4DUdD', '2020-11-16 15:22:16', '2020-11-22 17:18:33'),
(193, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '234', 'pending', NULL, 'q1fEsjur3uBFj2eIP1zu', '2020-11-16 15:23:35', '2020-11-22 17:18:33'),
(194, 'magicbytes2012@gmail.com', 'Magic Bytes', 'Popular', '49', 'mollie', '235', 'pending', NULL, 'dJpkK2vhaaxu5MjSxGAs', '2020-11-16 15:56:45', '2020-11-16 15:56:45'),
(195, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '234', 'pending', NULL, 'Gs3xgi3FmJ1EcOVOWxnV', '2020-11-16 23:34:07', '2020-11-22 17:18:33'),
(196, 'gghbbh@hdjd.com', 'Ggvbhn', 'Proffesional', '199', 'razorpay', '236', 'pending', NULL, '2SpbryUWjZe6XKpkGXJF', '2020-11-17 08:35:57', '2020-11-17 08:35:57'),
(197, 'agrejdeanu@gmail.com', 'Andrei', 'Proffesional', '199', 'manual_payment', '237', 'pending', NULL, 'ILpI0u33L9eKdqEb9ZSj', '2020-11-19 22:46:18', '2020-11-19 22:46:18'),
(198, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '234', 'pending', NULL, 'LxVYK5tPEsu7ThgbSz7o', '2020-11-22 11:51:59', '2020-11-22 17:18:33'),
(199, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Basic', '19', 'manual_payment', '234', 'pending', NULL, 'XyiLSzK9Bybl8gjGzlYB', '2020-11-22 17:18:33', '2020-11-22 17:18:33'),
(200, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Popular', '49', 'manual_payment', '203', 'pending', NULL, 'zTfoOJWhKRiTzLYXfOT5', '2020-11-24 12:02:16', '2020-11-24 12:02:16'),
(201, 'kuanceal@gmail.com', 'Teguh Narwadi', 'Proffesional', '199', 'paypal', '240', 'pending', NULL, 'AW0rBR4GSK43pseAHMXA', '2020-11-24 20:16:07', '2020-11-24 20:16:07'),
(202, 'twst@gmail.com', 'Buggger', 'Proffesional', '199', 'mollie', '241', 'complete', 'tr_zaMuVQJtmu', 'n7w4G1ULnhaqJ4vAzCP6', '2020-11-25 12:04:20', '2020-11-25 12:04:33'),
(203, 'admin@mediacity.co.in', 'Aru', 'Business', '99', 'paytm', '242', 'pending', NULL, 'mQ6miwFXIZdj89kB9oxv', '2020-11-26 12:56:59', '2020-11-26 12:56:59'),
(204, 'dfgsdfg@asd.com', 'dfgsdfgsdfg', 'iş', '49', 'manual_payment', '243', 'pending', NULL, 'j8hERVBDcCJ3BAvqNZV1', '2020-12-22 15:34:17', '2020-12-22 15:34:17'),
(205, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Negocio', '19', 'manual_payment', '245', 'pending', NULL, 'a9zTETElDlu4wZFmPowU', '2020-12-22 18:44:20', '2020-12-22 22:29:51'),
(206, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Negocio', '19', 'manual_payment', '245', 'pending', NULL, '5J3wszkCJZ02vopb0fHF', '2020-12-22 18:44:52', '2020-12-22 22:29:51'),
(207, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Negocio', '19', 'manual_payment', '245', 'pending', NULL, 'g1fDJzveRpRLdgfpOxpK', '2020-12-22 22:29:51', '2020-12-22 22:29:51'),
(208, 'asda@asdas.com', 'asdaasd asdas', 'Proffesional', '199', 'razorpay', '247', 'pending', NULL, 'GCGVe4hbxqFdg1dsC15w', '2020-12-23 00:13:45', '2020-12-23 00:13:45'),
(209, 'dvrobin4@gmail.com', 'Sharifur Rahman', 'Proffesional', '199', 'paypal', '249', 'pending', NULL, '2wUfbR6CNARtMlzyiats', '2020-12-23 03:01:55', '2020-12-23 03:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `popup_builders`
--

CREATE TABLE `popup_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_time_end` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popup_builders`
--

INSERT INTO `popup_builders` (`id`, `name`, `type`, `title`, `only_image`, `background_image`, `offer_time_end`, `button_text`, `button_link`, `description`, `lang`, `btn_status`, `created_at`, `updated_at`) VALUES
(1, 'notice popup', 'notice', 'Notice!!', NULL, NULL, '2020-09-26', 'Buy Now', '#', 'She propriety immediate was improving. He or entrance humoured likewise moderate. Much nor game son say feel. Fat make met can must form into gate. Me we offending prevailed discovery. ', 'en', 'on', '2020-07-22 13:17:42', '2020-07-22 13:17:42'),
(3, 'image popup', 'only_image', NULL, '80', NULL, NULL, NULL, NULL, NULL, 'en', NULL, '2020-07-25 13:44:40', '2020-07-25 13:44:40'),
(4, 'promotional popup', 'promotion', 'Nexelit', '83', '81', NULL, 'Buy Now', '#', 'There worse by an of miles civil. Manner before lively wholly am mr indeed expect. Among every merry his yet has her. You mistress get dashwood children off.', 'en', 'on', '2020-07-25 15:23:00', '2020-07-25 15:23:00'),
(5, 'discount popup', 'discount', 'Discount', '83', '81', '2020-09-30', 'Buy Now', '#', 'Out believe has request not how comfort evident.', 'en', 'on', '2020-07-26 04:28:42', '2020-07-26 05:00:54'),
(6, 'indirim açılır penceresi', 'discount', 'İndirim', '83', '81', '2020-09-30', 'Şimdi satın al', '#', 'Dışarı inanmak ne kadar rahat belirgin değil istek var.', 'tur', 'on', '2020-07-26 07:15:29', '2020-07-26 07:17:15'),
(7, 'المنبثقة الترويجية', 'promotion', 'اعمال', '83', '81', NULL, 'اشتري الآن', '#', 'هناك أسوأ من ميل مدني. الطريقة قبل حية تماما أنا السيد يتوقع بالفعل. بين كل مرح له حتى الآن لها. أنت عشيقة تنزل أطفال.', 'ar', 'on', '2020-07-26 08:39:15', '2020-07-26 08:40:52'),
(8, 'ventana emergente de imagen', 'only_image', NULL, '80', NULL, NULL, NULL, NULL, NULL, 'sp', NULL, '2020-07-26 08:41:11', '2020-07-26 08:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `price_plans`
--

CREATE TABLE `price_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_plans`
--

INSERT INTO `price_plans` (`id`, `title`, `price`, `highlight`, `lang`, `url_status`, `type`, `features`, `btn_text`, `status`, `btn_url`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '19', NULL, 'en', 'on', '/Mo', 'Unlimited Pages\r\nAll Team Members\r\nUnlimited Leads\r\nUnlimited Page Views\r\nExport in HTML/CSS', 'Order Now', 'publish', NULL, 1, '2020-06-05 19:08:40', '2020-07-22 01:01:10'),
(2, 'Popular', '49', NULL, 'en', 'on', '/Yr', 'Unlimited Pages\r\nAll Team Members\r\nUnlimited Leads\r\nUnlimited Page Views\r\nExport in HTML/CSS', 'Order Now', 'publish', NULL, 1, '2020-06-06 14:56:17', '2020-07-22 01:01:03'),
(3, 'Business', '99', 'on', 'en', 'on', '/Yr', 'Unlimited Pages\r\nAll Team Members\r\nUnlimited Leads\r\nUnlimited Page Views\r\nExport in HTML/CSS', 'Order Now', 'publish', NULL, 2, '2020-06-06 14:57:03', '2020-07-22 01:00:05'),
(4, 'Proffesional', '199', NULL, 'en', 'on', '/Mo', 'Unlimited Pages\r\nAll Team Members\r\nUnlimited Leads\r\nUnlimited Page Views\r\nExport in HTML/CSS', 'Order Now', 'publish', NULL, 1, '2020-06-06 14:57:05', '2020-07-22 00:59:25'),
(5, 'Profesyonel', '199', NULL, 'tur', 'on', '/Mo', 'Sınırsız Sayfa\r\nTüm Ekip Üyeleri\r\nSınırsız Olası Satışlar\r\nSınırsız Sayfa Görüntüleme\r\nHTML / CSS\'de dışa aktarma', 'Şimdi sipariş ver', 'publish', NULL, 3, '2020-06-06 16:17:42', '2020-07-22 00:59:14'),
(6, 'المحترفين', '199', NULL, 'ar', 'on', 'Mo/', 'صفحات غير محدودة\r\nجميع أعضاء الفريق\r\nيؤدي غير محدود\r\nمشاهدات صفحة غير محدودة\r\nتصدير بتنسيق HTML / CSS', 'اطلب الان', 'publish', NULL, 5, '2020-06-06 16:18:07', '2020-07-22 01:04:53'),
(7, 'Profesional', '199', NULL, 'sp', 'on', '/Mo', 'Páginas Ilimitadas\r\nTodos los miembros del equipo\r\nLeads ilimitados\r\nVistas de página ilimitadas\r\nExportar en HTML / CSS', 'Ordenar ahora', 'publish', NULL, 7, '2020-06-06 16:18:41', '2020-07-22 01:09:34'),
(8, 'iş', '49', NULL, 'tur', 'on', '/Mo', 'Sınırsız Sayfa\r\nTüm Ekip Üyeleri\r\nSınırsız Olası Satışlar\r\nSınırsız Sayfa Görüntüleme\r\nHTML / CSS\'de dışa aktarma', 'Şimdi sipariş ver', 'publish', NULL, 3, '2020-07-22 01:01:27', '2020-07-22 01:02:39'),
(9, 'Popüler', '19', NULL, 'tur', 'on', '/Mo', 'Sınırsız Sayfa\r\nTüm Ekip Üyeleri\r\nSınırsız Olası Satışlar\r\nSınırsız Sayfa Görüntüleme\r\nHTML / CSS\'de dışa aktarma', 'Şimdi sipariş ver', 'publish', NULL, 3, '2020-07-22 01:01:33', '2020-07-22 01:03:02'),
(10, 'اعمال', '49', NULL, 'ar', 'on', 'Mo/', 'صفحات غير محدودة\r\nجميع أعضاء الفريق\r\nيؤدي غير محدود\r\nمشاهدات صفحة غير محدودة\r\nتصدير بتنسيق HTML / CSS', 'اطلب الان', 'publish', NULL, 6, '2020-07-22 01:06:08', '2020-07-22 01:06:55'),
(11, 'الأساسي', '19', NULL, 'ar', 'on', 'Mo/', 'صفحات غير محدودة\r\nجميع أعضاء الفريق\r\nيؤدي غير محدود\r\nمشاهدات صفحة غير محدودة\r\nتصدير بتنسيق HTML / CSS', 'اطلب الان', 'publish', NULL, 6, '2020-07-22 01:07:06', '2020-07-22 01:07:40'),
(12, 'Básica', '49', NULL, 'sp', 'on', '/Mo', 'Páginas Ilimitadas\r\nTodos los miembros del equipo\r\nLeads ilimitados\r\nVistas de página ilimitadas\r\nExportar en HTML / CSS', 'Ordenar ahora', 'publish', NULL, 7, '2020-07-22 01:09:41', '2020-07-22 01:13:03'),
(13, 'Negocio', '19', NULL, 'sp', 'on', '/Mo', 'Páginas Ilimitadas\r\nTodos los miembros del equipo\r\nLeads ilimitados\r\nVistas de página ilimitadas\r\nExportar en HTML / CSS', 'Ordenar ahora', 'publish', NULL, 7, '2020-07-22 01:13:08', '2020-07-22 01:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `price_plan_categories`
--

CREATE TABLE `price_plan_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_plan_categories`
--

INSERT INTO `price_plan_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Development', 'en', 'publish', '2020-07-22 00:30:13', '2020-07-22 00:30:13'),
(2, 'Design', 'en', 'publish', '2020-07-22 00:30:20', '2020-07-22 00:30:42'),
(3, 'tasarlamak', 'tur', 'publish', '2020-07-22 00:30:37', '2020-07-22 00:30:37'),
(4, 'gelişme', 'tur', 'publish', '2020-07-22 00:30:55', '2020-07-22 00:30:55'),
(5, 'تطوير', 'ar', 'publish', '2020-07-22 00:32:17', '2020-07-22 00:32:17'),
(6, 'التصميم', 'ar', 'publish', '2020-07-22 00:32:30', '2020-07-22 00:32:30'),
(7, 'Diseño', 'sp', 'publish', '2020-07-22 00:32:43', '2020-07-22 00:32:43'),
(8, 'Desarrollo', 'sp', 'publish', '2020-07-22 00:32:55', '2020-07-22 00:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `attributes_title` longtext COLLATE utf8mb4_unicode_ci,
  `total_sold` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_downloadable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloadable_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `attributes_description` longtext COLLATE utf8mb4_unicode_ci,
  `badge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `lang`, `regular_price`, `sale_price`, `sku`, `stock_status`, `category_id`, `short_description`, `description`, `attributes_title`, `total_sold`, `image`, `gallery`, `status`, `is_downloadable`, `downloadable_file`, `meta_tags`, `meta_description`, `attributes_description`, `badge`, `created_at`, `updated_at`, `tax_percentage`) VALUES
(1, 'Give lady of they such they sure it.', 'give-lady-of-they-such-they-sure-it', 'en', '99', 49, '34543', 'in_stock', '1', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p>', 'a:3:{i:0;s:6:\"Weight\";i:1;s:5:\"Width\";i:2;s:6:\"Height\";}', NULL, '65', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'New', '2020-07-21 01:15:15', '2020-07-21 01:15:15', NULL),
(2, 'Multipurpose Laravel CMS', 'multipurpose-laravel-cms', 'en', '199', 150, NULL, 'in_stock', '2', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><div><br></div>', 'a:4:{i:0;s:11:\"PHP Version\";i:1;s:15:\"Laravel Version\";i:2;s:13:\"Mysql Version\";i:3;s:23:\"Required PHP Extensions\";}', NULL, '75', NULL, 'publish', 'on', '71595317436.zip', NULL, NULL, 'a:4:{i:0;s:4:\"7.2x\";i:1;s:2:\"7x\";i:2;s:3:\"5.7\";i:3;s:203:\"BCMath PHP Extension,\r\nCtype PHP Extension,\r\nFileinfo PHP extension,\r\nJSON PHP Extension,\r\nMbstring PHP Extension,\r\nOpenSSL PHP Extension,\r\nPDO PHP Extension,\r\nTokenizer PHP Extension,\r\nXML PHP Extension\";}', '-30%', '2020-07-21 01:40:02', '2020-07-21 01:43:56', NULL),
(6, 'React Business Consulting Script', 'react-business-script', 'en', '139', 79, NULL, 'in_stock', '2', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p><br></p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p><p><br></p><p>By so delight of showing neither believe he present. Deal sigh up in shew away when. Pursuit express no or prepare replied. Wholly formed old latter future but way she. Day her likewise smallest expenses judgment building man carriage gay. Considered introduced themselves mr to discretion at. Means among saw hopes for. Death mirth in oh learn he equal on.&nbsp;</p><div><br></div>', 'a:2:{i:0;s:13:\"React Version\";i:1;s:12:\"Node Version\";}', NULL, '76', NULL, 'publish', 'on', '71595318407.zip', NULL, NULL, 'a:2:{i:0;s:3:\"16x\";i:1;s:14:\"v12.13.0 (LTS)\";}', '-40%', '2020-07-21 02:00:07', '2020-07-21 02:06:50', NULL),
(7, 'Again keeps at no meant stuff', 'again-keeps-at-no-meant-stuff', 'en', '199', 49, '3452343', 'in_stock', '1', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p>', 'a:3:{i:0;s:6:\"Weight\";i:1;s:5:\"Width\";i:2;s:6:\"Height\";}', NULL, '73', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Sale', '2020-07-21 02:11:05', '2020-07-21 02:18:38', NULL),
(8, 'Perceived determine departure explained', 'perceived-determine-departure-explained', 'en', '99', 49, '34543', 'in_stock', '11', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p>', 'a:3:{i:0;s:6:\"Weight\";i:1;s:5:\"Width\";i:2;s:6:\"Height\";}', NULL, '72', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'New', '2020-07-21 02:11:10', '2020-07-24 05:09:33', NULL),
(9, 'Contrasted dissimilar get joy you', 'contrasted-dissimilar-get-joy-you', 'en', '99', 49, '34543', 'in_stock', '11', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p>', 'a:3:{i:0;s:6:\"Weight\";i:1;s:5:\"Width\";i:2;s:6:\"Height\";}', NULL, '71', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'New', '2020-07-21 02:11:13', '2020-07-24 05:09:28', NULL),
(10, 'Me contained explained my', 'me-contained-explained-my-education', 'en', '99', 49, '34543', 'in_stock', '3', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p>', 'a:3:{i:0;s:6:\"Weight\";i:1;s:5:\"Width\";i:2;s:6:\"Height\";}', NULL, '70', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'New', '2020-07-21 02:11:16', '2020-07-24 05:07:33', NULL),
(11, 'The servants securing material goodness', 'the-servants-securing-material-goodness', 'en', '99', 49, '34543', 'in_stock', '3', 'Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff.', '<p>Give lady of they such they sure it. Me contained explained my education. Vulgar as hearts by garret. Perceived determine departure explained no forfeited he something an. Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff. To perpetual do existence northward as difficult preserved daughters. Continued at up to zealously necessary breakfast. Surrounded sir motionless she end literature. Gay direction neglected but supported yet her.&nbsp;</p><p>Mr oh winding it enjoyed by between. The servants securing material goodness her. Saw principles themselves ten are possession. So endeavor to continue cheerful doubtful we to. Turned advice the set vanity why mutual. Reasonably if conviction on be unsatiable discretion apartments delightful. Are melancholy appearance stimulated occasional entreaties end. Shy ham had esteem happen active county. Winding morning am shyness evident to. Garrets because elderly new manners however one village she.&nbsp;</p>', 'a:3:{i:0;s:6:\"Weight\";i:1;s:5:\"Width\";i:2;s:6:\"Height\";}', NULL, '69', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'New', '2020-07-21 02:11:20', '2020-08-26 11:49:49', NULL),
(12, 'Maddi iyiliği koruyan hizmetçiler', 'maddi-iyiligi-koruyan-hizmetciler', 'tur', '99', 49, '34543', 'in_stock', '6', 'Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor.', '<p>Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor. Sürekli var olmak zor korunmuş kızları olarak kuzeye doğru var olmak. Şevkle gerekli kahvaltı kadar devam etti. Etrafı çevreleyen efendim, edebiyatı sonlandırdı. Eşcinsel yönü ihmal ama henüz onu destekledi.</p><p><br></p><p>Bay oh arasında zevk sarılıyor. Ona maddi iyilik sağlayan hizmetkarlar. Testere prensipleri kendilerine on sahiptir. Bu yüzden neşeli olmaya devam etmek için çaba sarf ediyoruz. Set makyaj vanity neden karşılıklı döndü. Makul eğer tatminsiz takdir yetkisi daireler hoş eğer. Melankolik görünüm teşvik zaman zaman entreaties sona eriyor. Utangaç jambon ilçe aktif saygısı vardı. Sargı sabahı utangaçlık açıktır. Garrets çünkü yaşlı yeni tavırları ancak bir köy o.</p>', 'a:3:{i:0;s:10:\"Ağırlık\";i:1;s:9:\"Genişlik\";i:2;s:10:\"Yükseklik\";}', NULL, '69', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Yeni', '2020-07-27 04:05:34', '2020-07-27 04:09:05', NULL),
(13, 'Onlar hanımefendi böyle emin ve', 'onlar-hanimefendi-boyle-emin-ve', 'tur', '99', 49, '34543', 'in_stock', '6', 'Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor.', '<p>Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor. Sürekli var olmak zor korunmuş kızları olarak kuzeye doğru var olmak. Şevkle gerekli kahvaltı kadar devam etti. Etrafı çevreleyen efendim, edebiyatı sonlandırdı. Eşcinsel yönü ihmal ama henüz onu destekledi.</p><p><br></p><p>Bay oh arasında zevk sarılıyor. Ona maddi iyilik sağlayan hizmetkarlar. Testere prensipleri kendilerine on sahiptir. Bu yüzden neşeli olmaya devam etmek için çaba sarf ediyoruz. Set makyaj vanity neden karşılıklı döndü. Makul eğer tatminsiz takdir yetkisi daireler hoş eğer. Melankolik görünüm teşvik zaman zaman entreaties sona eriyor. Utangaç jambon ilçe aktif saygısı vardı. Sargı sabahı utangaçlık açıktır. Garrets çünkü yaşlı yeni tavırları ancak bir köy o.</p>', 'a:3:{i:0;s:10:\"Ağırlık\";i:1;s:9:\"Genişlik\";i:2;s:10:\"Yükseklik\";}', NULL, '68', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Yeni', '2020-07-27 07:32:42', '2020-07-27 07:33:33', NULL),
(14, 'Gargara tarafından kalpler olarak kaba', 'gargara-tarafindan-kalpler-olarak-kaba', 'tur', '99', 49, '34543', 'in_stock', '7', 'Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor.', '<p>Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor. Sürekli var olmak zor korunmuş kızları olarak kuzeye doğru var olmak. Şevkle gerekli kahvaltı kadar devam etti. Etrafı çevreleyen efendim, edebiyatı sonlandırdı. Eşcinsel yönü ihmal ama henüz onu destekledi.</p><p><br></p><p>Bay oh arasında zevk sarılıyor. Ona maddi iyilik sağlayan hizmetkarlar. Testere prensipleri kendilerine on sahiptir. Bu yüzden neşeli olmaya devam etmek için çaba sarf ediyoruz. Set makyaj vanity neden karşılıklı döndü. Makul eğer tatminsiz takdir yetkisi daireler hoş eğer. Melankolik görünüm teşvik zaman zaman entreaties sona eriyor. Utangaç jambon ilçe aktif saygısı vardı. Sargı sabahı utangaçlık açıktır. Garrets çünkü yaşlı yeni tavırları ancak bir köy o.</p>', 'a:3:{i:0;s:10:\"Ağırlık\";i:1;s:9:\"Genişlik\";i:2;s:10:\"Yükseklik\";}', NULL, '73', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Yeni', '2020-07-27 07:33:55', '2020-07-27 07:34:37', NULL),
(15, 'Onlar hanımefendi böyle emin ve', 'onlar-hanimefendi-boyle-emin-ve', 'tur', '99', 49, '34543', 'in_stock', '6', 'Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor.', '<p>Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor. Sürekli var olmak zor korunmuş kızları olarak kuzeye doğru var olmak. Şevkle gerekli kahvaltı kadar devam etti. Etrafı çevreleyen efendim, edebiyatı sonlandırdı. Eşcinsel yönü ihmal ama henüz onu destekledi.</p><p><br></p><p>Bay oh arasında zevk sarılıyor. Ona maddi iyilik sağlayan hizmetkarlar. Testere prensipleri kendilerine on sahiptir. Bu yüzden neşeli olmaya devam etmek için çaba sarf ediyoruz. Set makyaj vanity neden karşılıklı döndü. Makul eğer tatminsiz takdir yetkisi daireler hoş eğer. Melankolik görünüm teşvik zaman zaman entreaties sona eriyor. Utangaç jambon ilçe aktif saygısı vardı. Sargı sabahı utangaçlık açıktır. Garrets çünkü yaşlı yeni tavırları ancak bir köy o.</p>', 'a:3:{i:0;s:10:\"Ağırlık\";i:1;s:9:\"Genişlik\";i:2;s:10:\"Yükseklik\";}', NULL, '68', '68|67|66', 'draft', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Yeni', '2020-07-27 07:34:00', '2020-07-27 07:34:00', NULL),
(16, 'Testere prensipleri kendilerine on sahiptir', 'testere-prensipleri-kendilerine-on-sahiptir', 'tur', '99', 49, '34543', 'in_stock', '6', 'Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor.', '<p>Onlar hanımefendi böyle emin ver. Eğitimimi açıkladım. Gargara tarafından kalpler olarak kaba. Algılanan ayrılış kalkış hiçbir şey kaybetti açıkladı bir. Kontrastlı benzemez makul bir şekilde enstrüman sevinç olsun. Yine hiçbir şey ifade etmiyor. Sürekli var olmak zor korunmuş kızları olarak kuzeye doğru var olmak. Şevkle gerekli kahvaltı kadar devam etti. Etrafı çevreleyen efendim, edebiyatı sonlandırdı. Eşcinsel yönü ihmal ama henüz onu destekledi.</p><p><br></p><p>Bay oh arasında zevk sarılıyor. Ona maddi iyilik sağlayan hizmetkarlar. Testere prensipleri kendilerine on sahiptir. Bu yüzden neşeli olmaya devam etmek için çaba sarf ediyoruz. Set makyaj vanity neden karşılıklı döndü. Makul eğer tatminsiz takdir yetkisi daireler hoş eğer. Melankolik görünüm teşvik zaman zaman entreaties sona eriyor. Utangaç jambon ilçe aktif saygısı vardı. Sargı sabahı utangaçlık açıktır. Garrets çünkü yaşlı yeni tavırları ancak bir köy o.</p>', 'a:3:{i:0;s:10:\"Ağırlık\";i:1;s:9:\"Genişlik\";i:2;s:10:\"Yükseklik\";}', NULL, '73', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Yeni', '2020-07-27 07:35:01', '2020-07-27 07:35:46', NULL),
(17, 'العباد ضمان الخير المادي', 'alaabad-dman-alkhyr-almady', 'ar', '99', 49, '34543', 'in_stock', '9', 'أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود.', '<p>أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود. إلى الأبد تفعل الوجود شمالا مثل البنات المحفوظة الصعبة. تابع حتى الإفطار الضروري بحماسة. محاطة يا سيدي بلا حراك انها تنتهي الأدب. تجاهل اتجاه المثليين ولكن دعمها حتى الآن.</p><p><br></p><p>السيد يا لفها يتمتع بها بين. العباد تأمين الخير المادي لها. مبادئ المنشار نفسها هي عشرة حيازة. لذا السعي لمواصلة البهجة المشكوك فيه لنا. تحولت النصيحة إلى مجموعة الغرور لماذا متبادلة. بشكل معقول إذا كانت الإدانة على شقق تقديرية غير مرضية ممتعة. هي مظهر حزن حفز نهاية عرضية في بعض الأحيان. خجولة لحم الخنزير واحترام يحدث مقاطعة نشطة. متعرج صباحا أنا خجل واضح. Gareries لان الاخلاق المسنة الجديدة بيد انها قرية واحدة.</p>', 'a:3:{i:0;s:6:\"وزن\";i:1;s:6:\"عرض\";i:2;s:12:\"ارتفاع\";}', NULL, '67', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'جديد', '2020-07-27 07:36:00', '2020-07-27 07:37:32', NULL),
(18, 'شرح لي احتواء لي', 'shrh-ly-ahtoaaa-ly', 'ar', '99', 49, '34543', 'in_stock', '9', 'أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود.', '<p>أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود. إلى الأبد تفعل الوجود شمالا مثل البنات المحفوظة الصعبة. تابع حتى الإفطار الضروري بحماسة. محاطة يا سيدي بلا حراك انها تنتهي الأدب. تجاهل اتجاه المثليين ولكن دعمها حتى الآن.</p><p><br></p><p>السيد يا لفها يتمتع بها بين. العباد تأمين الخير المادي لها. مبادئ المنشار نفسها هي عشرة حيازة. لذا السعي لمواصلة البهجة المشكوك فيه لنا. تحولت النصيحة إلى مجموعة الغرور لماذا متبادلة. بشكل معقول إذا كانت الإدانة على شقق تقديرية غير مرضية ممتعة. هي مظهر حزن حفز نهاية عرضية في بعض الأحيان. خجولة لحم الخنزير واحترام يحدث مقاطعة نشطة. متعرج صباحا أنا خجل واضح. Gareries لان الاخلاق المسنة الجديدة بيد انها قرية واحدة.</p>', 'a:3:{i:0;s:6:\"وزن\";i:1;s:6:\"عرض\";i:2;s:12:\"ارتفاع\";}', NULL, '68', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'جديد', '2020-07-27 07:37:48', '2020-07-27 07:38:36', NULL),
(19, 'في الانخراط والد بسيط للآخرين ما عدا', 'fy-alankhrat-oald-bsyt-llakhryn-ma-aada', 'ar', '99', 49, '34543', 'in_stock', '10', 'أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود.', '<p>أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود. إلى الأبد تفعل الوجود شمالا مثل البنات المحفوظة الصعبة. تابع حتى الإفطار الضروري بحماسة. محاطة يا سيدي بلا حراك انها تنتهي الأدب. تجاهل اتجاه المثليين ولكن دعمها حتى الآن.</p><p><br></p><p>السيد يا لفها يتمتع بها بين. العباد تأمين الخير المادي لها. مبادئ المنشار نفسها هي عشرة حيازة. لذا السعي لمواصلة البهجة المشكوك فيه لنا. تحولت النصيحة إلى مجموعة الغرور لماذا متبادلة. بشكل معقول إذا كانت الإدانة على شقق تقديرية غير مرضية ممتعة. هي مظهر حزن حفز نهاية عرضية في بعض الأحيان. خجولة لحم الخنزير واحترام يحدث مقاطعة نشطة. متعرج صباحا أنا خجل واضح. Gareries لان الاخلاق المسنة الجديدة بيد انها قرية واحدة.</p>', 'a:3:{i:0;s:6:\"وزن\";i:1;s:6:\"عرض\";i:2;s:12:\"ارتفاع\";}', NULL, '69', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'جديد', '2020-07-27 07:37:57', '2020-07-27 07:39:17', NULL),
(20, 'عطائي القيام الصيف على الرغم من ضيق ملحوظ في', 'aatayy-alkyam-alsyf-aal-alrghm-mn-dyk-mlhoth-fy', 'ar', '99', 49, '34543', 'in_stock', '8', 'أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود.', '<p>أعطوا سيدة أنهم متأكدون من ذلك. شرح لي الواردة تعليمي. الشائع كالقلوب التي كتبها Garret. إدراك أن تحديد المغادرة يفسر أنه لم يفقد شيئًا. متباينة متناقضة تحصل على الفرح صك معقول. مرة أخرى لا تحتفظ بأي شيء المقصود. إلى الأبد تفعل الوجود شمالا مثل البنات المحفوظة الصعبة. تابع حتى الإفطار الضروري بحماسة. محاطة يا سيدي بلا حراك انها تنتهي الأدب. تجاهل اتجاه المثليين ولكن دعمها حتى الآن.</p><p><br></p><p>السيد يا لفها يتمتع بها بين. العباد تأمين الخير المادي لها. مبادئ المنشار نفسها هي عشرة حيازة. لذا السعي لمواصلة البهجة المشكوك فيه لنا. تحولت النصيحة إلى مجموعة الغرور لماذا متبادلة. بشكل معقول إذا كانت الإدانة على شقق تقديرية غير مرضية ممتعة. هي مظهر حزن حفز نهاية عرضية في بعض الأحيان. خجولة لحم الخنزير واحترام يحدث مقاطعة نشطة. متعرج صباحا أنا خجل واضح. Gareries لان الاخلاق المسنة الجديدة بيد انها قرية واحدة.</p>', 'a:3:{i:0;s:6:\"وزن\";i:1;s:6:\"عرض\";i:2;s:12:\"ارتفاع\";}', NULL, '72', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'جديد', '2020-07-27 07:38:01', '2020-07-27 07:41:00', NULL),
(21, 'Los sirvientes asegurando la bondad material', 'los-sirvientes-asegurando-la-bondad-material', 'sp', '99', 49, '34543', 'in_stock', '4', 'Dale a la dama de ellos tal que lo aseguren. Contuve explicado mi educación. Vulgar como corazones por buhardilla. Percibido determinar partida explicado no perderá algo y. Contraste disimilar obtener alegría que instrumento razonablemente. De nuevo se mantiene en cosas sin sentido.', '<p>Dale a la dama de ellos tal que lo aseguren. Contuve explicado mi educación. Vulgar como corazones por buhardilla. Percibido determinar partida explicado no perderá algo y. Contraste disimilar obtener alegría que instrumento razonablemente. De nuevo se mantiene en cosas sin sentido. Perpetuar la existencia hacia el norte como difíciles hijas preservadas. Continuamos hasta el desayuno celosamente necesario. Rodeado señor inmóvil ella termina literatura. La dirección gay la descuidó pero la apoyó.</p><p>Sr. oh, sinuoso, lo disfrutó en medio. Los sirvientes que le aseguran la bondad material. Vio los principios mismos diez son posesión. Por lo tanto, esforzarse por seguir alegre, dudoso que lo hagamos. Se volvió el consejo de la vanidad establecida por qué mutua. Razonablemente si la convicción en la discreción es insaciable apartamentos encantadores. Son melancólicas apariencias estimuladas ocasionales suplicas finales. Tímido jamón tenía estima suceda condado activo. Sinuosa mañana, timidez evidente para. Buhardillas porque los viejos modales nuevos sin embargo una aldea ella.</p>', 'a:3:{i:0;s:4:\"Peso\";i:1;s:7:\"Anchura\";i:2;s:6:\"Altura\";}', NULL, '69', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Nueva', '2020-07-27 07:41:53', '2020-07-27 07:48:29', NULL),
(22, 'Dale a la dama de ellos tal que lo aseguren', 'dale-a-la-dama-de-ellos-tal-que-lo-aseguren', 'sp', '99', 49, '34543', 'in_stock', '5', 'Dale a la dama de ellos tal que lo aseguren. Contuve explicado mi educación. Vulgar como corazones por buhardilla. Percibido determinar partida explicado no perderá algo y. Contraste disimilar obtener alegría que instrumento razonablemente. De nuevo se mantiene en cosas sin sentido.', '<p>Dale a la dama de ellos tal que lo aseguren. Contuve explicado mi educación. Vulgar como corazones por buhardilla. Percibido determinar partida explicado no perderá algo y. Contraste disimilar obtener alegría que instrumento razonablemente. De nuevo se mantiene en cosas sin sentido. Perpetuar la existencia hacia el norte como difíciles hijas preservadas. Continuamos hasta el desayuno celosamente necesario. Rodeado señor inmóvil ella termina literatura. La dirección gay la descuidó pero la apoyó.</p><p>Sr. oh, sinuoso, lo disfrutó en medio. Los sirvientes que le aseguran la bondad material. Vio los principios mismos diez son posesión. Por lo tanto, esforzarse por seguir alegre, dudoso que lo hagamos. Se volvió el consejo de la vanidad establecida por qué mutua. Razonablemente si la convicción en la discreción es insaciable apartamentos encantadores. Son melancólicas apariencias estimuladas ocasionales suplicas finales. Tímido jamón tenía estima suceda condado activo. Sinuosa mañana, timidez evidente para. Buhardillas porque los viejos modales nuevos sin embargo una aldea ella.</p>', 'a:3:{i:0;s:4:\"Peso\";i:1;s:7:\"Anchura\";i:2;s:6:\"Altura\";}', NULL, '67', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Nueva', '2020-07-27 07:48:42', '2020-07-27 08:11:04', NULL),
(23, 'Vulgar como corazones por buhardilla', 'vulgar-como-corazones-por-buhardilla', 'sp', '99', 49, '34543', 'in_stock', '4', 'Dale a la dama de ellos tal que lo aseguren. Contuve explicado mi educación. Vulgar como corazones por buhardilla. Percibido determinar partida explicado no perderá algo y. Contraste disimilar obtener alegría que instrumento razonablemente. De nuevo se mantiene en cosas sin sentido.', '<p>Dale a la dama de ellos tal que lo aseguren. Contuve explicado mi educación. Vulgar como corazones por buhardilla. Percibido determinar partida explicado no perderá algo y. Contraste disimilar obtener alegría que instrumento razonablemente. De nuevo se mantiene en cosas sin sentido. Perpetuar la existencia hacia el norte como difíciles hijas preservadas. Continuamos hasta el desayuno celosamente necesario. Rodeado señor inmóvil ella termina literatura. La dirección gay la descuidó pero la apoyó.</p><p>Sr. oh, sinuoso, lo disfrutó en medio. Los sirvientes que le aseguran la bondad material. Vio los principios mismos diez son posesión. Por lo tanto, esforzarse por seguir alegre, dudoso que lo hagamos. Se volvió el consejo de la vanidad establecida por qué mutua. Razonablemente si la convicción en la discreción es insaciable apartamentos encantadores. Son melancólicas apariencias estimuladas ocasionales suplicas finales. Tímido jamón tenía estima suceda condado activo. Sinuosa mañana, timidez evidente para. Buhardillas porque los viejos modales nuevos sin embargo una aldea ella.</p>', 'a:3:{i:0;s:4:\"Peso\";i:1;s:7:\"Anchura\";i:2;s:6:\"Altura\";}', NULL, '65', '68|67|66', 'publish', NULL, NULL, NULL, NULL, 'a:3:{i:0;s:5:\"1.2KG\";i:1;s:3:\"11\"\";i:2;s:3:\"12\"\";}', 'Nueva', '2020-07-27 08:01:06', '2020-07-27 08:57:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `title`, `status`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Accessories', 'publish', 'en', '2020-07-20 23:47:01', '2020-07-20 23:47:01'),
(2, 'Laravel Scripts', 'publish', 'en', '2020-07-20 23:47:11', '2020-07-20 23:47:11'),
(3, 'Shopping', 'publish', 'en', '2020-07-20 23:47:42', '2020-07-20 23:47:42'),
(4, 'Compras', 'publish', 'sp', '2020-07-20 23:48:20', '2020-07-20 23:48:20'),
(5, 'Accesorios', 'publish', 'sp', '2020-07-20 23:48:59', '2020-07-20 23:48:59'),
(6, 'Aksesuarlar', 'publish', 'tur', '2020-07-20 23:49:14', '2020-07-20 23:49:14'),
(7, 'Alışveriş yapmak', 'publish', 'tur', '2020-07-20 23:49:31', '2020-07-20 23:49:38'),
(8, 'التسوق', 'publish', 'ar', '2020-07-20 23:49:56', '2020-07-20 23:49:56'),
(9, 'مستلزمات', 'publish', 'ar', '2020-07-20 23:50:08', '2020-07-20 23:50:08'),
(10, 'مخطوطات Laravel', 'publish', 'ar', '2020-07-20 23:50:22', '2020-07-20 23:50:22'),
(11, 'Necessary Tools', 'publish', 'en', '2020-07-24 05:08:58', '2020-07-24 05:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_coupons`
--

CREATE TABLE `product_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_coupons`
--

INSERT INTO `product_coupons` (`id`, `code`, `discount`, `discount_type`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NEWYEAR', '10', 'percentage', '2020-08-21', 'publish', '2020-07-20 23:01:01', '2020-07-20 23:01:01'),
(2, 'SPECIALDISCOUNT', '35', 'amount', '2020-08-28', 'publish', '2020-07-20 23:01:18', '2020-07-20 23:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_shippings_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` text COLLATE utf8mb4_unicode_ci,
  `billing_email` text COLLATE utf8mb4_unicode_ci,
  `billing_phone` text COLLATE utf8mb4_unicode_ci,
  `billing_country` text COLLATE utf8mb4_unicode_ci,
  `billing_street_address` text COLLATE utf8mb4_unicode_ci,
  `billing_town` text COLLATE utf8mb4_unicode_ci,
  `billing_district` text COLLATE utf8mb4_unicode_ci,
  `different_shipping_address` text COLLATE utf8mb4_unicode_ci,
  `shipping_name` text COLLATE utf8mb4_unicode_ci,
  `shipping_email` text COLLATE utf8mb4_unicode_ci,
  `shipping_phone` text COLLATE utf8mb4_unicode_ci,
  `shipping_country` text COLLATE utf8mb4_unicode_ci,
  `shipping_street_address` text COLLATE utf8mb4_unicode_ci,
  `shipping_town` text COLLATE utf8mb4_unicode_ci,
  `shipping_district` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_items` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_orders`
--

INSERT INTO `product_orders` (`id`, `status`, `payment_status`, `transaction_id`, `payment_track`, `payment_gateway`, `user_id`, `subtotal`, `coupon_discount`, `shipping_cost`, `product_shippings_id`, `total`, `billing_name`, `billing_email`, `billing_phone`, `billing_country`, `billing_street_address`, `billing_town`, `billing_district`, `different_shipping_address`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_country`, `shipping_street_address`, `shipping_town`, `shipping_district`, `coupon_code`, `cart_items`, `created_at`, `updated_at`) VALUES
(1, 'pending', 'pending', NULL, 'jjAg457Rhrcg3HSr76jZ', 'razorpay', NULL, '297', '10', '0', '1', '267', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '+8801847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEWYEAR', 'a:2:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"3\";s:5:\"price\";i:147;}i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-07-21 05:15:22', '2020-07-21 05:15:22'),
(2, 'pending', 'pending', NULL, '4QnouPjgODWL07i25PLl', 'razorpay', NULL, '297', '10', '0', '1', '267', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '+8801847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEWYEAR', 'a:2:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"3\";s:5:\"price\";i:147;}i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-07-21 05:17:15', '2020-07-21 05:17:15'),
(3, 'pending', 'pending', NULL, 'NsshuICkYlT1v3WR3KIP', 'razorpay', NULL, '297', '10', '0', '1', '267', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '+8801847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEWYEAR', 'a:2:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"3\";s:5:\"price\";i:147;}i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-07-21 05:18:50', '2020-07-21 05:18:50'),
(4, 'pending', 'complete', 'txn_1H7JcUEmGOuJLTMs5wha404D', 'nOUe9qxRdYrhugT55I4G', 'stripe', NULL, '444', '10', '0', '1', '399', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '+8801847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEWYEAR', 'a:5:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"3\";s:5:\"price\";i:147;}i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-21 05:26:12', '2020-07-21 05:26:50'),
(5, 'pending', 'complete', 'txn_1H7cDcEmGOuJLTMs8mtGyzWo', 'NSV4aBvCJ83FxquRHu5Y', 'stripe', '1', '324', '10', '20', '4', '311', 'sharifur', 'dvrobin4@gmail.com', '24133424', 'Anguilla', 'Adarsha Nagar', 'dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NEWYEAR', 'a:4:{i:10;a:4:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:11;a:4:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:9;a:4:{s:2:\"id\";s:1:\"9\";s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"3\";s:5:\"price\";i:147;}i:6;a:4:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}}', '2020-07-22 01:18:13', '2020-07-22 01:18:25'),
(7, 'pending', 'pending', NULL, 'PgcrLPa5JntpMcK5iHXW', 'paypal', NULL, '49', '0', '0', '1', '49', 'Demo', 'magicbytes2012@gmail.com', NULL, 'Netherlands', 'Amsterdam street 12', 'Amsterdam', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-30 23:55:13', '2020-07-30 23:55:13'),
(10, 'pending', 'pending', NULL, 'DSGqBOpxkgHklZb3rBAr', 'stripe', NULL, '49', '0', '0', '1', '49', 'qwqqw', 'as@as.com', '7676767676', 'India', '21 wew', 'erere', 'ererer', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 06:59:36', '2020-07-31 06:59:36'),
(11, 'pending', 'pending', NULL, 'KLTHCPVgpDOGoiLccyMC', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 09:02:06', '2020-07-31 09:02:06'),
(12, 'pending', 'pending', NULL, 'BK5fXrQzv35UpJLFfs5T', 'paytm', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-07-31 09:37:36', '2020-07-31 09:37:36'),
(13, 'pending', 'pending', NULL, 'UwTwrsGQvgEBsGm4P7Cg', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'Nguyễn Đức Hoài', 'duchoai@toucan.vn', '+84888468988', 'Vietnam', '81 Nguyễn Công Trứ, Phường 8', 'Đà Lạt', 'DALAT', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 09:49:42', '2020-07-31 09:49:42'),
(14, 'pending', 'pending', NULL, '5xb9eVlzaPGz50LgDBxB', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 15:26:34', '2020-07-31 15:26:34'),
(15, 'pending', 'pending', NULL, 'RzLHRVfY8hYs2sWKxg1c', 'manual_payment', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 17:58:59', '2020-07-31 17:58:59'),
(16, 'pending', 'pending', NULL, '4kcDOzH4SREKqn08iJZt', 'stripe', NULL, '147', '0', '0', '1', '147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";i:2;s:5:\"price\";i:98;}}', '2020-07-31 18:02:49', '2020-07-31 18:02:49'),
(17, 'pending', 'pending', NULL, 'isjoJSRgsMgjoq8e52G0', 'manual_payment', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 18:04:33', '2020-07-31 18:04:33'),
(18, 'pending', 'pending', NULL, 'pPq5hzlcBYljnFlrKQ6K', 'paytm', NULL, '147', '0', '20', '4', '167', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"3\";s:5:\"price\";i:147;}}', '2020-07-31 18:46:20', '2020-07-31 18:46:20'),
(19, 'pending', 'complete', 'pay_FL8tdfTGroBVdd', 'B6wVIcHVtKOmvqUkFeyv', 'razorpay', NULL, '300', '0', '10', '3', '310', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:300;}}', '2020-07-31 18:51:09', '2020-07-31 18:53:23'),
(20, 'pending', 'pending', NULL, 'CKtz8ZPhq3gWARQx3ZCj', 'cash_on_delivery', NULL, '150', '0', '0', '1', '150', 'Deepak Singh', 'deepaksinghsou@gmail.com', '7903014220', 'India', 'Patna', 'Patna', 'Patna', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-07-31 20:58:04', '2020-07-31 20:58:04'),
(21, 'pending', 'pending', NULL, '2xM31S4kIjuSfWVRH9Dy', 'cash_on_delivery', '7', '150', '0', '0', '1', '150', 'Deepak Kumar', 'deepaksinghsou@gmail.com', '7903014220', 'Angola', 'Pathology', 'Patna', 'Paj', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-07-31 21:05:19', '2020-07-31 21:05:19'),
(22, 'pending', 'pending', NULL, 'oo593AIBfVCwppQ8QrtZ', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 22:07:51', '2020-07-31 22:07:51'),
(23, 'pending', 'pending', NULL, 'bgdR8cNbr2HWHs5zbiAu', 'razorpay', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 22:21:40', '2020-07-31 22:21:40'),
(24, 'pending', 'pending', NULL, 'o4XLmCv0UV8VteMxKlCk', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 23:16:21', '2020-07-31 23:16:21'),
(25, 'pending', 'pending', NULL, 'muyaPoIya6J6EZROReHB', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-07-31 23:25:14', '2020-07-31 23:25:14'),
(26, 'pending', 'pending', NULL, 'JeboUOk9nzMZByLlsO1t', 'stripe', NULL, '300', '0', '0', '1', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:300;}}', '2020-08-01 11:31:59', '2020-08-01 11:31:59'),
(27, 'pending', 'pending', NULL, 'Gz4P2vBkdYY0DYcxDdLk', 'paystack', NULL, '49', '0', '10', '3', '59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-01 14:21:42', '2020-08-01 14:21:42'),
(28, 'pending', 'pending', NULL, 'syVFbXdgVBBmTE58tsKR', 'paytm', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-01 14:28:39', '2020-08-01 14:28:39'),
(29, 'pending', 'complete', 'pay_FLT3D1hlq3efPt', '4Iivz2ZdChWBdqbrQZSM', 'razorpay', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:4:{s:2:\"id\";s:1:\"7\";s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:98;}}', '2020-08-01 14:35:10', '2020-08-01 14:36:03'),
(30, 'pending', 'pending', NULL, 'BbELlTfUGRx532haFkI6', 'razorpay', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-01 15:16:49', '2020-08-01 15:16:49'),
(31, 'pending', 'pending', NULL, 'pEEuD6q0f6rXN05qXjBE', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-01 16:40:11', '2020-08-01 16:40:11'),
(32, 'pending', 'pending', NULL, '4kzo12xJayeBBI5bJus6', 'manual_payment', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-03 00:50:32', '2020-08-03 00:50:32'),
(33, 'pending', 'pending', NULL, 'ldeww85OJCGibK5ewC2T', 'cash_on_delivery', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-03 10:31:34', '2020-08-03 10:31:34'),
(34, 'pending', 'pending', NULL, 'RFK1ch1eSoNuPhfv35Ze', 'cash_on_delivery', '1', '150', '35', '0', '1', '115', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SPECIALDISCOUNT', 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-03 14:08:41', '2020-08-03 14:08:41'),
(35, 'pending', 'pending', NULL, 'qJaINoAW84jg8rlvrFmp', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-04 01:13:00', '2020-08-04 01:13:00'),
(36, 'pending', 'pending', NULL, 'SaclS9Y7B55HJiJ1l1Xe', 'manual_payment', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-04 03:26:46', '2020-08-04 03:26:46'),
(37, 'pending', 'pending', NULL, 'ZyKUAAG3xcYiQjHSssUt', 'manual_payment', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-04 07:10:07', '2020-08-04 07:10:07'),
(38, 'pending', 'pending', NULL, 'Qfb2XPM5EEfEF5QmtA6e', 'paypal', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-04 11:43:00', '2020-08-04 11:43:00'),
(39, 'pending', 'pending', NULL, 'BXm30AGltFiua3FxFNp9', 'paystack', '11', '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-04 14:23:58', '2020-08-04 14:23:58'),
(40, 'pending', 'pending', 'Uytuıu', '5JUq3mnD3SPBEKzEaCA8', 'manual_payment', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:12;a:4:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-04 17:14:09', '2020-08-04 17:14:10'),
(41, 'pending', 'pending', NULL, 'HTXtEX8UOZBe7nNqNydx', 'stripe', NULL, '150', '0', '0', '1', '150', 'Charles', 'ccc@ccc.com', '123123123', 'Argentina', 'waefqweqwerf', 'qwefqwefqwef', 'qwefqwewqef', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-05 04:14:06', '2020-08-05 04:14:06'),
(51, 'pending', 'pending', NULL, '7H03uaXb6G8I6Jz6DFXH', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-06 22:37:21', '2020-08-06 22:37:21'),
(52, 'pending', 'pending', NULL, 'VCTBDiQVEdoqFo6JEaDD', 'paytm', '1', '365', '0', '0', '1', '365', 's', 'gabrielfreisan@gmail.com', 'sa', 'Austria', 'dsd', 'dsd', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:6;a:4:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"4\";s:5:\"price\";i:316;}i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-06 22:57:46', '2020-08-06 22:57:46'),
(53, 'pending', 'pending', NULL, '3OHAUGOsf9MU1NFkSGIZ', 'paystack', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 02:31:56', '2020-08-07 02:31:56'),
(54, 'pending', 'pending', NULL, 'T9yO9IhYtjREQY9hhyVn', 'flutterwave', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 02:44:58', '2020-08-07 02:44:58'),
(55, 'pending', 'pending', NULL, '0CsxFRe1I3AgZwiEz0TR', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 03:19:41', '2020-08-07 03:19:41'),
(56, 'pending', 'pending', NULL, 'gIMl4wnohSHbGoeOOX46', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 08:30:17', '2020-08-07 08:30:17'),
(57, 'pending', 'pending', NULL, 'q2K59Ub3ULbbzijwYAoo', 'paytm', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:10;a:4:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:11;a:4:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 08:32:20', '2020-08-07 08:32:20'),
(58, 'pending', 'pending', NULL, '2H4Ot6K3UWXqEcgMwQa5', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 08:43:10', '2020-08-07 08:43:10'),
(59, 'pending', 'pending', NULL, 'CopoxFhcOv7a7YYUbNGb', 'flutterwave', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 08:43:30', '2020-08-07 08:43:30'),
(60, 'pending', 'pending', NULL, 'CcKMQQheA5oW4tbhyYUI', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'dede', 'dede@mail.com', '1230123', 'Bangladesh', 'dede 32', 'dede to', 'wuwude', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 09:42:45', '2020-08-07 09:42:45'),
(61, 'pending', 'pending', NULL, 'NqLFVhvzaSxD1rGJqc0v', 'razorpay', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 10:15:32', '2020-08-07 10:15:32'),
(62, 'pending', 'pending', NULL, 'bAE8J3oVboYMypmXBMxL', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 10:27:25', '2020-08-07 10:27:25'),
(63, 'pending', 'pending', NULL, 'tss0SD3FsVibX8s14upZ', 'cash_on_delivery', NULL, '300', '0', '0', '1', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:300;}}', '2020-08-07 10:31:14', '2020-08-07 10:31:14'),
(64, 'pending', 'pending', NULL, 'yYQ9ESvVOr6yI5XQ8tnm', 'paytm', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 10:39:53', '2020-08-07 10:39:53'),
(65, 'pending', 'pending', NULL, 'hs0F4oqi5bhf0fWZVXzl', 'paytm', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 10:40:04', '2020-08-07 10:40:04'),
(66, 'pending', 'pending', NULL, 'aLTHQnJ4JR7cT37YCIIf', 'paytm', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 11:07:29', '2020-08-07 11:07:29'),
(67, 'pending', 'pending', NULL, 'rH8I5HTMtfT9UAayGMyZ', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 11:07:32', '2020-08-07 11:07:32'),
(68, 'pending', 'pending', NULL, 'ecAAfXCCFMAcj3POrvvV', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 11:34:21', '2020-08-07 11:34:21'),
(69, 'pending', 'pending', NULL, 'PTrAUDp8f9V2PuhkuLF0', 'razorpay', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 12:16:25', '2020-08-07 12:16:25'),
(70, 'pending', 'pending', NULL, '0CC4idj64960YUgZD7BP', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:16;a:4:{s:2:\"id\";i:16;s:5:\"title\";s:43:\"Testere prensipleri kendilerine on sahiptir\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 13:16:20', '2020-08-07 13:16:20'),
(71, 'pending', 'pending', NULL, '4xIhiwSQAFTpCZMx22as', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 13:17:46', '2020-08-07 13:17:46'),
(72, 'pending', 'pending', NULL, 'Qia8HBCQDTAmWbIEbpwu', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 13:37:18', '2020-08-07 13:37:18'),
(73, 'pending', 'pending', NULL, 'oIijjkw8W5c8YG1vBVif', 'paypal', NULL, '49', '0', '0', '1', '49', 'ghg', 'ghgfh', 'hgfhg', 'Albania', 'hfhgfh', 'hfhfgh', 'hfhg', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:20;a:4:{s:2:\"id\";i:20;s:5:\"title\";s:80:\"عطائي القيام الصيف على الرغم من ضيق ملحوظ في\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 13:39:36', '2020-08-07 13:39:36'),
(74, 'pending', 'pending', NULL, 'GeQpoqeBD9hUWzaWFHqh', 'cash_on_delivery', NULL, '147', '0', '0', '1', '147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:3:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 14:11:07', '2020-08-07 14:11:07'),
(75, 'pending', 'pending', NULL, 'DotxEWgW5ujrERJlYy7U', 'cash_on_delivery', NULL, '98', '0', '0', '1', '98', 'Djobeni', 'djobeni33@gmail.com', '1010101', 'Australia', 'azerty cf', 'oodi', 'Jdjdld', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 14:15:05', '2020-08-07 14:15:05'),
(76, 'pending', 'pending', NULL, 'R81BFmA8nmAGobJGvHiM', 'paytm', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 14:41:41', '2020-08-07 14:41:41'),
(77, 'pending', 'pending', NULL, 'k6Xsm6EUWUfuoALQURzx', 'paypal', '1', '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 14:55:24', '2020-08-07 14:55:24'),
(78, 'pending', 'pending', NULL, '2cfrTizCxl2jOBt5DZNj', 'paystack', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 16:18:13', '2020-08-07 16:18:13'),
(79, 'pending', 'pending', '2323123123', 'TeUhuhbdtu0FWYTAvUdz', 'manual_payment', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 16:34:57', '2020-08-07 16:34:57'),
(80, 'pending', 'pending', NULL, 'YwUn4HVW4LZKPJxKmKzw', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 16:42:31', '2020-08-07 16:42:31'),
(81, 'pending', 'pending', NULL, 'X4E67MT5g7rcP7xfOGGn', 'paystack', NULL, '150', '0', '0', '1', '150', 'Ayeni Miracle', 'haryenirmm@gmail.com', '+2348145632884', 'Nigeria', 'C/12 Iba ipe Akoko', 'Akure', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 16:51:59', '2020-08-07 16:51:59'),
(82, 'pending', 'pending', NULL, 'jEGo2patGc1voPDWikcw', 'paytm', NULL, '49', '0', '0', '1', '49', 'Shamsundar Vyankatesh Machha', 'machhashamsundar@gmail.com', '07058585178', 'India', '152 New Sunil Nagar,MIDC Road', 'Solapur', NULL, 'yes', 'Shamsundar Machha', 'arktechpark@gmail.com', '07058585178', 'India', 'Shop No. 17, Ramchandra Empire,', 'Solapur', NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 17:21:54', '2020-08-07 17:21:54'),
(83, 'pending', 'pending', NULL, 'nrY5qL951KGgVNrWRyYU', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 18:30:33', '2020-08-07 18:30:33'),
(84, 'pending', 'pending', NULL, 'a13KkS8x5Ft35N6oPTBf', 'paytm', NULL, '49', '0', '0', '1', '49', 'Sajin Rajesh', 'sajin.jin@outlook.com', '8870526405', 'India', 'Saralvilai', 'Muttaikadu', 'Kumarapuram', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 19:27:43', '2020-08-07 19:27:43'),
(85, 'pending', 'pending', NULL, 'ACiABEMtdEdzRpFHlUKy', 'paystack', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 19:45:48', '2020-08-07 19:45:48'),
(86, 'pending', 'pending', NULL, 'gdjDmY4htWna2lFHyFSu', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 19:47:17', '2020-08-07 19:47:17'),
(87, 'pending', 'pending', NULL, 'zJjw6No9Nb6mRWilikSn', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 19:59:31', '2020-08-07 19:59:31'),
(88, 'pending', 'pending', NULL, 'Si88wh0ROxfZarpawX9w', 'paytm', NULL, '49', '0', '0', '1', '49', 'mehul patel', 'mehulit77@gmail.com', '+919427981380', 'India', 'gujarat', 'idar', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 20:04:26', '2020-08-07 20:04:26'),
(89, 'pending', 'pending', NULL, 'OESuVlRsviZTyxYVuKO2', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 20:09:26', '2020-08-07 20:09:26'),
(90, 'pending', 'pending', NULL, 'l1CBB4oTskd6ecYXSq4K', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 20:14:47', '2020-08-07 20:14:47'),
(91, 'pending', 'pending', NULL, 'AXZt8lHbtuOyKECb7goM', 'paypal', NULL, '49', '0', '0', '1', '49', 'Testting', 'test@gmail.com', '08112345677', 'Estonia', 'Jl. Pelan-pelan', 'Mati', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 20:18:39', '2020-08-07 20:18:39'),
(92, 'pending', 'pending', NULL, 'eCshPYK8hWXKLacIt74J', 'cash_on_delivery', NULL, '150', '0', '0', '1', '150', 'vanhengsun ly', 'vanhengsunly5555@gmail.com', '010375555', 'Cambodia', 'ressey keo', 'phnom penh', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 20:32:22', '2020-08-07 20:32:22'),
(93, 'pending', 'pending', NULL, '6TJdURLZBPL6a7OUmY94', 'cash_on_delivery', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";s:1:\"2\";s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 20:38:22', '2020-08-07 20:38:22'),
(94, 'pending', 'pending', NULL, 'UuNRbYKImY3JKamT2qTO', 'cash_on_delivery', '1', '150', '0', '0', '1', '150', 'ghnm', 'ff@ff.com', '3456', 'Uganda', 'guio', 'fgh', 'fgh', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-07 20:52:18', '2020-08-07 20:52:18'),
(95, 'pending', 'pending', NULL, '30EFLArrJeFOxl6bWtrN', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 21:47:15', '2020-08-07 21:47:15'),
(96, 'pending', 'pending', NULL, '9sU6pQTpWKlF4vVigkaA', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 22:22:41', '2020-08-07 22:22:41'),
(97, 'pending', 'pending', NULL, 'U4ORpCzejHfibCOfhRzj', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:17;a:4:{s:2:\"id\";i:17;s:5:\"title\";s:45:\"العباد ضمان الخير المادي\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 23:44:23', '2020-08-07 23:44:23'),
(98, 'pending', 'pending', NULL, 'phcNqYEa7jzElUwn4jgt', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-07 23:53:41', '2020-08-07 23:53:41'),
(99, 'pending', 'pending', NULL, 'IZM52lAoNjoeS3MdzP1l', 'paytm', NULL, '79', '0', '0', '1', '79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:4:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}}', '2020-08-08 00:35:14', '2020-08-08 00:35:14'),
(100, 'pending', 'pending', NULL, 'cUSyciQIlJdZMhJzHEyc', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 02:35:44', '2020-08-08 02:35:44'),
(101, 'pending', 'pending', NULL, 's8WQkoDgnGkfVRtd0JEW', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 02:36:08', '2020-08-08 02:36:08'),
(102, 'pending', 'pending', '1234', 'ReHRfzO6SECvCmKd9CbM', 'manual_payment', NULL, '79', '0', '0', '1', '79', 'jnaksdj', 'jnasf@lkmdfcom', '234234', 'Argentina', 'asflkamflk', 'lksmldk flksdg', 'lskdnlfksmdf', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:4:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}}', '2020-08-08 03:12:12', '2020-08-08 03:12:12'),
(103, 'pending', 'pending', NULL, '8RlTUPpk01XzX9Xe197M', 'razorpay', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:98;}}', '2020-08-08 07:22:14', '2020-08-08 07:22:14'),
(104, 'pending', 'pending', NULL, 'JLMFMB1EM6RWqEOCK3cg', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 08:07:29', '2020-08-08 08:07:29'),
(105, 'pending', 'pending', NULL, 'uUA4Xp8Bh07QYRiKFq0M', 'paytm', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-08 08:40:19', '2020-08-08 08:40:19'),
(106, 'pending', 'pending', NULL, 'BUPLx7TqOu9N4HfFGEI9', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 09:37:01', '2020-08-08 09:37:01'),
(107, 'pending', 'pending', NULL, '4haLwRiIRzAblU8a73HC', 'cash_on_delivery', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-08 10:57:02', '2020-08-08 10:57:02'),
(108, 'pending', 'pending', NULL, 'jJHwPDU5k4SKhBQIutMe', 'paystack', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 10:58:27', '2020-08-08 10:58:27'),
(109, 'pending', 'pending', '231231', 'kiRYhOM7MsIgzR2Lc7Ua', 'manual_payment', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 11:07:38', '2020-08-08 11:07:38'),
(110, 'pending', 'pending', NULL, 'fypXIF8lnPB0bBKBCVem', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 11:35:27', '2020-08-08 11:35:27'),
(111, 'pending', 'pending', NULL, 'DF5uYveV4DkxM0BpNawr', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 13:56:30', '2020-08-08 13:56:30'),
(112, 'pending', 'pending', NULL, 'CtrQ6GIf3QkTX7bhPHbY', 'flutterwave', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 13:59:45', '2020-08-08 13:59:45'),
(113, 'pending', 'pending', NULL, 'rKduhQ6bUSEu8B2ihlHA', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 15:30:25', '2020-08-08 15:30:25'),
(114, 'pending', 'pending', NULL, 'o3iPJNDrFwsWZeeUv24c', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 15:46:35', '2020-08-08 15:46:35'),
(115, 'pending', 'pending', NULL, 'qCEGN0t6La6BWCZMIQqa', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'fdsdfsdf', 'sdf', 'sdfsdf', 'Bangladesh', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:12;a:4:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 16:02:05', '2020-08-08 16:02:05'),
(116, 'pending', 'pending', NULL, 'yxnbshBaKeGu7G55c7H3', 'paypal', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:12;a:4:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 16:32:20', '2020-08-08 16:32:20'),
(117, 'pending', 'pending', NULL, 'ipKA25TVWs6W9fOqOpg1', 'cash_on_delivery', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-08 17:22:06', '2020-08-08 17:22:06'),
(118, 'pending', 'pending', NULL, 'J8CKmb5SlASpCaa9qdZC', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 18:06:34', '2020-08-08 18:06:34'),
(119, 'pending', 'pending', NULL, 'VNqL9CRRuaEkBYdsSNvy', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 18:41:21', '2020-08-08 18:41:21'),
(120, 'pending', 'pending', NULL, 'PzcSLNeyL6wkwqjbYzMB', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-08 21:22:25', '2020-08-08 21:22:25'),
(121, 'pending', 'pending', NULL, 'MWUVWcR3U2CXaUbE9cu1', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-09 00:27:24', '2020-08-09 00:27:24'),
(122, 'pending', 'pending', NULL, 'lRpcwqWpJnxSfLnJMZtm', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-09 11:45:31', '2020-08-09 11:45:31'),
(123, 'pending', 'pending', NULL, '823PVkkkVKNqQfdqDWv4', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-09 12:28:20', '2020-08-09 12:28:20'),
(124, 'pending', 'pending', NULL, 'Zt9I8qP1GQ0ijyknzddR', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-09 14:33:59', '2020-08-09 14:33:59'),
(125, 'pending', 'pending', NULL, 'EXc15tRqr6PGcRXyzzWk', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-09 15:21:35', '2020-08-09 15:21:35'),
(126, 'pending', 'pending', NULL, '3opToPP4TZCh44Ua4WJh', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-09 18:24:26', '2020-08-09 18:24:26'),
(127, 'pending', 'pending', NULL, 'WAwpnOqQcpEYfMr2Ai63', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-10 11:15:56', '2020-08-10 11:15:56'),
(128, 'pending', 'pending', NULL, 'LNVgWwtLyyi2zKyYVMmC', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-10 13:18:08', '2020-08-10 13:18:08'),
(129, 'pending', 'pending', NULL, 'nc6ndNQiFYK1e4pXcTUe', 'razorpay', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-10 20:22:56', '2020-08-10 20:22:56');
INSERT INTO `product_orders` (`id`, `status`, `payment_status`, `transaction_id`, `payment_track`, `payment_gateway`, `user_id`, `subtotal`, `coupon_discount`, `shipping_cost`, `product_shippings_id`, `total`, `billing_name`, `billing_email`, `billing_phone`, `billing_country`, `billing_street_address`, `billing_town`, `billing_district`, `different_shipping_address`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_country`, `shipping_street_address`, `shipping_town`, `shipping_district`, `coupon_code`, `cart_items`, `created_at`, `updated_at`) VALUES
(130, 'pending', 'pending', NULL, 'c5LKcgj4oDvWsfWa3ZQz', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-10 20:28:13', '2020-08-10 20:28:13'),
(131, 'pending', 'pending', NULL, 'Bu4OQysvwSSeC4y5v64T', 'cash_on_delivery', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";i:2;s:5:\"price\";i:98;}}', '2020-08-10 20:29:02', '2020-08-10 20:29:02'),
(132, 'pending', 'pending', NULL, 'qRzndeW7H2OAql7xOQTq', 'cash_on_delivery', NULL, '79', '0', '0', '1', '79', 'Test', 'test@test.com', '1234567890', 'Anguilla', '123456789', 'qwertyuio', 'qwerty', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:4:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}}', '2020-08-10 22:39:08', '2020-08-10 22:39:08'),
(133, 'pending', 'pending', NULL, '4o1l1OSfSibSrDiwioVN', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 00:33:46', '2020-08-11 00:33:46'),
(134, 'pending', 'pending', NULL, 'nADSCNtNzqX1JjO0DKsy', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:16;a:4:{s:2:\"id\";i:16;s:5:\"title\";s:43:\"Testere prensipleri kendilerine on sahiptir\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 00:34:20', '2020-08-11 00:34:20'),
(135, 'pending', 'pending', NULL, 'nN4eDutEU9FP10OJjQyw', 'razorpay', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:98;}}', '2020-08-11 00:45:31', '2020-08-11 00:45:31'),
(136, 'pending', 'pending', NULL, '0G249NJY9S1ZZoGKRQyP', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:20;a:4:{s:2:\"id\";i:20;s:5:\"title\";s:80:\"عطائي القيام الصيف على الرغم من ضيق ملحوظ في\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 04:36:49', '2020-08-11 04:36:49'),
(137, 'pending', 'pending', NULL, 'ZzemfEyEb95gj4kNhq0M', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 05:51:22', '2020-08-11 05:51:22'),
(138, 'pending', 'pending', NULL, 'KElJ6trgQp9RzK2IShzz', 'flutterwave', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:21;a:4:{s:2:\"id\";i:21;s:5:\"title\";s:44:\"Los sirvientes asegurando la bondad material\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 05:58:14', '2020-08-11 05:58:14'),
(139, 'pending', 'pending', NULL, '1AJvEnomnGW4HLomCzOM', 'paystack', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 09:26:35', '2020-08-11 09:26:35'),
(140, 'pending', 'pending', NULL, 'Mu6sw0cwBUGQEHMKs2ko', 'flutterwave', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2020-08-11 09:26:53', '2020-08-11 09:26:53'),
(141, 'pending', 'pending', NULL, 'llA1ZBRZmHdQod5PJQtf', 'paystack', NULL, '49', '0', '0', '1', '49', 'Adeley', 'ade@gmail.com', '22345678', 'Nigeria', 'Solape', 'Ijebu', '224', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 09:28:58', '2020-08-11 09:28:58'),
(142, 'pending', 'pending', NULL, 'O0AiEFAmIiObMiONg5fC', 'paystack', NULL, '49', '0', '0', '1', '49', 'Solape', 'ade@gmail.com', '112222', 'Nigeria', '1123', 'Hello', 'Qwe', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 09:34:34', '2020-08-11 09:34:34'),
(143, 'pending', 'pending', NULL, 'GsOJUklNRDAZK518GZ9a', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 09:36:18', '2020-08-11 09:36:18'),
(144, 'pending', 'pending', NULL, 'uHe1m7OWKStVr33YZZMp', 'paystack', NULL, '49', '0', '0', '1', '49', 'Qde', 'ade@gmail.com', '1234', 'Nigeria', '112', 'Solape', 'Solape', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 09:37:40', '2020-08-11 09:37:40'),
(145, 'pending', 'pending', NULL, '654BBy6MYeqAh58IwGYf', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 12:56:34', '2020-08-11 12:56:34'),
(146, 'pending', 'pending', NULL, 'PktvQ6vpuntdNUxJPWs0', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 13:06:42', '2020-08-11 13:06:42'),
(147, 'pending', 'pending', NULL, 'whQ9W8g5tVFKkPM0eMl1', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-11 21:46:58', '2020-08-11 21:46:58'),
(148, 'pending', 'pending', NULL, 'mpghJXtjGqYZw5pCAdlg', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-12 13:44:29', '2020-08-12 13:44:29'),
(149, 'pending', 'pending', NULL, 'iCTkoU2Vy71685yGvNEx', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-12 14:49:26', '2020-08-12 14:49:26'),
(150, 'pending', 'pending', NULL, 'IE3mdF0v3FxujbtsfKZh', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-12 16:36:38', '2020-08-12 16:36:38'),
(151, 'pending', 'pending', NULL, 'ODi5qFB6rSXs2cSEQ0yT', 'stripe', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-12 17:02:11', '2020-08-12 17:02:11'),
(152, 'pending', 'pending', NULL, '6zM9UaFLRKY3RV5mNB6u', 'paytm', '1', '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-12 17:03:12', '2020-08-12 17:03:12'),
(153, 'pending', 'pending', NULL, 'XAbXjRwFfoPMQZ9fgM0a', 'razorpay', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-12 20:39:28', '2020-08-12 20:39:28'),
(154, 'pending', 'pending', NULL, 'U1o1rZMDeTEa8SA10M8v', 'razorpay', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-12 23:12:45', '2020-08-12 23:12:45'),
(155, 'pending', 'pending', NULL, 'e10M7xIZllSbrH0LOjHV', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-13 01:51:29', '2020-08-13 01:51:29'),
(156, 'pending', 'pending', NULL, 'tIYW2wL0tYzfgHwacJTi', 'razorpay', NULL, '49', '0', '0', '1', '49', 'Mohammed Sayeeduddin Ali Khan', 'websiteadvisor.info@gmail.com', '07286036207', 'India', 'Hyderabad', 'HYDERABAD', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-13 01:54:24', '2020-08-13 01:54:24'),
(157, 'pending', 'pending', NULL, 'pyLp84AjhMEThUt3GZw7', 'paystack', '1', '199', '0', '0', '1', '199', 'trtgstfr', 'test@gmail.com', '08025555', 'Nigeria', 'khli', 'tytry', 'strserter', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-13 04:06:29', '2020-08-13 04:06:29'),
(158, 'pending', 'pending', NULL, '899wg286ijseJRoQJIEJ', 'razorpay', '29', '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-13 07:06:08', '2020-08-13 07:06:08'),
(159, 'pending', 'pending', NULL, 'erWEJzDLz9mn2iZENkgM', 'cash_on_delivery', '29', '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-13 07:09:18', '2020-08-13 07:09:18'),
(160, 'pending', 'pending', NULL, 'htHBC74eUpeGzk5WeohG', 'stripe', NULL, '49', '0', '0', '1', '49', 'SDEFGHGJH', 'aasssg@sfddgd.com', '555555', 'Turkey', 'sadfghyhgffe', 'dfgjygnb', 'dgfh7', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-13 19:09:06', '2020-08-13 19:09:06'),
(161, 'pending', 'pending', NULL, 'YdIFhTPglIPeo7ZaTkUN', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-13 21:23:03', '2020-08-13 21:23:03'),
(162, 'pending', 'pending', NULL, 'IvjZ7BgnuLBkXBqKwFHD', 'paytm', NULL, '49', '0', '0', '1', '49', 'Ahmet Abiç', 'asmonfps1@gmail.com', '05061444151', 'Turkey', 'Dgdh', 'Balıkesir', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:12;a:4:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-13 21:59:59', '2020-08-13 21:59:59'),
(163, 'pending', 'pending', NULL, 'qYWPIyg7dqENPTHnVnpi', 'paypal', '1', '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-14 14:52:25', '2020-08-14 14:52:25'),
(164, 'pending', 'complete', 'tr_pdU5bPcMKn', 'dQOp2MUW1B37uRswbOi6', 'mollie', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-14 15:46:47', '2020-08-14 15:47:07'),
(165, 'pending', 'pending', NULL, 'IVfe22EDaMJGJAbQt5bF', 'paytm', NULL, '147', '0', '0', '1', '147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"3\";s:5:\"price\";i:147;}}', '2020-08-14 15:51:56', '2020-08-14 15:51:56'),
(166, 'pending', 'pending', NULL, '967nfjOj7F11qd1tUQ7H', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-14 18:40:30', '2020-08-14 18:40:30'),
(167, 'pending', 'pending', NULL, '5dx6R4ZOOi79pJWKrz0h', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-14 23:23:38', '2020-08-14 23:23:38'),
(168, 'pending', 'pending', NULL, 'X9ZgOlhjXNFIfsu1CkIz', 'paypal', NULL, '150', '0', '0', '1', '150', 'Yao', 'franckyao34@gmail.com', '+22501757008', 'Ivory Coast', '0015ABIDJAN', 'Abidjan', 'Africa', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-14 23:25:47', '2020-08-14 23:25:47'),
(169, 'pending', 'pending', NULL, '1MUwSxXrJAbpu0grz9Qb', 'cash_on_delivery', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2020-08-14 23:26:15', '2020-08-14 23:26:15'),
(170, 'pending', 'pending', NULL, 'qWnS3zP2VH08XxUDYC4t', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-15 04:08:15', '2020-08-15 04:08:15'),
(171, 'pending', 'pending', NULL, 'Wp7xqpz7VzMsSLOsT5Gp', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-15 09:27:15', '2020-08-15 09:27:15'),
(172, 'pending', 'pending', NULL, 'a2Y2bk48g2oADcWideu3', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-15 12:28:45', '2020-08-15 12:28:45'),
(173, 'pending', 'pending', NULL, 'jnGHtbu4cDUaDj57JjTB', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-15 17:30:45', '2020-08-15 17:30:45'),
(174, 'pending', 'pending', NULL, 'hG5oyL82uPEzKXxaGPbK', 'paypal', '1', '79', '0', '0', '1', '79', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:4:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}}', '2020-08-15 18:33:45', '2020-08-15 18:33:45'),
(175, 'pending', 'pending', NULL, 'hDf60DnWFpnOdoPcmfIm', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-16 00:25:13', '2020-08-16 00:25:13'),
(176, 'pending', 'pending', NULL, 'zaMrRwCWJRMsonuWHzsR', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:20;a:4:{s:2:\"id\";i:20;s:5:\"title\";s:80:\"عطائي القيام الصيف على الرغم من ضيق ملحوظ في\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-16 03:05:22', '2020-08-16 03:05:22'),
(177, 'pending', 'pending', NULL, '1QdmVzEf34K6g2f5Bc1f', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-16 04:03:47', '2020-08-16 04:03:47'),
(178, 'pending', 'pending', NULL, 'XIIJHXgn5PLOmmbwo0Qv', 'paystack', NULL, '79', '0', '0', '1', '79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:4:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}}', '2020-08-16 10:15:10', '2020-08-16 10:15:10'),
(179, 'pending', 'pending', NULL, 'ZzgYatLeIkGv1SAqFrBj', 'paytm', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-16 15:36:56', '2020-08-16 15:36:56'),
(180, 'pending', 'pending', NULL, 'hbnvmsI4kkx7wcpWEoBT', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-16 18:14:25', '2020-08-16 18:14:25'),
(181, 'pending', 'pending', NULL, 'H9e69vGSTyNUzHVAdgBR', 'manual_payment', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-16 18:43:37', '2020-08-16 18:43:37'),
(182, 'pending', 'pending', NULL, 'pE3EA7umsVtqYg44hQip', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-16 23:46:48', '2020-08-16 23:46:48'),
(183, 'pending', 'pending', NULL, 'dXO1okrFcAslPobRh6mO', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-16 23:57:28', '2020-08-16 23:57:28'),
(184, 'pending', 'complete', 'txn_1HGsm6EmGOuJLTMsIJmiGdHS', 'iPG1cizryQbaZdCZddpJ', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 00:48:07', '2020-08-17 00:48:18'),
(185, 'pending', 'pending', NULL, '7uOw894XojRDORgKrWEv', 'flutterwave', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 04:14:18', '2020-08-17 04:14:18'),
(186, 'pending', 'pending', NULL, 'pr9LIha4vxkwtAx5FM4E', 'paytm', NULL, '49', '0', '0', '1', '49', 'eMMANUEL |sOTONWA', 'emsolink@gmail.com', '08035557159', 'Nigeria', 'If you’re thinking about starting an eCommerce business and selling products online', 'LAGOS', 'EKO', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 04:15:53', '2020-08-17 04:15:53'),
(187, 'pending', 'pending', NULL, 'WGfB4e32RItga7lCaVPu', 'manual_payment', NULL, '49', '0', '0', '1', '49', 'eMMANUEL |sOTONWA', 'emsolink@gmail.com', '08035557159', 'Nigeria', 'If you’re thinking about starting an eCommerce business and selling products online', 'LAGOS', 'EKO', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 04:17:08', '2020-08-17 04:17:08'),
(188, 'pending', 'pending', NULL, '5kDgIVVtIQFOkVPr9Vak', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'eMMANUEL |sOTONWA', 'emsolink@gmail.com', '08035557159', 'Nigeria', 'If you’re thinking about starting an eCommerce business and selling products online', 'LAGOS', 'EKO', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 04:18:09', '2020-08-17 04:18:09'),
(189, 'pending', 'pending', NULL, 'mPopWnxPcHktIyaP3ZCd', 'flutterwave', NULL, '49', '0', '0', '1', '49', 'eMMANUEL |sOTONWA', 'emsolink@gmail.com', '08035557159', 'Nigeria', 'If you’re thinking about starting an eCommerce business and selling products online', 'LAGOS', 'EKO', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 04:19:31', '2020-08-17 04:19:31'),
(190, 'pending', 'pending', NULL, '8MqXsKOnU4844X0pTdem', 'paypal', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 07:23:24', '2020-08-17 07:23:24'),
(191, 'pending', 'pending', NULL, 'jpU7xgxaafxYWoAqeyuk', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 09:51:00', '2020-08-17 09:51:00'),
(192, 'pending', 'pending', NULL, 'GVO9tsxgPJjc0d1ygvyI', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 10:02:52', '2020-08-17 10:02:52'),
(193, 'pending', 'pending', NULL, 'uH2PujVTnjGNlca0a10k', 'paytm', NULL, '98', '0', '0', '1', '98', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:19;a:4:{s:2:\"id\";s:2:\"19\";s:5:\"title\";s:66:\"في الانخراط والد بسيط للآخرين ما عدا\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:98;}}', '2020-08-17 10:39:52', '2020-08-17 10:39:52'),
(194, 'pending', 'pending', NULL, 'OSlLZDywi4TCz5SVFCSl', 'paypal', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 11:36:11', '2020-08-17 11:36:11'),
(195, 'pending', 'pending', NULL, '9gD6cSfOzEbmP2wyRk7Y', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";s:2:\"10\";s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 12:25:50', '2020-08-17 12:25:50'),
(196, 'pending', 'pending', NULL, 'bOhi9xp8S2B4GQFCArg4', 'stripe', NULL, '441', '0', '0', '1', '441', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:12;a:4:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"9\";s:5:\"price\";i:441;}}', '2020-08-17 12:40:22', '2020-08-17 12:40:22'),
(197, 'pending', 'pending', NULL, 'RjTQsJ6AQWoM32cVc22t', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 14:41:56', '2020-08-17 14:41:56'),
(198, 'pending', 'pending', NULL, 'JkDS721wKrvTdvmNL3xR', 'paystack', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 15:44:41', '2020-08-17 15:44:41'),
(199, 'pending', 'pending', NULL, 'XUzFVWXt6LEuS308IDvs', 'cash_on_delivery', '1', '79', '0', '0', '1', '79', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:4:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}}', '2020-08-17 15:50:51', '2020-08-17 15:50:51'),
(200, 'pending', 'pending', NULL, 't0Awi7uscZHAJPlCn8JM', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 17:03:42', '2020-08-17 17:03:42'),
(201, 'pending', 'pending', NULL, 'BnNgHjxjKf2ecLKrvwWk', 'cash_on_delivery', NULL, '248', '0', '0', '1', '248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:3:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 17:22:09', '2020-08-17 17:22:09'),
(202, 'pending', 'pending', NULL, '851F0JIHgM2Zw5oLV6Hz', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 18:40:39', '2020-08-17 18:40:39'),
(203, 'pending', 'pending', NULL, 'qzi34qhAvfT5kSOWy1tw', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 19:01:01', '2020-08-17 19:01:01'),
(204, 'pending', 'pending', NULL, 'UE3FuMxUCAQD4lLceQUt', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 19:17:43', '2020-08-17 19:17:43'),
(205, 'pending', 'pending', NULL, 'FGkIj0S7onkUavexaigg', 'razorpay', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 19:45:05', '2020-08-17 19:45:05'),
(206, 'pending', 'pending', NULL, 'YzFXA3r9Yi8jpgpkhR6T', 'paytm', '39', '49', '0', '0', '1', '49', 'Mehdi boudhir', 'archivetunisia@gmail.com', '50635395', 'Qatar', 'zone 35,street 916,building No.86', 'Doha', 'Qatar', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:17;a:4:{s:2:\"id\";i:17;s:5:\"title\";s:45:\"العباد ضمان الخير المادي\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 20:30:07', '2020-08-17 20:30:07'),
(207, 'pending', 'pending', NULL, 'nEyBCGmf2N7sQSGAjfok', 'stripe', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 20:31:04', '2020-08-17 20:31:04'),
(208, 'pending', 'pending', NULL, '8zsUcw5WKBD3S4cPbn4U', 'paypal', '39', '49', '0', '0', '1', '49', 'Mehdi boudhir', 'archivetunisia@gmail.com', '50635395', 'Qatar', 'arab street', 'Doha', 'Doha', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:18;a:4:{s:2:\"id\";i:18;s:5:\"title\";s:29:\"شرح لي احتواء لي\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 20:32:57', '2020-08-17 20:32:57'),
(209, 'pending', 'pending', NULL, 'zPi1PkbVsnOHwKSOmq5V', 'paytm', NULL, '49', '0', '0', '1', '49', 'muneebul gulzar', 'muneebulgulzar@gmail.com', '09796303597', 'India', 'HNo 4 LD Colony Sanathnagar Srinagar', 'Srinagar', 'Jammu and Kashmir', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 20:48:52', '2020-08-17 20:48:52'),
(210, 'pending', 'pending', NULL, 'TUXZiZFdxSqAovLMTtqZ', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 20:50:06', '2020-08-17 20:50:06'),
(211, 'pending', 'pending', NULL, 'gywHK6i5tqBl0lh7OBs1', 'paytm', NULL, '300', '0', '0', '1', '300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";s:1:\"2\";s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"2\";s:5:\"price\";i:300;}}', '2020-08-17 22:36:46', '2020-08-17 22:36:46'),
(212, 'pending', 'pending', NULL, 'cdorh6L8fWaBSXz2XLu2', 'paystack', '1', '98', '0', '0', '1', '98', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-17 23:21:17', '2020-08-17 23:21:17'),
(213, 'pending', 'pending', NULL, '9T38BOt1KUhmI8bG0onl', 'paytm', NULL, '49', '0', '0', '1', '49', 'a', 'a@a.com', '0930932222', 'Ukraine', 'asd', 'asd', 'asd', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-18 01:06:24', '2020-08-18 01:06:24'),
(214, 'pending', 'pending', NULL, '2LeszZpIJ2nEe62KwYvD', 'paytm', NULL, '49', '0', '0', '1', '49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-18 01:22:24', '2020-08-18 01:22:24'),
(215, 'pending', 'complete', 'txn_1HHFxvEmGOuJLTMsBpg6zFrn', 'OYWHooBsV0CIdbZEeHlP', 'stripe', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-18 01:33:17', '2020-08-18 01:34:04'),
(216, 'pending', 'pending', NULL, 'x8UJtq8cBQATY3gcyxDa', 'stripe', NULL, '150', '0', '0', '1', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-18 03:39:25', '2020-08-18 03:39:25'),
(217, 'pending', 'pending', NULL, 'TRphJzw44HeqHmFVyRJS', 'paypal', NULL, '150', '0', '0', '1', '150', 'steve', 'stevenapplewhite@gmail.com', '1234567890', 'United States', '230 riley st', 'buffalo', 'ny', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-18 06:37:41', '2020-08-18 06:37:41'),
(218, 'pending', 'pending', NULL, 'Adcnt6eTCwuR03PHolNT', 'paytm', NULL, '49', '0', '0', '1', '49', 'Juan Carlos Rodriguez', 'info@juancarz.com.ar', '646694', 'Spain', 'Pascualis 15', 'Valencia', 'Valencia', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-18 10:05:52', '2020-08-18 10:05:52'),
(222, 'pending', 'pending', NULL, 'YyiXB3JkMwnvhj99M3JI', 'paytm', NULL, '150', '0', '0', '1', '150', 'test', 'te@y.com', '010000000000', 'Afghanistan', '22', '22', '222', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-18 13:04:58', '2020-08-18 13:04:58'),
(225, 'pending', 'pending', NULL, 'IrAE32B72EUJ6JeqatUm', 'paytm', NULL, '49', '0', '0', '1', '49', 'adf', 'sd@123.com', '73455444', 'India', 'dd', 'sah', 'up', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-18 16:54:18', '2020-08-18 16:54:18'),
(228, 'pending', 'pending', NULL, 'PiG0hD1TQdVhqbSEfQOh', 'paytm', NULL, '49', '0', '0', '1', '49', 'Piyush Sharma', 'kpiyush@gmail.com', '08351939692', 'India', 'krishna vihar', 'paonta sahib', 'himachal', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-18 22:14:08', '2020-08-18 22:14:08'),
(235, 'pending', 'pending', NULL, 'Iu9wDGXFwO4T0qTJ1Q1J', 'paytm', NULL, '150', '0', '0', '1', '150', 'M.K. Mandawar', 'manmandawar@gmail.com', '09116482285', 'India', 'Mandawar', 'Mandawar', 'RAJASTHAN', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-19 15:21:56', '2020-08-19 15:21:56'),
(244, 'pending', 'pending', NULL, '9Zk3vjtPXHboK6pzZaxL', 'paystack', '42', '49', '0', '0', '1', '49', 'Naijablogger', 'langdung02@gmail.com', NULL, 'Nigeria', NULL, 'Rayfield', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-20 04:40:45', '2020-08-20 04:40:45'),
(262, 'pending', 'complete', 'pay_FTIz9iaKb9EaFZ', 'ZWcr7oynW5jqeQrknFaG', 'razorpay', '1', '49', '0', '5', '2', '54', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-21 09:56:13', '2020-08-21 09:57:11'),
(272, 'pending', 'pending', NULL, 'Fxh0z9Rw1b9tz7TR1rK3', 'paytm', NULL, '49', '0', '0', '1', '49', 'SHAMEER K', 'shamirbhome@gmail.com', '09745107370', 'India', 'KOZHIKKOTTIL HOUSE', 'PALAKKAD', 'Kerala', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-22 06:43:58', '2020-08-22 06:43:58'),
(273, 'pending', 'pending', NULL, 'AuA5LzqOU5AS5dqe7iUE', 'paytm', NULL, '49', '0', '0', '1', '49', 'basir', 'basirulhaq1990@gmail.com', '92883773616', 'Bangladesh', 'churuch strret', 'pindi', 'dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-22 17:30:18', '2020-08-22 17:30:18'),
(276, 'pending', 'pending', NULL, 'azYoAAeSSvmD4rpm0VMR', 'cash_on_delivery', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-23 08:08:46', '2020-08-23 08:08:46'),
(280, 'pending', 'pending', NULL, 'EGNqBDpxsGPtVfPXV9fY', 'paystack', NULL, '49', '0', '0', '1', '49', 'Test', 'test@gmail.com', '08038390333', 'Nigeria', '2 Awka Street', 'Awka', 'Anambra', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-23 11:26:36', '2020-08-23 11:26:36'),
(283, 'pending', 'pending', NULL, '58WtJkZuloQboTV9GzRb', 'paytm', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', NULL, 'Brazil', NULL, 'Dhaka', NULL, 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-23 21:28:36', '2020-08-23 21:28:36'),
(289, 'pending', 'pending', NULL, '0fPhx9fxeCHG5pJzMJ7f', 'flutterwave', NULL, '49', '0', '0', '1', '49', 'lameck', 'lamzie2@gmail.com', '0966806844', 'Zambia', 'kitwe', 'kitwe', 'cb', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-25 02:45:10', '2020-08-25 02:45:10'),
(290, 'pending', 'complete', 'txn_1HKDj7EmGOuJLTMsPfhdvE0z', 'x3S6pOnSgPDyLTNEThog', 'stripe', NULL, '128', '0', '0', '1', '128', 'AA', 'AA@AA.AA', 'AA', 'American Samoa', 'AA', 'AA', 'AA', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:6;a:4:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:79;}i:1;a:4:{s:2:\"id\";s:1:\"1\";s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-26 05:46:43', '2020-08-26 05:47:02'),
(291, 'pending', 'pending', NULL, '07shh56TtT2urbYwwrhy', 'stripe', NULL, '49', '0', '0', '1', '49', 'ahmed alnomany', 'aalnomany50@gmail.com', '0509969218', 'Saudi Arabia', 'الرياض حي العزيزية', 'الرياض', 'Ar Riyāḑ', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-27 11:53:50', '2020-08-27 11:53:50'),
(292, 'pending', 'pending', NULL, 'R4leNtUaZvvhIGL6ZXSD', 'paytm', NULL, '98', '0', '0', '1', '98', 'mohamed abudiab', 'arab4funs2@gmail.com', '05043476384', 'United Kingdom', 'AMM 378300 Slough', 'Slough', 'Berkshire', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:7;a:4:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-27 15:08:30', '2020-08-27 15:08:30'),
(293, 'pending', 'pending', '21', 'HxiCOOQM1gDKXdrqMCc8', 'manual_payment', '36', '150', '0', '0', '1', '150', 'sandro', 'lucasradical87@gmail.com', '2111111', 'Brazil', 'ppppppppppp', 'queimados', 'pppppppp', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-27 19:13:32', '2020-08-27 19:13:32'),
(294, 'pending', 'pending', NULL, 'OlvhYDXTo0XAqa7sPm1O', 'paytm', NULL, '49', '0', '0', '1', '49', 'Deneme', 'tryrty', 'rtyrty', 'Bahrain', 'rty', 'rty', 'rtyrty', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:16;a:4:{s:2:\"id\";i:16;s:5:\"title\";s:43:\"Testere prensipleri kendilerine on sahiptir\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-27 21:15:51', '2020-08-27 21:15:51'),
(295, 'pending', 'pending', NULL, 'bmZ0vJKueo4dQdDU7izk', 'paytm', NULL, '49', '0', '0', '1', '49', 'dsqfqsd', 'fdfqsfdsq@fdsfsq.com', 'fd', 'Albania', 'fdsq', 'fds', 'dfs', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-27 21:38:31', '2020-08-27 21:38:31'),
(296, 'pending', 'pending', NULL, '7ZYWvd2LPhgwrCxHycgk', 'stripe', NULL, '49', '0', '0', '1', '49', 'fdsf', 'fds@fdsf.com', 'fds', 'Algeria', 'fds', 'fds', 'fdsds', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-27 21:39:43', '2020-08-27 21:39:43'),
(297, 'pending', 'pending', NULL, 'NnvFTnDypkqSgnYOcNkz', 'paytm', NULL, '150', '0', '0', '1', '150', 'demo', 'er.ee@YAHOO.COM', '1459687525', 'India', 'adder,dfgdf', 'KALOL', 'Gujarat', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-28 09:04:55', '2020-08-28 09:04:55'),
(298, 'pending', 'pending', NULL, 'EDc0NFOXbkTXKphqV1oC', 'paytm', NULL, '150', '0', '0', '1', '150', 'ser', 'li', '1111', 'Argentina', 'serfgg', 'dsadsdasd', 'sadasdsadsad', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-08-28 15:20:12', '2020-08-28 15:20:12'),
(299, 'pending', 'pending', NULL, 'H7NwoNksCLILKdn8jRBW', 'paytm', NULL, '49', '0', '0', '1', '49', 'Rajan', 'rajan011@gmail.com', '9578956854', 'India', 'New Bypass Road', 'Noida', 'UP', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-29 08:24:00', '2020-08-29 08:24:00'),
(300, 'pending', 'pending', NULL, '2DOcz8HBrihoPrqHsWm4', 'paytm', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '9999999999', 'Brazil', 'Tedt', 'Dhaka', 'Bang', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-30 22:23:21', '2020-08-30 22:23:21'),
(301, 'pending', 'pending', NULL, '9LdTa1fr5X4W7TPEdlyz', 'paytm', NULL, '147', '0', '0', '1', '147', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:3:{i:11;a:4:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}i:9;a:4:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-08-31 09:39:52', '2020-08-31 09:39:52'),
(302, 'pending', 'pending', NULL, 'pY4o3LVDqPue40lquxW9', 'paytm', NULL, '49', '0', '0', '1', '49', 'test', 'test@gmail.co', '+198723422424', 'United States', 'Nevada', 'Nevada', 'Nevada', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-09-01 10:33:17', '2020-09-01 10:33:17'),
(303, 'pending', 'pending', NULL, 'LzxADNKLH1Bbriq2UVvV', 'cash_on_delivery', '11', '49', '0', '0', '1', '49', 'Edward', 'nnadollar@gmail.com', '07062401501', 'Nigeria', 'Imo State', 'Imo', 'Imo', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:4:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-09-01 17:32:00', '2020-09-01 17:32:00'),
(304, 'pending', 'pending', NULL, 'OdWrR9S90BBfLdGNZRsg', 'paypal', NULL, '49', '0', '0', '1', '49', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-09-02 12:02:56', '2020-09-02 12:02:56'),
(305, 'pending', 'pending', NULL, 'FfdMojsg6q5apHt93Sj8', 'paypal', NULL, '49', '0', '0', '1', '49', 'asd', 'mail@mail.com', '6461', 'Mexico', 'kascnasc', 'merida', 'yucatna', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:23;a:4:{s:2:\"id\";i:23;s:5:\"title\";s:36:\"Vulgar como corazones por buhardilla\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-09-03 20:21:12', '2020-09-03 20:21:12');
INSERT INTO `product_orders` (`id`, `status`, `payment_status`, `transaction_id`, `payment_track`, `payment_gateway`, `user_id`, `subtotal`, `coupon_discount`, `shipping_cost`, `product_shippings_id`, `total`, `billing_name`, `billing_email`, `billing_phone`, `billing_country`, `billing_street_address`, `billing_town`, `billing_district`, `different_shipping_address`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_country`, `shipping_street_address`, `shipping_town`, `shipping_district`, `coupon_code`, `cart_items`, `created_at`, `updated_at`) VALUES
(306, 'complete', 'pending', 'iuBXlxqTZAZO8z1Prdf7Jm5tm', '1wCsx1uksYDOHgmbdaAE', 'paystack', '1', '150', '0', '0', '1', '150', 'Mike John', 'enihoney3@gmail.com', '8086625519', 'United States', '622 Small Street', 'New York', 'New York', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:4:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:150;}}', '2020-09-06 04:49:16', '2020-10-01 19:20:31'),
(307, 'pending', 'pending', 'zxczxc', 'c7Z9KQ0DmOyKSOxSWD6Z', 'manual_payment', NULL, '49', '0', '0', '1', '49', 'zxczxc', 'dsfsdfa@adsfs.fg', '123123', 'Belarus', 'qweqweqwe', 'qweqwe', 'qweqwe', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-09-07 04:51:47', '2020-09-07 04:51:47'),
(308, 'pending', 'pending', NULL, 'OEzxSc7qUNwIOED9REaL', 'paytm', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '4651164+4+454', 'Brazil', 'fafdafdafdfdfdsa', 'Dhaka', 'fdsafdafeafewa', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:4:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-09-09 05:37:31', '2020-09-09 05:37:31'),
(309, 'pending', 'pending', NULL, 'SKL5vhBhDOIS2JeqsdTs', 'paytm', NULL, '49', '0', '0', '1', '49', 'das', 'as2ad@sd.sd', 'dasdadada', 'Algeria', 'asdas', 'dad', 'adsd', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:4:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:5:\"price\";i:49;}}', '2020-09-10 20:31:17', '2020-09-10 20:31:17'),
(310, 'pending', 'pending', NULL, 'fT1WnpA4wSAAFZ5AYoWx', 'paystack', NULL, '49', '0', '0', '1', '49', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-12 19:30:44', '2020-09-12 19:30:44'),
(311, 'complete', 'pending', 'KbAwBqLbmsxvqdxr8FbCEf8WP', 'l2VOE8bsOWD6TbIBeZvp', 'paystack', NULL, '98', '0', '0', '1', '98', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";i:2;s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}}', '2020-09-12 19:34:50', '2020-09-12 19:35:12'),
(312, 'pending', 'pending', NULL, 'LajQpRoRghiHgJgpxIsD', 'cash_on_delivery', NULL, '98', '0', '0', '1', '98', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-14 09:17:54', '2020-09-14 09:17:54'),
(313, 'pending', 'complete', 'txn_1HRNtwEmGOuJLTMsBGPMiFJc', 'GL8KRfGwpFQmUd8gGwOA', 'stripe', '66', '199', '0', '0', '1', '199', 'JAVIER MOTA', 'solucionescompucaribe@gmail.com', '9983481330', 'Mexico', 'scancun', 'cancun', 'veracruz', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:2;a:5:{s:2:\"id\";s:1:\"2\";s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}i:23;a:5:{s:2:\"id\";s:2:\"23\";s:5:\"title\";s:36:\"Vulgar como corazones por buhardilla\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-15 00:03:35', '2020-09-15 00:03:48'),
(314, 'pending', 'pending', NULL, 'aN7bKt8lORDzKZODfGZj', 'paytm', NULL, '79', '0', '0', NULL, '79', 'Van Ray Hosea', 'vanray.hosea@gmail.com', '0', 'Indonesia', 'i', 'i', '1', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-09-16 19:53:53', '2020-09-16 19:53:53'),
(315, 'pending', 'pending', '9999', 'nrlZy0wVspodTdoLBifL', 'manual_payment', NULL, '79', '0', '0', NULL, '79', 'za', 'zak.albarouni@gmail.com', '09284326876', 'Libyan Arab Jamahiriya', 'tripoli', 'tripoli', 'tripoli', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-09-16 20:28:23', '2020-09-16 20:28:23'),
(316, 'pending', 'pending', NULL, 'dNdeLxOVy67tlq6jO8Gw', 'paypal', NULL, '98', '0', '0', '1', '98', 'ASDVBDFFV', 'a@gmail.com', '4355665u675', 'Australia', 'dghrewgh', 'rehgdtrewghr', 'erhretgh', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"2\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}}', '2020-09-16 21:17:37', '2020-09-16 21:17:37'),
(317, 'pending', 'pending', NULL, 'rM3E2Dj6xHFmRDdsq5Bo', 'paytm', NULL, '98', '0', '0', '1', '98', 'hello', 'hello@gmail.com', '02345645225', 'Ghana', 'dfd57dfdqe', 'accra', 'greater accra', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";i:2;s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}}', '2020-09-18 17:48:49', '2020-09-18 17:48:49'),
(318, 'pending', 'pending', NULL, 'qHsV9Fw77wJPEbfgqZyl', 'cash_on_delivery', '67', '49', '0', '0', '1', '49', 'Cheap Web Hosting', 'softbirdbiz@gmail.com', '01811293265', 'Bangladesh', 'Mymensingh', 'Mymensingh', 'Mymensingh', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-19 18:18:51', '2020-09-19 18:18:51'),
(319, 'pending', 'pending', NULL, 'yOtTRIT2AJEUfUZS7VvY', 'cash_on_delivery', '68', '150', '0', '0', NULL, '150', 'Mazen Leno', 'mazenashraf2539@gmail.com', '01015232142', 'Egypt', 'Shubra-masr', 'Cairo', 'cairo', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-09-20 08:33:37', '2020-09-20 08:33:37'),
(320, 'pending', 'pending', NULL, 'ZFuHd0iYG4QQyypGhXyx', 'paypal', NULL, '49', '0', '0', '1', '49', 'theophile lassey', 'lasshyon@yahoo.fr', '91976960', 'Togo', 'Agoe', 'Lome', 'Lome', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-20 21:53:06', '2020-09-20 21:53:06'),
(321, 'pending', 'pending', NULL, '2AV3f2XSGKusc6e3r5sJ', 'paytm', NULL, '150', '0', '0', NULL, '150', 'IMAM HASAN', 'imam69235@gmail.com', '9546879199', 'India', 'HARKHAULI MIRGANJ', 'GOPALGANJ', 'Bihar', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-09-25 19:25:02', '2020-09-25 19:25:02'),
(322, 'pending', 'pending', NULL, '8fsat0h7W2aP0J70EW8K', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'Adminsitrator', 'idealu@gsdail.com', '035569751624', 'Pakistan', 'Bedian Road', 'Lahore', 'Punjab', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-28 08:10:53', '2020-09-28 08:10:53'),
(323, 'pending', 'pending', NULL, 'sci3j0K3r3BTbWfpVXz9', 'flutterwave', '1', '150', '0', '0', NULL, '150', 'Celestine Onwuemeri', 'cshortzc@gmail.com', '8138027274', 'United States', '333 Fremont Street,', 'San Francisco', 'CA', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-09-28 12:12:13', '2020-09-28 12:12:13'),
(324, 'pending', 'pending', NULL, 'sYX7OREBGh2urHTSkiMy', 'cash_on_delivery', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '42425524', 'Brazil', 'fsdfdsfs', 'Dhaka', 'fsdfsd', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-28 12:18:50', '2020-09-28 12:18:50'),
(325, 'pending', 'pending', NULL, 'kwvp2z8h7rSK9aM5CWy0', 'cash_on_delivery', NULL, '150', '0', '0', NULL, '150', 'Joseph Mwangi', 'njugunamwash5@gmail.com', '0772321274', 'Kenya', 'Gatundu town', 'Nairobi', 'Kiambu', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-09-28 13:02:18', '2020-09-28 13:02:18'),
(326, 'pending', 'pending', NULL, 'clmLUJR6AR4Z1FTCrYSg', 'paypal', NULL, '300', '0', '0', NULL, '300', 'ttt', 'ttt@bol.com', '66666666', 'Albania', 'uuu', 'uuuu', 'kkkkkk', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";s:1:\"2\";s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";i:2;s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:300;}}', '2020-09-28 13:29:24', '2020-09-28 13:29:24'),
(327, 'pending', 'pending', NULL, '7FK7FnhvwPfHMOXVoGUC', 'paypal', NULL, '158', '0', '0', NULL, '158', 'SILAS SILVA CAMPOS', 'silas.scampos@gmail.com', '71993549090', 'Brazil', 'Rua Antônio Carlos Magalhães, 35 - E', 'Salvador', 'BA', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"2\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:158;}}', '2020-09-28 17:44:33', '2020-09-28 17:44:33'),
(328, 'pending', 'pending', NULL, 'jl8OKLSIeW9ZJY3kQ9c2', 'paytm', '1', '150', '0', '0', NULL, '150', 'Sharifur Rahman', 'dvrobin4@gmail.com', '890980980', 'Brazil', 'șoiș 98', 'Dhaka', 'uiliului', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-09-28 20:46:19', '2020-09-28 20:46:19'),
(329, 'pending', 'pending', NULL, 'f1lKByPIs0EXybpMPiti', 'cash_on_delivery', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '234223434', 'Brazil', 'asdsdsdv234343', 'Dhaka', 'qwe3', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";s:1:\"8\";s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-28 23:16:51', '2020-09-28 23:16:51'),
(330, 'pending', 'pending', NULL, 'k7xVyiKEGYnrGQGxvQJe', 'paytm', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'skietsocial@gmail.com', '9996496243', 'India', '137-138.Green Park Tehsil Camp', 'Panipat', 'Haryana', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-28 23:33:02', '2020-09-28 23:33:02'),
(331, 'pending', 'pending', NULL, 'jgTMJa7EyivTVjFcX1i6', 'paypal', NULL, '49', '0', '0', '1', '49', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-29 07:44:39', '2020-09-29 07:44:39'),
(332, 'pending', 'pending', NULL, 'IVPWpNrKdNYDWerB8RSz', 'paystack', NULL, '49', '0', '0', '1', '49', 'AARON AMANKWAH', 'aaronamankwah7@gmail.com', '0548378088', 'Ghana', 'APPIADU', 'KUMASI', 'ashanti', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-29 11:11:15', '2020-09-29 11:11:15'),
(333, 'pending', 'pending', NULL, '3FBVxx4sPzSGpoUlVZOY', 'flutterwave', NULL, '49', '0', '0', '1', '49', 'AARON AMANKWAH', 'lesmordesigngroup@gmail.com', '+233548378088', 'Ghana', 'APPIADU', 'KUMASI', 'ashanti', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-29 11:12:51', '2020-09-29 11:12:51'),
(334, 'pending', 'pending', NULL, 'NZCKH6LNsOQfDA23HO5c', 'paytm', NULL, '79', '0', '0', NULL, '79', 'vova mazepa', 'vovamazepa@gmail.com', '0639111911', 'Ukraine', 'starickogo', 'kharkov', 'Харківська область', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-09-29 15:20:21', '2020-09-29 15:20:21'),
(335, 'pending', 'pending', NULL, 'EgvQ4OsN8zk2y3p4DWbJ', 'paytm', '72', '79', '0', '0', NULL, '79', 'Rocky', 'jshsh@gmail.com', '1234567890', 'India', 'Haha haha haha', 'Hssh', 'Bihar', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-09-29 16:05:17', '2020-09-29 16:05:17'),
(336, 'pending', 'pending', NULL, 'jILsdLjrRkUTppM5WEZG', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'dasdasdas aa', 'saeasd@gmail.com', '0203032032', 'Angola', 'asdasd', 'Velit ea recusandae', 'Nostrum esse sapient', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";s:2:\"11\";s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-29 22:08:10', '2020-09-29 22:08:10'),
(337, 'pending', 'pending', NULL, 'VDksRhu9STBthow5Jlvc', 'cash_on_delivery', '1', '150', '0', '0', NULL, '150', 'Sharifur Rahman', 'dvrobin4@gmail.com', '45345435', 'Brazil', 'fdgfdgfdg', 'fdgdfgdf', '435', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-09-30 02:05:46', '2020-09-30 02:05:46'),
(338, 'pending', 'pending', NULL, 'QHuuijt96lTsKNXLVqtI', 'paytm', NULL, '150', '0', '0', NULL, '150', 'Abhay Sharma', 'babaagency6@gmail.com', '08218234718', 'India', 'Tummy', 'Bareilly', 'Uttar Pradesh', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-09-30 08:52:34', '2020-09-30 08:52:34'),
(339, 'pending', 'pending', NULL, '8yQLzaUZBJVcW06CaPIm', 'paytm', NULL, '49', '0', '0', '1', '49', 'Rahul motwani', 'Rajagwani3@gmail.com', '08085414221', 'India', 'A.D.M line near gram panchayat', 'Katni', 'MADHYA PRADESH', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-30 11:05:30', '2020-09-30 11:05:30'),
(340, 'pending', 'pending', NULL, 'saD2aFroSO1sdUZL9i1L', 'cash_on_delivery', NULL, '98', '0', '0', '1', '98', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-30 21:59:36', '2020-09-30 21:59:36'),
(341, 'pending', 'pending', NULL, 'gWExOmpNYwa3C9pA6bUR', 'paypal', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '2135345', 'Brazil', 'adashanagar', 'Dhaka', 'Luke Lane', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-09-30 23:03:54', '2020-09-30 23:03:54'),
(342, 'pending', 'pending', NULL, 'njYcSfKmXGYZ06lTBeXr', 'paytm', NULL, '150', '0', '0', NULL, '150', 'ert', 'eertertert@gmail.com', '01734186952', 'Antigua and Barbuda', 'dds', 'sdf', 'sdf', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-01 08:28:01', '2020-10-01 08:28:01'),
(343, 'pending', 'pending', NULL, 'tUE9HuRUwh2Pm391Df5l', 'paytm', NULL, '150', '0', '0', NULL, '150', 'Aish Rahul Jangid', 'asrkjangid@gmail.com', '123456789', 'India', 'Mumbai', 'MM', 'MH', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-01 09:37:26', '2020-10-01 09:37:26'),
(344, 'pending', 'complete', '06D70696J10133458', '29SONAMkMDK826zMp9Io', 'paypal', NULL, '147', '0', '0', '1', '147', 'Sharifur Rahman', 'dvrobin4@gmail.com', '41541515', 'Bangladesh', '1981 Luke Lane Oklahoma City, OK 73105', 'Oklahoma City', 'badda', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:3:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-01 10:28:44', '2020-10-01 10:35:03'),
(345, 'pending', 'pending', NULL, 't2Nok4GTq8pkgGlN80bx', 'paypal', NULL, '49', '0', '0', '1', '49', 'Anirudh', 'gigaveb132@javadoq.com', '+65748392013', 'Singapore', '110 Daylene Drive', 'Detroit', 'Michigan', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-01 17:53:03', '2020-10-01 17:53:03'),
(346, 'pending', 'pending', NULL, 'pVAjCSL0sRTVQQIer66z', 'paytm', '1', '150', '0', '0', NULL, '150', 'Sharifur Rahman', 'dvrobin4@gmail.com', '7655456899998', 'Brazil', 'Vdbn bfjnn.', 'Dhaka', 'Ghhkkk', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-01 19:15:52', '2020-10-01 19:15:52'),
(347, 'pending', 'pending', NULL, 'WnG8nlejF10iefoMufh2', 'stripe', NULL, '49', '0', '0', '1', '49', 'fvsdf', 'atharvavedaorg@gmail.com', 'dsffsdf', 'Bahamas', 'dfsf', 'sdfsd', 'fsdf', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-02 20:10:36', '2020-10-02 20:10:36'),
(348, 'pending', 'pending', NULL, '1BbDxJpajbZzN2FUSpuV', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'Mdkdkdk', 'kdkdkkf@dddd.com', '7373737373', 'Turkey', 'Jdjdkdnn djdjdı', 'Kskdkkdjn', 'Kistanbul', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:12;a:5:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-02 23:31:47', '2020-10-02 23:31:47'),
(349, 'pending', 'pending', NULL, 'PF6mIPw4yIk9gP9PX3Of', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'deneme', 'deneme@mynet.com', '20002212', 'Turkey', 'fransa', 'attarigari', 'gittttigd', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:12;a:5:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-03 12:56:35', '2020-10-03 12:56:35'),
(350, 'pending', 'pending', NULL, '3ukh7Ywkoufp5FHQWWVQ', 'paystack', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', 'Ytrfvh', 'Brazil', 'Cjbfdcb', 'Dhaka', 'Hvbnn', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:5:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-05 04:26:14', '2020-10-05 04:26:14'),
(351, 'pending', 'pending', NULL, 'VN7fA2mqEXN9BWAfk37c', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'Jdjdkd', 'hjj@ddd.com', '626263636', 'Antarctica', 'Kzkdkdk', 'Kdkdkdkd', 'Kskdkdkdk', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:12;a:5:{s:2:\"id\";i:12;s:5:\"title\";s:35:\"Maddi iyiliği koruyan hizmetçiler\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-05 22:28:57', '2020-10-05 22:28:57'),
(352, 'pending', 'pending', NULL, 'bUlVOCVkGZm6rHTwj64R', 'paytm', NULL, '49', '0', '0', '1', '49', 'GAGAN KUMAR', 'gagankr108@gmail.com', '08004767142', 'India', 'ITM UNIVERSITY GWALIOR', 'GWALIOR', 'Madhya Pradesh', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-06 16:18:12', '2020-10-06 16:18:12'),
(353, 'pending', 'pending', NULL, 'dzttatGDXKsKSU0fCJSr', 'flutterwave', NULL, '150', '0', '0', NULL, '150', 'fdfdf asdasd', 'mnnm@ggh.com', '08828304234', 'India', 'asdsad', 'Navi Mumbai', 'Maharashtra', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-06 22:35:17', '2020-10-06 22:35:17'),
(354, 'pending', 'pending', NULL, 'SNGMwqIEr7Vs0LitNHxn', 'cash_on_delivery', '1', '150', '0', '0', NULL, '150', 'Sharifur Rahman', 'dvrobin4@gmail.com', '123456789', 'India', 'fdgbfdb', 'Dhaka', 'fb bb', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-06 23:13:08', '2020-10-06 23:13:08'),
(355, 'pending', 'pending', NULL, 'mCLJQPcCyA3USdkN8FUe', 'paytm', NULL, '49', '0', '0', '1', '49', 'banit kumar', 'tripchoni@gmail.com', '07018601887', 'Aruba', 'vill baskehar po daroh teh palampur distt kangra', 'palampur', 'United States (US)', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-07 17:54:58', '2020-10-07 17:54:58'),
(356, 'pending', 'pending', NULL, 'UaiUwBGmPOWcT5YKfWuR', 'razorpay', NULL, '150', '0', '0', NULL, '150', 'a', 'care@alaminrst.tk', '7845621002', 'India', 'dafd', 'gaytgawe', 'ert', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-08 12:25:54', '2020-10-08 12:25:54'),
(357, 'pending', 'pending', NULL, 'RCEL3pafp0q0bRCGnmeN', 'flutterwave', NULL, '49', '0', '0', '1', '49', 'Aaron', 'bbb@black.com', '567838838', 'Anguilla', 'Just', 'Anterrll', 'Nonee', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-10 16:27:28', '2020-10-10 16:27:28'),
(358, 'pending', 'pending', NULL, 'GE0UOt9NPIUZfMw6zf9c', 'flutterwave', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '7888870087', 'Brazil', 'Kytr', 'Dhaka', 'Ttt', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-10 22:32:58', '2020-10-10 22:32:58'),
(359, 'pending', 'pending', NULL, 'qwRLOeyr0X7CVtK06bvi', 'razorpay', NULL, '49', '0', '0', '1', '49', 'Ajith', 'sb@greenstar.net.in', '08675910565', 'India', 'tiruppur', 'Tiruppur', 'Tamil Nadu', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-12 13:35:48', '2020-10-12 13:35:48'),
(360, 'pending', 'pending', NULL, 'FvZTZmrO11Dvq0xAOxwB', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'mbmb', 'mbmba2003@yahoo.com', '1312121', 'Egypt', 'iojoi', 'iouiouio', 'uiouio', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:20;a:5:{s:2:\"id\";i:20;s:5:\"title\";s:80:\"عطائي القيام الصيف على الرغم من ضيق ملحوظ في\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-12 15:02:52', '2020-10-12 15:02:52'),
(361, 'pending', 'pending', NULL, 'paQvUwAI5yEsjEBkEZZN', 'flutterwave', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '07089754675', 'Brazil', 'Tygkg', 'Dhaka', 'Gghkhf', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-12 22:10:42', '2020-10-12 22:10:42'),
(362, 'pending', 'pending', NULL, 'Kc5xilfbf63h923OVcNV', 'paytm', NULL, '49', '0', '0', '1', '49', 'jhkh', 'hjhkjk', 'jkhj', 'Bahamas', 'kjhk', 'jhk', 'jhkjhk', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-13 11:14:45', '2020-10-13 11:14:45'),
(363, 'complete', 'pending', '68iizPTeIKP8zBZfah9EgC6te', 'p5N0LeBPfvkbml840KZM', 'paystack', NULL, '49', '0', '0', '1', '49', 'Jacob Joseph', 'jacobjoseph2018@gmail.com', '08070941605', 'Nigeria', 'Aobc Minna', 'Minna', 'NIGER', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-13 11:39:43', '2020-10-13 11:40:52'),
(364, 'pending', 'pending', NULL, 'IUSdv59eWy9n77s1zzxq', 'cash_on_delivery', NULL, '147', '0', '0', '1', '147', 'Sharifur Rahman', 'dvrobin4@gmail.com', '+88024133424', 'Bangladesh', 'Adarsha Nagar', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:3:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-13 14:30:06', '2020-10-13 14:30:06'),
(365, 'pending', 'pending', NULL, 'd4BwppkwQzZK5wRx9Aex', 'paytm', NULL, '150', '0', '0', NULL, '150', 'Sam', 'sam17646@gmail.com', '07056846543', 'Nigeria', 'Minna', 'Minna', 'Niger', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-13 15:36:48', '2020-10-13 15:36:48'),
(366, 'pending', 'pending', NULL, 'yd217FbtsGW5XfMDDjNM', 'paytm', NULL, '150', '0', '0', NULL, '150', 'amar', 'amc@amc.com', '9494152956', 'India', 'andhra', 'gudiwada', 'ap', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-14 08:26:28', '2020-10-14 08:26:28'),
(367, 'pending', 'pending', NULL, 'cCjA2eAucLID1w3AnW47', 'paytm', NULL, '49', '0', '0', '1', '49', 'ffsgsg', 'sgfhsgh@gmail.com', '1234567899', 'Albania', 'fgsf', 'svdg', 'sdvgg', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-14 16:10:56', '2020-10-14 16:10:56'),
(368, 'pending', 'complete', 'txn_1HcONBEmGOuJLTMsyxD8KGBf', 'V3q6wt14JNqscSy4uDbG', 'stripe', NULL, '300', '0', '0', NULL, '300', 'Ihddtdti', 'fjzodyo@zzhl.com', '4r7t7475757t7', 'Algeria', 'Dldhldlhd', 'Lydldyo', 'Kg', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";s:1:\"2\";s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"2\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:300;}}', '2020-10-15 08:46:37', '2020-10-15 08:47:29'),
(369, 'pending', 'pending', NULL, 'FII7itBLZDtduRfbNzV2', 'paypal', NULL, '98', '0', '0', '1', '98', 'zsdfasdfSD', 'MS@REGW.COM', '35735673567356', 'Bahamas', 'XGHMDGHMSGHM', 'SFJGSJGJ', 'DGHJ', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-19 18:05:26', '2020-10-19 18:05:26'),
(370, 'pending', 'pending', NULL, '8F2DIqN6y1UpiHVbCPse', 'cash_on_delivery', NULL, '147', '0', '0', '1', '147', 'deneme', 'deneme@deneme.com', '1235256633', 'Turkey', 'adres', 'city', 'eyüp', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:3:{i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-19 23:58:56', '2020-10-19 23:58:56'),
(371, 'pending', 'pending', NULL, 'ekXi3FViYEdAgdBtpssd', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'deneme', 'deneme@deneme.com', '1235256633', 'Turkey', 'adres', 'city', 'eyüp', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-20 00:17:29', '2020-10-20 00:17:29'),
(372, 'pending', 'pending', 'asdasdasd', 'HwU1BW4lgHHm0tlaQtyk', 'manual_payment', NULL, '49', '0', '0', '1', '49', 'asd', 'asdasd@asdad.asd', '1231231231', 'United Arab Emirates', 'asd asd asd asdas', 'asdasdas', 'asdasda as', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-21 16:59:31', '2020-10-21 16:59:31'),
(373, 'pending', 'pending', NULL, 'PbtKQHLFpQUaBl6WmkCx', 'cash_on_delivery', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '7777555544', 'Brazil', 'Nn', 'Dhaka', 'Rr', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-22 12:06:16', '2020-10-22 12:06:16'),
(374, 'pending', 'pending', NULL, 'iPGgCUnOWssLl64mtFgv', 'paytm', NULL, '450', '0', '0', NULL, '450', 'Toufikul Alam Monna', 'toufik.inbox@gmail.com', '01701092973', 'Bangladesh', 'house # 44, Road # 05, Muktizuddha Complex, Zoo road.', 'Dhaka Zoo', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"3\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:450;}}', '2020-10-24 11:54:02', '2020-10-24 11:54:02'),
(375, 'pending', 'pending', NULL, 'aePULpJunZDzlNK1FVry', 'paytm', '82', '150', '0', '0', NULL, '150', 'Hanumant Nalwade', 'hanumant.nalwade@gmail.com', '1234567890', 'India', '1234567890', 'pune', '1234567890', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-10-26 09:07:40', '2020-10-26 09:07:40'),
(376, 'pending', 'pending', NULL, 'ziZSLX1ujcQNAHWPpuDA', 'stripe', NULL, '49', '0', '0', '1', '49', 'Tekasys Internacional', 'ice_g_war@hotmail.com', '342342', 'Spain', 'Calle blas', 'Barcelona', 'Barcelona', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-29 13:19:58', '2020-10-29 13:19:58'),
(377, 'pending', 'complete', 'txn_1HhXL3EmGOuJLTMs4DHUXVzs', 'ygTAPO1ubqrF4WExZZ2U', 'stripe', NULL, '49', '0', '0', '1', '49', 'Tekasys Internacional', 'ice_g_war@hotmail.com', '24234242', 'Spain', 'Calle blas', 'Barcelona', 'Barcelona', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-29 13:22:12', '2020-10-29 13:22:33'),
(378, 'pending', 'pending', NULL, 'sCMBguBB49urx5ocobZh', 'stripe', NULL, '98', '0', '0', '1', '98', 'Tekasys Internacional', 'ice_g_war@hotmail.com', '666555777', 'Spain', 'Calle blas', 'Barcelona', 'Barcelona', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";i:2;s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}}', '2020-10-29 15:02:39', '2020-10-29 15:02:39'),
(379, 'pending', 'pending', NULL, 'pJfZ6JpQhQaVnja3iS0D', 'stripe', NULL, '98', '0', '0', '1', '98', 'Tekasys Internacional', 'ice_g_war@hotmail.com', '666555777', 'Spain', 'Calle blas', 'Barcelona', 'Barcelona', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:22;a:5:{s:2:\"id\";i:22;s:5:\"title\";s:43:\"Dale a la dama de ellos tal que lo aseguren\";s:8:\"quantity\";i:2;s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}}', '2020-10-29 15:10:24', '2020-10-29 15:10:24'),
(380, 'pending', 'pending', NULL, 'RDKP4DW3XAfctkglYwTO', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'swqwqdq', 'wqdwdwdwqd@kjdskjjj.com', '748858949', 'Algeria', 'ssasaassas', 'sasasasas', 'sasassqqsq', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-29 19:14:11', '2020-10-29 19:14:11'),
(381, 'pending', 'pending', NULL, 'yvEnD9XkZFryDSADjCs9', 'flutterwave', '89', '49', '0', '0', '1', '49', 'badru', 'itechgenmedia@gmail.com', '0700760705', 'Uganda', 'Mpererwe', 'Entebbe', 'Central', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-29 22:21:11', '2020-10-29 22:21:11'),
(382, 'pending', 'pending', NULL, 'wnlfDSapqpIXLHeS4o7A', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'John test Doe', 'meetmec12@gmail.com', '08034282437', 'Nigeria', 'TEST', 'Nantes', 'IMO', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-10-30 10:11:51', '2020-10-30 10:11:51'),
(383, 'pending', 'pending', NULL, 'nZVyYRHbmw2a3ZKhWgs3', 'paytm', NULL, '79', '0', '0', NULL, '79', 'M CYMAN', 'mariusz.cyman@gmail.com', '07707297787', 'Albania', '66 WESTFIELD ROAD', 'Sutton', 'County (optional)', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-11-02 13:07:48', '2020-11-02 13:07:48'),
(384, 'pending', 'pending', NULL, 'G9OJzb3V0dF3A3GlPjHp', 'paytm', '1', '49', '0', '0', '1', '49', 'Daniel I Vroman', 'sagdemo1@gmail.com', '3603200353', 'United States', '4728  Browning Lane', 'OAK HARBOR', 'Washington', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-03 17:28:35', '2020-11-03 17:28:35'),
(385, 'pending', 'pending', NULL, 'JdvqMVAWnpv6Er1pwrui', 'stripe', NULL, '49', '0', '0', '1', '49', 'jr lopez', 'aaa@aaa.es', '666555777', 'Spain', 'calle españa', 'madrid', 'madrid', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-04 11:22:15', '2020-11-04 11:22:15'),
(386, 'pending', 'pending', NULL, 'wU1Z7Gb4NgKP1W263L4Q', 'stripe', NULL, '49', '0', '0', '1', '49', 'mar', 'aaa@aaa.es', '666555444', 'Spain', 'calle blas', 'madrid', 'madrid', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-06 14:21:39', '2020-11-06 14:21:39'),
(387, 'pending', 'pending', NULL, 'laYgGzzdnrxNHzcPCTFW', 'paytm', NULL, '79', '0', '0', NULL, '79', 'mnbj', 'dvdssd', 'svdsd', 'India', 'dsvds', 'sddvs', 'vddsvds', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-11-06 14:38:53', '2020-11-06 14:38:53'),
(388, 'pending', 'pending', NULL, 'VM9GqtAe0mUGWCM5I7XF', 'flutterwave', NULL, '49', '0', '0', '1', '49', 'lameck', 'shngulube@yahoo.com', '0966806844', 'Cambodia', 'Room 7, Kitwe Chambers Building, Obote Avenue', 'Pousat', 'Pousat', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-09 12:25:39', '2020-11-09 12:25:39'),
(389, 'pending', 'pending', NULL, 'ZDkZ2ixNtmqIq6ZapwMm', 'cash_on_delivery', '1', '199', '0', '5', '2', '204', 'Sharifur Rahman', 'dvrobin4@gmail.com', '4774477474', 'Brazil', '4747GDGS', 'Dhaka', 'DELHI', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}i:7;a:5:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-09 15:23:27', '2020-11-09 15:23:27'),
(390, 'pending', 'complete', 'txn_1Hm1npEmGOuJLTMsj0C4Xpbo', 'llW4vVczNUEHhMbNQTla', 'stripe', NULL, '49', '0', '0', '1', '49', 'Sharifur Rahmam', 'dvrobin4@gmail.com', '01847111881', 'Bangladesh', 'sha #26, near wasa water booth, Adarsha Nagar, Middle Badda,', 'dhaka', 'Dhaka', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-10 23:42:39', '2020-11-10 23:42:50'),
(391, 'pending', 'pending', NULL, '18qQGKi2mavYhXgbB7Ip', 'cash_on_delivery', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '80976453567', 'Brazil', 'dfghjkn', 'Dhaka', 'xgchvjkbnl', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-13 13:22:18', '2020-11-13 13:22:18'),
(392, 'pending', 'pending', NULL, 'a3Fqm4XzDt3Xm4SG99SD', 'paytm', NULL, '150', '0', '0', NULL, '150', 'abc', 'abc@gmail.com', '9876543210', 'Albania', 'dggv', 'grcv', 'trdtfv', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-11-13 16:17:01', '2020-11-13 16:17:01'),
(393, 'pending', 'pending', NULL, 'RjfWarfsBEDrajbByFoL', 'paytm', NULL, '158', '0', '0', NULL, '158', 'REJAUL LASKAR', 'abcd@gmail.com', '78277673673', 'India', 'H.No- 291B, Ujangram', 'Silchar, Cachar', 'Assam', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";s:1:\"6\";s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"2\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:158;}}', '2020-11-13 16:38:33', '2020-11-13 16:38:33'),
(394, 'pending', 'pending', NULL, 'jppswe4iS4OKo4lE7OZX', 'paytm', NULL, '150', '0', '0', NULL, '150', 'Murat Ulusoy', 'muratulusoy55@hotmail.com', '05346608697', 'Turkey', 'kokcuoglu mahallesi sirriakalin sokak no:10/3', 'ilkadım', 'Samsun', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";s:1:\"2\";s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-11-13 17:27:02', '2020-11-13 17:27:02'),
(395, 'pending', 'pending', 'kjhgfcvbn', '9nGmrN2JQPQiUkboUHco', 'manual_payment', NULL, '294', '0', '0', '1', '294', 'TEwestdtdyg', 'tesaaser@gmail.com', '085235235', 'American Samoa', 'jhgkjhgfd', 'jhgfcnm,mn', 'jhgfdxcvbnm', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:3:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";i:2;s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}i:10;a:5:{s:2:\"id\";i:10;s:5:\"title\";s:25:\"Me contained explained my\";s:8:\"quantity\";i:2;s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";i:2;s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:98;}}', '2020-11-13 18:59:47', '2020-11-13 18:59:47'),
(396, 'pending', 'pending', NULL, 'adaOPriVx6gD3slcoRgS', 'paypal', NULL, '79', '0', '0', NULL, '79', 'Jonathon Dilworth', 'jon@dilworth.me', '07455246111', 'United Kingdom', 'Cysgod Y Coed', 'Llandegfan', 'Isle of Anglesey', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-11-15 23:28:40', '2020-11-15 23:28:40'),
(397, 'pending', 'pending', NULL, 'pjmdRpBABJJRyHfr0qe1', 'paytm', NULL, '150', '0', '0', NULL, '150', 'REJAUL LASKAR', 'dvdssd', '78277673673', 'India', 'H.No- 291B, Ujangram', 'Silchar, Cachar', 'Assam', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-11-16 08:59:11', '2020-11-16 08:59:11'),
(398, 'pending', 'pending', '354523', 'JmYqttYqowLtTJVwExbd', 'manual_payment', '1', '150', '0', '0', NULL, '150', 'nazam udin', 'nazamudin1000@gmail.com', '089628773308', 'Indonesia', 'jalan santai', 'Lubuk Linggau', 'Lubuk Linggau', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-11-16 23:40:28', '2020-11-16 23:40:28'),
(399, 'pending', 'pending', NULL, 'xD7QofSpiVAtjYLbn0xQ', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'Test', 'mail@test.com', '12345678', 'Ivory Coast', 'Abidjan', 'Abidjan', 'Abidjan', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-17 18:23:13', '2020-11-17 18:23:13'),
(400, 'pending', 'pending', NULL, 'deq76YkTzh49R5FOpfcJ', 'cash_on_delivery', NULL, '128', '0', '0', '1', '128', 'sdfsdfdsf', 'sfsfsd@wert.com', '45654646', 'Poland', 'dfgdg', 'dfgfdg', 'dfgdfgdfg', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:2:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}i:6;a:5:{s:2:\"id\";i:6;s:5:\"title\";s:32:\"React Business Consulting Script\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:79;}}', '2020-11-22 03:26:33', '2020-11-22 03:26:33'),
(401, 'pending', 'pending', NULL, 'glCBzCVzPQkRcaqb4ACL', 'paypal', NULL, '150', '0', '0', NULL, '150', 'Flikala', 'ww', '00', 'Afghanistan', 'ee', 'ee', 'eee', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-11-22 21:00:38', '2020-11-22 21:00:38'),
(402, 'pending', 'pending', NULL, '1ZRRi3rcbJm2awfXatcV', 'paytm', NULL, '49', '0', '0', '1', '49', 'dwad', 'dawdad@gmail.com', '11', 'Antigua and Barbuda', 'daw', 'daw', 'daw', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:11;a:5:{s:2:\"id\";i:11;s:5:\"title\";s:39:\"The servants securing material goodness\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-23 19:16:16', '2020-11-23 19:16:16'),
(403, 'pending', 'pending', NULL, '8EiBj9jD7NozGQ8vpb2x', 'cash_on_delivery', NULL, '49', '0', '0', '1', '49', 'jik huj', 'glodarcompany@gmail.com', '000000000', 'Ireland', 'unknown', 'unknown', 'unknown', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:5:{s:2:\"id\";s:1:\"9\";s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-24 08:29:22', '2020-11-24 08:29:22'),
(404, 'pending', 'pending', NULL, 't3UdQXFKUGBwigiVpfNJ', 'paypal', NULL, '150', '0', '0', NULL, '150', 'bfdg', 'sdf@dfg.gg', '676876876876', 'India', '879', 'hkjghjg', 'pihjhj', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-11-24 14:58:10', '2020-11-24 14:58:10');
INSERT INTO `product_orders` (`id`, `status`, `payment_status`, `transaction_id`, `payment_track`, `payment_gateway`, `user_id`, `subtotal`, `coupon_discount`, `shipping_cost`, `product_shippings_id`, `total`, `billing_name`, `billing_email`, `billing_phone`, `billing_country`, `billing_street_address`, `billing_town`, `billing_district`, `different_shipping_address`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_country`, `shipping_street_address`, `shipping_town`, `shipping_district`, `coupon_code`, `cart_items`, `created_at`, `updated_at`) VALUES
(405, 'pending', 'pending', NULL, 'B5fmlajPSHMO3lFJLfUy', 'cash_on_delivery', '1', '150', '0', '0', NULL, '150', 'Moh Ipan', 'dvrobin4@gmail.com', '12312124', 'Indonesia', 'Kalisalak RT.001 RW.005, Margasari, Tegal', 'Tegal', 'Jawa Tengah', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:2;a:5:{s:2:\"id\";i:2;s:5:\"title\";s:24:\"Multipurpose Laravel CMS\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:7:\"digital\";s:5:\"price\";i:150;}}', '2020-11-24 22:17:58', '2020-11-24 22:17:58'),
(406, 'pending', 'complete', 'txn_1Hr8PEEmGOuJLTMs8ODzYFRT', 'iUiqT9m4n6ixwGFntyta', 'stripe', '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', 'tyyjty', 'Brazil', 'tyjtyj', 'Dhaka', 'tyjt', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:1;a:5:{s:2:\"id\";i:1;s:5:\"title\";s:36:\"Give lady of they such they sure it.\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-25 01:46:12', '2020-11-25 01:46:32'),
(407, 'pending', 'complete', 'txn_1Hr9xTEmGOuJLTMsrKpiztIO', 'c5PasbAK1jyXRfkFWo0r', 'stripe', NULL, '49', '0', '0', '1', '49', 'eeeee', 'eeee@ccc.com', '34534535', 'Algeria', '34534535', '3453453', '45345345', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-25 03:25:27', '2020-11-25 03:25:59'),
(408, 'pending', 'pending', NULL, 'iJtUKx9OhMH1FIqapUKY', 'stripe', NULL, '49', '0', '0', '1', '49', 'tregrgr', 'grgeeg@fff.com', '453535636365', 'Armenia', 'erheherghe', 'rtheherhtehe', 'trhethetheth', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:9;a:5:{s:2:\"id\";i:9;s:5:\"title\";s:33:\"Contrasted dissimilar get joy you\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-11-25 03:35:36', '2020-11-25 03:35:36'),
(409, 'pending', 'pending', NULL, 'ut0DbtyRSlNelKNLLS23', NULL, NULL, '49', '0', '0', '1', '49', 'csdc', 'sdc@dfg.dfss', '4234234', 'Albania', 'sd', 'fds', 'fsd', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:8;a:5:{s:2:\"id\";i:8;s:5:\"title\";s:39:\"Perceived determine departure explained\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-12-22 19:21:37', '2020-12-22 19:21:37'),
(410, 'pending', 'pending', NULL, 'K4tSSirOjgvxXpWtRYXQ', NULL, '1', '49', '0', '0', '1', '49', 'Sharifur Rahman', 'dvrobin4@gmail.com', '9876543210', 'India', 'Delhi', 'Delhi', 'Delhi', 'no', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a:1:{i:7;a:5:{s:2:\"id\";i:7;s:5:\"title\";s:29:\"Again keeps at no meant stuff\";s:8:\"quantity\";s:1:\"1\";s:4:\"type\";s:8:\"physical\";s:5:\"price\";i:49;}}', '2020-12-23 02:10:20', '2020-12-23 02:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ratings` int(11) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_ratings`
--

INSERT INTO `product_ratings` (`id`, `ratings`, `message`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 5, 'Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she', 7, 1, '2020-07-21 12:15:59', '2020-07-21 12:15:59'),
(3, 5, 'Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she', 9, 1, '2020-07-21 12:16:21', '2020-07-21 12:16:21'),
(4, 5, 'Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she', 11, 1, '2020-07-21 12:16:44', '2020-07-21 12:16:44'),
(5, 5, 'Good draw knew bred ham busy his hour. Ask agreed answer rather joy nature admire wisdom. Moonlight age depending bed led therefore sometimes preserved exquisite she', 6, 1, '2020-07-21 12:16:50', '2020-07-21 12:16:50'),
(6, 5, 'Moonlight age depending bed led therefore sometimes preserved exquisite she', 11, 3, '2020-07-21 12:41:29', '2020-07-21 12:41:29'),
(7, 3, 'Good draw knew bred ham busy his hour.', 9, 3, '2020-07-21 12:41:53', '2020-07-21 12:41:53'),
(8, 4, 'Two indeed suffer saw beyond far former mrs remain. Occasional continuing possession we insensible an sentiments as is.', 6, 3, '2020-07-21 12:55:42', '2020-07-21 12:55:42'),
(9, 4, 'Contrasted dissimilar get joy you instrument out reasonably. Again keeps at no meant stuff.', 10, 1, '2020-07-22 02:31:33', '2020-07-22 02:31:33'),
(10, 5, NULL, 8, 1, '2020-10-17 17:01:13', '2020-10-17 17:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_shippings`
--

CREATE TABLE `product_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_shippings`
--

INSERT INTO `product_shippings` (`id`, `title`, `status`, `lang`, `description`, `cost`, `order`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'publish', 'en', 'Shipment will be within 10-15 Days', '0', '1', '1', '2020-07-20 23:17:00', '2020-07-20 23:25:33'),
(2, 'Standard Shipping', 'publish', 'en', 'Shipment will be within 5-10 Day.', '5', '2', '0', '2020-07-20 23:17:25', '2020-07-20 23:25:33'),
(3, '2-Day Shipping', 'publish', 'en', 'Shipment will be within 2 Days.', '10', '3', '0', '2020-07-20 23:17:47', '2020-07-20 23:17:47'),
(4, 'Same day delivery', 'publish', 'en', 'Shipment will be within 1 Day.', '20', '4', '0', '2020-07-20 23:18:09', '2020-07-20 23:18:09'),
(5, 'التوصيل في نفس اليوم', 'publish', 'ar', 'سيتم الشحن في غضون 10-15 يوما', '0', '1', '1', '2020-07-20 23:43:05', '2020-07-20 23:43:11'),
(6, 'شحن قياسي', 'publish', 'ar', 'سيتم الشحن في غضون 5-10 يوم.', '5', '2', '0', '2020-07-20 23:44:02', '2020-07-20 23:44:02'),
(7, 'Ücretsiz kargo', 'publish', 'tur', 'Gönderi 10-15 Gün içinde olacak', '0', '1', '1', '2020-07-20 23:44:34', '2020-07-20 23:45:09'),
(8, 'Standart Nakliye', 'publish', 'tur', 'Sevkiyat 5-10 Gün içinde olacaktır.', '4', '2', '0', '2020-07-20 23:45:04', '2020-07-20 23:45:04'),
(9, 'Envío gratis', 'publish', 'sp', 'El envío será dentro de 10-15 días', '0', '1', '1', '2020-07-20 23:45:46', '2020-07-20 23:46:20'),
(10, 'Envío estándar', 'publish', 'sp', 'El envío será dentro de 5-10 días.', '5', '2', '0', '2020-07-20 23:46:15', '2020-07-20 23:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `custom_fields`, `attachment`, `status`, `created_at`, `updated_at`) VALUES
(1, 'a:4:{s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:12:\"your-subject\";s:4:\"test\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:6:\"sdfdsf\";}', 'a:0:{}', 'pending', '2020-07-27 23:42:53', '2020-07-27 23:42:53'),
(2, 'a:4:{s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:12:\"your-subject\";s:4:\"test\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:6:\"sdfdsf\";}', 'a:0:{}', 'pending', '2020-07-27 23:45:05', '2020-07-27 23:45:05'),
(3, 'a:4:{s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:12:\"your-subject\";s:9:\"Test mail\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:8:\"sdfadsfa\";}', 'a:0:{}', 'pending', '2020-07-30 11:39:01', '2020-07-30 11:39:01'),
(4, 'a:4:{s:9:\"your-name\";s:15:\"Sharifur Rahmam\";s:12:\"your-subject\";s:8:\"sfdsfdsf\";s:10:\"your-email\";s:18:\"dvrobin4@gmail.com\";s:12:\"your-message\";s:9:\"asdfsadff\";}', 'a:0:{}', 'pending', '2020-07-30 11:39:32', '2020-07-30 11:39:32'),
(6, 'a:4:{s:9:\"your-name\";s:8:\"alkjsdkl\";s:12:\"your-subject\";s:10:\"kaljsdklsa\";s:10:\"your-email\";s:14:\"jklasd@asd.com\";s:12:\"your-message\";s:13:\"ajsdjsadljasl\";}', 'a:0:{}', 'pending', '2020-08-08 21:11:05', '2020-08-08 21:11:05'),
(7, 'a:4:{s:9:\"your-name\";s:4:\"sdfs\";s:12:\"your-subject\";s:10:\"dfsadfasdf\";s:10:\"your-email\";s:11:\"asdf@asd.co\";s:12:\"your-message\";s:70:\"asdasdasdasdasd asd asd asd asd asd asd  asd   as dasdsadsadas asd sad\";}', 'a:0:{}', 'pending', '2020-08-17 21:15:16', '2020-08-17 21:15:16'),
(8, 'a:4:{s:9:\"your-name\";s:4:\"Adam\";s:12:\"your-subject\";s:4:\"TEST\";s:10:\"your-email\";s:10:\"you@me.com\";s:12:\"your-message\";s:4:\"TEST\";}', 'a:0:{}', 'pending', '2020-08-18 21:49:31', '2020-08-18 21:49:31'),
(9, 'a:4:{s:9:\"your-name\";s:6:\"baidou\";s:12:\"your-subject\";s:4:\"abdl\";s:10:\"your-email\";s:17:\"baidou0@gmail.com\";s:12:\"your-message\";s:11:\"aegaega aaa\";}', 'a:1:{s:9:\"your-file\";s:52:\"assets/uploads/attachment/attachment-9-your-file.pdf\";}', 'pending', '2020-08-21 00:46:25', '2020-08-21 00:46:25'),
(10, 'a:4:{s:9:\"your-name\";s:5:\"chris\";s:12:\"your-subject\";s:22:\"plese i need webscript\";s:10:\"your-email\";s:18:\"angab704@gmail.com\";s:12:\"your-message\";s:54:\"angab704@gmail.comangab704@gmail.comangab704@gmail.com\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-10-your-file.txt\";}', 'pending', '2020-08-25 18:12:55', '2020-08-25 18:12:55'),
(11, 'a:4:{s:9:\"your-name\";s:7:\"sakjnkn\";s:12:\"your-subject\";s:6:\"kjsdnk\";s:10:\"your-email\";s:16:\"skdjf@kjb.cisfvs\";s:12:\"your-message\";s:5:\"fsvsv\";}', 'a:0:{}', 'pending', '2020-08-25 22:10:03', '2020-08-25 22:10:03'),
(12, 'a:4:{s:9:\"your-name\";s:3:\"tes\";s:12:\"your-subject\";s:6:\"tesaja\";s:10:\"your-email\";s:19:\"ravandaru@gmail.com\";s:12:\"your-message\";s:3:\"tes\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-12-your-file.pdf\";}', 'pending', '2020-09-24 16:07:45', '2020-09-24 16:07:45'),
(13, 'a:4:{s:9:\"your-name\";s:8:\"Khurshid\";s:12:\"your-subject\";s:2:\"xc\";s:10:\"your-email\";s:13:\"ceo@camano.uz\";s:12:\"your-message\";s:4:\"xcxc\";}', 'a:0:{}', 'pending', '2020-09-28 10:59:27', '2020-09-28 10:59:27'),
(14, 'a:4:{s:9:\"your-name\";s:10:\"dfjugdsufh\";s:12:\"your-subject\";s:9:\"dfhuheuif\";s:10:\"your-email\";s:26:\"thevishaldhameja@gmaol.com\";s:12:\"your-message\";s:14:\"efijweiojofiew\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-14-your-file.env\";}', 'pending', '2020-09-30 11:11:05', '2020-09-30 11:11:05'),
(15, 'a:4:{s:9:\"your-name\";s:4:\"dcdc\";s:12:\"your-subject\";s:4:\"dcdc\";s:10:\"your-email\";s:22:\"mitargmne.ge@gmail.com\";s:12:\"your-message\";s:3:\"bbv\";}', 'a:0:{}', 'pending', '2020-10-10 03:30:46', '2020-10-10 03:30:46'),
(16, 'a:4:{s:9:\"your-name\";s:4:\"test\";s:12:\"your-subject\";s:6:\"tester\";s:10:\"your-email\";s:15:\"test@tester.com\";s:12:\"your-message\";s:17:\"ddddddddddddddddd\";}', 'a:0:{}', 'pending', '2020-10-26 12:41:22', '2020-10-26 12:41:22'),
(17, 'a:4:{s:9:\"your-name\";s:4:\"tesh\";s:12:\"your-subject\";s:5:\"thest\";s:10:\"your-email\";s:15:\"testo@gmail.com\";s:12:\"your-message\";s:4:\"test\";}', 'a:0:{}', 'pending', '2020-11-22 23:16:47', '2020-11-22 23:16:47'),
(18, 'a:4:{s:9:\"your-name\";s:8:\"huj test\";s:12:\"your-subject\";s:3:\"huj\";s:10:\"your-email\";s:23:\"glodarcompany@gmail.com\";s:12:\"your-message\";s:14:\"huje jestescie\";}', 'a:0:{}', 'pending', '2020-11-23 04:56:04', '2020-11-23 04:56:04'),
(19, 'a:4:{s:9:\"your-name\";s:5:\"Kunal\";s:12:\"your-subject\";s:2:\"ai\";s:10:\"your-email\";s:26:\"finoptizinfotech@gmail.com\";s:12:\"your-message\";s:8:\"fd dfbdb\";}', 'a:0:{}', 'pending', '2020-11-23 15:07:35', '2020-11-23 15:07:35'),
(20, 'a:4:{s:9:\"your-name\";s:13:\"itechgenmedia\";s:12:\"your-subject\";s:10:\"itech test\";s:10:\"your-email\";s:21:\"ssenogab999@gmail.com\";s:12:\"your-message\";s:7:\"testing\";}', 'a:1:{s:9:\"your-file\";s:53:\"assets/uploads/attachment/attachment-20-your-file.pdf\";}', 'pending', '2020-11-26 08:59:35', '2020-11-26 08:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sr_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price_plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `lang`, `categories_id`, `image`, `meta_tag`, `slug`, `meta_description`, `excerpt`, `status`, `description`, `icon_type`, `img_icon`, `sr_order`, `created_at`, `updated_at`, `price_plan`) VALUES
(1, 'Cyber Security', 'flaticon-cyber-security', 'en', '2', '25', NULL, 'cyber-security', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-05-31 15:53:06', '2020-06-01 12:10:32', NULL),
(2, 'Data Management', 'flaticon-mobile', 'en', '4', '21', NULL, 'data-management', 'meta description example', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-06-01 10:45:26', '2020-06-01 12:10:41', NULL),
(3, 'Data Science', 'flaticon-optimization', 'en', '1', '24', NULL, 'data-science', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-06-01 11:38:39', '2020-06-01 12:19:05', NULL),
(4, 'Cloud Service', 'flaticon-verified', 'en', '4', '20', NULL, 'cloud-service', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-06-01 11:47:27', '2020-06-01 12:19:18', NULL),
(5, 'Cloud Security', 'flaticon-mobile', 'en', '2', '19', NULL, 'cloud-security', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-06-01 12:15:10', '2020-06-01 12:19:32', NULL),
(6, 'Analytics', 'flaticon-cyber', 'en', '2', '18', NULL, 'analytics', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-06-01 12:15:53', '2020-06-01 12:19:47', NULL),
(7, 'Optimization', 'flaticon-electronics', 'en', '4', '17', NULL, 'optimization', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-06-01 12:16:18', '2020-06-01 12:20:06', NULL),
(8, 'Data Engeneering', 'flaticon-team', 'en', '2', '15', 'hello,how ,are ,you', 'data-engeneering', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Building mr concerns servants in he outlived am breeding. He so lain good miss when sell some at if. Told hand so an rich gave next. How doubt yet again see son smart. While mirth large of on front. Ye he greater related adapted proceed entered an. Through it examine express promise no. Past add size game cold girl off how old. </p>\r\n<p>\r\nPerpetual sincerity out suspected necessary one but provision satisfied. Respect nothing use set waiting pursuit nay you looking. If on prevailed concluded ye abilities. Address say you new but minuter greater. Do denied agreed in innate. Can and middletons thoroughly themselves him. Tolerably sportsmen belonging in september no am immediate newspaper. Theirs expect dinner it pretty indeed having no of. Principle september she conveying did eat may extensive. \r\n</p>', NULL, NULL, NULL, '2020-06-01 12:16:59', '2020-06-03 14:39:16', NULL),
(9, 'Veri Mühendisliği', 'flaticon-team', 'tur', '14', '15', NULL, 'veri-muhendisligi', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p>\r\n<p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 13:02:37', '2020-06-01 13:15:15', NULL),
(10, 'Optimizasyon', 'flaticon-electronics', 'tur', '14', '17', NULL, 'optimizasyon', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p><p><br></p><p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 13:15:21', '2020-06-01 13:16:10', NULL),
(11, 'analitik', 'flaticon-cyber', 'tur', '6', '18', NULL, 'analitik', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p><p><br></p><p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 13:16:23', '2020-06-01 13:16:53', NULL),
(12, 'Bulut Güvenliği', 'flaticon-mobile', 'tur', '6', '19', NULL, 'bulut-guvenligi', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p><p><br></p><p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 13:17:14', '2020-06-01 14:46:16', NULL),
(13, 'Bulut hizmeti', 'flaticon-verified', 'tur', '13', '20', NULL, 'bulut-hizmeti', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p><p><br></p><p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 13:17:20', '2020-06-01 14:45:45', NULL),
(14, 'Veri Bilimi', 'flaticon-optimization', 'tur', '6', '24', NULL, 'veri-bilimi', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p><p><br></p><p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 13:17:28', '2020-06-01 14:32:07', NULL),
(17, 'Siber güvenlik', 'flaticon-cyber-security', 'tur', '9', '25', NULL, 'siber-guvenlik', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p>\r\n<p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 13:17:53', '2020-06-01 14:31:18', NULL),
(18, 'Ingeniería de datos', 'flaticon-team', 'sp', '12', '15', NULL, 'ingenieria-de-datos', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>El señor de la construcción concierne a los sirvientes porque sobrevivió a la cría. Él fue un gran señorita cuando vendió algunos en if. Dijo la mano así que un rico dio a continuación. Qué duda una vez más ver hijo inteligente. Mientras alegría grande de frente. Ye el mayor relacionado adaptado proceder ingresó un. A través de él examine la promesa expresa no. Pasado agregar tamaño juego chica fría de cuántos años.</p><p><br></p><p>Perpetua sinceridad presuntamente necesaria pero provisión satisfecha. Respeto a nada, use el juego esperando la búsqueda, no está buscando. Si en prevalecido concluyó sus habilidades. La dirección dice que eres nueva pero cada vez más grande. Do negó acordado en innato. Can y Middletons lo son a fondo. Tolerablemente deportistas pertenecientes a septiembre no soy periódico inmediato. La suya espera que la cena sea bastante buena sin tener nada. El principio de septiembre que ella transmitió comió puede ser extenso.</p>', NULL, NULL, NULL, '2020-06-01 14:46:26', '2020-06-01 14:56:37', NULL),
(19, 'Mejoramiento', 'flaticon-electronics', 'sp', '12', '17', NULL, 'mejoramiento', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>El señor de la construcción concierne a los sirvientes porque sobrevivió a la cría. Él fue un gran señorita cuando vendió algunos en if. Dijo la mano así que un rico dio a continuación. Qué duda una vez más ver hijo inteligente. Mientras alegría grande de frente. Ye el mayor relacionado adaptado proceder ingresó un. A través de él examine la promesa expresa no. Pasado agregar tamaño juego chica fría de cuántos años.</p><p><br></p><p>Perpetua sinceridad presuntamente necesaria pero provisión satisfecha. Respeto a nada, use el juego esperando la búsqueda, no está buscando. Si en prevalecido concluyó sus habilidades. La dirección dice que eres nueva pero cada vez más grande. Do negó acordado en innato. Can y Middletons lo son a fondo. Tolerablemente deportistas pertenecientes a septiembre no soy periódico inmediato. La suya espera que la cena sea bastante buena sin tener nada. El principio de septiembre que ella transmitió comió puede ser extenso.</p>', NULL, NULL, NULL, '2020-06-01 14:46:32', '2020-06-01 14:53:40', NULL),
(20, 'Analítica', 'flaticon-cyber', 'sp', '12', '18', NULL, 'analitica', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>El señor de la construcción concierne a los sirvientes porque sobrevivió a la cría. Él fue un gran señorita cuando vendió algunos en if. Dijo la mano así que un rico dio a continuación. Qué duda una vez más ver hijo inteligente. Mientras alegría grande de frente. Ye el mayor relacionado adaptado proceder ingresó un. A través de él examine la promesa expresa no. Pasado agregar tamaño juego chica fría de cuántos años.</p><p><br></p><p>Perpetua sinceridad presuntamente necesaria pero provisión satisfecha. Respeto a nada, use el juego esperando la búsqueda, no está buscando. Si en prevalecido concluyó sus habilidades. La dirección dice que eres nueva pero cada vez más grande. Do negó acordado en innato. Can y Middletons lo son a fondo. Tolerablemente deportistas pertenecientes a septiembre no soy periódico inmediato. La suya espera que la cena sea bastante buena sin tener nada. El principio de septiembre que ella transmitió comió puede ser extenso.</p>', NULL, NULL, NULL, '2020-06-01 14:46:38', '2020-06-01 14:51:37', NULL),
(21, 'Seguridad en la nube', 'flaticon-mobile', 'sp', '7', '19', NULL, 'seguridad-en-la-nube', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>Bay bina, kuluçkahanede kulları ilgilendirir. O zaman bazı satmak zaman çok özledim. Sonra elini bir zengin verdi, sonra bir zengin verdi. Ne kadar şüphe duyuyorsun yine oğlunu akıllı gör. Ön tarafta büyük ayna varken. Daha büyük ilgili uyarlanmış devam girin. Bu sayede açık söz no. Geçmiş kaç yaşında oyunu soğuk kız ekleyin.</p><p><br></p><p>Daimi samimiyet şüphesi gerekli olanı ancak hükmü karşıladı. Hiçbir şey saygı seyir seyir peşinde peşinde kullanın kullanın. Eğer galip geldiğinde yetenekleriniz var. Adres yeni diyor ama daha büyük. Doğuştan mutabık kalınmıştı. Can ve middletons iyice kendilerini. Eylül ayına ait hoşgörülü sporcular hemen gazete değilim. Onların oldukça güzel olan akşam yemeği bekliyoruz. Taşıdığı ilke eylül akşamları geniş olabilir.</p>', NULL, NULL, NULL, '2020-06-01 14:46:44', '2020-06-01 14:50:57', NULL),
(22, 'Servicio de almacenamiento en la nube', 'flaticon-verified', 'sp', '12', '20', NULL, 'servicio-de-almacenamiento-en-la-nube', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>El señor de la construcción concierne a los sirvientes porque sobrevivió a la cría. Él fue un gran señorita cuando vendió algunos en if. Dijo la mano así que un rico dio a continuación. Qué duda una vez más ver hijo inteligente. Mientras alegría grande de frente. Ye el mayor relacionado adaptado proceder ingresó un. A través de él examine la promesa expresa no. Pasado agregar tamaño juego chica fría de cuántos años.</p><p><br></p><p>Perpetua sinceridad presuntamente necesaria pero provisión satisfecha. Respeto a nada, use el juego esperando la búsqueda, no está buscando. Si en prevalecido concluyó sus habilidades. La dirección dice que eres nueva pero cada vez más grande. Do negó acordado en innato. Can y Middletons lo son a fondo. Tolerablemente deportistas pertenecientes a septiembre no soy periódico inmediato. La suya espera que la cena sea bastante buena sin tener nada. El principio de septiembre que ella transmitió comió puede ser extenso.</p>', NULL, NULL, NULL, '2020-06-01 14:57:17', '2020-06-01 14:58:27', NULL),
(23, 'Ciencia de los datos', 'flaticon-optimization', 'sp', '15', '24', NULL, 'ciencia-de-los-datos', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>El señor de la construcción concierne a los sirvientes porque sobrevivió a la cría. Él fue un gran señorita cuando vendió algunos en if. Dijo la mano así que un rico dio a continuación. Qué duda una vez más ver hijo inteligente. Mientras alegría grande de frente. Ye el mayor relacionado adaptado proceder ingresó un. A través de él examine la promesa expresa no. Pasado agregar tamaño juego chica fría de cuántos años.</p><p><br></p><p>Perpetua sinceridad presuntamente necesaria pero provisión satisfecha. Respeto a nada, use el juego esperando la búsqueda, no está buscando. Si en prevalecido concluyó sus habilidades. La dirección dice que eres nueva pero cada vez más grande. Do negó acordado en innato. Can y Middletons lo son a fondo. Tolerablemente deportistas pertenecientes a septiembre no soy periódico inmediato. La suya espera que la cena sea bastante buena sin tener nada. El principio de septiembre que ella transmitió comió puede ser extenso.</p>', NULL, NULL, NULL, '2020-06-01 14:57:26', '2020-06-01 15:01:48', NULL),
(24, 'إدارة البيانات', 'flaticon-mobile', 'ar', '16', '21', NULL, 'adar-albyanat', 'meta description example', 'خسر بعيدًا عن نصف مصباح بالقرب من السرير. في إشراك الأب البسيط للآخرين', 'publish', '<p>يهتم السيد بالعاملين الذين عاشوا وأنا أعيش. انه يربح جدا عندما تبيع بعض في إذا. قال اليد حتى أعطى الأغنياء بعد ذلك. كيف الشك مرة أخرى يرى ابن ذكي. بينما حجم كبير من الأمام. أيها دخل دخل تكييفها ذات الصلة أكبر. من خلال ذلك فحص الوعد الصريح لا. الماضي إضافة حجم لعبة فتاة باردة من كم عمرها.</p><p><br></p><p>الصدق الدائم من الضروري المشتبه فيه ولكن الحكم راضي. لا شيء يحترم استخدام تعيين انتظار السعي لا تبحث. إذا انتصرت على قدراتكم سادوا. العنوان يقول لك جديد ولكن minuter أكبر. هل نفى المتفق عليه فطريا. يمكن و middletons أنفسهم بدقة له. رياضيون محتملون ينتمون إلى سبتمبر لا توجد صحيفة فورية. إنهم يتوقعون العشاء وهو بالفعل لا يوجد به. قد يكون طعام سبتمبر الرئيسي الذي تنقله قد أكل كثيرًا.</p>', NULL, NULL, NULL, '2020-06-01 14:57:46', '2020-07-27 12:25:49', NULL),
(25, 'La seguridad cibernética', 'flaticon-cyber-security', 'sp', '12', '25', NULL, 'la-seguridad-cibernetica', 'cyber security', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero.', 'publish', '<p>El señor de la construcción concierne a los sirvientes porque sobrevivió a la cría. Él fue un gran señorita cuando vendió algunos en if. Dijo la mano así que un rico dio a continuación. Qué duda una vez más ver hijo inteligente. Mientras alegría grande de frente. Ye el mayor relacionado adaptado proceder ingresó un. A través de él examine la promesa expresa no. Pasado agregar tamaño juego chica fría de cuántos años.</p><p><br></p><p>Perpetua sinceridad presuntamente necesaria pero provisión satisfecha. Respeto a nada, use el juego esperando la búsqueda, no está buscando. Si en prevalecido concluyó sus habilidades. La dirección dice que eres nueva pero cada vez más grande. Do negó acordado en innato. Can y Middletons lo son a fondo. Tolerablemente deportistas pertenecientes a septiembre no soy periódico inmediato. La suya espera que la cena sea bastante buena sin tener nada. El principio de septiembre que ella transmitió comió puede ser extenso.</p>', NULL, NULL, NULL, '2020-06-01 14:57:53', '2020-06-01 15:08:37', NULL),
(26, 'هندسة البيانات', 'flaticon-team', 'ar', '10', '15', NULL, 'hnds-albyanat', 'cyber security', 'خسر بعيدًا عن نصف مصباح بالقرب من السرير. في إشراك الأب البسيط للآخرين', 'publish', '<p>يهتم السيد بالعاملين الذين عاشوا وأنا أعيش. انه يربح جدا عندما تبيع بعض في إذا. قال اليد حتى أعطى الأغنياء بعد ذلك. كيف الشك مرة أخرى يرى ابن ذكي. بينما حجم كبير من الأمام. أيها دخل دخل تكييفها ذات الصلة أكبر. من خلال ذلك فحص الوعد الصريح لا. الماضي إضافة حجم لعبة فتاة باردة من كم عمرها.</p><p><br></p><p>الصدق الدائم من الضروري المشتبه فيه ولكن الحكم راضي. لا شيء يحترم استخدام تعيين انتظار السعي لا تبحث. إذا انتصرت على قدراتكم سادوا. العنوان يقول لك جديد ولكن minuter أكبر. هل نفى المتفق عليه فطريا. يمكن و middletons أنفسهم بدقة له. رياضيون محتملون ينتمون إلى سبتمبر لا توجد صحيفة فورية. إنهم يتوقعون العشاء وهو بالفعل لا يوجد به. قد يكون طعام سبتمبر الرئيسي الذي تنقله قد أكل كثيرًا.</p>', NULL, NULL, NULL, '2020-06-01 15:10:38', '2020-07-27 12:25:37', NULL),
(27, 'الاقوي', 'flaticon-electronics', 'ar', '11', '17', NULL, 'alakoy', 'cyber security', 'خسر بعيدًا عن نصف مصباح بالقرب من السرير. في إشراك الأب البسيط للآخرين', 'publish', '<p>يهتم السيد بالعاملين الذين عاشوا وأنا أعيش. انه يربح جدا عندما تبيع بعض في إذا. قال اليد حتى أعطى الأغنياء بعد ذلك. كيف الشك مرة أخرى يرى ابن ذكي. بينما حجم كبير من الأمام. أيها دخل دخل تكييفها ذات الصلة أكبر. من خلال ذلك فحص الوعد الصريح لا. الماضي إضافة حجم لعبة فتاة باردة من كم عمرها.</p><p><br></p><p>الصدق الدائم من الضروري المشتبه فيه ولكن الحكم راضي. لا شيء يحترم استخدام تعيين انتظار السعي لا تبحث. إذا انتصرت على قدراتكم سادوا. العنوان يقول لك جديد ولكن minuter أكبر. هل نفى المتفق عليه فطريا. يمكن و middletons أنفسهم بدقة له. رياضيون محتملون ينتمون إلى سبتمبر لا توجد صحيفة فورية. إنهم يتوقعون العشاء وهو بالفعل لا يوجد به. قد يكون طعام سبتمبر الرئيسي الذي تنقله قد أكل كثيرًا.</p>', NULL, NULL, NULL, '2020-06-01 15:10:45', '2020-07-27 12:25:19', NULL),
(28, 'تحليلات', 'flaticon-cyber', 'ar', '11', '18', NULL, 'thlylat', 'cyber security', 'خسر بعيدًا عن نصف مصباح بالقرب من السرير. في إشراك الأب البسيط للآخرين', 'publish', '<p>يهتم السيد بالعاملين الذين عاشوا وأنا أعيش. انه يربح جدا عندما تبيع بعض في إذا. قال اليد حتى أعطى الأغنياء بعد ذلك. كيف الشك مرة أخرى يرى ابن ذكي. بينما حجم كبير من الأمام. أيها دخل دخل تكييفها ذات الصلة أكبر. من خلال ذلك فحص الوعد الصريح لا. الماضي إضافة حجم لعبة فتاة باردة من كم عمرها.</p><p><br></p><p>الصدق الدائم من الضروري المشتبه فيه ولكن الحكم راضي. لا شيء يحترم استخدام تعيين انتظار السعي لا تبحث. إذا انتصرت على قدراتكم سادوا. العنوان يقول لك جديد ولكن minuter أكبر. هل نفى المتفق عليه فطريا. يمكن و middletons أنفسهم بدقة له. رياضيون محتملون ينتمون إلى سبتمبر لا توجد صحيفة فورية. إنهم يتوقعون العشاء وهو بالفعل لا يوجد به. قد يكون طعام سبتمبر الرئيسي الذي تنقله قد أكل كثيرًا.</p>', NULL, NULL, NULL, '2020-06-01 15:10:51', '2020-07-27 12:24:51', NULL),
(29, 'الأمن السحابي', 'flaticon-mobile', 'ar', '5', '19', NULL, 'alamn-alshaby', 'cyber security', 'خسر بعيدًا عن نصف مصباح بالقرب من السرير. في إشراك الأب البسيط للآخرين', 'publish', '<p>يهتم السيد بالعاملين الذين عاشوا وأنا أعيش. انه يربح جدا عندما تبيع بعض في إذا. قال اليد حتى أعطى الأغنياء بعد ذلك. كيف الشك مرة أخرى يرى ابن ذكي. بينما حجم كبير من الأمام. أيها دخل دخل تكييفها ذات الصلة أكبر. من خلال ذلك فحص الوعد الصريح لا. الماضي إضافة حجم لعبة فتاة باردة من كم عمرها.</p><p><br></p><p>الصدق الدائم من الضروري المشتبه فيه ولكن الحكم راضي. لا شيء يحترم استخدام تعيين انتظار السعي لا تبحث. إذا انتصرت على قدراتكم سادوا. العنوان يقول لك جديد ولكن minuter أكبر. هل نفى المتفق عليه فطريا. يمكن و middletons أنفسهم بدقة له. رياضيون محتملون ينتمون إلى سبتمبر لا توجد صحيفة فورية. إنهم يتوقعون العشاء وهو بالفعل لا يوجد به. قد يكون طعام سبتمبر الرئيسي الذي تنقله قد أكل كثيرًا.</p>', NULL, NULL, NULL, '2020-06-01 15:10:57', '2020-07-27 12:24:30', NULL),
(30, 'علوم البيانات', 'flaticon-optimization', 'ar', '10', '24', NULL, 'aalom-albyanat', 'cyber security', 'خسر بعيدًا عن نصف مصباح بالقرب من السرير. في إشراك الأب البسيط للآخرين', 'publish', '<p>يهتم السيد بالعاملين الذين عاشوا وأنا أعيش. انه يربح جدا عندما تبيع بعض في إذا. قال اليد حتى أعطى الأغنياء بعد ذلك. كيف الشك مرة أخرى يرى ابن ذكي. بينما حجم كبير من الأمام. أيها دخل دخل تكييفها ذات الصلة أكبر. من خلال ذلك فحص الوعد الصريح لا. الماضي إضافة حجم لعبة فتاة باردة من كم عمرها.</p><p><br></p><p>الصدق الدائم من الضروري المشتبه فيه ولكن الحكم راضي. لا شيء يحترم استخدام تعيين انتظار السعي لا تبحث. إذا انتصرت على قدراتكم سادوا. العنوان يقول لك جديد ولكن minuter أكبر. هل نفى المتفق عليه فطريا. يمكن و middletons أنفسهم بدقة له. رياضيون محتملون ينتمون إلى سبتمبر لا توجد صحيفة فورية. إنهم يتوقعون العشاء وهو بالفعل لا يوجد به. قد يكون طعام سبتمبر الرئيسي الذي تنقله قد أكل كثيرًا.</p>', NULL, NULL, NULL, '2020-06-01 15:11:05', '2020-07-27 12:23:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`, `icon_type`, `icon`, `img_icon`) VALUES
(1, 'Web Design', 'en', 'publish', '2020-05-31 15:46:07', '2020-05-31 15:46:07', NULL, NULL, NULL),
(2, 'Web Developer', 'en', 'publish', '2020-05-31 15:46:14', '2020-05-31 15:46:14', NULL, NULL, NULL),
(3, 'UX/UI Design', 'en', 'publish', '2020-05-31 15:46:38', '2020-05-31 15:46:38', NULL, NULL, NULL),
(4, 'Mobile Apps', 'en', 'publish', '2020-05-31 15:46:44', '2020-05-31 15:46:44', NULL, NULL, NULL),
(5, 'تطبيقات الموبايل', 'ar', 'publish', '2020-05-31 15:47:32', '2020-05-31 15:47:32', NULL, NULL, NULL),
(6, 'Mobil uygulamalar', 'tur', 'publish', '2020-05-31 15:47:38', '2020-05-31 15:47:38', NULL, NULL, NULL),
(7, 'Mobil uygulamalar...', 'sp', 'publish', '2020-05-31 15:47:43', '2020-05-31 15:47:43', NULL, NULL, NULL),
(8, 'Diseño UX / UI', 'sp', 'publish', '2020-05-31 15:48:09', '2020-05-31 15:48:09', NULL, NULL, NULL),
(9, 'Diseño UX / UI', 'tur', 'publish', '2020-05-31 15:48:27', '2020-05-31 15:48:27', NULL, NULL, NULL),
(10, 'تصميم UX / UI', 'ar', 'publish', '2020-05-31 15:48:33', '2020-05-31 15:48:33', NULL, NULL, NULL),
(11, 'مطور ويب', 'ar', 'publish', '2020-05-31 15:48:47', '2020-05-31 15:48:47', NULL, NULL, NULL),
(12, 'Desarrollador web', 'sp', 'publish', '2020-05-31 15:48:55', '2020-05-31 15:48:55', NULL, NULL, NULL),
(13, 'Web Geliştiricisi', 'tur', 'publish', '2020-05-31 15:49:01', '2020-05-31 15:49:01', NULL, NULL, NULL),
(14, 'Web Tasarım', 'tur', 'publish', '2020-05-31 15:49:12', '2020-05-31 15:49:12', NULL, NULL, NULL),
(15, 'Diseño web', 'sp', 'publish', '2020-05-31 15:49:32', '2020-05-31 15:49:32', NULL, NULL, NULL),
(16, 'تم تصميم الموقع', 'ar', 'publish', '2020-05-31 15:49:38', '2020-05-31 15:49:38', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-twitter', 'https://twitter.com/xgenious1', '2020-06-19 13:55:51', '2020-06-19 14:09:12'),
(2, 'flaticon-facebook', 'https://www.facebook.com/xgenious', '2020-06-19 13:56:17', '2020-06-19 13:56:17'),
(3, 'fab fa-pinterest-p', '#', '2020-06-19 14:10:18', '2020-06-19 14:10:18'),
(4, 'fab fa-instagram', '#', '2020-06-19 14:10:35', '2020-06-19 14:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'site_en_title', 'Nexelit', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(2, 'site_en_tag_line', 'Multipurpose CMS & Startup Business Management System', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(3, 'site_en_footer_copyright', '{copy}  {year}  All right reserved by  <a href=\"https://xgenious.com\">xgenious</a>', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(4, 'site_color', '#ff8a73', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(5, 'site_main_color_two', '#5580ff', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(6, 'site_heading_color', '#0a1121', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(7, 'site_paragraph_color', '#878a95', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(8, 'site_rtl_enabled', NULL, '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(9, 'site_admin_dark_mode', 'on', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(10, 'site_maintenance_mode', NULL, '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(11, 'site_payment_gateway', 'on', '2020-05-15 17:08:13', '2020-10-04 12:11:35'),
(12, 'site_logo', '5', '2020-05-15 17:16:30', '2020-08-27 09:22:56'),
(13, 'site_favicon', '38', '2020-05-15 17:16:30', '2020-08-27 09:22:56'),
(14, 'site_breadcrumb_bg', '3', '2020-05-15 17:16:30', '2020-08-27 09:22:56'),
(15, 'site_white_logo', '5', '2020-05-15 17:16:30', '2020-08-27 09:22:56'),
(16, 'site_tur_title', 'Nexelit', '2020-05-19 07:34:19', '2020-10-04 12:11:35'),
(17, 'site_tur_tag_line', 'Çok Amaçlı CMS ve Başlangıç İşletme Yönetim Sistemi', '2020-05-19 07:34:19', '2020-10-04 12:11:35'),
(18, 'site_tur_footer_copyright', '{copy} {year} Tüm hakları <a href=\"https://xgenious.com\"> </a> tarafından saklıdır.', '2020-05-19 07:34:20', '2020-10-04 12:11:35'),
(19, 'site_ar_title', 'نكسيلس', '2020-05-19 07:34:20', '2020-10-04 12:11:35'),
(20, 'site_ar_tag_line', 'CMS متعددة الأغراض ونظام بدء الأعمال التجارية', '2020-05-19 07:34:20', '2020-10-04 12:11:35'),
(21, 'site_ar_footer_copyright', '{copy} {year} جميع الحقوق محفوظة بواسطة <a href=\"https://xgenious.com\"> </a>', '2020-05-19 07:34:20', '2020-10-04 12:11:35'),
(22, 'site_sp_title', 'Nexelit', '2020-05-19 07:34:20', '2020-10-04 12:11:35'),
(23, 'site_sp_tag_line', 'CMS multipropósito y sistema de gestión empresarial de inicio', '2020-05-19 07:34:20', '2020-10-04 12:11:35'),
(24, 'site_sp_footer_copyright', '{copy} {year} Todos los derechos reservados por <a href=\"https://xgenious.com\"> </a>', '2020-05-19 07:34:20', '2020-10-04 12:11:35'),
(25, 'site_meta_tags', 'nexelit ,multipupose,cms', '2020-05-19 07:35:49', '2020-05-19 07:35:49'),
(26, 'site_meta_description', 'nexelit mulipopose cms', '2020-05-19 07:35:49', '2020-05-19 07:35:49'),
(27, 'about_page_slug', 'about', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(28, 'service_page_slug', 'service', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(29, 'works_page_slug', 'works', '2020-05-27 20:15:01', '2020-05-29 17:37:23'),
(30, 'team_page_slug', 'team', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(31, 'faq_page_slug', 'faq', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(32, 'price_plan_page_slug', 'price-plan', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(33, 'blog_page_slug', 'blog', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(34, 'contact_page_slug', 'contact', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(35, 'career_with_us_page_slug', 'career', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(36, 'events_page_slug', 'events', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(37, 'knowledgebase_page_slug', 'knowledgebase', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(38, 'about_page_en_name', 'About', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(39, 'service_page_en_name', 'Service', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(40, 'work_page_en_name', 'Case Study', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(41, 'team_page_en_name', 'Team', '2020-05-27 20:15:01', '2020-08-11 22:33:15'),
(42, 'faq_page_en_name', 'Faq', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(43, 'price_plan_page_en_name', 'Price Plan', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(44, 'blog_page_en_name', 'Blog', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(45, 'contact_page_en_name', 'Contact', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(46, 'career_with_us_page_en_name', 'Career With Us', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(47, 'events_page_en_name', 'Events', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(48, 'knowledgebase_page_en_name', 'Knowledgebase', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(49, 'about_page_tur_name', 'hakkında', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(50, 'service_page_tur_name', 'Hizmet', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(51, 'work_page_tur_name', 'Vaka Analizi', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(52, 'team_page_tur_name', 'Takım', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(53, 'faq_page_tur_name', 'SSS', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(54, 'price_plan_page_tur_name', 'Fiyat Planı', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(55, 'blog_page_tur_name', 'Blog', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(56, 'contact_page_tur_name', 'İletişim', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(57, 'career_with_us_page_tur_name', 'Bizimle Kariyer', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(58, 'events_page_tur_name', 'Etkinlikler', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(59, 'knowledgebase_page_tur_name', 'Bilgi tabanı', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(60, 'about_page_ar_name', 'حول', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(61, 'service_page_ar_name', 'الخدمات', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(62, 'work_page_ar_name', 'دراسة الحالة', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(63, 'team_page_ar_name', 'الفريق', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(64, 'faq_page_ar_name', 'التعليمات', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(65, 'price_plan_page_ar_name', 'خطة الأسعار', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(66, 'blog_page_ar_name', 'مدونة', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(67, 'contact_page_ar_name', 'اتصل', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(68, 'career_with_us_page_ar_name', 'مهنة معنا', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(69, 'events_page_ar_name', 'الأحداث', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(70, 'knowledgebase_page_ar_name', 'قاعدة المعرفة', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(71, 'about_page_sp_name', 'Acerca de', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(72, 'service_page_sp_name', 'Servicio', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(73, 'work_page_sp_name', 'Caso de estudio', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(74, 'team_page_sp_name', 'Equipo', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(75, 'faq_page_sp_name', 'Preguntas más frecuentes', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(76, 'price_plan_page_sp_name', 'Plan de precios', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(77, 'blog_page_sp_name', 'Blog', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(78, 'contact_page_sp_name', 'Contacto', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(79, 'career_with_us_page_sp_name', 'Carrera con nosotras', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(80, 'events_page_sp_name', 'Eventos', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(81, 'knowledgebase_page_sp_name', 'Base de conocimientos', '2020-05-27 20:15:01', '2020-08-11 22:33:16'),
(82, 'work_page_slug', 'case-study', '2020-05-29 17:40:27', '2020-08-11 22:33:15'),
(83, 'site_meta_en_tags', 'hello,meta ,tag,multilangual', '2020-05-30 14:55:49', '2020-05-30 14:55:49'),
(84, 'site_meta_en_description', 'this is multilingual example meta tag for english', '2020-05-30 14:55:49', '2020-05-30 14:55:49'),
(85, 'navbar_button', 'on', '2020-05-30 16:00:20', '2020-06-19 14:25:57'),
(86, 'navbar_button_custom_url', '#', '2020-05-30 16:00:20', '2020-06-19 14:25:57'),
(87, 'navbar_button_custom_url_status', NULL, '2020-05-30 16:00:20', '2020-06-19 14:25:57'),
(88, 'site_header_type', 'navbar', '2020-05-30 16:00:20', '2020-05-30 16:17:40'),
(89, 'navbar_en_button_text', 'Get A Quote', '2020-05-30 16:00:20', '2020-06-19 14:25:57'),
(90, 'navbar_tur_button_text', 'Teklif Alın', '2020-05-30 16:00:20', '2020-06-19 14:25:57'),
(91, 'navbar_ar_button_text', 'إقتبس', '2020-05-30 16:00:20', '2020-06-19 14:25:57'),
(92, 'navbar_sp_button_text', 'Consigue una cotización', '2020-05-30 16:00:21', '2020-06-19 14:25:58'),
(93, 'home_page_variant', '01', '2020-05-30 18:46:26', '2020-08-24 15:59:08'),
(94, 'body_font_family', 'Nunito', '2020-05-31 10:37:18', '2020-05-31 11:30:18'),
(95, 'heading_font_family', 'Poppins', '2020-05-31 10:37:18', '2020-05-31 11:30:18'),
(96, 'heading_font', NULL, '2020-05-31 10:37:18', '2020-05-31 11:30:18'),
(97, 'body_font_variant', 'a:4:{i:0;s:7:\"regular\";i:1;s:3:\"600\";i:2;s:3:\"700\";i:3;s:3:\"800\";}', '2020-05-31 10:37:18', '2020-05-31 11:30:18'),
(98, 'heading_font_variant', 'a:1:{i:0;s:7:\"regular\";}', '2020-05-31 10:37:18', '2020-05-31 11:30:18'),
(99, 'home_page_01_en_about_us_title', 'We have 15 Years of Experience of any kind it solution', '2020-05-31 11:31:18', '2020-07-27 03:13:51'),
(100, 'home_page_01_en_about_us_button_status', NULL, '2020-05-31 11:31:18', '2020-05-31 11:31:18'),
(101, 'home_page_01_tur_about_us_button_status', NULL, '2020-05-31 11:31:18', '2020-05-31 11:31:18'),
(102, 'home_page_01_ar_about_us_button_status', NULL, '2020-05-31 11:31:18', '2020-05-31 11:31:18'),
(103, 'home_page_01_sp_about_us_button_status', NULL, '2020-05-31 11:31:18', '2020-05-31 11:31:18'),
(104, 'home_page_01_en_about_us_video_url', 'https://www.youtube.com/watch?v=wp_QA1PRZiE', '2020-05-31 11:39:02', '2020-07-27 01:56:10'),
(105, 'home_page_01_about_us_video_background_image', '26', '2020-05-31 11:39:02', '2020-05-31 11:39:03'),
(106, 'home_page_01_tur_about_us_title', 'Her türlü IT çözümünün 15 Yıllık Deneyimine sahibiz', '2020-05-31 11:39:02', '2020-07-27 03:13:51'),
(107, 'home_page_01_tur_about_us_video_url', 'https://www.youtube.com/watch?v=wp_QA1PRZiE', '2020-05-31 11:39:02', '2020-07-27 01:56:10'),
(108, 'home_page_01_ar_about_us_title', 'لدينا 15 عاما من الخبرة من أي نوع', '2020-05-31 11:39:03', '2020-07-27 03:13:51'),
(109, 'home_page_01_ar_about_us_video_url', 'https://www.youtube.com/watch?v=wp_QA1PRZiE', '2020-05-31 11:39:03', '2020-07-27 01:56:10'),
(110, 'home_page_01_sp_about_us_title', 'Tenemos 15 años de experiencia de cualquier tipo.', '2020-05-31 11:39:03', '2020-07-27 03:13:51'),
(111, 'home_page_01_sp_about_us_video_url', 'https://www.youtube.com/watch?v=wp_QA1PRZiE', '2020-05-31 11:39:03', '2020-07-27 01:56:10'),
(112, 'home_page_01_en_service_area_title', 'What We Do', '2020-05-31 15:05:10', '2020-05-31 15:09:48'),
(113, 'home_page_01_en_service_area_description', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum.', '2020-05-31 15:05:10', '2020-05-31 15:09:48'),
(114, 'home_page_01_tur_service_area_title', 'Neler Yapıyoruz', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(115, 'home_page_01_tur_service_area_description', 'Maecenas tempus tellus eget condimentum rhoncus, her zaman özgür olduğundan ay, ama kendisi ne de amet adipiscing sem.', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(116, 'home_page_01_ar_service_area_title', 'الذي نفعله', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(117, 'home_page_01_ar_service_area_description', 'أيها دخل دخل تكييفها ذات الصلة أكبر. من خلال ذلك فحص الوعد الصريح لا. الماضي إضافة حجم اللعبة البارد', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(118, 'home_page_01_sp_service_area_title', 'Lo que hacemos', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(119, 'home_page_01_sp_service_area_description', 'Maecenas tempus tellus eget condimentum rhoncus, mes de lo que siempre es libre, pero que él mismo, ni tampoco se sienta adipiscing sem.', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(120, 'home_page_01_service_area_items', '6', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(121, 'home_page_01_service_area_background_image', '26', '2020-05-31 15:05:10', '2020-05-31 15:09:49'),
(122, 'home_page_01_en_quality_area_title', 'We provide quality solutions for clients', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(123, 'home_page_01_en_quality_area_description', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero. Curabitur ullamcorper ultricies nisi. Nameget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum.', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(124, 'home_page_01_en_quality_area_button_status', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(125, 'home_page_01_en_quality_area_button_title', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(126, 'home_page_01_en_quality_area_button_url', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(127, 'home_page_01_tur_quality_area_title', 'Müşterilerimize kaliteli çözümler sunuyoruz', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(128, 'home_page_01_tur_quality_area_description', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero. Curabitur ullamcorper ultricies nisi. Nameget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum.', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(129, 'home_page_01_tur_quality_area_button_status', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(130, 'home_page_01_tur_quality_area_button_title', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(131, 'home_page_01_tur_quality_area_button_url', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(132, 'home_page_01_ar_quality_area_title', 'نحن نقدم حلول الجودة للعملاء', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(133, 'home_page_01_ar_quality_area_description', 'هل نقلت نفسك تعلم أنها رجل الرد عليها. شقيقة شقي يعيشها أنت تمكن السيدة من روح حقا. الرعية تعارض الإصلاح هو لي البؤس. قد يرى سريع الاسلوب بعد السيدة المال.', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(134, 'home_page_01_ar_quality_area_button_status', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(135, 'home_page_01_ar_quality_area_button_title', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(136, 'home_page_01_ar_quality_area_button_url', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(137, 'home_page_01_sp_quality_area_title', 'Brindamos soluciones de calidad para clientes.', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(138, 'home_page_01_sp_quality_area_description', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam sempre libero. Curabitur ullamcorper ultricies nisi. Nameget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum.', '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(139, 'home_page_01_sp_quality_area_button_status', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(140, 'home_page_01_sp_quality_area_button_title', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(141, 'home_page_01_sp_quality_area_button_url', NULL, '2020-06-01 18:16:10', '2020-07-27 03:16:49'),
(142, 'home_page_01_quality_area_background_image', '88', '2020-06-01 18:16:10', '2020-07-27 02:04:41'),
(143, 'home_page_01_en_case_study_title', 'Latest Case Studies', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(144, 'home_page_01_en_case_study_description', 'Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant.', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(145, 'home_page_01_tur_case_study_title', 'Son Örnek Olaylar', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(146, 'home_page_01_tur_case_study_description', 'Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu.', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(147, 'home_page_01_ar_case_study_title', 'أحدث دراسات الحالة', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(148, 'home_page_01_ar_case_study_description', 'تلك نقطة متساوية لا تفعله سنوات. تعتمد على دفء الدهون ولكن هي لعبت. تساءل الخجول والمواضيع تافهة ممتعة.', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(149, 'home_page_01_sp_case_study_title', 'Últimos estudios de caso', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(150, 'home_page_01_sp_case_study_description', 'Esos son un punto igual sin años. Dependen del calor gordo pero ella pero juega. Tímidos y súbditos se preguntaban trivialmente agradables.', '2020-06-02 06:49:14', '2020-07-27 02:00:24'),
(151, 'work_single_page_en_related_work_title', NULL, '2020-06-03 18:30:23', '2020-06-03 18:30:23'),
(152, 'work_single_page_tur_related_work_title', NULL, '2020-06-03 18:30:23', '2020-06-03 18:30:23'),
(153, 'work_single_page_ar_related_work_title', NULL, '2020-06-03 18:30:23', '2020-06-03 18:30:23'),
(154, 'work_single_page_sp_related_work_title', NULL, '2020-06-03 18:30:23', '2020-06-03 18:30:23'),
(155, 'case_study_en_read_more_text', 'Case Study', '2020-06-03 18:32:41', '2020-06-21 08:10:47'),
(156, 'case_study_tur_read_more_text', 'Vaka Analizi', '2020-06-03 18:32:41', '2020-06-21 08:10:47'),
(157, 'case_study_ar_read_more_text', 'دراسة الحالة', '2020-06-03 18:32:41', '2020-06-21 08:10:47'),
(158, 'case_study_sp_read_more_text', 'Caso de estudio', '2020-06-03 18:32:41', '2020-06-21 08:10:47'),
(159, 'error_404_page_en_title', '404', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(160, 'error_404_page_en_subtitle', 'Oops! This Page Could Not Be Found', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(161, 'error_404_page_en_paragraph', 'Sorry but the page you are looking for does not exist, have been removed. name changed or is temporarily unavailable', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(162, 'error_404_page_en_button_text', 'Go To Home Page', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(163, 'error_404_page_tur_title', '404', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(164, 'error_404_page_tur_subtitle', 'Hata! Bu Sayfa Bulunamadı', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(165, 'error_404_page_tur_paragraph', 'Maalesef, aradığınız sayfa mevcut değil, kaldırıldı. ad değiştirildi veya geçici olarak kullanılamıyor', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(166, 'error_404_page_tur_button_text', 'Ana sayfaya git', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(167, 'error_404_page_ar_title', '404', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(168, 'error_404_page_ar_subtitle', 'وجه الفتاة! تعذر العثور على هذه الصفحة', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(169, 'error_404_page_ar_paragraph', 'عذرًا ، الصفحة التي تبحث عنها غير موجودة ، تمت إزالتها. تم تغيير الاسم أو غير متاح مؤقتًا', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(170, 'error_404_page_ar_button_text', 'انتقل إلى الصفحة الرئيسية', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(171, 'error_404_page_sp_title', '404', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(172, 'error_404_page_sp_subtitle', '¡Uy! Esta página no se pudo encontrar', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(173, 'error_404_page_sp_paragraph', 'Lo sentimos, pero la página que busca no existe, se ha eliminado. nombre cambiado o no está disponible temporalmente', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(174, 'error_404_page_sp_button_text', 'Ir a la página de inicio', '2020-06-04 19:52:52', '2020-06-04 19:55:03'),
(175, 'home_page_01_en_testimonial_section_title', 'Clients Testimonial', '2020-06-04 20:19:48', '2020-07-27 03:17:48'),
(176, 'home_page_01_tur_testimonial_section_title', 'Müşteri Görüşleri', '2020-06-04 20:19:48', '2020-07-27 03:17:48'),
(177, 'home_page_01_ar_testimonial_section_title', 'شهادات العملاء', '2020-06-04 20:19:48', '2020-07-27 03:17:48'),
(178, 'home_page_01_sp_testimonial_section_title', 'Testimonio de clientes', '2020-06-04 20:19:48', '2020-07-27 03:17:48'),
(179, 'home_page_01_en_price_plan_section_title', 'Pricing Plans For Our All Services', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(180, 'home_page_01_en_price_plan_section_description', 'Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero. Curabitur ullamcorper ultricies nisi. Nameget dui.', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(181, 'home_page_01_tur_price_plan_section_title', 'Tüm Hizmetlerimiz İçin Fiyat Planları', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(182, 'home_page_01_tur_price_plan_section_description', 'Birkaç hata sevinç başladı acı verici kaldırıldı sona ulaştı dedi. Devlet patlaması düşünmek son vardır. Geldi onu yaşlı sevgili onu', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(183, 'home_page_01_ar_price_plan_section_title', 'خطط التسعير لجميع خدماتنا', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(184, 'home_page_01_ar_price_plan_section_description', 'بدأت عدة أخطاء فرحة تقول مؤلمة إزالتها وصلت إلى نهايتها. انفجار الدولة يعتقد نهاية لها. نزلت وهي مسنة تحبه', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(185, 'home_page_01_sp_price_plan_section_title', 'Planes de precios para todos nuestros servicios', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(186, 'home_page_01_sp_price_plan_section_description', 'Comenzaron varios errores de alegría, dicen que dolorosa, eliminada, llegó al final. Explosión de estado piensa fin son sus. Llegó ella anciana lo amaba', '2020-06-06 17:22:58', '2020-08-27 09:25:01'),
(187, 'home_page_01_price_plan_section_items', '4', '2020-06-06 17:22:59', '2020-08-27 09:25:01'),
(188, 'home_page_01_price_plan_background_image', '90', '2020-06-06 17:23:47', '2020-08-27 09:25:01'),
(189, 'home_page_01_en_latest_news_title', 'Latest Blog', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(190, 'home_page_01_en_latest_news_description', 'Depart do be so he enough talent. Sociable formerly six but handsome. Up do view time they shot. He concluded disposing', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(191, 'home_page_01_tur_latest_news_title', 'Son Blog', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(192, 'home_page_01_tur_latest_news_description', 'Kalkmak o kadar yetenekli. Sociable eski altı ama yakışıklı. Yukarı atış zamanını yapmak. Bertaraf etti', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(193, 'home_page_01_ar_latest_news_title', 'أحدث مدونة', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(194, 'home_page_01_ar_latest_news_description', 'مغادرة يكون ذلك يكفي من المواهب. مؤنس سابقا ستة ولكن وسيم. لأعلى وقت العرض الذي أطلقوه. وخلص التصرف', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(195, 'home_page_01_sp_latest_news_title', 'Blog más reciente', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(196, 'home_page_01_sp_latest_news_description', 'Partir sea así que él tiene suficiente talento. Sociable anteriormente seis pero guapo. Hasta ver el tiempo que dispararon. Concluyó desechando', '2020-06-12 06:06:44', '2020-06-12 06:07:16'),
(197, 'home_page_01_en_contact_area_title', 'Get In Touch', '2020-06-12 09:29:47', '2020-06-12 09:31:11'),
(198, 'home_page_01_en_contact_area_button_text', 'Send Message', '2020-06-12 09:29:47', '2020-06-12 09:31:11'),
(199, 'home_page_01_tur_contact_area_title', 'Temasta olmak', '2020-06-12 09:29:47', '2020-06-12 09:31:11'),
(200, 'home_page_01_tur_contact_area_button_text', 'Mesaj gönder', '2020-06-12 09:29:48', '2020-06-12 09:31:11'),
(201, 'home_page_01_ar_contact_area_title', 'ابقى على تواصل', '2020-06-12 09:29:48', '2020-06-12 09:31:11'),
(202, 'home_page_01_ar_contact_area_button_text', 'أرسل رسالة', '2020-06-12 09:29:48', '2020-06-12 09:31:11'),
(203, 'home_page_01_sp_contact_area_title', 'Ponerse en contacto', '2020-06-12 09:29:48', '2020-06-12 09:31:11'),
(204, 'home_page_01_sp_contact_area_button_text', 'Enviar mensaje', '2020-06-12 09:29:48', '2020-06-12 09:31:11'),
(205, 'home_page_01_contact_area_map_location', 'New York, NY, USA', '2020-06-12 09:29:48', '2020-06-12 09:31:11'),
(206, 'call_back_page_form_fields', '{\"field_type\":[\"text\",\"text\"],\"field_name\":[\"\",\"checkbox\"],\"field_placeholder\":[null,\"Checkbox\"]}', '2020-06-12 17:44:29', '2020-06-13 06:43:12'),
(207, 'get_in_touch_form_fields', '{\"field_type\":[\"text\",\"email\",\"url\",\"tel\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"\",\"your-phone\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",null,\"Your Phone\",\"Your Message\"],\"field_required\":{\"1\":\"on\",\"3\":\"on\",\"4\":\"on\"}}', '2020-06-13 07:02:58', '2020-08-26 14:54:26'),
(208, 'order_mail_en_success_message', 'Thanks for your order. we will contact you soon.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(209, 'quote_mail_en_success_message', 'Thanks for your contact. we will contact you soon.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(210, 'contact_mail_en_success_message', 'Thanks for your contact!!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(211, 'get_in_touch_mail_en_success_message', 'Thanks for your contact!!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(212, 'order_mail_tur_success_message', 'Siparişiniz için teşekkürler. yakında sizinle iletişime geçeceğiz.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(213, 'quote_mail_tur_success_message', 'İletişiminiz için teşekkürler. yakında sizinle iletişime geçeceğiz.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(214, 'contact_mail_tur_success_message', 'İletişiminiz için teşekkürler !!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(215, 'get_in_touch_mail_tur_success_message', 'İletişiminiz için teşekkürler !!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(216, 'order_mail_ar_success_message', 'شكرا لطلبك. سوف نتصل بك قريبا.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(217, 'quote_mail_ar_success_message', 'شكرا لاتصالك. سوف نتصل بك قريبا.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(218, 'contact_mail_ar_success_message', 'شكرا لاتصالك !!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(219, 'get_in_touch_mail_ar_success_message', 'شكرا لاتصالك !!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(220, 'order_mail_sp_success_message', 'Gracias por tu orden. Nos pondremos en contacto con usted pronto.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(221, 'quote_mail_sp_success_message', 'Gracias por tu contacto. Nos pondremos en contacto con usted pronto.', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(222, 'contact_mail_sp_success_message', 'Gracias por tu contacto !!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(223, 'get_in_touch_mail_sp_success_message', 'Gracias por tu contacto !!', '2020-06-13 16:16:56', '2020-07-29 19:25:46'),
(224, 'site_smtp_mail_host', 'smtp.example.com', '2020-06-13 17:29:43', '2020-10-04 12:20:35'),
(225, 'site_smtp_mail_port', '587', '2020-06-13 17:29:43', '2020-10-04 12:20:35'),
(226, 'site_smtp_mail_username', 'example@example.com', '2020-06-13 17:29:43', '2020-10-04 12:20:35'),
(227, 'site_smtp_mail_password', '123456', '2020-06-13 17:29:43', '2020-10-04 12:20:35'),
(228, 'site_smtp_mail_encryption', 'ssl', '2020-06-13 17:29:43', '2020-10-04 12:20:35'),
(229, 'language_select_option', 'on', '2020-06-18 16:22:13', '2020-10-04 12:11:35'),
(230, 'site_secondary_color', '#1d2228', '2020-06-18 16:32:38', '2020-10-04 12:11:35'),
(231, 'site_global_email', 'contact@xgenious.com', '2020-06-20 07:36:38', '2020-12-22 01:22:19'),
(232, 'site_global_email_template', '<p>Hello @username,</p><p><br></p><p>@message</p><p><br></p><p>Regards</p><p>@company</p>', '2020-06-20 07:36:38', '2020-12-22 01:22:19'),
(233, 'service_page_service_items', '6', '2020-06-20 15:47:52', '2020-06-20 15:48:13'),
(234, 'service_single_page_en_query_form_title', 'Have Query ?', '2020-06-20 16:11:26', '2020-06-20 16:11:26'),
(235, 'service_single_page_tur_query_form_title', 'Sorunuz mu Var?', '2020-06-20 16:11:26', '2020-06-20 16:11:26'),
(236, 'service_single_page_ar_query_form_title', 'هل لديك استفسار؟', '2020-06-20 16:11:26', '2020-06-20 16:11:26'),
(237, 'service_single_page_sp_query_form_title', '¿Tienes consulta?', '2020-06-20 16:11:26', '2020-06-20 16:11:26'),
(238, 'service_single_page_query_form_email', 'dvrobin4@gmail.com', '2020-06-20 16:11:26', '2020-06-20 16:11:26'),
(239, 'service_query_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Subject\",\"Message\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"}}', '2020-06-20 17:37:53', '2020-06-21 08:03:40'),
(240, 'case_study_en_query_title', 'Have Query?', '2020-06-21 06:53:14', '2020-06-21 08:10:47'),
(241, 'case_study_tur_query_title', 'Sorunuz mu Var?', '2020-06-21 06:53:14', '2020-06-21 08:10:47'),
(242, 'case_study_ar_query_title', 'هل لديك استفسار؟', '2020-06-21 06:53:14', '2020-06-21 08:10:47'),
(243, 'case_study_sp_query_title', '¿Tienes consulta?', '2020-06-21 06:53:14', '2020-06-21 08:10:47'),
(244, 'case_study_query_form_mail', 'dvrobin4@gmail.com', '2020-06-21 06:53:14', '2020-06-21 08:10:47'),
(245, 'case_study_en_gallery_title', 'Gallery', '2020-06-21 07:00:22', '2020-06-21 08:10:47'),
(246, 'case_study_tur_gallery_title', 'galeri', '2020-06-21 07:00:22', '2020-06-21 08:10:47'),
(247, 'case_study_ar_gallery_title', 'صالة عرض', '2020-06-21 07:00:22', '2020-06-21 08:10:47'),
(248, 'case_study_sp_gallery_title', 'Galería', '2020-06-21 07:00:22', '2020-06-21 08:10:47'),
(249, 'case_study_en_related_title', 'Related Case Study', '2020-06-21 07:14:44', '2020-06-21 08:10:47'),
(250, 'case_study_tur_related_title', 'İlgili Vaka Çalışması', '2020-06-21 07:14:44', '2020-06-21 08:10:47'),
(251, 'case_study_ar_related_title', 'دراسة حالة ذات صلة', '2020-06-21 07:14:44', '2020-06-21 08:10:47'),
(252, 'case_study_sp_related_title', 'Estudio de caso relacionado', '2020-06-21 07:14:44', '2020-06-21 08:10:47'),
(253, 'case_study_query_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-subject\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Subject\",\"Message\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\"}}', '2020-06-21 08:05:04', '2020-06-21 08:06:14'),
(254, 'case_study_en_query_button_text', 'Submit Request', '2020-06-21 08:10:47', '2020-06-21 08:10:47'),
(255, 'case_study_tur_query_button_text', 'İstek gönderin', '2020-06-21 08:10:47', '2020-06-21 08:10:47'),
(256, 'case_study_ar_query_button_text', 'تقديم الطلب', '2020-06-21 08:10:47', '2020-06-21 08:10:47'),
(257, 'case_study_sp_query_button_text', 'Enviar peticion', '2020-06-21 08:10:47', '2020-06-21 08:10:47'),
(258, 'order_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"file\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-file\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Document\",\"Your Message\"],\"field_required\":{\"1\":\"on\",\"3\":\"on\"},\"mimes_type\":{\"2\":\"mimes:txt,pdf\"}}', '2020-06-21 10:13:58', '2020-06-21 10:59:34'),
(259, 'paypal_business_email', 'sb-qc3j51513705@business.example.com', '2020-06-21 11:02:03', '2020-10-01 10:22:20'),
(260, 'paytm_merchant_key', '31Q9BhP79JVip77', '2020-06-21 11:02:03', '2020-10-01 10:22:20'),
(261, 'paytm_merchant_mid', 'Websit5239737375544', '2020-06-21 11:02:03', '2020-10-01 10:22:20'),
(262, 'paytm_merchant_website', 'WEBSTAGING', '2020-06-21 11:02:03', '2020-10-01 10:22:20'),
(263, 'site_global_currency', 'USD', '2020-06-21 11:02:03', '2020-10-01 10:22:20'),
(264, 'site_manual_payment_name', 'Manual Payment', '2020-06-21 11:02:03', '2020-10-01 10:22:21'),
(265, 'manual_payment_gateway', 'on', '2020-06-21 11:02:03', '2020-10-01 10:22:21'),
(266, 'paypal_gateway', 'on', '2020-06-21 11:02:03', '2020-10-01 10:22:21'),
(267, 'paytm_gateway', 'on', '2020-06-21 11:02:03', '2020-10-01 10:22:21'),
(268, 'paypal_preview_logo', '39', '2020-06-21 11:05:24', '2020-10-01 10:22:20'),
(269, 'paytm_preview_logo', '40', '2020-06-21 11:05:24', '2020-10-01 10:22:20'),
(270, 'manual_payment_preview_logo', '43', '2020-06-21 11:05:24', '2020-10-01 10:22:21'),
(271, 'site_usd_to_nri_exchange_rate', '77', '2020-06-21 11:07:27', '2020-08-03 23:18:49'),
(272, 'site_manual_payment_description', 'manual payment gateway description', '2020-06-21 11:07:52', '2020-10-01 10:22:21'),
(273, 'razorpay_gateway', 'on', '2020-06-21 14:46:58', '2020-10-01 10:22:21'),
(274, 'stripe_gateway', 'on', '2020-06-21 14:46:58', '2020-10-01 10:22:21'),
(275, 'site_euro_to_nri_exchange_rate', '90', '2020-06-21 14:47:04', '2020-08-03 23:18:49'),
(276, 'stripe_preview_logo', '41', '2020-06-21 14:50:45', '2020-10-01 10:22:20'),
(277, 'razorpay_preview_logo', '42', '2020-06-21 15:01:36', '2020-10-01 10:22:20'),
(278, 'site_global_payment_gateway', 'paytm', '2020-06-21 16:07:14', '2020-10-01 10:22:21'),
(279, 'order_page_en_form_title', 'Order Information', '2020-06-22 08:29:18', '2020-06-22 08:29:18'),
(280, 'order_page_tur_form_title', 'Sipariş Bilgisi', '2020-06-22 08:29:18', '2020-06-22 08:29:18'),
(281, 'order_page_ar_form_title', 'معلومات الطلب', '2020-06-22 08:29:18', '2020-06-22 08:29:18'),
(282, 'order_page_sp_form_title', 'información del pedido', '2020-06-22 08:29:18', '2020-06-22 08:29:18'),
(283, 'order_page_form_mail', 'dvrobin4@gmail.com', '2020-06-22 08:29:18', '2020-06-22 08:29:18'),
(284, 'site_order_success_page_en_title', 'Thank you', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(285, 'site_order_success_page_en_subtitle', 'Payment Success For Order {pkname}', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(286, 'site_order_success_page_en_description', NULL, '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(287, 'site_order_success_page_tur_title', 'teşekkür ederim', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(288, 'site_order_success_page_tur_subtitle', 'Sipariş için Ödeme Başarısı  {pkname}', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(289, 'site_order_success_page_tur_description', NULL, '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(290, 'site_order_success_page_ar_title', 'شكرا جزيلا', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(291, 'site_order_success_page_ar_subtitle', 'نجاح الدفع للطلب  {pkname}', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(292, 'site_order_success_page_ar_description', NULL, '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(293, 'site_order_success_page_sp_title', 'Gracias', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(294, 'site_order_success_page_sp_subtitle', 'Pago exitoso por pedido  {pkname}', '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(295, 'site_order_success_page_sp_description', NULL, '2020-06-22 08:44:41', '2020-06-22 08:46:43'),
(296, 'site_order_cancel_page_en_title', 'Sorry', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(297, 'site_order_cancel_page_en_subtitle', 'Payment Cancelled Of Order: {pkname}', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(298, 'site_order_cancel_page_en_description', NULL, '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(299, 'site_order_cancel_page_tur_title', 'Afedersiniz', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(300, 'site_order_cancel_page_tur_subtitle', 'Ödeme İptal Edildi: {pkname}', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(301, 'site_order_cancel_page_tur_description', NULL, '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(302, 'site_order_cancel_page_ar_title', 'آسف', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(303, 'site_order_cancel_page_ar_subtitle', 'تم إلغاء الدفع للطلب: {pkname}', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(304, 'site_order_cancel_page_ar_description', NULL, '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(305, 'site_order_cancel_page_sp_title', 'Lo siento', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(306, 'site_order_cancel_page_sp_subtitle', 'Pago cancelado de la orden: {pkname}', '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(307, 'site_order_cancel_page_sp_description', NULL, '2020-06-22 08:44:49', '2020-06-22 08:45:55'),
(308, 'home_page_call_to_action_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(309, 'home_page_about_us_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(310, 'home_page_service_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(311, 'home_page_key_feature_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(312, 'home_page_counterup_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(313, 'home_page_case_study_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(314, 'home_page_testimonial_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(315, 'home_page_latest_news_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(316, 'home_page_brand_logo_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(317, 'home_page_support_bar_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(318, 'home_page_price_plan_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(319, 'home_page_team_member_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(320, 'home_page_quality_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(321, 'home_page_contact_section_status', 'on', '2020-07-19 12:28:02', '2020-07-19 12:28:02'),
(322, 'preloader_default', '11', '2020-07-19 23:47:26', '2020-07-19 23:47:26'),
(323, 'preloader_custom', NULL, '2020-07-19 23:47:26', '2020-07-19 23:47:26'),
(324, 'preloader_custom_image', NULL, '2020-07-19 23:47:26', '2020-07-19 23:47:26'),
(325, 'quote_page_slug', 'quote', '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(326, 'donation_page_slug', 'donations', '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(327, 'product_page_slug', 'products', '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(328, 'testimonial_page_slug', 'testimonial', '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(329, 'feedback_page_slug', 'feedback', '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(330, 'clients_feedback_page_slug', 'clients-feedback', '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(331, 'image_gallery_page_slug', 'image-gallery', '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(332, 'about_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(333, 'about_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(334, 'service_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(335, 'service_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(336, 'work_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(337, 'work_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:15'),
(338, 'team_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(339, 'team_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(340, 'price_plan_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(341, 'price_plan_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(342, 'faq_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(343, 'faq_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(344, 'blog_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(345, 'blog_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(346, 'contact_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(347, 'contact_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(348, 'career_with_us_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(349, 'career_with_us_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(350, 'events_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(351, 'events_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(352, 'knowledgebase_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(353, 'knowledgebase_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(354, 'quote_page_en_name', 'Quote', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(355, 'quote_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(356, 'quote_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(357, 'donation_page_en_name', 'Donations', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(358, 'donation_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(359, 'donation_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(360, 'product_page_en_name', 'Products', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(361, 'product_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(362, 'product_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(363, 'testimonial_page_en_name', 'Testimonial', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(364, 'testimonial_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(365, 'testimonial_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(366, 'feedback_page_en_name', 'Feedback', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(367, 'feedback_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(368, 'feedback_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(369, 'clients_feedback_page_en_name', 'Clients Feedback', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(370, 'clients_feedback_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(371, 'clients_feedback_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(372, 'image_gallery_page_en_name', 'Image Gallery', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(373, 'image_gallery_page_en_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(374, 'image_gallery_page_en_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(375, 'about_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(376, 'about_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(377, 'service_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(378, 'service_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(379, 'work_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(380, 'work_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(381, 'team_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(382, 'team_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(383, 'price_plan_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(384, 'price_plan_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(385, 'faq_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(386, 'faq_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(387, 'blog_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(388, 'blog_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(389, 'contact_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(390, 'contact_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(391, 'career_with_us_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(392, 'career_with_us_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(393, 'events_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(394, 'events_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(395, 'knowledgebase_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(396, 'knowledgebase_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(397, 'quote_page_tur_name', 'Alıntı', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(398, 'quote_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(399, 'quote_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(400, 'donation_page_tur_name', 'Bağışlar', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(401, 'donation_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(402, 'donation_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(403, 'product_page_tur_name', 'Ürün:% s', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(404, 'product_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(405, 'product_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(406, 'testimonial_page_tur_name', 'bonservis', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(407, 'testimonial_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(408, 'testimonial_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(409, 'feedback_page_tur_name', 'geri bildirim', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(410, 'feedback_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(411, 'feedback_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(412, 'clients_feedback_page_tur_name', 'Müşteriler Geribildirim', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(413, 'clients_feedback_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(414, 'clients_feedback_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(415, 'image_gallery_page_tur_name', 'Resim Galerisi', '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(416, 'image_gallery_page_tur_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(417, 'image_gallery_page_tur_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(418, 'about_page_ar_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(419, 'about_page_ar_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(420, 'service_page_ar_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(421, 'service_page_ar_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(422, 'work_page_ar_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(423, 'work_page_ar_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(424, 'team_page_ar_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(425, 'team_page_ar_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(426, 'price_plan_page_ar_meta_tags', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(427, 'price_plan_page_ar_meta_description', NULL, '2020-07-20 00:20:52', '2020-08-11 22:33:16'),
(428, 'faq_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(429, 'faq_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(430, 'blog_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(431, 'blog_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(432, 'contact_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(433, 'contact_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(434, 'career_with_us_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(435, 'career_with_us_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(436, 'events_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(437, 'events_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(438, 'knowledgebase_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(439, 'knowledgebase_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(440, 'quote_page_ar_name', 'اقتبس', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(441, 'quote_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(442, 'quote_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(443, 'donation_page_ar_name', 'التبرعات', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(444, 'donation_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(445, 'donation_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(446, 'product_page_ar_name', 'منتجات', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(447, 'product_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(448, 'product_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(449, 'testimonial_page_ar_name', 'شهادة', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(450, 'testimonial_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(451, 'testimonial_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(452, 'feedback_page_ar_name', 'ردود الفعل', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(453, 'feedback_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(454, 'feedback_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(455, 'clients_feedback_page_ar_name', 'ملاحظات العملاء', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(456, 'clients_feedback_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(457, 'clients_feedback_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(458, 'image_gallery_page_ar_name', 'معرض الصور', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(459, 'image_gallery_page_ar_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(460, 'image_gallery_page_ar_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(461, 'about_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(462, 'about_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(463, 'service_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(464, 'service_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(465, 'work_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(466, 'work_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(467, 'team_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(468, 'team_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(469, 'price_plan_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(470, 'price_plan_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(471, 'faq_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(472, 'faq_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(473, 'blog_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(474, 'blog_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(475, 'contact_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(476, 'contact_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(477, 'career_with_us_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(478, 'career_with_us_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(479, 'events_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(480, 'events_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(481, 'knowledgebase_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(482, 'knowledgebase_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(483, 'quote_page_sp_name', 'Citar', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(484, 'quote_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(485, 'quote_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(486, 'donation_page_sp_name', 'Donaciones', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(487, 'donation_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(488, 'donation_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(489, 'product_page_sp_name', 'Productos', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(490, 'product_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(491, 'product_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(492, 'testimonial_page_sp_name', 'Testimonial', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(493, 'testimonial_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(494, 'testimonial_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(495, 'feedback_page_sp_name', 'Realimentación', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(496, 'feedback_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(497, 'feedback_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(498, 'clients_feedback_page_sp_name', 'Comentarios de las clientas', '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(499, 'clients_feedback_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(500, 'clients_feedback_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:16'),
(501, 'image_gallery_page_sp_name', 'galería de imágenes', '2020-07-20 00:20:53', '2020-08-11 22:33:17'),
(502, 'image_gallery_page_sp_meta_tags', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:17'),
(503, 'image_gallery_page_sp_meta_description', NULL, '2020-07-20 00:20:53', '2020-08-11 22:33:17'),
(504, 'feedback_page_form_fields', '{\"field_type\":[\"select\"],\"field_name\":[\"what-service-you-get\"],\"field_placeholder\":[\"What service you get ?\"],\"field_required\":{\"1\":\"on\"},\"select_options\":[\"products\\r\\npackage order\\r\\nevent tickets\\r\\ndonations\"]}', '2020-07-20 00:38:42', '2020-07-20 00:38:42'),
(505, 'feedback_notify_mail', 'dvrobin4@gmail.com', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(506, 'feedback_page_form_en_name_label', 'Name', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(507, 'feedback_page_form_en_email_label', 'Email', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(508, 'feedback_page_form_en_ratings_label', 'How Was Your Experience', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(509, 'feedback_page_form_en_description_label', 'Write Few Words', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(510, 'feedback_page_form_en_button_text', 'Submit Now', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(511, 'feedback_page_form_en_form_title', 'Leave Your Feedback', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(512, 'feedback_page_form_tur_name_label', 'ad', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(513, 'feedback_page_form_tur_email_label', 'E-posta', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(514, 'feedback_page_form_tur_ratings_label', 'Deneyiminiz Nasıldı', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(515, 'feedback_page_form_tur_description_label', 'Birkaç Kelime Yaz', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(516, 'feedback_page_form_tur_button_text', 'Şimdi gönder', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(517, 'feedback_page_form_tur_form_title', 'Görüşlerinizi Bırakın', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(518, 'feedback_page_form_ar_name_label', 'اسم', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(519, 'feedback_page_form_ar_email_label', 'البريد الإلكتروني', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(520, 'feedback_page_form_ar_ratings_label', 'كيف كانت تجربتك', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(521, 'feedback_page_form_ar_description_label', 'اكتب كلمات قليلة', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(522, 'feedback_page_form_ar_button_text', 'أرسل الآن', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(523, 'feedback_page_form_ar_form_title', 'اترك تعليقاتك', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(524, 'feedback_page_form_sp_name_label', 'Nombre', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(525, 'feedback_page_form_sp_email_label', 'Email', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(526, 'feedback_page_form_sp_ratings_label', 'Cómo fue tu experiencia', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(527, 'feedback_page_form_sp_description_label', 'Escribe pocas palabras', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(528, 'feedback_page_form_sp_button_text', 'Aplique ahora', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(529, 'feedback_page_form_sp_form_title', 'Deja tu comentario', '2020-07-20 00:39:20', '2020-07-20 00:42:21'),
(530, 'site_knowledgebase_category_en_title', 'Topics', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(531, 'site_knowledgebase_popular_widget_en_title', 'Popular Articles', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(532, 'site_knowledgebase_article_topic_en_title', 'Article Topics', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(533, 'site_knowledgebase_category_tur_title', 'Başlıklar', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(534, 'site_knowledgebase_popular_widget_tur_title', 'Popüler Makaleler', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(535, 'site_knowledgebase_article_topic_tur_title', 'Makale Konuları', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(536, 'site_knowledgebase_category_ar_title', 'جميع المواضيع', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(537, 'site_knowledgebase_popular_widget_ar_title', 'المواد شعبية', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(538, 'site_knowledgebase_article_topic_ar_title', 'مواضيع المقالة', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(539, 'site_knowledgebase_category_sp_title', 'Todos los temas', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(540, 'site_knowledgebase_popular_widget_sp_title', 'articulos populares', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(541, 'site_knowledgebase_article_topic_sp_title', 'Temas del artículo', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(542, 'site_knoeledgebase_post_items', '6', '2020-07-20 01:29:12', '2020-07-20 01:29:52'),
(543, 'site_events_category_en_title', 'Events Category', '2020-07-20 04:51:29', '2020-07-20 04:51:37'),
(544, 'site_events_category_tur_title', 'Etkinlik Kategorisi', '2020-07-20 04:51:29', '2020-07-20 04:51:37'),
(545, 'site_events_category_ar_title', 'فئة الأحداث', '2020-07-20 04:51:29', '2020-07-20 04:51:37'),
(546, 'site_events_category_sp_title', 'Categoría de eventos', '2020-07-20 04:51:29', '2020-07-20 04:51:37'),
(547, 'site_events_post_items', '6', '2020-07-20 04:51:29', '2020-07-20 04:51:38'),
(548, 'event_single_en_event_info_title', 'Event Info', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(549, 'event_single_en_date_title', 'Date', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(550, 'event_single_en_time_title', 'Time', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(551, 'event_single_en_cost_title', 'Cost', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(552, 'event_single_en_category_title', 'Category', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(553, 'event_single_en_organizer_title', 'Event Organizer', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(554, 'event_single_en_organizer_name_title', 'Name', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(555, 'event_single_en_organizer_email_title', 'Email', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(556, 'event_single_en_organizer_phone_title', 'Phone', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(557, 'event_single_en_organizer_website_title', 'Website', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(558, 'event_single_en_venue_title', 'Event Venue', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(559, 'event_single_en_venue_name_title', 'Name', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(560, 'event_single_en_venue_location_title', 'Locaiton', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(561, 'event_single_en_venue_phone_title', NULL, '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(562, 'event_single_en_available_ticket_text', 'Available Tickets', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(563, 'event_single_en_reserve_button_title', 'Reserve Your Seat', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(564, 'event_single_tur_event_info_title', 'Etkinlik Bilgisi', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(565, 'event_single_tur_date_title', 'tarih', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(566, 'event_single_tur_time_title', 'Zaman', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(567, 'event_single_tur_cost_title', 'Maliyet', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(568, 'event_single_tur_category_title', 'Kategori', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(569, 'event_single_tur_organizer_title', 'Etkinlik düzenleyici', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(570, 'event_single_tur_organizer_name_title', 'ad', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(571, 'event_single_tur_organizer_email_title', 'E-posta', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(572, 'event_single_tur_organizer_phone_title', 'Telefon', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(573, 'event_single_tur_organizer_website_title', 'İnternet sitesi', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(574, 'event_single_tur_venue_title', 'Etkinlik Mekanı', '2020-07-20 04:54:30', '2020-08-24 17:47:28'),
(575, 'event_single_tur_venue_name_title', 'ad', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(576, 'event_single_tur_venue_location_title', 'yer', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(577, 'event_single_tur_venue_phone_title', 'Telefon', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(578, 'event_single_tur_available_ticket_text', 'Mevcut Biletler', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(579, 'event_single_tur_reserve_button_title', 'Yerinizi Ayırtın', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(580, 'event_single_ar_event_info_title', 'معلومات الحدث', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(581, 'event_single_ar_date_title', 'تاريخ', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(582, 'event_single_ar_time_title', 'زمن', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(583, 'event_single_ar_cost_title', 'كلفة', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(584, 'event_single_ar_category_title', 'الفئة', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(585, 'event_single_ar_organizer_title', 'منظم الحدث', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(586, 'event_single_ar_organizer_name_title', 'اسم', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(587, 'event_single_ar_organizer_email_title', 'البريد الإلكتروني', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(588, 'event_single_ar_organizer_phone_title', 'هاتف', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(589, 'event_single_ar_organizer_website_title', NULL, '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(590, 'event_single_ar_venue_title', 'موقع الكتروني', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(591, 'event_single_ar_venue_name_title', 'اسم', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(592, 'event_single_ar_venue_location_title', 'موقعك', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(593, 'event_single_ar_venue_phone_title', 'هاتف', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(594, 'event_single_ar_available_ticket_text', 'التذاكر المتاحة', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(595, 'event_single_ar_reserve_button_title', 'احجز مقعدك', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(596, 'event_single_sp_event_info_title', 'Información del evento', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(597, 'event_single_sp_date_title', 'Fecha', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(598, 'event_single_sp_time_title', 'Hora', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(599, 'event_single_sp_cost_title', 'Costo', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(600, 'event_single_sp_category_title', 'Categoría', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(601, 'event_single_sp_organizer_title', 'Organizadora de eventos', '2020-07-20 04:54:30', '2020-08-24 17:47:29'),
(602, 'event_single_sp_organizer_name_title', 'Nombre', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(603, 'event_single_sp_organizer_email_title', 'Email', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(604, 'event_single_sp_organizer_phone_title', 'Teléfono', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(605, 'event_single_sp_organizer_website_title', 'Sitio web', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(606, 'event_single_sp_venue_title', 'Lugar del evento', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(607, 'event_single_sp_venue_name_title', 'Nombre', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(608, 'event_single_sp_venue_location_title', 'Ubicación', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(609, 'event_single_sp_venue_phone_title', 'Teléfono', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(610, 'event_single_sp_available_ticket_text', 'Entradas disponibles', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(611, 'event_single_sp_reserve_button_title', 'Reservado tu asiento', '2020-07-20 04:54:31', '2020-08-24 17:47:29'),
(612, 'event_attendance_page_en_title', 'Confirm Your Attendance', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(613, 'event_attendance_page_en_form_button_title', 'Confirm Attend', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(614, 'event_attendance_page_tur_title', 'Katılımınızı Onaylayın', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(615, 'event_attendance_page_tur_form_button_title', 'Sunmak', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(616, 'event_attendance_page_ar_title', 'تأكيد الحضور', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(617, 'event_attendance_page_ar_form_button_title', 'تأكيد الحضور', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(618, 'event_attendance_page_sp_title', 'Confirme su asistencia', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(619, 'event_attendance_page_sp_form_button_title', 'Enviar', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(620, 'event_attendance_receiver_mail', 'dvrobin4@gmail.com', '2020-07-20 04:54:58', '2020-07-20 04:56:23'),
(621, 'event_success_page_en_title', 'Thank you', '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(622, 'event_success_page_en_subtitle', 'Payment Success For Event: {evname}', '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(623, 'event_success_page_en_description', NULL, '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(624, 'event_success_page_tur_title', 'Teşekkür ederim', '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(625, 'event_success_page_tur_subtitle', 'Etkinlik İçin Ödeme Başarısı: {evname}', '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(626, 'event_success_page_tur_description', NULL, '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(627, 'event_success_page_ar_title', NULL, '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(628, 'event_success_page_ar_subtitle', NULL, '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(629, 'event_success_page_ar_description', NULL, '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(630, 'event_success_page_sp_title', 'Gracias', '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(631, 'event_success_page_sp_subtitle', 'Pago exitoso para el evento: {evname}', '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(632, 'event_success_page_sp_description', NULL, '2020-07-20 05:36:27', '2020-07-20 05:36:42'),
(633, 'event_cancel_page_en_title', 'Sorry', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(634, 'event_cancel_page_en_subtitle', 'Payment Cancel For Event: {evname}', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(635, 'event_cancel_page_en_description', NULL, '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(636, 'event_cancel_page_tur_title', 'Afedersiniz', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(637, 'event_cancel_page_tur_subtitle', 'Etkinlik İçin Ödeme İptali: {evname}', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(638, 'event_cancel_page_tur_description', NULL, '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(639, 'event_cancel_page_ar_title', 'آسف', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(640, 'event_cancel_page_ar_subtitle', '{evname} :إلغاء الدفع للحدث', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(641, 'event_cancel_page_ar_description', NULL, '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(642, 'event_cancel_page_sp_title', 'Lo siento', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(643, 'event_cancel_page_sp_subtitle', 'Payment Cancel For Event: {evname}', '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(644, 'event_cancel_page_sp_description', NULL, '2020-07-20 05:36:32', '2020-07-20 05:38:54'),
(645, 'product_success_page_en_title', 'Thanks For Your Order', '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(646, 'product_success_page_en_description', NULL, '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(647, 'product_success_page_tur_title', 'Siparişiniz için teşekkürler', '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(648, 'product_success_page_tur_description', NULL, '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(649, 'product_success_page_ar_title', 'شكرا لطلبك', '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(650, 'product_success_page_ar_description', NULL, '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(651, 'product_success_page_sp_title', 'Gracias por tu orden', '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(652, 'product_success_page_sp_description', NULL, '2020-07-20 05:37:13', '2020-07-20 05:38:22'),
(653, 'product_cancel_page_en_title', 'You Payment  Is Not Succeced', '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(654, 'product_cancel_page_en_description', NULL, '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(655, 'product_cancel_page_tur_title', 'Siparişiniz İçin Ödeme İptal Edilir', '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(656, 'product_cancel_page_tur_description', NULL, '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(657, 'product_cancel_page_ar_title', 'دفعتك لم تنجح', '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(658, 'product_cancel_page_ar_description', NULL, '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(659, 'product_cancel_page_sp_title', 'El pago de su pedido es cancelar', '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(660, 'product_cancel_page_sp_description', NULL, '2020-07-20 05:37:19', '2020-07-20 05:38:08'),
(661, 'product_add_to_cart_button_en_text', 'Add To Cart', '2020-07-20 05:37:27', '2020-07-21 11:07:47'),
(662, 'product_add_to_cart_button_tur_text', 'Sepete ekle', '2020-07-20 05:37:27', '2020-07-21 11:07:47'),
(663, 'product_add_to_cart_button_ar_text', 'أضف إلى السلة', '2020-07-20 05:37:27', '2020-07-21 11:07:47'),
(664, 'product_add_to_cart_button_sp_text', 'Añadir al carrito', '2020-07-20 05:37:27', '2020-07-21 11:07:47'),
(665, 'product_post_items', '6', '2020-07-20 05:37:27', '2020-07-21 11:07:47'),
(666, 'contact_page_contact_form_fields', '{\"field_type\":[\"text\",\"email\",\"tel\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-phone\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Phone\",\"Message\"],\"field_required\":{\"1\":\"on\"}}', '2020-07-20 06:39:06', '2020-07-20 06:39:06'),
(667, 'contact_page_contact_info_section_status', 'on', '2020-07-20 06:39:27', '2020-07-20 06:39:27'),
(668, 'contact_page_contact_section_status', 'on', '2020-07-20 06:39:27', '2020-07-20 06:39:27'),
(669, 'contact_page_en_form_section_title', 'Keep In Touch', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(670, 'contact_page_en_form_submit_btn_text', 'Send Message', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(671, 'contact_page_tur_form_section_title', 'Temasta olmak', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(672, 'contact_page_tur_form_submit_btn_text', 'Mesaj gönder', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(673, 'contact_page_ar_form_section_title', 'أبق على اتصال', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(674, 'contact_page_ar_form_submit_btn_text', 'أرسل رسالة', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(675, 'contact_page_sp_form_section_title', 'Ponerse en contacto', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(676, 'contact_page_sp_form_submit_btn_text', 'Enviar mensaje', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(677, 'contact_page_form_receiving_mail', 'dvrobin4@gmail.com', '2020-07-20 06:39:50', '2020-07-20 06:40:15'),
(678, 'contact_page_map_section_location', '2626 Angie Drive Santa Ana, CA 92701', '2020-07-20 06:40:44', '2020-07-20 06:40:44'),
(679, 'contact_page_map_section_zoom', '10', '2020-07-20 06:40:44', '2020-07-20 06:40:44'),
(680, 'event_attendance_form_fields', '{\"field_type\":[\"text\",\"email\",\"checkbox\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"terms-condition\",\"your-messsage\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Agree With <a href=\'#\'>Terms Of Policy<\\/a>\",\"Message\"],\"field_required\":[\"on\",\"on\"]}', '2020-07-20 06:44:10', '2020-10-01 10:47:50'),
(681, 'apply_job_page_form_fields', '{\"field_type\":[\"text\",\"email\",\"text\",\"file\",\"textarea\"],\"field_name\":[\"your-name\",\"your-email\",\"your-expected-salary\",\"your-cv\",\"your-additional-info\"],\"field_placeholder\":[\"Your Name\",\"Your Email\",\"Your Expected Salary\",\"Your CV\",\"About Yourself\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\",\"3\":\"on\",\"4\":\"on\"},\"mimes_type\":{\"3\":\"mimes:txt,pdf\"}}', '2020-07-20 06:54:09', '2020-07-20 06:54:09'),
(682, 'job_single_page_en_job_context_label', 'Job Context', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(683, 'job_single_page_en_job_responsibility_label', 'Job Responsibility', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(684, 'job_single_page_en_education_requirement_label', 'Educational Requirement', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(685, 'job_single_page_en_experience_requirement_label', 'Experience Requirement', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(686, 'job_single_page_en_additional_requirement_label', 'Additional Requirement', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(687, 'job_single_page_en_others_benefits_label', 'Others Benefits', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(688, 'job_single_page_en_apply_button_text', 'Apply To The Job', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(689, 'job_single_page_en_job_info_text', 'Jobs Information', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(690, 'job_single_page_en_company_name_text', 'Company Name', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(691, 'job_single_page_en_job_category_text', 'Job Category', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(692, 'job_single_page_en_job_position_text', 'Job Position', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(693, 'job_single_page_en_job_type_text', 'Job Type', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(694, 'job_single_page_en_salary_text', 'Salary', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(695, 'job_single_page_en_job_location_text', 'Job Location', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(696, 'job_single_page_en_job_deadline_text', 'Deadline', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(697, 'job_single_page_tur_job_context_label', 'İş Bağlamı', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(698, 'job_single_page_tur_job_responsibility_label', 'İş sorumluluğu', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(699, 'job_single_page_tur_education_requirement_label', 'Eğitim Gereksinimi', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(700, 'job_single_page_tur_experience_requirement_label', 'Deneyim Gereksinimi', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(701, 'job_single_page_tur_additional_requirement_label', 'Ek gereksinim', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(702, 'job_single_page_tur_others_benefits_label', 'Others Benefits', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(703, 'job_single_page_tur_apply_button_text', 'İşe Başvur', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(704, 'job_single_page_tur_job_info_text', 'İş bilgisi', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(705, 'job_single_page_tur_company_name_text', 'şirket', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(706, 'job_single_page_tur_job_category_text', 'iş kategorisi', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(707, 'job_single_page_tur_job_position_text', 'İş pozisyonu', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(708, 'job_single_page_tur_job_type_text', 'Meslek türü', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(709, 'job_single_page_tur_salary_text', 'Maaş', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(710, 'job_single_page_tur_job_location_text', 'iş konumu', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(711, 'job_single_page_tur_job_deadline_text', 'Son tarih', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(712, 'job_single_page_ar_job_context_label', 'سياق العمل', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(713, 'job_single_page_ar_job_responsibility_label', 'مسؤولية العمل', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(714, 'job_single_page_ar_education_requirement_label', 'المتطلبات التربوية', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(715, 'job_single_page_ar_experience_requirement_label', 'متطلبات الخبرة', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(716, 'job_single_page_ar_additional_requirement_label', 'متطلبات إضافية', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(717, 'job_single_page_ar_others_benefits_label', 'فوائد الآخرين', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(718, 'job_single_page_ar_apply_button_text', 'قدم على الوظيفة', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(719, 'job_single_page_ar_job_info_text', 'معلومات الوظائف', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(720, 'job_single_page_ar_company_name_text', 'شركة', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(721, 'job_single_page_ar_job_category_text', 'تصنيف الوظيفة', '2020-07-20 07:42:27', '2020-07-20 08:39:08'),
(722, 'job_single_page_ar_job_position_text', 'وظيفه', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(723, 'job_single_page_ar_job_type_text', 'نوع الوظيفة', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(724, 'job_single_page_ar_salary_text', 'راتب', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(725, 'job_single_page_ar_job_location_text', 'مكان العمل', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(726, 'job_single_page_ar_job_deadline_text', 'الموعد النهائي', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(727, 'job_single_page_sp_job_context_label', 'Contexto de trabajo', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(728, 'job_single_page_sp_job_responsibility_label', 'Responsabilidad laboral', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(729, 'job_single_page_sp_education_requirement_label', 'Requisito Educativo', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(730, 'job_single_page_sp_experience_requirement_label', 'Requisito de experiencia', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(731, 'job_single_page_sp_additional_requirement_label', 'Requerimiento adicional', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(732, 'job_single_page_sp_others_benefits_label', 'Otros beneficios', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(733, 'job_single_page_sp_apply_button_text', 'Aplicar al trabajo', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(734, 'job_single_page_sp_job_info_text', 'Información de trabajos', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(735, 'job_single_page_sp_company_name_text', 'Empresa', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(736, 'job_single_page_sp_job_category_text', 'Categoría de Trabajo', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(737, 'job_single_page_sp_job_position_text', 'Puesto de trabajo', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(738, 'job_single_page_sp_job_type_text', 'Tipo de empleo', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(739, 'job_single_page_sp_salary_text', 'Salario', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(740, 'job_single_page_sp_job_location_text', 'locación de trabajo', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(741, 'job_single_page_sp_job_deadline_text', 'Fecha límite', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(742, 'job_single_page_apply_form', 'on', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(743, 'job_single_page_applicant_mail', 'dvrobin4@gmail.com', '2020-07-20 07:42:28', '2020-07-20 08:39:08'),
(744, 'site_jobs_category_en_title', 'Jobs Category', '2020-07-20 08:41:01', '2020-07-20 08:41:01'),
(745, 'site_jobs_category_tur_title', 'İş Kategorisi', '2020-07-20 08:41:01', '2020-07-20 08:41:01'),
(746, 'site_jobs_category_ar_title', 'فئة الوظائف', '2020-07-20 08:41:01', '2020-07-20 08:41:01'),
(747, 'site_jobs_category_sp_title', 'Categoría de trabajos', '2020-07-20 08:41:01', '2020-07-20 08:41:01'),
(748, 'site_job_post_items', '6', '2020-07-20 08:41:01', '2020-07-20 08:41:01'),
(749, 'donation_success_page_en_title', 'Thank You', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(750, 'donation_success_page_en_subtitle', 'Payment Success For Donation:  {dnname}', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(751, 'donation_success_page_en_description', NULL, '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(752, 'donation_success_page_tur_title', 'Teşekkürler', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(753, 'donation_success_page_tur_subtitle', 'Bağış İçin Ödeme Başarısı: {dnname}', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(754, 'donation_success_page_tur_description', NULL, '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(755, 'donation_success_page_ar_title', 'شكرا', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(756, 'donation_success_page_ar_subtitle', 'نجاح الدفع للتبرع:', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(757, 'donation_success_page_ar_description', NULL, '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(758, 'donation_success_page_sp_title', 'Gracias', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(759, 'donation_success_page_sp_subtitle', 'Pago exitoso por donación: {dnname}', '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(760, 'donation_success_page_sp_description', NULL, '2020-07-20 11:04:21', '2020-07-20 11:04:21'),
(761, 'donation_cancel_page_en_title', 'Sorry!!', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(762, 'donation_cancel_page_en_subtitle', 'Payment Cancel For Donation: {dnname}', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(763, 'donation_cancel_page_en_description', NULL, '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(764, 'donation_cancel_page_tur_title', 'Afedersiniz!!', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(765, 'donation_cancel_page_tur_subtitle', 'Bağış İçin İptal Edildi: {dnname}', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(766, 'donation_cancel_page_tur_description', NULL, '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(767, 'donation_cancel_page_ar_title', 'آسف', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(768, 'donation_cancel_page_ar_subtitle', 'إلغاء الدفع للتبرع:', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(769, 'donation_cancel_page_ar_description', NULL, '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(770, 'donation_cancel_page_sp_title', '¡¡Lo siento!!', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(771, 'donation_cancel_page_sp_subtitle', 'Pago cancelado por donación: {dnname}', '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(772, 'donation_cancel_page_sp_description', NULL, '2020-07-20 11:05:10', '2020-07-20 11:05:10'),
(773, 'donation_notify_mail', 'dvrobin4@gmail.com', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(774, 'donation_single_en_form_title', 'Donate for help', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(775, 'donation_single_en_form_button_text', 'Donate Now', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(776, 'donation_single_tur_form_title', 'Yardım için bağış yapın', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(777, 'donation_single_tur_form_button_text', 'Şimdi Bağış yap', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(778, 'donation_single_ar_form_title', 'تبرع للمساعدة', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(779, 'donation_single_ar_form_button_text', 'تبرع الآن', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(780, 'donation_single_sp_form_title', 'Done por ayuda', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(781, 'donation_single_sp_form_button_text', 'Done ahora', '2020-07-20 11:07:53', '2020-08-24 17:49:28'),
(782, 'donor_page_post_items', '6', '2020-07-20 11:12:21', '2020-07-20 11:12:21'),
(783, 'donation_button_en_text', 'Donate Now', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(784, 'donation_goal_en_text', 'Goal:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(785, 'donation_raised_en_text', 'Raised:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(786, 'donation_button_tur_text', 'Şimdi Bağış yap', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(787, 'donation_goal_tur_text', 'Hedef:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(788, 'donation_raised_tur_text', 'yükseltilmiş:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(789, 'donation_button_ar_text', 'تبرع الآن', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(790, 'donation_goal_ar_text', 'هدف:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(791, 'donation_raised_ar_text', 'رفع:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(792, 'donation_button_sp_text', 'Done ahora', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(793, 'donation_goal_sp_text', 'Objetivo:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(794, 'donation_raised_sp_text', 'Elevada:', '2020-07-20 11:12:22', '2020-07-20 11:12:22'),
(795, 'quote_page_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"file\",\"textarea\"],\"field_name\":[\"your-name\",\"your-subject\",\"your-email\",\"your-file\",\"your-message\"],\"field_placeholder\":[\"Your Name\",\"Your Subject\",\"Your Email\",\"Your File\",\"Your Message\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\",\"4\":\"on\"},\"mimes_type\":{\"3\":\"mimes:txt,pdf\"}}', '2020-07-20 11:50:29', '2020-07-20 11:50:29'),
(796, 'quote_page_en_form_title', 'Request A Quote', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(797, 'quote_page_en_form_button_text', 'Send Quote', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(798, 'quote_page_tur_form_title', 'Bir teklif isteği', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(799, 'quote_page_tur_form_button_text', 'Teklif Gönderin', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(800, 'quote_page_ar_form_title', 'اطلب اقتباس', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(801, 'quote_page_ar_form_button_text', 'إرسال اقتباس', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(802, 'quote_page_sp_form_title', 'Solicitar presupuesto', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(803, 'quote_page_sp_form_button_text', 'Enviar presupuesto', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(804, 'quote_page_form_mail', 'dvrobin4@gmail.com', '2020-07-20 11:50:50', '2020-07-27 09:42:52'),
(805, 'product_single_en_add_to_cart_text', 'Add To Cart', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(806, 'product_single_en_category_text', 'Category:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(807, 'product_single_en_sku_text', 'SKU:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(808, 'product_single_en_description_text', 'Description', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(809, 'product_single_en_attributes_text', 'Additional Information', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(810, 'product_single_en_related_product_text', 'Related Products', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(811, 'product_single_tur_add_to_cart_text', 'Sepete ekle', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(812, 'product_single_tur_category_text', 'Kategori:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(813, 'product_single_tur_sku_text', 'SKU:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(814, 'product_single_tur_description_text', 'Açıklama', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(815, 'product_single_tur_attributes_text', 'ek bilgi', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(816, 'product_single_tur_related_product_text', 'ilgili ürünler', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(817, 'product_single_ar_add_to_cart_text', 'أضف إلى السلة', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(818, 'product_single_ar_category_text', 'الفئة:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(819, 'product_single_ar_sku_text', 'كود التخزين التعريفي:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(820, 'product_single_ar_description_text', 'تفسير', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(821, 'product_single_ar_attributes_text', 'معلومة اضافية', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(822, 'product_single_ar_related_product_text', 'منتجات ذات صله', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(823, 'product_single_sp_add_to_cart_text', 'Añadir al carrito', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(824, 'product_single_sp_category_text', 'Categoría:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(825, 'product_single_sp_sku_text', 'SKU:', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(826, 'product_single_sp_description_text', 'Descripción', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(827, 'product_single_sp_attributes_text', 'Información Adicional', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(828, 'product_single_sp_related_product_text', 'Productos relacionados', '2020-07-21 01:20:43', '2020-07-21 10:06:22'),
(829, 'product_category_en_text', 'Category', '2020-07-21 04:37:42', '2020-07-21 11:07:47'),
(830, 'product_category_tur_text', 'Kategori', '2020-07-21 04:37:42', '2020-07-21 11:07:47'),
(831, 'product_category_ar_text', 'الفئة', '2020-07-21 04:37:42', '2020-07-21 11:07:47'),
(832, 'product_category_sp_text', 'Categoría', '2020-07-21 04:37:42', '2020-07-21 11:07:47'),
(833, 'cash_on_delivery_preview_logo', '77', '2020-07-21 05:18:45', '2020-10-01 10:22:20'),
(834, 'paystack_preview_logo', '78', '2020-07-21 05:18:45', '2020-10-01 10:22:20'),
(835, 'paystack_public_key', 'pk_test_081a8fcd9423dede2de7b4c3143375b5e5415290', '2020-07-21 05:18:45', '2020-10-01 10:22:20'),
(836, 'paystack_secret_key', 'sk_test_c874d38f8d08760efc517fc83d8cd574b906374f', '2020-07-21 05:18:45', '2020-10-01 10:22:20'),
(837, 'paystack_merchant_email', 'dvrobin4@gmail.com', '2020-07-21 05:18:45', '2020-10-01 10:22:20'),
(838, 'razorpay_key', 'rzp_test_SXk7LZqsBPpAkj', '2020-07-21 05:18:45', '2020-10-01 10:22:21'),
(839, 'razorpay_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2020-07-21 05:18:45', '2020-10-01 10:22:21'),
(840, 'stripe_publishable_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2020-07-21 05:18:45', '2020-10-01 10:22:21'),
(841, 'stripe_secret_key', 'sk_test_51GwS1SEmGOuJLTMs2vhSliTwAGkOt4fKJMBrxzTXeCJoLrRu8HFf4I0C5QuyE3l3bQHBJm3c0qFmeVjd0V9nFb6Z00VrWDJ9Uw', '2020-07-21 05:18:45', '2020-10-01 10:22:21'),
(842, 'paystack_gateway', 'on', '2020-07-21 05:18:45', '2020-10-01 10:22:21'),
(843, 'cash_on_delivery_gateway', 'on', '2020-07-21 05:18:45', '2020-10-01 10:22:21'),
(844, 'blog_page_en_read_more_btn_text', 'Read More', '2020-07-21 05:28:57', '2020-07-21 05:28:57'),
(845, 'blog_page_tur_read_more_btn_text', 'Daha fazla oku', '2020-07-21 05:28:57', '2020-07-21 05:28:57'),
(846, 'blog_page_ar_read_more_btn_text', 'قراءة المزيد', '2020-07-21 05:28:57', '2020-07-21 05:28:57'),
(847, 'blog_page_sp_read_more_btn_text', 'Lee mas', '2020-07-21 05:28:57', '2020-07-21 05:28:57'),
(848, 'blog_page_item', '6', '2020-07-21 05:28:57', '2020-07-21 05:28:57'),
(849, 'blog_page_recent_post_widget_items', '5', '2020-07-21 05:28:57', '2020-07-21 05:28:57'),
(850, 'blog_single_page_en_related_post_title', 'Related Post', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(851, 'blog_single_page_en_share_title', 'Share', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(852, 'blog_single_page_en_category_title', 'Blog Categories', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(853, 'blog_single_page_en_recent_post_title', 'Related Posts', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(854, 'blog_single_page_en_tags_title', 'Tags', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(855, 'blog_single_page_tur_related_post_title', 'İlgili Yazı', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(856, 'blog_single_page_tur_share_title', 'Paylaş', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(857, 'blog_single_page_tur_category_title', 'Blog Kategorileri', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(858, 'blog_single_page_tur_recent_post_title', 'yakın zamanda Gönderilenler', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(859, 'blog_single_page_tur_tags_title', 'Etiketler', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(860, 'blog_single_page_ar_related_post_title', 'منشور له صلة', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(861, 'blog_single_page_ar_share_title', 'شارك', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(862, 'blog_single_page_ar_category_title', 'الفئة', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(863, 'blog_single_page_ar_recent_post_title', 'المنشور الاخير...', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(864, 'blog_single_page_ar_tags_title', 'العلامات', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(865, 'blog_single_page_sp_related_post_title', 'Publicación relacionada', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(866, 'blog_single_page_sp_share_title', 'Compartir', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(867, 'blog_single_page_sp_category_title', 'Categorías de blog', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(868, 'blog_single_page_sp_recent_post_title', 'Mensajes recientes', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(869, 'blog_single_page_sp_tags_title', 'Etiquetas', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(870, 'blog_single_page_recent_post_item', '5', '2020-07-21 05:29:29', '2020-07-21 05:30:39'),
(871, 'product_price_filter_en_text', 'Price Filter', '2020-07-21 09:40:41', '2020-07-21 11:07:47'),
(872, 'product_rating_filter_en_text', 'Rating Filter', '2020-07-21 09:40:41', '2020-07-21 11:07:47'),
(873, 'product_price_filter_tur_text', 'Fiyat Filtresi', '2020-07-21 09:40:42', '2020-07-21 11:07:47'),
(874, 'product_rating_filter_tur_text', 'Derecelendirme Filtresi', '2020-07-21 09:40:42', '2020-07-21 11:07:47'),
(875, 'product_price_filter_ar_text', 'تصفية الأسعار', '2020-07-21 09:40:42', '2020-07-21 11:07:47'),
(876, 'product_rating_filter_ar_text', 'مرشح التصنيف', '2020-07-21 09:40:42', '2020-07-21 11:07:47'),
(877, 'product_price_filter_sp_text', 'Filtro de precios', '2020-07-21 09:40:42', '2020-07-21 11:07:47'),
(878, 'product_rating_filter_sp_text', 'Filtro de calificación', '2020-07-21 09:40:42', '2020-07-21 11:07:47'),
(879, 'product_single_en_ratings_text', 'Ratings', '2020-07-21 10:06:22', '2020-07-21 10:06:22'),
(880, 'product_single_tur_ratings_text', 'Puanlar', '2020-07-21 10:06:22', '2020-07-21 10:06:22'),
(881, 'product_single_ar_ratings_text', 'التقييمات', '2020-07-21 10:06:22', '2020-07-21 10:06:22'),
(882, 'product_single_sp_ratings_text', 'Calificaciones', '2020-07-21 10:06:22', '2020-07-21 10:06:22'),
(883, 'site_rss_feed_description', 'The description of the feed.', '2020-07-23 01:32:47', '2020-07-23 01:35:22'),
(884, 'site_rss_feed_title', 'My feeds', '2020-07-23 01:32:47', '2020-07-23 01:35:22'),
(885, 'site_rss_feed_url', '/feeds', '2020-07-23 01:32:47', '2020-07-23 01:35:22'),
(886, 'site_gdpr_cookie_en_title', 'Cookies & Privacy', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(887, 'site_gdpr_cookie_en_message', 'Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages.', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(888, 'site_gdpr_cookie_en_more_info_label', 'More information', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(889, 'site_gdpr_cookie_en_more_info_link', '{url}/p/privacy-policy', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(890, 'site_gdpr_cookie_en_accept_button_label', 'Accept Cookie', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(891, 'site_gdpr_cookie_tur_title', 'Çerezler ve Gizlilik', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(892, 'site_gdpr_cookie_tur_message', 'Eğitim yurdu da öyle mi? Diyelim ki utangaç sabahın on davranmış olduğunu söylüyor. Herhangi bir tatmin edici yardım, zaman zaman çok makul avantajlar iltifat.', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(893, 'site_gdpr_cookie_tur_more_info_label', 'Daha fazla bilgi', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(894, 'site_gdpr_cookie_tur_more_info_link', '#', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(895, 'site_gdpr_cookie_tur_accept_button_label', 'Çerez Kabul Et', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(896, 'site_gdpr_cookie_ar_title', 'ملفات تعريف الارتباط والخصوصية', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(897, 'site_gdpr_cookie_ar_message', 'هل نقل التعليم هو الأمر كذلك. افترض أن الخجل يقول إن العاشرة صباح تصرفت. أي مساعدة غير مرضية تكمل مزايا عرضية للغاية.', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(898, 'site_gdpr_cookie_ar_more_info_label', 'معلومات اكثر', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(899, 'site_gdpr_cookie_ar_more_info_link', '#', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(900, 'site_gdpr_cookie_ar_accept_button_label', 'قبول ملف تعريف الارتباط', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(901, 'site_gdpr_cookie_sp_title', 'Cookies y privacidad', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(902, 'site_gdpr_cookie_sp_message', '¿La residencia educativa se transmite así? Supongamos que la timidez dice que diez se portaron bien. Cualquier asistencia insaciable complementa las ventajas ocasionales y demasiado razonables.', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(903, 'site_gdpr_cookie_sp_more_info_label', 'Más información', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(904, 'site_gdpr_cookie_sp_more_info_link', '#', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(905, 'site_gdpr_cookie_sp_accept_button_label', 'Aceptar cookie', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(906, 'site_gdpr_cookie_delay', '5000', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(907, 'site_gdpr_cookie_enabled', 'on', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(908, 'site_gdpr_cookie_expire', '30', '2020-07-24 11:02:41', '2020-07-24 11:11:03'),
(909, 'site_gdpr_cookie_en_decline_button_label', 'Decline Cookie', '2020-07-24 11:07:57', '2020-07-24 11:11:03'),
(910, 'site_gdpr_cookie_tur_decline_button_label', 'Çerezleri Reddet', '2020-07-24 11:07:57', '2020-07-24 11:11:03'),
(911, 'site_gdpr_cookie_ar_decline_button_label', 'رفض ملف تعريف الارتباط', '2020-07-24 11:07:57', '2020-07-24 11:11:03'),
(912, 'site_gdpr_cookie_sp_decline_button_label', 'Rechazar Cookie', '2020-07-24 11:07:57', '2020-07-24 11:11:03'),
(913, 'site_disqus_key', 'nexelit', '2020-07-24 11:41:07', '2020-07-28 22:56:28'),
(914, 'site_google_analytics', 'UA-173946136-1', '2020-07-24 11:41:07', '2020-07-28 22:56:28'),
(915, 'tawk_api_key', '5e0b3e167e39ea1242a27b69', '2020-07-24 11:41:07', '2020-07-28 22:56:28'),
(916, 'site_google_map_api', NULL, '2020-07-24 11:41:07', '2020-07-24 11:41:33'),
(917, 'site_google_captcha_v3_site_key', '6LdvUeQUAAAAAHKM02AWBjtKAAL0-AqUk_qkqa0O', '2020-07-24 11:41:07', '2020-07-28 22:56:28'),
(918, 'site_google_captcha_v3_secret_key', '6LdvUeQUAAAAABaCkkQbMY-z2XaqYsLSWwYgB6Ru', '2020-07-24 11:41:07', '2020-07-28 22:56:28'),
(919, 'site_install_path', 'https://xgenious.com/laravel/nexelit', '2020-07-24 23:56:42', '2020-12-25 17:39:55'),
(920, 'site_admin_path', 'https://xgenious.com/laravel/nexelit/admin-home', '2020-07-24 23:56:42', '2020-12-25 17:39:55'),
(921, 'site_frontend_path', 'https://xgenious.com/laravel/nexelit', '2020-07-24 23:56:42', '2020-12-25 17:39:55'),
(922, 'site_script_version', '2.1', '2020-07-24 23:56:42', '2020-12-25 17:39:55'),
(923, 'item_purchase_key', 'dfgdfgdfgdfgdfg', '2020-07-25 00:27:03', '2020-10-04 11:00:51'),
(924, 'item_license_status', 'not_verified', '2020-07-25 00:27:03', '2020-12-18 11:28:02'),
(925, 'item_license_msg', 'license your cms from \"General Settings > License\". &nbsp; To stay safe and get update also get best support.', '2020-07-25 00:27:03', '2020-12-18 11:28:02'),
(926, 'site_script_unique_key', 'NB2GLtODUjYOc9bFkPq2pKI8uma3G6WX', '2020-07-25 00:57:35', '2020-12-25 17:39:55'),
(927, 'site_sticky_navbar_enabled', 'on', '2020-07-25 07:32:50', '2020-10-04 12:11:35'),
(928, 'popup_enable_status', 'on', '2020-07-26 04:34:23', '2020-10-02 00:01:50'),
(929, 'popup_delay_time', '10000', '2020-07-26 04:34:23', '2020-10-02 00:01:50'),
(930, 'popup_selected_en_id', '1', '2020-07-26 04:34:23', '2020-10-02 00:01:50');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(931, 'popup_selected_tur_id', '6', '2020-07-26 04:34:23', '2020-10-02 00:01:50'),
(932, 'popup_selected_ar_id', '7', '2020-07-26 04:34:23', '2020-10-02 00:01:50'),
(933, 'popup_selected_sp_id', '8', '2020-07-26 04:34:23', '2020-10-02 00:01:50'),
(934, 'about_page_en_about_section_title', 'We have 15 Years of Experience of any kind it solution', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(935, 'about_page_en_about_section_description', 'Affronting discretion as do is announcing. Now months esteem oppose nearer enable too six. She numerous unlocked you perceive speedily.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(936, 'about_page_en_about_section_quote_text', 'Whatever your business may be whether you run a creative agency, a digital studio.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(937, 'about_page_tur_about_section_title', 'Her türlü IT çözümünün 15 Yıllık Deneyimine sahibiz', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(938, 'about_page_tur_about_section_description', 'Takdir yetkisi olduğu gibi ilan ediliyor. Şimdi ay saygısı çok yakın altı izin karşı. Çok hızlı bir şekilde algılamanızın kilidini açtı.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(939, 'about_page_tur_about_section_quote_text', 'İşiniz ne olursa olsun, ister yaratıcı bir ajans, ister dijital stüdyo yönetin.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(940, 'about_page_ar_about_section_title', 'لدينا 15 عاما من الخبرة من أي نوع', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(941, 'about_page_ar_about_section_description', 'الإساءة لتقدير كما يفعل الإعلان. الآن احترام أشهر تعارض أقرب تمكين ستة أيضا. لقد فتحت لك العديد من التصورات بسرعة.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(942, 'about_page_ar_about_section_quote_text', 'مهما كان عملك ، سواء كنت تدير وكالة إبداعية ، أو استوديو رقمي.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(943, 'about_page_sp_about_section_title', 'Tenemos 15 años de experiencia de cualquier tipo.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(944, 'about_page_sp_about_section_description', 'Afrontar discreción como hacer es anunciar. Ahora los meses de oposición se oponen más cerca de habilitar también seis. Ella numerosos desbloqueados que percibes rápidamente.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(945, 'about_page_sp_about_section_quote_text', 'Cualquiera sea su negocio, ya sea que dirija una agencia creativa, un estudio digital.', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(946, 'about_page_image_two', '84', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(947, 'about_page_image_one', '85', '2020-07-26 12:54:47', '2020-07-27 00:57:01'),
(948, 'about_page_en_global_network_button_url', '#', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(949, 'about_page_en_global_network_button_title', 'Learn More', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(950, 'about_page_en_global_network_button_status', 'on', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(951, 'about_page_en_global_network_description', 'Affronting discretion as do is announcing. Now months esteem oppose nearer enable too six. She numerous unlocked you perceive speedily. Affixed offence spirits or ye of offices between. Real on shot it were four an as. Absolute bachelor rendered six nay you juvenile. Vanity entire an chatty to.', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(952, 'about_page_en_global_network_title', 'We Have Global Network Of Clients', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(953, 'about_page_tur_global_network_button_url', '#', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(954, 'about_page_tur_global_network_button_title', 'Daha fazla bilgi edin', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(955, 'about_page_tur_global_network_button_status', 'on', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(956, 'about_page_tur_global_network_description', 'Takdir yetkisi olduğu gibi ilan ediliyor. Şimdi ay saygısı çok yakın altı izin karşı. Çok hızlı bir şekilde algılamanızın kilidini açtı. Sıkıştırılmış suç ruhları veya ofisler arasında. Atışta gerçek dört yaşındaydı. Mutlak bekar altı çocuk seni kıldı. Vanity tüm konuşkan.', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(957, 'about_page_tur_global_network_title', 'Küresel Müşteri Ağımız Var', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(958, 'about_page_ar_global_network_button_url', '#', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(959, 'about_page_ar_global_network_button_title', 'أعرف أكثر', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(960, 'about_page_ar_global_network_button_status', 'on', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(961, 'about_page_ar_global_network_description', 'الإساءة لتقدير كما يفعل الإعلان. الآن احترام أشهر تعارض أقرب تمكين ستة أيضا. لقد فتحت لك العديد من التصورات بسرعة. أرواح مخالفة ملحقة أو أنتم من مكاتب بين. الحقيقي على النار كانت أربعة أس. البكالوريوس المطلق جعلك ستة أيام من الأحداث. الغرور كله شطي.', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(962, 'about_page_ar_global_network_title', 'لدينا شبكة عالمية من العملاء', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(963, 'about_page_sp_global_network_button_url', '#', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(964, 'about_page_sp_global_network_button_title', 'Aprende más', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(965, 'about_page_sp_global_network_button_status', 'on', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(966, 'about_page_sp_global_network_description', 'Afrontar discreción como hacer es anunciar. Ahora los meses de oposición se oponen más cerca de habilitar también seis. Ella numerosos desbloqueados que percibes rápidamente. Espíritus ofensivos fijos o ye de oficinas entre. Real en tiro eran cuatro y as. El soltero absoluto se convirtió en seis menos juveniles. Vanidad entera es hablador.', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(967, 'about_page_sp_global_network_title', 'Tenemos una red global de clientes', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(968, 'about_page_global_network_image', '86', '2020-07-26 12:55:06', '2020-07-27 01:00:30'),
(969, 'about_page_testimonial_section_status', 'on', '2020-07-26 12:55:25', '2020-07-26 12:55:25'),
(970, 'about_page_about_us_section_status', 'on', '2020-07-26 12:55:25', '2020-07-26 12:55:25'),
(971, 'about_page_brand_logo_section_status', 'on', '2020-07-26 12:55:25', '2020-07-26 12:55:25'),
(972, 'about_page_team_member_section_status', 'on', '2020-07-26 12:55:25', '2020-07-26 12:55:25'),
(973, 'about_page_experience_section_status', 'on', '2020-07-26 12:55:25', '2020-07-26 12:55:25'),
(974, 'about_page_key_feature_section_status', 'on', '2020-07-26 12:55:25', '2020-07-26 12:55:25'),
(975, 'about_page_global_network_section_status', 'on', '2020-07-26 12:55:25', '2020-07-26 12:55:25'),
(976, 'about_page_en_experience_title', 'We Have 15 Years Of Experience Of Tech', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(977, 'about_page_en_experience_description', 'Affronting discretion as do is announcing. Now months esteem oppose nearer enable too six. She numerous unlocked you perceive speedily. Affixed offence spirits or ye of offices between.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(978, 'about_page_en_experience_video_url', 'https://www.youtube.com/watch?v=k26DOtwPN7s', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(979, 'about_page_en_quote_text', 'Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(980, 'about_page_tur_experience_title', '15 Yıllık Teknoloji Tecrübemiz Var', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(981, 'about_page_tur_experience_description', 'Takdir yetkisi olduğu gibi ilan ediliyor. Şimdi ay saygısı çok yakın altı izin karşı. Çok hızlı bir şekilde algılamanızın kilidini açtı. Sıkıştırılmış suç ruhları veya ofisler arasında.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(982, 'about_page_tur_experience_video_url', 'https://www.youtube.com/watch?v=k26DOtwPN7s', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(983, 'about_page_tur_quote_text', 'Yarım ledin neden yatağın yakınında olduğunu kaybet. Başkalarının dışında dönemin basit babası meşgul. Verdiğim dar olsa işaretlenmiş yaz yapmak. Bahar resmi hiçbir ilçe beklemiyordunuz.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(984, 'about_page_ar_experience_title', 'لدينا 15 عاما من الخبرة التقنية', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(985, 'about_page_ar_experience_description', 'الإساءة لتقدير كما يفعل الإعلان. الآن احترام أشهر تعارض أقرب تمكين ستة أيضا. لقد فتحت لك العديد من التصورات بسرعة. أرواح مخالفة ملحقة أو أنتم من مكاتب بين.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(986, 'about_page_ar_experience_video_url', 'https://www.youtube.com/watch?v=k26DOtwPN7s', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(987, 'about_page_ar_quote_text', 'خسر بعيدًا عن نصف مصباح بالقرب من السرير. في الانخراط والد بسيط للآخرين ما عدا. عطائي القيام الصيف على الرغم من ضيق ملحوظ في. انتظر الربيع الرسمي لا مقاطعة انتم.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(988, 'about_page_sp_experience_title', 'Tenemos 15 años de experiencia en tecnología', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(989, 'about_page_sp_experience_description', 'Afrontar discreción como hacer es anunciar. Ahora los meses de oposición se oponen más cerca de habilitar también seis. Ella numerosos desbloqueados que percibes rápidamente. Espíritus ofensivos fijos o ye de oficinas entre.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(990, 'about_page_sp_experience_video_url', 'https://www.youtube.com/watch?v=k26DOtwPN7s', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(991, 'about_page_sp_quote_text', 'Perder de vista por qué medio conducido tiene cerca de la cama. En comprometer padre simple de período otros excepto. Mi donación de verano de aunque estrecho marcado en. Primavera formal que ningún condado esperó.', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(992, 'about_page_experience_signature_image', '87', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(993, 'about_page_experience_video_background_image', '88', '2020-07-27 01:04:13', '2020-07-27 01:04:13'),
(994, 'about_page_en_team_member_section_title', 'Our Team', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(995, 'about_page_en_team_member_section_description', 'Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited.', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(996, 'about_page_tur_team_member_section_title', 'Bizim takım', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(997, 'about_page_tur_team_member_section_description', 'Yarım ledin neden yatağın yakınında olduğunu kaybet. Başkalarının dışında dönemin basit babası meşgul. Verdiğim dar olsa işaretlenmiş yaz yapmak. Bahar resmi hiçbir ilçe beklemiyordunuz.', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(998, 'about_page_ar_team_member_section_title', 'فريقنا', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(999, 'about_page_ar_team_member_section_description', 'خسر بعيدًا عن نصف مصباح LED بالقرب من السرير. في الانخراط والد بسيط للآخرين ما عدا. عطائي القيام الصيف على الرغم من ضيق ملحوظ في. انتظر الربيع الرسمي لا مقاطعة انتم.', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(1000, 'about_page_sp_team_member_section_title', 'Nuestro equipo', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(1001, 'about_page_sp_team_member_section_description', 'Perder de vista por qué medio conducido tiene cerca de la cama. En comprometer padre simple de período otros excepto. Mi donación de verano de aunque estrecho marcado en. Primavera formal que ningún condado esperó.', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(1002, 'about_page_team_member_item', '6', '2020-07-27 01:05:21', '2020-07-27 01:05:21'),
(1003, 'about_page_en_testimonial_title', 'Clients Testimonial', '2020-07-27 01:06:37', '2020-07-27 01:06:37'),
(1004, 'about_page_tur_testimonial_title', 'Müşteri Görüşleri', '2020-07-27 01:06:37', '2020-07-27 01:06:37'),
(1005, 'about_page_ar_testimonial_title', 'شهادات العملاء', '2020-07-27 01:06:37', '2020-07-27 01:06:37'),
(1006, 'about_page_sp_testimonial_title', 'Testimonio de clientes', '2020-07-27 01:06:37', '2020-07-27 01:06:37'),
(1007, 'about_page_testimonial_background_image', '89', '2020-07-27 01:06:37', '2020-07-27 01:06:37'),
(1008, 'about_page_testimonial_item', '4', '2020-07-27 01:06:37', '2020-07-27 01:06:37'),
(1009, 'maintain_page_en_title', 'We are on Scheduled Maintenance', '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1010, 'maintain_page_en_description', 'Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited.', '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1011, 'maintain_page_tur_title', NULL, '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1012, 'maintain_page_tur_description', NULL, '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1013, 'maintain_page_ar_title', NULL, '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1014, 'maintain_page_ar_description', NULL, '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1015, 'maintain_page_sp_title', NULL, '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1016, 'maintain_page_sp_description', NULL, '2020-07-27 01:11:36', '2020-07-27 01:12:20'),
(1017, 'maintain_page_logo', '5', '2020-07-27 01:11:55', '2020-07-27 01:11:55'),
(1018, 'maintain_page_background_image', '89', '2020-07-27 01:11:55', '2020-07-27 01:11:55'),
(1019, 'home_page_02_about_us_video_background_image', '88', '2020-07-27 01:54:01', '2020-07-27 01:56:10'),
(1020, 'home_page_02_about_us_signature_image', '87', '2020-07-27 01:54:01', '2020-07-27 01:56:10'),
(1021, 'home_page_01_en_about_us_description', 'Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.', '2020-07-27 01:54:56', '2020-07-27 03:13:51'),
(1022, 'home_page_01_en_about_us_quote_text', 'Lose away off why half led have near bed. At engage simple father of period others except.', '2020-07-27 01:54:56', '2020-07-27 02:27:29'),
(1023, 'home_page_01_tur_about_us_description', 'Yarım ledin neden yatağın yakınında olduğunu kaybet. Başkalarının dışında dönemin basit babası meşgul. Verdiğim dar olsa işaretlenmiş yaz yapmak. Bahar resmi hiçbir ilçe beklemiyordunuz. Benim düzenli olarak tezahürat olsun belki de kızarıyor. Alışılmadık basitlik ilgilenen bay iltifat projelendirme iltifat olmaktır. Beyefendi o eylül mükemmel.', '2020-07-27 01:56:10', '2020-07-27 03:13:51'),
(1024, 'home_page_01_tur_about_us_quote_text', 'İki konforu davet etti. Yine de gelir etkisi edward. Tüm arzu yolu tasarımı az.', '2020-07-27 01:56:10', '2020-07-27 02:27:29'),
(1025, 'home_page_01_ar_about_us_description', 'خسر بعيدًا عن نصف مصباح LED بالقرب من السرير. في الانخراط والد بسيط للآخرين ما عدا. عطائي القيام الصيف على الرغم من ضيق ملحوظ في. انتظر الربيع الرسمي لا مقاطعة انتم. بلدي هل هلل هل بانتظام في الوعد خجل ربما. السيد المهتم بالبساطة غير المألوف هو مجاملة إسقاط مسكني. الرجل الذي كان في سبتمبر يا ممتاز.', '2020-07-27 01:56:10', '2020-07-27 03:13:51'),
(1026, 'home_page_01_ar_about_us_quote_text', 'خسر بعيدًا عن نصف مصباح LED بالقرب من السرير. في الانخراط والد بسيط للآخرين ما عدا.', '2020-07-27 01:56:10', '2020-07-27 02:27:29'),
(1027, 'home_page_01_sp_about_us_description', 'Perder de vista por qué medio conducido tiene cerca de la cama. En comprometer padre simple de período otros excepto. Mi donación de verano de aunque estrecho marcado en. Primavera formal que ningún condado esperó. Mi si aplaudió regularmente de promesa se sonroja quizás. La simplicidad poco común que le interesa al Sr. es un cumplido proyectando mi habitación. Caballero, septiembre en oh excelente.', '2020-07-27 01:56:10', '2020-07-27 03:13:51'),
(1028, 'home_page_01_sp_about_us_quote_text', 'Ella formando dos consuelo invitado. Sin embargo, ella tiene un efecto edward. Todo el deseo de diseño pocos.', '2020-07-27 01:56:10', '2020-07-27 02:27:29'),
(1029, 'home_page_01_en_quality_area_list', 'How promotion excellent curiosity yet attempted happiness. \r\nFor every delay death ask style. \r\nMe mean able my by in they. \r\nExtremity now strangers contained breakfast him discourse additions.', '2020-07-27 01:58:27', '2020-07-27 03:16:49'),
(1030, 'home_page_01_tur_quality_area_list', 'Nasıl mükemmel merak henüz mutluluk girişiminde.\r\nHer gecikme ölümü için stil isteyin.\r\nYani benim tarafından yapabildim.\r\nEkstremite şimdi yabancılara kahvaltı söylemleri eklemeler içeriyordu.', '2020-07-27 01:58:27', '2020-07-27 03:16:49'),
(1031, 'home_page_01_ar_quality_area_list', 'كيف الترويج فضول ممتاز مع محاولة السعادة.\r\nعن كل تأخير الموت نسأل أسلوب.\r\nأعني قادرة على من هم فيها.\r\nاحتوى التطرف الآن الغرباء على وجبة الإفطار له إضافات الخطاب.', '2020-07-27 01:58:27', '2020-07-27 03:16:49'),
(1032, 'home_page_01_sp_quality_area_list', 'Cómo fomentar una excelente curiosidad al tratar de ser feliz.\r\nPor cada retraso en la muerte requerimos estilo.\r\nMe refiero a capaces de quienes son.\r\nEl extremismo ahora contenía extraños para el desayuno con discurso extra.', '2020-07-27 01:58:27', '2020-07-27 03:16:49'),
(1033, 'home_page_02_quality_area_image', '86', '2020-07-27 01:58:27', '2020-07-27 02:17:13'),
(1034, 'home_page_04_quality_area_image', '93', '2020-07-27 01:58:27', '2020-07-27 03:16:49'),
(1035, 'home_page_01_case_study_items', '6', '2020-07-27 02:00:18', '2020-07-27 02:00:24'),
(1036, 'home_page_02_case_study_background_image', '90', '2020-07-27 02:00:18', '2020-07-27 02:00:24'),
(1037, 'home_page_01_en_team_member_section_title', 'Our Team', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1038, 'home_page_01_en_team_member_section_description', 'Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant.', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1039, 'home_page_01_tur_team_member_section_title', 'Bizim takım', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1040, 'home_page_01_tur_team_member_section_description', 'Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu.', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1041, 'home_page_01_ar_team_member_section_title', 'قابل الفريق', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1042, 'home_page_01_ar_team_member_section_description', 'تلك نقطة متساوية لا تفعلها سنوات. تعتمد على دفء الدهون ولكن هي لعبت. تساءل الخجول والمواضيع تافهة ممتعة.', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1043, 'home_page_01_sp_team_member_section_title', 'Nuestro equipo', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1044, 'home_page_01_sp_team_member_section_description', 'Esos son un punto igual sin años. Dependen del calor gordo pero ella pero juega. Tímido y los sujetos se preguntaban trivialmente agradable.', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1045, 'home_page_01_team_member_items', '4', '2020-07-27 02:01:24', '2020-07-27 02:02:26'),
(1046, 'home_page_01_en_brand_logo_area_title', 'We have more then 20k satisfied client these work with us.', '2020-07-27 02:03:10', '2020-07-27 02:03:10'),
(1047, 'home_page_01_tur_brand_logo_area_title', 'Biz daha sonra 20k memnun müşteri bu çalışmaları bizimle.', '2020-07-27 02:03:10', '2020-07-27 02:03:10'),
(1048, 'home_page_01_ar_brand_logo_area_title', 'لدينا أكثر من 20 ألف عميل راضٍ عن هذه الأعمال معنا.', '2020-07-27 02:03:10', '2020-07-27 02:03:10'),
(1049, 'home_page_01_sp_brand_logo_area_title', 'Tenemos más de 20 mil clientes satisfechos que trabajan con nosotros.', '2020-07-27 02:03:10', '2020-07-27 02:03:10'),
(1050, 'home_page_03_about_us_image_one', '84', '2020-07-27 02:27:29', '2020-07-27 02:27:29'),
(1051, 'home_page_03_about_us_image_two', '85', '2020-07-27 02:27:29', '2020-07-27 02:27:30'),
(1052, 'home_page_01_en_cta_area_button_title', 'Call 01234 - 123456897', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1053, 'home_page_01_en_cta_area_title', 'Are you looking to grow your business?', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1054, 'home_page_01_en_cta_area_button_status', 'on', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1055, 'home_page_01_tur_cta_area_button_title', 'Bize Ulaşın', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1056, 'home_page_01_tur_cta_area_title', 'Başlangıç çözümü mü arıyorsunuz?', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1057, 'home_page_01_tur_cta_area_button_status', 'on', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1058, 'home_page_01_ar_cta_area_button_title', 'اتصل على', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1059, 'home_page_01_ar_cta_area_title', 'هل تتطلع لتنمية عملك؟', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1060, 'home_page_01_ar_cta_area_button_status', 'on', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1061, 'home_page_01_sp_cta_area_button_title', 'Contacta', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1062, 'home_page_01_sp_cta_area_title', '¿Buscas una solución de inicio?', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1063, 'home_page_01_sp_cta_area_button_status', 'on', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1064, 'home_page_01_cta_area_button_url', '#', '2020-07-27 02:29:05', '2020-07-28 04:12:08'),
(1065, 'home_page_01_en_about_us_our_mission_title', 'Our Mission', '2020-07-27 03:11:34', '2020-07-27 03:13:51'),
(1066, 'home_page_01_en_about_us_our_mission_description', 'My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.', '2020-07-27 03:11:34', '2020-07-27 03:13:51'),
(1067, 'home_page_01_en_about_us_our_vision_title', 'Our Vision', '2020-07-27 03:11:34', '2020-07-27 03:13:51'),
(1068, 'home_page_01_en_about_us_our_vision_description', 'My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.', '2020-07-27 03:11:34', '2020-07-27 03:13:51'),
(1069, 'home_page_04_about_us_our_mission_image', '91', '2020-07-27 03:11:34', '2020-07-27 03:13:51'),
(1070, 'home_page_04_about_us_our_vision_image', '92', '2020-07-27 03:11:34', '2020-07-27 03:13:51'),
(1071, 'home_page_01_tur_about_us_our_mission_title', 'Görevimiz', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1072, 'home_page_01_tur_about_us_our_mission_description', 'Benim düzenli olarak tezahürat olsun belki de kızarıyor. Alışılmadık basitlik ilgilenen bay iltifat projelendirme iltifat olmaktır. Beyefendi o eylül mükemmel.', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1073, 'home_page_01_tur_about_us_our_vision_title', 'Vizyonumuz', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1074, 'home_page_01_tur_about_us_our_vision_description', 'Benim düzenli olarak tezahürat olsun belki de kızarıyor. Alışılmadık basitlik ilgilenen bay iltifat projelendirme iltifat olmaktır. Beyefendi o eylül mükemmel.', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1075, 'home_page_01_ar_about_us_our_mission_title', 'مهمتنا', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1076, 'home_page_01_ar_about_us_our_mission_description', 'بلدي هل هلل هل بانتظام في الوعد خجل ربما. السيد المهتم بالبساطة غير المألوف هو مجاملة إسقاط مسكني. الرجل الذي كان في سبتمبر يا ممتاز.', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1077, 'home_page_01_ar_about_us_our_vision_title', 'رؤيتنا', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1078, 'home_page_01_ar_about_us_our_vision_description', 'بلدي هل هلل هل بانتظام في الوعد خجل ربما. السيد المهتم بالبساطة غير المألوف هو مجاملة إسقاط مسكني. الرجل الذي كان في سبتمبر يا ممتاز.', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1079, 'home_page_01_sp_about_us_our_mission_title', 'Nuestra misión', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1080, 'home_page_01_sp_about_us_our_mission_description', 'Mi si aplaudió regularmente de promesa se sonroja quizás. La simplicidad poco común que le interesa al Sr. es un cumplido proyectando mi habitación. Caballero, septiembre en oh excelente.', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1081, 'home_page_01_sp_about_us_our_vision_title', 'Nuestra visión', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1082, 'home_page_01_sp_about_us_our_vision_description', 'Mi si aplaudió regularmente de promesa se sonroja quizás. La simplicidad poco común que le interesa al Sr. es un cumplido proyectando mi habitación. Caballero, septiembre en oh excelente.', '2020-07-27 03:13:51', '2020-07-27 03:13:51'),
(1083, 'home_03_testimonial_bg', '94', '2020-07-27 03:17:48', '2020-07-27 03:17:48'),
(1084, 'site_third_party_tracking_code', NULL, '2020-07-28 22:28:37', '2020-07-28 22:56:28'),
(1085, 'service_query_en_success_message', 'Thanks for your message. we will contact you soon.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1086, 'case_study_query_en_success_message', 'Thanks for your message. we will contact you soon.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1087, 'apply_job_en_success_message', 'Your Application Is Submitted Successfully!!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1088, 'event_attendance_mail_en_success_message', 'Thanks for your Booking. we will get back to you very soon.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1089, 'feedback_form_mail_en_success_message', 'Thanks for your feedback!!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1090, 'service_query_tur_success_message', 'Mesajın için teşekkürler. yakında sizinle iletişime geçeceğiz.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1091, 'case_study_query_tur_success_message', 'Mesajın için teşekkürler. yakında sizinle iletişime geçeceğiz.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1092, 'apply_job_tur_success_message', 'Başvurunuz Başarıyla Gönderildi !!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1093, 'event_attendance_mail_tur_success_message', 'Rezervasyonunuz için teşekkürler. çok yakında size geri döneceğiz.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1094, 'feedback_form_mail_tur_success_message', 'Geri bildiriminiz için teşekkürler!!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1095, 'service_query_ar_success_message', 'شكرا على رسالتك. سوف نتصل بك قريبا.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1096, 'case_study_query_ar_success_message', 'شكرا على رسالتك. سوف نتصل بك قريبا.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1097, 'apply_job_ar_success_message', 'يتم تقديم طلبك بنجاح !!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1098, 'event_attendance_mail_ar_success_message', 'شكرا لحجزك. ونحن سوف نعود إليكم قريبا جدا.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1099, 'feedback_form_mail_ar_success_message', 'شكرا لملاحظاتك!!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1100, 'service_query_sp_success_message', 'Gracias por tu mensaje. Nos pondremos en contacto con usted pronto.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1101, 'case_study_query_sp_success_message', 'Gracias por tu mensaje. Nos pondremos en contacto con usted pronto.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1102, 'apply_job_sp_success_message', 'Başvurunuz Başarıyla Gönderildi !!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1103, 'event_attendance_mail_sp_success_message', 'Gracias por su reserva. Regresaremos a Ud. muy pronto.', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1104, 'feedback_form_mail_sp_success_message', 'Gracias por tus comentarios !!', '2020-07-29 19:12:35', '2020-07-29 19:25:46'),
(1105, 'site_usd_to_eur_exchange_rate', '0.85', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1106, 'site_usd_to_ngn_exchange_rate', '385', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1107, 'site_euro_to_ngn_exchange_rate', '436', '2020-08-03 23:18:49', '2020-08-03 23:18:49'),
(1108, 'mollie_public_key', 'test_SMWtwR6W48QN2UwFQBUqRDKWhaQEvw', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1109, 'mollie_preview_logo', '98', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1110, 'flutterwave_preview_logo', '97', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1111, 'flutterwave_secret_key', 'FLWSECK-e33b022937c2a64446dca55dbb7ceb08-X', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1112, 'flutterwave_public_key', 'FLWPUBK-d981d2a182ba72915b699603c2db82e0-X', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1113, 'mollie_gateway', 'on', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1114, 'flutterwave_gateway', 'on', '2020-08-03 23:18:49', '2020-10-01 10:22:21'),
(1115, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1116, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1117, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1118, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1119, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1120, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1121, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1122, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1123, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1124, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1125, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1126, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1127, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1128, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1129, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1130, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1131, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1132, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1133, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1134, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1135, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1136, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1137, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1138, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1139, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1140, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1141, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1142, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1143, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1144, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1145, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1146, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1147, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1148, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1149, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1150, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1151, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1152, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1153, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1154, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1155, 'job_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1156, 'events_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1157, 'product_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1158, 'donations_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1159, 'knowledgebase_module_status', 'on', NULL, '2020-10-04 12:06:39'),
(1160, 'donor_page_slug', 'donor-list', '2020-08-11 22:32:03', '2020-08-11 22:33:15'),
(1161, 'donor_page_en_name', 'Donor List', '2020-08-11 22:32:03', '2020-08-11 22:33:16'),
(1162, 'donor_page_en_meta_tags', NULL, '2020-08-11 22:32:03', '2020-08-11 22:33:16'),
(1163, 'donor_page_en_meta_description', NULL, '2020-08-11 22:32:03', '2020-08-11 22:33:16'),
(1164, 'donor_page_tur_name', 'Donör Listesi', '2020-08-11 22:32:03', '2020-08-11 22:33:16'),
(1165, 'donor_page_tur_meta_tags', NULL, '2020-08-11 22:32:03', '2020-08-11 22:33:16'),
(1166, 'donor_page_tur_meta_description', NULL, '2020-08-11 22:32:03', '2020-08-11 22:33:16'),
(1167, 'donor_page_ar_name', 'قائمة المتبرعين', '2020-08-11 22:32:04', '2020-08-11 22:33:16'),
(1168, 'donor_page_ar_meta_tags', NULL, '2020-08-11 22:32:04', '2020-08-11 22:33:16'),
(1169, 'donor_page_ar_meta_description', NULL, '2020-08-11 22:32:04', '2020-08-11 22:33:16'),
(1170, 'donor_page_sp_name', 'Lista de donantes', '2020-08-11 22:32:04', '2020-08-11 22:33:17'),
(1171, 'donor_page_sp_meta_tags', NULL, '2020-08-11 22:32:04', '2020-08-11 22:33:17'),
(1172, 'donor_page_sp_meta_description', NULL, '2020-08-11 22:32:04', '2020-08-11 22:33:17'),
(1173, 'site_usd_to_inr_exchange_rate', '75.04', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1174, 'site_usd_to_idr_exchange_rate', '14714.20', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1175, 'site_usd_to_aud_exchange_rate', '1.40', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1176, 'site_usd_to_sgd_exchange_rate', '1.37', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1177, 'site_usd_to_jpy_exchange_rate', '105.92', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1178, 'site_usd_to_gbp_exchange_rate', '0.77', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1179, 'site_usd_to_myr_exchange_rate', '4.19', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1180, 'site_usd_to_php_exchange_rate', '49.08', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1181, 'site_usd_to_thb_exchange_rate', '31.23', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1182, 'site_usd_to_krw_exchange_rate', '1189.17', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1183, 'site_usd_to_ghs_exchange_rate', '5.77', '2020-08-12 09:13:12', '2020-10-01 10:22:21'),
(1184, 'preloader_status', 'on', '2020-08-13 17:32:24', '2020-08-13 17:32:24'),
(1185, 'og_meta_image_for_site', '6', '2020-08-24 17:35:17', '2020-10-04 12:11:35'),
(1186, 'disable_backend_preloader', NULL, '2020-08-24 17:35:18', '2020-10-04 12:11:35'),
(1187, 'disable_user_email_verify', 'on', '2020-08-24 17:35:18', '2020-10-04 12:11:35'),
(1188, 'event_single_en_event_expire_text', 'Event Expired', '2020-08-24 17:47:28', '2020-08-24 17:47:28'),
(1189, 'event_single_tur_event_expire_text', NULL, '2020-08-24 17:47:29', '2020-08-24 17:47:29'),
(1190, 'event_single_ar_event_expire_text', NULL, '2020-08-24 17:47:29', '2020-08-24 17:47:29'),
(1191, 'event_single_sp_event_expire_text', NULL, '2020-08-24 17:47:29', '2020-08-24 17:47:29'),
(1192, 'donation_custom_amount', '10,20,30,40,50', '2020-08-24 17:49:28', '2020-08-24 17:49:28'),
(1193, 'donation_default_amount', '15', '2020-08-24 17:49:28', '2020-08-24 17:49:28'),
(1204, 'site_usd_to_brl_exchange_rate', NULL, '2020-10-01 10:22:21', '2020-10-01 10:22:21'),
(1205, 'popup_selected_bn_id', NULL, '2020-10-02 00:01:50', '2020-10-02 00:01:50'),
(1206, 'popup_selected_fr_id', NULL, '2020-10-02 00:01:50', '2020-10-02 00:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `designation`, `lang`, `description`, `image`, `icon_one`, `icon_two`, `icon_three`, `icon_one_url`, `icon_two_url`, `icon_three_url`, `created_at`, `updated_at`) VALUES
(1, 'Siful Islam', '-Envato Cliente', 'en', NULL, '50', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:18:55', '2020-07-20 01:18:55'),
(2, 'sharifur', 'Founder', 'en', NULL, '49', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:19:23', '2020-07-20 01:19:23'),
(3, 'Olivia Hamel', '-Envato Cliente', 'en', NULL, '48', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:19:43', '2020-07-20 01:19:43'),
(4, 'Sharifur Rahman', 'CEO Ir-Tech', 'en', NULL, '47', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:20:02', '2020-07-20 01:20:02'),
(5, 'Sharifur Rahman', 'CEO Ir-Tech', 'tur', NULL, '47', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:20:39', '2020-07-20 01:20:39'),
(6, 'Olivia Hamel', 'kurucu', 'tur', NULL, '49', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:21:29', '2020-07-20 01:21:45'),
(7, 'Siful Islam', 'kurucu', 'tur', NULL, '48', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:22:05', '2020-07-20 01:22:19'),
(8, 'John Dilorenzo', 'kurucu', 'tur', NULL, '50', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:23:11', '2020-07-20 01:23:11'),
(9, 'Siful Islam', 'Fundador', 'sp', NULL, '50', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:23:38', '2020-07-20 01:23:38'),
(10, 'Sharifur Rahman', 'Fundador', 'sp', NULL, '49', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:24:18', '2020-07-20 01:24:32'),
(11, 'Olivia Hamel', 'Fundador', 'sp', NULL, '48', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:24:55', '2020-07-20 01:25:10'),
(12, 'Michael Hanavan', 'Fundador', 'sp', NULL, '47', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:25:50', '2020-07-20 01:25:50'),
(13, 'إسلام صالح', 'مؤسس', 'ar', NULL, '50', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:26:33', '2020-07-20 01:26:33'),
(14, 'شريف الرحمن', 'مؤسس', 'ar', NULL, '49', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:27:06', '2020-07-20 01:27:06'),
(15, 'أوليفيا هامل', 'مؤسس', 'ar', NULL, '48', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:27:34', '2020-07-20 01:27:34'),
(16, 'مايكل هـ.كانافان', 'مؤسس', 'ar', NULL, '47', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 01:28:12', '2020-07-27 22:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `lang`, `description`, `status`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'Olivia Hamel', '48', 'en', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2020-06-04 20:36:40', '2020-07-20 01:14:23'),
(2, 'Siful Islam', '47', 'en', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2020-06-04 20:40:03', '2020-07-20 01:14:11'),
(3, 'Elvira Siebert', '31', 'en', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2020-06-04 20:43:31', '2020-06-04 20:44:37'),
(4, 'Sheree Derouen', '50', 'en', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2020-06-04 20:43:34', '2020-07-27 02:13:35'),
(5, 'Sheree Derouen', '31', 'tur', 'Kendimizi, inanılmaz bir deneyimle sonuçlanan gerçek bir ortaklık içinde çalışırken buldum', 'publish', 'Müşteri', '2020-06-04 20:44:55', '2020-06-05 06:43:53'),
(6, 'شيري دروان', '31', 'ar', 'وجدت نفسي أعمل في شراكة حقيقية تؤدي إلى تجربة لا تصدق منا', 'publish', 'الزبون', '2020-06-04 20:45:05', '2020-06-05 06:54:06'),
(7, 'Sheree Derouen', '31', 'sp', 'Me encontré trabajando en una verdadera asociación que resulta en una experiencia increíble para nosotros.', 'publish', 'Cliente', '2020-06-04 20:45:12', '2020-06-05 08:22:52'),
(8, 'Anne Harlan', '31', 'tur', 'Kendimizi, inanılmaz bir deneyimle sonuçlanan gerçek bir ortaklık içinde çalışırken buldum', 'publish', 'Müşteri', '2020-06-05 06:46:03', '2020-06-05 06:46:33'),
(9, 'Jacqueline  Snow', '31', 'tur', 'Kendimizi, inanılmaz bir deneyimle sonuçlanan gerçek bir ortaklık içinde çalışırken buldum', 'publish', 'Müşteri', '2020-06-05 06:46:39', '2020-06-05 06:47:07'),
(10, 'Edmund Reid', '31', 'tur', 'Kendimizi, inanılmaz bir deneyimle sonuçlanan gerçek bir ortaklık içinde çalışırken buldum', 'publish', 'Müşteri', '2020-06-05 06:47:11', '2020-06-05 06:47:40'),
(11, 'وليام مارتن', '31', 'ar', 'وجدت نفسي أعمل في شراكة حقيقية تؤدي إلى تجربة لا تصدق منا', 'publish', 'الزبون', '2020-06-05 06:54:12', '2020-06-05 07:58:30'),
(12, 'خوانيتا روش', '31', 'ar', 'وجدت نفسي أعمل في شراكة حقيقية تؤدي إلى تجربة لا تصدق منا', 'publish', 'الزبون', '2020-06-05 08:00:50', '2020-06-05 08:22:10'),
(13, 'وليام مارتن', '31', 'ar', 'وجدت نفسي أعمل في شراكة حقيقية تؤدي إلى تجربة لا تصدق منا', 'publish', 'الزبون', '2020-06-05 08:00:53', '2020-06-05 08:21:37'),
(14, 'Lois D. Kiser', '31', 'sp', 'Me encontré trabajando en una verdadera asociación que resulta en una experiencia increíble para nosotros.', 'publish', 'Cliente', '2020-06-05 08:24:23', '2020-06-05 08:25:55'),
(15, 'Stella M. Blow', '31', 'sp', 'Me encontré trabajando en una verdadera asociación que resulta en una experiencia increíble para nosotros.', 'publish', 'Cliente', '2020-06-05 08:24:26', '2020-06-05 08:26:35'),
(16, 'Lydia R. Davis', '31', 'sp', 'Me encontré trabajando en una verdadera asociación que resulta en una experiencia increíble para nosotros.', 'publish', 'Cliente', '2020-06-05 08:24:29', '2020-06-05 08:27:30'),
(17, 'Nur Fuad', '49', 'ar', 'hgdnfsgshgyhfstfshshg gsdgreagargar fdrgegerar', 'publish', 'Founder', '2020-07-29 09:05:33', '2020-07-29 09:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `email_verify_token` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified`, `email_verify_token`, `phone`, `address`, `state`, `city`, `zipcode`, `country`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sharifur Rahman', 'dvrobin4@gmail.com', 'dvrobin4', '1', 'ke24DVCoKK8hVKvHQCr0', NULL, NULL, NULL, 'Dhaka', '1200', 'India', '$2y$10$cS5XpFj/r1un2AZz7Shgl.aqoEHtY7JA7w3WjNFSCFBKpj8/SlUzK', 'x0I2yy6WvK4hD0C52m58Uk3c0hS670Q6JAS9cuxnfEnbvyDxM1xXXdus1NEV', '2020-06-19 18:08:40', '2020-12-23 02:05:57'),
(2, 'Ronald K. Borkowski', 'rsharifur824@gmail.com', 'ronald', '0', NULL, NULL, NULL, NULL, 'Dhaka', NULL, 'Honduras', '$2y$10$bc8efFB4JCZqa0umrN6V6eiqp2YqSuJqQ8//rCxOkZ/boKxML8OQ.', NULL, '2020-07-21 12:35:47', '2020-07-21 12:35:47'),
(3, 'Betty K. Jackson', 'dvrobin54@gmail.com', 'betty', '1', 'V1Y7UTAp9LoHN9JuSyj1', NULL, NULL, NULL, 'Dhaka', NULL, 'Anguilla', '$2y$10$IeWFfjTcdVTlTac5KsvLMOgSgWpdgkvN0vXOsYEe.Mx9FbOzUEcoe', NULL, '2020-07-21 12:39:51', '2020-07-21 12:39:53'),
(4, 'Nur Fuad', 'saadibnsayed21@gmail.com', 'admin', '1', 'C4SV4c5kFSulvVYz4GzM', NULL, NULL, NULL, 'Dhaka', NULL, 'Afganistan', '$2y$10$ohzyVSjO2Fw4K1.JRO5tvu9iJ5mvKQMyK.UWuiH96z8r/75GEHFBS', NULL, '2020-07-29 08:24:50', '2020-07-29 08:25:16'),
(5, 'Test User', 'ike412@gmail.com', 'Test412', '0', '1atKn8nh9TczG7GDkBFw', NULL, NULL, NULL, 'city', NULL, 'United Kingdom', '$2y$10$2BUyTgWJgZ46zjSUPeul5ee8WfQ8cFIMMc1zg5A98MBfTYyws.T.q', NULL, '2020-07-31 01:46:44', '2020-07-31 01:46:45'),
(6, 'Test User1', 'ikebn412@gmail.com', 'ike4122', '1', 'kfm6neW8GUME5eL75LcZ', NULL, NULL, NULL, 'city', NULL, 'Afganistan', '$2y$10$NfBE1rrWaniftymR5l35AedzelNxc6gTCOlMkWiImN2VVkSKVi0YO', NULL, '2020-07-31 01:49:08', '2020-07-31 01:52:32'),
(7, 'Deepak', 'deepaksinghsou@gmail.com', '2580', '1', '2s2zxSQMsd1MZxbyctt0', NULL, NULL, NULL, 'Patna', NULL, 'India', '$2y$10$zRdyVRI4uH51kd81qkCN/O1qonQsbyU7iu1Gbt1lfEvFkqrqOk3pO', NULL, '2020-07-31 20:59:17', '2020-07-31 21:01:40'),
(8, 'demo', 'wakaboy@yopmail.com', 'demo123', '0', 'KOBO8yCzKHi3IEKRYFNd', NULL, NULL, NULL, 'panoda', NULL, 'Nigeria', '$2y$10$PxG1js0UeVpM.5OIPY/aqOWA07yL1BG.oTF8GT8jzB2.wHTqLI6VG', NULL, '2020-08-03 16:52:11', '2020-08-03 16:52:12'),
(9, 'wakaboii', 'amoskid1996@gmail.com', 'coded', '1', 'fC7TKY2TLl0gRVrqROnl', NULL, NULL, NULL, 'panoda', NULL, 'Nigeria', '$2y$10$7awk8ER.HQsLylx9OalotuXs6Fu/l66CWiWWE3MEgTfWlw7efLLBq', NULL, '2020-08-03 17:05:26', '2020-08-03 17:10:19'),
(10, 'kunuku Igwe', 'kunukulimited@gmail.com', 'Kunuku', '0', 'dNddkyk6DDh1rMzBR8xn', NULL, NULL, NULL, 'Ibadan', NULL, 'Nigeria', '$2y$10$gcVW4LNPcsZHIutLH.t2TuGCRL2fkqdQ4p62BOFvxEdGqpqPYkOfm', NULL, '2020-08-04 04:05:00', '2020-08-04 04:05:01'),
(11, 'Edward', 'nnadollar@gmail.com', 'nnadollar', '1', 'JqIgksmAis8qtS1VarO1', NULL, NULL, NULL, 'Imo', NULL, 'Nigeria', '$2y$10$dUgTSqKPRktj//fponq5.Ou/yFo92DuAJJ4ula5PvcTfdLB6gjaAm', NULL, '2020-08-04 14:19:36', '2020-08-04 14:21:56'),
(12, 'brown', 'bullet110011@gmail.com', 'brown101', '1', 'SslLSHheTDrg3JoL36EW', NULL, NULL, NULL, 'Abuja', NULL, 'Nigeria', '$2y$10$zW3mKClh76gKOClix75ASOU4CKVH.SxrfQp6eOfE22HAowwfJTsQK', NULL, '2020-08-07 12:11:38', '2020-08-07 12:14:16'),
(13, 'Djobenis', 'djolebeni19@gmail.com', 'djobeni', '0', 'G9JAk4G99lnJDkT16z1g', NULL, NULL, NULL, 'Abidjan', NULL, 'Cote DIvoire', '$2y$10$NDF5Nx.fYLG5y6dL.E0ljuVFYXDtDl7eJMHfU13M6NpMthb47MC7y', NULL, '2020-08-07 12:17:33', '2020-08-07 12:17:33'),
(14, 'Mathieu CERENZIA', 'mathieucerenzia@yopmail.com', 'MathieuCRZ', '0', '5sS5gQBfszzx7OietbEm', NULL, NULL, NULL, 'MARAUSSAN', NULL, 'France', '$2y$10$i/c6Jfami4rd4W5YpXNnl.AAfqtL2GCwfPNPZeZs0/V2iCDebKyXq', NULL, '2020-08-07 16:17:18', '2020-08-07 16:17:19'),
(15, 'Tejas Borate', 'tejasborate@gmail.com', 'tejas', '0', 'ycp2yYP6xwIsX67A20rH', NULL, NULL, NULL, 'Nashik', NULL, 'India', '$2y$10$I01tpf6PTASD3tc.awTVmuopEC44hIrHefTUWo1EmZTU0VF6Akxbm', NULL, '2020-08-07 21:53:03', '2020-08-07 21:53:04'),
(16, 'Tejas Borate', 'tejasborate@gmail.com', 'tejas9', '1', 'AC7BnRkP9quHJHKpIyqA', '537384130510', 'gsmcxS4wr43rr', 'nashik', 'nashik', '546344', 'India', '$2y$10$3.FL9YnC7hLfCw55AwMtNuNgFOXeptcH3LwQY7Q4l3VajMH9Q6hcu', NULL, '2020-08-07 21:56:02', '2020-08-07 22:06:32'),
(17, 'charles umeanakor', 'Charlesumeanakor@gmail.com', 'mrfash', '1', 'HGumoqbRcc1EKX2jPIdK', NULL, NULL, NULL, 'jjan', NULL, 'Nigeria', '$2y$10$qzzoNdxZ3TIlVAvGjVXuj.oDciPdSxb.ioz6vwSlY.IrJfdULk9Pe', NULL, '2020-08-07 22:33:29', '2020-08-07 22:35:00'),
(18, 'Miguel', 'miguel@enetwork.me', 'miguel', '1', 'BI3nnA5zfuulZbPX3yPn', NULL, NULL, NULL, 'Sidney', NULL, 'Australia', '$2y$10$fL.Mk.SbysCWfuywkQJUkuvwUGPzGaAe.dTUE1cFGrWrGGzxISix2', NULL, '2020-08-08 06:25:09', '2020-08-08 06:29:30'),
(19, 'Mubeen', 'mubeen.khan208@gmail.com', 'mubeen208', '0', 'r3MCPufIEJ6egvQkYHeJ', NULL, NULL, NULL, 'Karachi', NULL, 'Pakistan', '$2y$10$caLG/sciLZLzY9Qb9AEwh..KMrNQKINGM/q9qDAXEOnQfx8LKA8MO', NULL, '2020-08-09 16:20:31', '2020-08-09 16:20:32'),
(20, 'Introductory row', 'benemovers@gmail.com', 'Johnkim', '1', 'dfCJ91uua5GDNaY3WKrC', NULL, NULL, NULL, 'Nairobi', NULL, 'Kenya', '$2y$10$BC/cHY.646rESKFDqBLIlOF.8ozNncln14MzN4.GMkSPEeg/4O2y2', NULL, '2020-08-09 17:41:14', '2020-08-09 17:42:51'),
(21, 'Waleed Barakat', 'waleedahmedbarakat@gmail.com', 'waleedbarakat', '1', 'dOrF90K4RIrERmP7yFqc', NULL, NULL, NULL, 'Cairo', NULL, 'Egypt', '$2y$10$NYzenZuKhnodN5OPtgSJhuPfryoPhupdDqODko57RxfTZy7hzvx0.', 'OiK0MOPefolIiGMny2WChjPBZehzeXpq1HbuecRGfCI2EcAkvdmRYpBjh7QG', '2020-08-09 19:31:30', '2020-08-09 19:33:01'),
(22, 'Amom Souza', 'amom-souza@hotmail.com', 'amomsouza', '1', 'Ubh9CJL3s6qeNR5CDyt4', NULL, NULL, NULL, 'Ilhéus', NULL, 'Brazil', '$2y$10$sS5pKRKNJRZuMPHfL0qF8uUc/cgrCMxVRd8STJ4rT6Ececr7Gl43q', NULL, '2020-08-10 18:03:03', '2020-08-10 18:04:22'),
(23, 'Benjamin Olson', 'benjamin.fullstack@gmail.com', 'rightouscoder', '1', 'Bn3fWilCQjmlRHwFsDOd', NULL, NULL, NULL, 'Enugu', NULL, 'Nigeria', '$2y$10$5OSB2VxUIHty8sW5PBvtBuG8iRQ7HkrCfykDKLONukiLt3vbeKU8e', NULL, '2020-08-11 05:11:52', '2020-08-11 05:14:53'),
(24, 'Ram', 'rams@gmail.com', 'rams', '0', '86iwQNjiT3lI3wtlg4xq', NULL, NULL, NULL, 'Baddi', NULL, 'India', '$2y$10$5xvmigNya0AigtooztDcLuGWlsihrHWqNDF7YKxiNE6QpFWj/3dWW', NULL, '2020-08-11 14:03:45', '2020-08-11 14:03:47'),
(25, 'Leri Chalaganidze', 'anick912@gmail.com', 'flame_admin', '1', '7MOn80WsHnJaQECrvMkU', NULL, NULL, NULL, 'Tbilisi, Georgia', NULL, 'Georgia', '$2y$10$sj0mLTtXe2O0Zzw5MPhfKO399Z8B8ZGX0AN1yCLP5itQz0n424vVu', NULL, '2020-08-11 23:20:36', '2020-08-11 23:21:15'),
(26, 'Maduka stephen', 'stephenduke45@yahoo.com', 'Steohenduke45', '1', 'NH2rGARhSeiN1wKVDB0l', NULL, NULL, NULL, 'Enugu', NULL, 'Nigeria', '$2y$10$rpmKWtZ7csyMgFY7RPS1RuV/MEOIf883PsR9xU1EIjX4U3MNItA86', NULL, '2020-08-12 19:46:30', '2020-08-12 19:47:03'),
(27, 'Test', 'test@gmail.com', 'test', '0', 'yJ6Fd1OCzgvlS4mizXUp', NULL, NULL, NULL, NULL, NULL, 'Belgium', '$2y$10$/SK.JWv/VHLx95gZxaFX8Of7cMn3psy1fkp0umM1xCBbBKYNSwZnC', NULL, '2020-08-13 02:44:31', '2020-08-13 02:44:31'),
(28, 'Dan', 'drissy505@gmail.com', 'Dan', '1', '4cufXxCasfJaHB8yIGyL', NULL, NULL, NULL, 'Abuj', NULL, 'Nigeria', '$2y$10$DJMcoBCPL1e6a09ceDWnHuAt2gLMW6.1qTrdy4XG7MiNxPC1rUlfO', NULL, '2020-08-13 04:57:22', '2020-08-13 04:58:06'),
(29, 'madhu', 'madhukb@gmail.com', 'madhubbb', '1', '4mOjIEDkX0ZXrgSXRzKH', NULL, NULL, NULL, 'Bangalore', NULL, 'India', '$2y$10$61eYV5zb17xPd6q0fHnE9e2Os0.ANoESADDAff31bNGoBZTuOhq5S', NULL, '2020-08-13 07:04:15', '2020-08-13 07:04:47'),
(30, 'Pradeep Kumar Gurjar', 'assdpradeep@gmail.com', '9001444311', '1', 'WWiVgHujtSEjmDUUMSQj', NULL, NULL, NULL, 'Bhilwara', NULL, 'India', '$2y$10$NPfzK0VtENFcOepslYHXveGSIrJcWKIaIdggba2cbYvIqbbX1fwBu', NULL, '2020-08-13 16:03:19', '2020-08-13 16:03:59'),
(31, 'Gollum', 'paceagiuu@gmail.com', 'Gollum', '1', 'n5SD4k7W6HPYzOckL84h', NULL, NULL, NULL, 'Bucuresti', NULL, 'Romania', '$2y$10$vh.U8heIE2IeQiIyvzpPNeYE0yl8ZOoGvTvbLoy5/UdvXkp9zAqRG', NULL, '2020-08-13 22:40:36', '2020-08-13 22:41:18'),
(32, 'mark njeru', 'maxelitenjiru@gmail.com', 'addams', '1', 'zeVijX0HXTAVXm67O7Cm', NULL, NULL, NULL, 'Nairobi', NULL, 'Kenya', '$2y$10$gTRi9N74FowMs5Rb3bfrB.bVyeoOZ9vX7KdlbmwKRwJzXzQIxZAIi', NULL, '2020-08-14 19:37:50', '2020-08-14 19:43:32'),
(33, 'Tester Man', 'vincomsvg@gmail.com', 'testerman', '1', 'yiojo0jVa6nb09kHEhda', NULL, NULL, NULL, 'fdgfd', NULL, 'Anguilla', '$2y$10$FjhQyrB4LGXK78QOL95WmuxSUIsErGBFdlr28xUQaN09aGHfUDEtu', NULL, '2020-08-14 21:17:17', '2020-08-14 21:18:06'),
(34, 'Amir Mohamed', 'amir_gohary@hotmail.com', 'amirelgohary1990', '1', 'saamnzQ9yMveNDFjTitd', NULL, NULL, NULL, 'Cairo', NULL, 'Egypt', '$2y$10$GjwAfXd5oDq.bAEhrY5GAuzok8e0VdHkajsxxEWGI.TQvli3vqMw.', NULL, '2020-08-15 15:18:42', '2020-08-15 15:19:09'),
(35, 'Damilare Philip', 'frizzyonline@gmail.com', 'Frizzzy', '1', 'reAnLrQ0SMG6wSdhGDeh', NULL, NULL, NULL, 'Lagos', NULL, 'Nigeria', '$2y$10$u.wr/X00GHQgEjxSLEZ8uOhgNpyRx6qEc9wHYZzZYPF.JTOmljaGm', NULL, '2020-08-16 01:47:25', '2020-08-16 01:48:18'),
(36, 'sandro', 'lucasradical87@gmail.com', 'gggggggg', '1', 'f1oy2dlY5O5GkxICEzLF', NULL, NULL, NULL, 'queimados', NULL, 'Brazil', '$2y$10$3x0bwv7I49eySwsmXcO2tu3jvSWZbj11izqZpNcaVDmrHKTCyDvmi', NULL, '2020-08-16 20:30:40', '2020-08-16 20:31:49'),
(37, 'zaltv', 'zaltvapp@gmail.com', 'zaltvapp', '1', 'ulFNap7l39jJ8otSS1e1', NULL, NULL, NULL, 'rio', NULL, 'Brazil', '$2y$10$icAcVUCjva4Wnyhg46O3U.Z4Piqtnt4EEhSTFpdb69Jf79RHe8RjG', NULL, '2020-08-16 23:30:22', '2020-08-16 23:31:05'),
(38, 'Caner', 'canerduzyar@gmail.com', 'razorx', '1', 'WA47sCsS0HJfSlKpcjRW', NULL, NULL, NULL, 'Sakarya', NULL, 'Turkey', '$2y$10$Yk2qjUAcpFFwuLwFLwjZwuQcVDD/E4z5f3Gpw79hM4eAlsj8eZ1AO', NULL, '2020-08-17 14:47:09', '2020-08-17 14:48:01'),
(39, 'Mehdi boudhir', 'archivetunisia@gmail.com', 'boudo2020', '1', 'oFjn5DpJMSVNBN5zHqRL', NULL, NULL, NULL, 'Doha', NULL, 'Qatar', '$2y$10$DgAL8SIyjbuWBkP9JrbRHOaTc8poD63GijKl6boxZdB2kNte/R0W2', NULL, '2020-08-17 20:28:30', '2020-08-17 20:29:22'),
(40, 'Tgghhh', 'jjjjzghj@ghjj.nj', 'Bbjj', '0', 'QHWhY7VN4iuFjpcVym5L', NULL, NULL, NULL, 'Jfkdjdj', NULL, 'Mexico', '$2y$10$Nwo9pLPsk09RQuh8nb6Keuzq/nwnFaAQkM9aysn7bFw4lpt.AUO9G', NULL, '2020-08-18 14:24:52', '2020-08-18 14:24:53'),
(41, 'Ser', 'sergey.linko@gmail.com', 'Li', '1', 'cNL72lKSze7DWdszXJRC', NULL, NULL, NULL, 'Erevan', NULL, 'Armenia', '$2y$10$DUZSXY9F54qY2gyLwiTcg.qfKKrOM5hUQH4SfRr6kgdx7YC7Mm3QK', NULL, '2020-08-19 23:39:37', '2020-08-19 23:40:17'),
(42, 'Naijablogger', 'langdung02@gmail.com', 'Naijablogger', '1', 'VUQYtkv4Gb0RBWe8SkcL', NULL, NULL, NULL, 'Rayfield', NULL, 'Nigeria', '$2y$10$6b6M.Y1/t2mJ2ryKmnSeleymLjMVZIGHmykvYdaHyqbhcvsfY6Q4y', NULL, '2020-08-20 04:38:22', '2020-08-20 04:39:27'),
(43, 'Vicks', 'programmervicks@gmail.com', 'vicks', '1', 'r4ZdrmyXuYG3JW5q22bV', NULL, NULL, NULL, 'Aba', NULL, 'Afganistan', '$2y$10$/qioDErjKKR9T1fi.IHB5esHZkxcm65OIr8WX2bJGbtpvpPTq/Yf6', NULL, '2020-08-20 13:26:20', '2020-08-20 13:27:05'),
(44, 'William Becker', 'barba@gmail.com', 'barbabecker', '0', 'hB0Hi23AESLGOIi0Yxyt', NULL, NULL, NULL, 'Novo Hamburgo', NULL, 'Brazil', '$2y$10$T.97hGvZ2tx83W/XouWqVOH43qTu8P5up4HEK7KtFUv05iDNewnku', NULL, '2020-08-21 03:48:59', '2020-08-21 03:49:00'),
(45, 'Muhammad Ameen', 'itsameen1988@gmail.com', 'itsameen', '1', 'S2K9VOnAEekgZ7EDfulr', NULL, NULL, NULL, 'Islamabad', NULL, 'Pakistan', '$2y$10$GI.I6hpnYVn3V5hKAQSxkOxPUXY62B3TfO3/WmdvWmHg9L9ugIIcO', NULL, '2020-08-21 13:50:36', '2020-08-21 13:51:46'),
(46, 'Mohamed Abdelhady', 'ahmedmohamedelhady2003@gmail.com', 'elhady55', '0', 'uhRqnNRYvaz6zk86P0C1', NULL, NULL, NULL, 'Cairo', NULL, 'Egypt', '$2y$10$nMxVGzd717jbNUJk2zs0Vu7ngpe6tSItX2dbQ3njv5iBrY9wzku5K', NULL, '2020-08-22 22:08:34', '2020-08-22 22:08:35'),
(47, 'refat', 'admin@gmail.com', 'refat', '0', 'wpPYckhPpcSWOIWWEa49', NULL, NULL, NULL, 'super_admin', NULL, 'Bangladesh', '$2y$10$SJF0kUxMhkx9Nh7fFl4ZVe3pi1Uy7TfVNle593n0I2CEd5Y2K1jCO', NULL, '2020-08-23 14:24:00', '2020-08-23 14:24:01'),
(48, 'wahid', 'mdwahid@softifybd.com', 'wahid', '1', 'IbMufr0CdHdRcSzWclvu', NULL, NULL, NULL, 'super_admin', NULL, 'Afganistan', '$2y$10$WeNSxglHnKYiiH2B002CP.Oq76LCniUtK13LiUKqGaX90AZ5rehU.', NULL, '2020-08-23 14:27:20', '2020-08-23 14:29:18'),
(49, 'Paco', 'petechus@gmail.com', 'Paco', '1', 'lKevb67cEgVZSxeRMEfX', NULL, NULL, NULL, 'Tula', NULL, 'Afganistan', '$2y$10$GjO8KdMYTfs3Innc0jog6OkAidRteRSvri9SmspCklII0vyCdW4p.', NULL, '2020-08-23 22:02:54', '2020-08-23 22:03:26'),
(50, 'Navid Arian', 'nvdarian@gmail.com', 'arian32', '1', 'Qmg91nbWWD5z2gJEPKOz', NULL, NULL, NULL, 'dubai', NULL, 'United Arab Erimates', '$2y$10$KCVhhUFAxX7xUx.uv6WEVuZpxM3qwXFK7K692l1yJyf1aPAlck6Yy', NULL, '2020-08-24 09:20:29', '2020-08-24 09:21:30'),
(51, 'mike ibekwe', 'dakingeorge58@gmail.com', 'coded400', '1', 'DwPzSOG1aDqR7HzDtkYq', NULL, NULL, NULL, 'florida', NULL, 'Afganistan', '$2y$10$WzeQjlz898g3VrcUOoMOPehZgK8JEDtQSxE1bu6eaueL0Hv8BMluW', NULL, '2020-08-24 23:27:02', '2020-08-24 23:28:07'),
(52, 'efssdf', 'firudin.davudov1@gmail.com', 'dhclouds', '0', '4Nn5txrhVTU2Byby4JVB', NULL, NULL, NULL, 'sdfsd', NULL, 'Azerbaijan', '$2y$10$bohcycyNGrFZVT3Cz.HZ4OfAnzObBCfx9LiqimV6Gmjm1dsrn/nSi', NULL, '2020-08-26 17:04:33', '2020-08-26 17:04:34'),
(53, 'Prakash Singh', 'prakashks045@gmail.com', 'prakashks045', '1', 'OzQ0ySk7tUsFc9bS0G2U', NULL, NULL, NULL, 'New Delhi', NULL, 'India', '$2y$10$49wI7kxZGpjrvsNV9tLCeeZC5/YXuwMvoFlMKN9z4SPGz/U/P4WBS', NULL, '2020-08-26 21:52:16', '2020-08-26 21:52:59'),
(54, 'zuka dzamunashvili', 'z.dzamunay@gmail.com', 'zukofia', '1', 'y3lQWsRtbXesnZjvlGQ3', NULL, NULL, NULL, 'Georgia,Tbilisi', NULL, 'Georgia', '$2y$10$68sOVOe583abCT9xyFsrbODXhyeumrhO6IWYPODDKlNJckI1Z.Ycu', NULL, '2020-08-27 00:43:12', '2020-08-27 00:44:33'),
(55, 'sharifur', 'xgenious51@gmail.com', 'xgenious51', '1', 'BFC2fMqoyfMfim6EHrY4', NULL, NULL, NULL, 'dhaka', NULL, 'Bangladesh', '$2y$10$qly4sSgmd.aiX/rV8LNNRek8FCUPXz.uUmH0FdOdPUkKCZf8i/x/e', NULL, '2020-08-27 09:21:01', '2020-08-27 09:22:06'),
(56, 'Nkululeko  Ndlovu', 'nkumediagroup@gmail.com', 'Nku', '0', 'BQ4dRnCPBE8dairC88Mr', NULL, NULL, NULL, 'Johannesburg', NULL, 'South Africa', '$2y$10$FPQBfo6S7TZH.LbHAXNCBeaf/M.kLcIAITixadY95vv1gYbUT4jp6', NULL, '2020-08-28 09:56:55', '2020-08-28 09:56:56'),
(57, 'Jjj', 'rikey9578@gmail.com', 'nx597', '1', 'J7V1p0B2XwxPA1atwncd', NULL, NULL, NULL, '88', NULL, 'Afganistan', '$2y$10$WxoUbmIEL9rKqMEj2vadFeCAUn9TUsGrPe2Ky83uo1FFUBDZ.I7MG', NULL, '2020-08-29 21:13:42', '2020-08-29 21:14:38'),
(58, 'rajiv', 'rajivkissy@gmail.com', 'rajiv', '1', 'vYi1KTZAhV1dWL4dKzAA', NULL, NULL, NULL, 'test', NULL, 'India', '$2y$10$37ZVE3c6Vqzt4Pkh8Muv/OuwVgm6vusrL9FeaLOcvfJlLY33AC12C', NULL, '2020-08-31 18:52:02', '2020-10-03 11:13:13'),
(59, 'rajiv kissy', 'admin@webhfygdudio.co.zw', 'rajivkissy', '0', 'EYHCjdRvJjwo5lPbErf0', NULL, NULL, NULL, 'bhilai', NULL, 'Afganistan', '$2y$10$0nEHEpC4/M1W4ZNjyC.VM.HEi6hserBr7q/GNzm8KM0oUYbDEIx7C', NULL, '2020-09-03 23:28:46', '2020-09-03 23:28:47'),
(60, 'Rrrr', 'admin@gmyyyyail.com', 'Rrrr', '0', 'G52ZmR5jpo2mwLNj0ULc', NULL, NULL, NULL, 'Ghgh', NULL, 'Angola', '$2y$10$s7ozxK3.iDlRQygeaF0A7uDuUrWMM/tctBdIady85nz3C8CAS9wIm', NULL, '2020-09-04 03:55:18', '2020-09-04 03:55:19'),
(61, 'Hasan', '0hasanablak@gmail.com', 'Ablak', '1', 'F68xAvsQI5yUIjkzYlwY', NULL, NULL, NULL, 'Sakarya', NULL, 'Turkey', '$2y$10$zFdZjwHWCoE73fmrlR9ccekRPQcjroukPQnrfituPNtou71QToZS2', NULL, '2020-09-05 17:17:01', '2020-09-05 17:17:33'),
(62, 'testinguser', 'testinguser@gmail.com', 'testinguser', '0', 'EWAS1N7gOOd4WHe7QvPh', NULL, NULL, NULL, 'qweqwe', NULL, 'Belarus', '$2y$10$WO2zPjZGdWk7n8GXOvt4T.pmBKjK7byz.AC/v8U5kbXzcJghWyS/G', NULL, '2020-09-07 05:21:51', '2020-09-07 05:21:51'),
(63, 'testinguser22', 'hilmy.official@gmail.com', 'testinguser22', '1', 'Os3VtFynfi7n4zEdDom7', NULL, NULL, NULL, 'testinguser22', NULL, 'Belize', '$2y$10$cntXwUmf4oT7rdMa5uVQU.2pRoJMv9Zhnh5fKhCxW7QrewXLpkeN2', NULL, '2020-09-07 05:25:12', '2020-09-07 05:25:46'),
(64, 'Benson', 'incomearbitrage@gmail.com', 'benson', '0', 'y7rHicdYJ5qQ0xkWbz0b', NULL, NULL, NULL, 'Petaling Jaya', NULL, 'Malaysia', '$2y$10$HzLPOhYZ7n4x0SSNMOERZuw3MDRlu1Z.02VGvoBTh7laWTjd/eYmm', NULL, '2020-09-07 07:59:50', '2020-09-07 07:59:51'),
(65, 'GGG', 'lixoti@gmail.com', 'lixoti2', '0', 'aQ856DNxpNWsiFDeHe6F', NULL, NULL, NULL, 'KISUMU', NULL, 'Afganistan', '$2y$10$b5UftkMYh2LmefwULKt.V.QFzCIVeI4OG3aFY3H53Jj1p3H2QWT5O', NULL, '2020-09-07 23:38:44', '2020-09-07 23:38:45'),
(66, 'JAVIER MOTA', 'solucionescompucaribe@gmail.com', 'javiier', '0', NULL, NULL, NULL, NULL, 'cancun', NULL, 'Mexico', '$2y$10$RuA4FxJYj/x3T7VWQzDGfOjBitjx2HC7LYvWGvW4Y4qNWNo0Nobsm', NULL, '2020-09-15 00:02:49', '2020-09-15 00:02:49'),
(67, 'Cheap Web Hosting', 'softbirdbiz@gmail.com', 'demo_admin', '0', NULL, NULL, NULL, NULL, 'Mymensingh', NULL, 'Bangladesh', '$2y$10$KHD6TdhPLcK2pZ1kvgTxC.WXVvju46g3ovKmovDsozYnrm0/9libq', NULL, '2020-09-19 17:57:50', '2020-09-19 17:57:50'),
(68, 'Mazen Leno', 'mazenashraf2539@gmail.com', 'mazenlenox10', '0', NULL, NULL, NULL, NULL, 'Cairo', NULL, 'Egypt', '$2y$10$nq2woVuB89JLllO.u5SweOb2mNFuEr.ihR7Z0ZS5.iHNPaCk4UeqW', NULL, '2020-09-20 08:32:28', '2020-09-20 08:32:28'),
(69, 'Adarsh', 'Blueadarsh1@gmail.com', 'Adarsh', '0', NULL, NULL, NULL, NULL, 'Jajs', NULL, 'Antigua & Barbuda', '$2y$10$Khwn4B7SR3Dhw.sIar/IduLD14AGlx58NwS71jZNETQl2nH1l99Ji', NULL, '2020-09-25 17:11:34', '2020-09-25 17:11:34'),
(70, 'harrison', 'herrice.hn@gmail.com', 'herrice', '0', NULL, NULL, NULL, NULL, 'nairobi', NULL, 'Kenya', '$2y$10$ugum42H5tUNqs1110LsFROBZ9U5XJKvtQ/Z8YF4Xdaovc/kYnKvIO', NULL, '2020-09-28 22:58:42', '2020-09-28 22:58:42'),
(71, 'Prem', 'monkclashing@gmail.com', 'Prempatel6', '0', NULL, NULL, NULL, NULL, 'Valam', NULL, 'India', '$2y$10$8qsxzs0Y32LkhLXt./zkdO2bkLGBZEzHALDdvghJF0uErcrE3/phS', NULL, '2020-09-29 07:45:48', '2020-09-29 07:45:48'),
(72, 'Rocky', 'jshsh@gmail.com', 'Stark123', '0', NULL, NULL, NULL, NULL, 'Hssh', NULL, 'Cocos Island', '$2y$10$cU5PoCznARyt8aB7NTkr1OyS9XEqXDU7/sFHgzJ/hPQRXcfX0RqPG', NULL, '2020-09-29 16:01:26', '2020-09-29 16:01:26'),
(73, 'Games', 'clickmeok.com@gmail.com', 'clickme', '0', NULL, NULL, NULL, NULL, 'Bogor', NULL, 'Albania', '$2y$10$uJANIfgKiY.wFMphlMfM0uUyz4TM0DO95as1IRjtTyZZ9ZcG1w9XO', NULL, '2020-09-29 21:03:27', '2020-09-29 21:03:27'),
(74, 'Proprietr', 'proprietr@gmail.com', 'proprietr', '0', NULL, NULL, NULL, NULL, 'Mogadishu', NULL, 'Somalia', '$2y$10$Wb4GvbMWv4QpPUU4YvWH7eNlRL9BUWw/LoA/1OgQgZ3QEeneamPHO', NULL, '2020-10-01 01:01:41', '2020-10-01 01:01:41'),
(75, 'asasasas', 'mhee1395@gmail.com', 'hassan92', '0', NULL, NULL, NULL, NULL, 'aaaaaaaaaaaaa', NULL, 'Iran', '$2y$10$mFp/NcJnmMOAKHlTYuXBMuXGZKLzGmRL52KpxFYff9qlac3K6zF.G', NULL, '2020-10-05 10:01:00', '2020-10-05 10:01:00'),
(76, 'Atham', 'athambawa@yahoo.com', 'Bawa', '0', NULL, NULL, NULL, NULL, 'Dund', NULL, 'Australia', '$2y$10$6UFaOL1zx9KEteg67zVouekb5kkaP6PCxrop3jYKTd/YBnfIATUvq', NULL, '2020-10-09 12:09:57', '2020-10-09 12:09:57'),
(77, 'Ledion Taka', 'jokerledion@gmail.com', 'ledion', '0', NULL, NULL, NULL, NULL, 'Godella', NULL, 'Spain', '$2y$10$XgnPYvFMKTQi/EmHhtREH.Z/bPhUXIHlHYa6EnrHhN5mE9oB7AOyy', NULL, '2020-10-14 19:17:07', '2020-10-14 19:17:07'),
(78, 'Roinuj', 'roinuj@roinuj.com', 'roinuj', '0', NULL, NULL, NULL, NULL, 'Blessedblarughyon', NULL, 'Afganistan', '$2y$10$t/09gfRF0SYVsECbqZBkhu7Qi6SfMD6kibV2iKGJswOlJfHS4yWQq', NULL, '2020-10-20 20:55:56', '2020-10-20 20:55:56'),
(79, 'alexis', 'santosalexis54@gmail.com', 'sdlkjdlskjd', '0', NULL, NULL, NULL, NULL, 'montevideo', NULL, 'Uraguay', '$2y$10$Dm9kjMAjo8GtpmSAr5/UCukhgl/qno0EhSQASB8Qqi8b85trdXM.y', NULL, '2020-10-23 03:52:31', '2020-10-23 03:52:31'),
(80, 'john', 'm@m.com', 'webcoder', '0', NULL, NULL, NULL, NULL, 'tokyo', NULL, 'Australia', '$2y$10$OnIAzOUXRZLi964A7DzYNOo6HdONVTFa5djAna.ZtDCm41LGGqwai', NULL, '2020-10-23 14:27:45', '2020-10-23 14:27:45'),
(81, 'CERENZIA', 'mathieu.cerenzia@free.fr', 'mathieucerenzia', '0', NULL, NULL, NULL, NULL, 'MARAUSSAN', NULL, 'France', '$2y$10$ve4AnfOQXrdMG1lkIvF7Y.MbXwsBHct2hH1cG2jwBsaW3kAjskkGC', NULL, '2020-10-24 20:48:46', '2020-10-24 20:48:46'),
(82, 'Hanumant Nalwade', 'hanumant.nalwade@gmail.com', 'student', '0', NULL, NULL, NULL, NULL, 'pune', NULL, 'India', '$2y$10$inIPuk2M8PSp5l1K8mztcuP.h6PVxBGzQjuobLy7YvlMKP9otCQCy', NULL, '2020-10-26 09:06:30', '2020-10-26 09:06:30'),
(83, 'Shahzaib Shahbaz', 'shahzaibshahbaz808@gmail.com', 'zaibu', '0', NULL, NULL, NULL, NULL, 'OKara', NULL, 'Pakistan', '$2y$10$Ud4jRYhvh7WFC5WagOIvB.IoYFcOn/wmSpGJO3VTDK7euVKw5u2OC', NULL, '2020-10-26 18:34:15', '2020-10-26 18:34:15'),
(84, 'dalvice', 'dalvice.rall@mail.ru', 'dalvice', '0', NULL, NULL, NULL, NULL, 'Moscow', NULL, 'Russia', '$2y$10$Qdoha9YB.i4Bh3/OxWibUej2OIjPSvmseWU/4bLjx3e0mRRvQHy7y', NULL, '2020-10-27 23:32:39', '2020-10-27 23:32:39'),
(85, 'Jeevan Villarreal', 'jjjjjjjjo@gmail.com', 'johnmbo', '0', NULL, NULL, NULL, NULL, 'jjjjjjj', NULL, 'Afganistan', '$2y$10$BJolWG8fUZdbUnlOT48J6OI5FEe8OXbYYjhH3hERAoaG91KCaTQgS', NULL, '2020-10-28 12:27:15', '2020-10-28 12:27:15'),
(86, 'ssenogab999', 'ssenogab999@gmail.com', 'ssenogab999', '0', NULL, NULL, NULL, NULL, 'Kampala', NULL, 'Uganda', '$2y$10$cQD8mWSylvDMeWqwHi4vKOJUziXuKRhPCusrTTqXW957TnktZM972', NULL, '2020-10-29 06:01:26', '2020-10-29 06:01:26'),
(87, 'Tamer Essam', 'tasadasd@sad.com', 'tamer', '0', NULL, NULL, NULL, NULL, 'Markaz Etay El Baroud', NULL, 'Egypt', '$2y$10$oQVMuPpDBzs0AIGlNptY8.DkW7G3n5vNYFs0DkGx5cNskFFmelShG', NULL, '2020-10-29 07:09:40', '2020-10-29 07:09:40'),
(88, 'Akbar', 'deviakbar17@gmail.com', 'akbar19', '0', NULL, NULL, NULL, NULL, 'Karawang', NULL, 'Indonesia', '$2y$10$0tWzgnOVE7RPBo3z0ZVz.e9C4gS7unFpCAv3JLIrP5PNtTB52Avhe', NULL, '2020-10-29 21:08:30', '2020-10-29 21:08:30'),
(89, 'itechgen', 'itechgenmedia@gmail.com', 'itechgen', '0', NULL, NULL, NULL, NULL, 'Kampala', NULL, 'Uganda', '$2y$10$H37t5mBDqof1AQXU5QkEGeKoCi9qkxikwReCoqslE70j7u.hcKvE2', NULL, '2020-10-29 22:14:33', '2020-10-29 22:14:33'),
(91, 'Zubair Rao', 'raozubair1441@gmail.com', 'zubair1441', '0', NULL, NULL, NULL, NULL, 'lahore', NULL, 'Pakistan', '$2y$10$4DAUkkh5kV8diVkmG78XCepOTkMPv0/L3UOjhxcVRqgG3D1LXOste', NULL, '2020-11-09 14:42:16', '2020-11-09 14:42:16'),
(92, 'awer', 'fkf37455@eoopy.com', 'awer', '0', NULL, NULL, NULL, NULL, 'gyuug', NULL, 'Afganistan', '$2y$10$lOIEGXZl2UObLaP82DesAe689ORPD1NuJ12CSMKmWNNe2KrvDZ7de', NULL, '2020-11-11 04:51:04', '2020-11-11 04:51:04'),
(93, 'Victor Sunday', 'waka2020ng@gmail.com', 'bidbittv', '0', NULL, NULL, NULL, NULL, 'Kano', NULL, 'Nigeria', '$2y$10$igKD.XB6Z/bjXUOkfB85DeaML9cSQ/aZ7Pi3eiTLsYoZY1JsBBMVq', 'z0aZMXKKRKfsgcICGIXFz9fdWbBk1G63WpP0ScPoCeVu0UVPuhpasN9ahBgU', '2020-11-11 15:48:39', '2020-11-11 15:48:39'),
(94, 'Gabriel Martínez', 'gabimartinez123456@gmail.com', 'gabo', '0', NULL, NULL, NULL, NULL, 'Los Molinos', NULL, 'Argentina', '$2y$10$he.FQJ7lrmnALPrCVoT0yOHQ5sjo1UN8tPw.0PW.IjGAyH6p1sGR.', NULL, '2020-11-18 02:04:20', '2020-11-18 02:04:20'),
(95, 'Rejaul Laskar', 'rejaullaskar4@gmail.com', 'rejaul95', '0', NULL, NULL, NULL, NULL, 'Silchar', NULL, 'India', '$2y$10$/qSHkwOLFMtjRL5vIQ3RDe5I3kcdhQd.GBqdV1rWLFaHDw7/dEAEW', NULL, '2020-11-20 14:19:12', '2020-11-20 14:19:12'),
(96, 'Aru', 'admin@mediacity.co.in', 'n', '0', NULL, NULL, NULL, NULL, NULL, NULL, 'Afganistan', '$2y$10$D0X8OWWoZnTvEm1cLIXrYObfLBtz08SkOUEVDacQmYOKWnOQ06/Ui', 'eJh8TA3HB47CMb4sASmEAs3V6Aw3YWcBoXWebVfK0P4KfexyjsfOvubulfNK', '2020-11-21 09:54:10', '2020-11-21 09:54:10'),
(97, 'test', 'testo@gmail.com', 'testo', '0', NULL, NULL, NULL, NULL, 'testo', NULL, 'Afganistan', '$2y$10$Hk6Zh88z9sTbBsA1fENw/.XVCLuN1ZmziAtJkRjyTG39XY8UAiDeu', NULL, '2020-11-22 23:19:50', '2020-11-22 23:19:50'),
(98, 'Mane', 'tmacraftservice@gmail.com', 'Mane', '0', NULL, NULL, NULL, NULL, 'Port Harcourt', NULL, 'Nigeria', '$2y$10$khfay6uvu/eWNW.1UwnuT.KgGtbqdjGxBvzxwIsy2M2Q6v29fYv0C', NULL, '2020-11-24 16:46:38', '2020-11-24 16:46:38'),
(99, 'test', 'test29@gmail.com', 'test29', '0', NULL, NULL, NULL, NULL, 'ts', NULL, 'Afganistan', '$2y$10$YHTGuaPAmzubDCkyjosp7uqy0GPyy11Ux1ESd//gAbKdk4mIX7WRu', NULL, '2020-11-25 17:12:18', '2020-11-25 17:12:18'),
(100, 'Mohammed Ali', 'mohammed.alihaggag@gmail.com', 'mohammed.alihaggag', '0', NULL, NULL, NULL, NULL, 'Giza', NULL, 'Egypt', '$2y$10$S/BXGcBBmX/n2CLVmsPBpuPGaQjptkBxWUtZmpldGo7.WGFOjqema', NULL, '2020-12-23 14:48:08', '2020-12-23 14:48:08'),
(101, 'erewrewrew', 'eqfdewrew@gmail.com', 'werwerwerwer', '0', NULL, NULL, NULL, NULL, 'ewrwerwe', NULL, 'Azerbaijan', '$2y$10$gl4BzwZeK/hOQsW2qAximuEWYhhK2ziUGYsW.jnJ21HcUAbd6yZfC', NULL, '2020-12-25 16:08:03', '2020-12-25 16:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_render_function` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontend_render_function` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_name` text COLLATE utf8mb4_unicode_ci,
  `widget_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `admin_render_function`, `frontend_render_function`, `widget_name`, `widget_content`, `widget_order`, `created_at`, `updated_at`) VALUES
(7, 'about_us_widget', 'render_about_us_widget', 'About Us', 'a:11:{s:2:\"id\";s:1:\"7\";s:24:\"frontend_render_function\";s:22:\"render_about_us_widget\";s:21:\"admin_render_function\";s:15:\"about_us_widget\";s:11:\"widget_type\";s:6:\"update\";s:11:\"widget_name\";s:8:\"About Us\";s:12:\"widget_order\";s:1:\"1\";s:9:\"site_logo\";s:1:\"5\";s:14:\"description_en\";s:69:\"No comfort do written conduct at prevent manners offended no concerns\";s:15:\"description_tur\";s:84:\"Herhangi bir endişe rahatsızlık önlemek için yazılı davranış hiçbir konfor\";s:14:\"description_ar\";s:106:\"لا راحة تصرف سلوك مكتوب في منع الأخلاق لا تسيء إلى أي مخاوف\";s:14:\"description_sp\";s:64:\"Sin consuelo, la conducta escrita para evitar modales no ofende.\";}', 1, '2020-06-16 18:16:23', '2020-07-30 12:18:18'),
(11, 'contact_info_widget', 'render_contact_info_widget', 'Contact Info', 'a:21:{s:24:\"frontend_render_function\";s:26:\"render_contact_info_widget\";s:21:\"admin_render_function\";s:19:\"contact_info_widget\";s:11:\"widget_type\";s:3:\"new\";s:11:\"widget_name\";s:12:\"Contact Info\";s:12:\"widget_order\";s:1:\"2\";s:15:\"widget_title_en\";s:10:\"Contact us\";s:11:\"location_en\";s:53:\"143 castle road 517 district, kiyev port south Canada\";s:8:\"phone_en\";s:12:\"+111 222 333\";s:8:\"email_en\";s:17:\"info@yourmail.com\";s:16:\"widget_title_tur\";s:13:\"Bize Ulaşın\";s:12:\"location_tur\";s:49:\"143 kale yol 517 ilçe, kiyev liman güney Kanada\";s:9:\"phone_tur\";s:12:\"+111 222 333\";s:9:\"email_tur\";s:17:\"info@yourmail.com\";s:15:\"widget_title_ar\";s:15:\"اتصل بنا\";s:11:\"location_ar\";s:81:\"143 طريق القلعة 517 منطقة ، ميناء كييف جنوب كندا\";s:8:\"phone_ar\";s:12:\"+111 222 333\";s:8:\"email_ar\";s:17:\"info@yourmail.com\";s:15:\"widget_title_sp\";s:21:\"Contacta con nosotras\";s:11:\"location_sp\";s:64:\"143 distrito de castle road 517, puerto de kiyev, sur de Canadá\";s:8:\"phone_sp\";s:12:\"+111 222 333\";s:8:\"email_sp\";s:17:\"info@yourmail.com\";}', 3, '2020-06-17 15:31:59', '2020-07-30 12:18:18'),
(15, 'recent_post_widget', 'render_recent_post_widget', 'Recent Post', 'a:11:{s:2:\"id\";s:2:\"15\";s:24:\"frontend_render_function\";s:25:\"render_recent_post_widget\";s:21:\"admin_render_function\";s:18:\"recent_post_widget\";s:11:\"widget_type\";s:6:\"update\";s:11:\"widget_name\";s:11:\"Recent Post\";s:12:\"widget_order\";s:1:\"2\";s:15:\"widget_title_en\";s:12:\"Recent Posts\";s:16:\"widget_title_tur\";s:29:\"yakın zamanda Gönderilenler\";s:15:\"widget_title_ar\";s:33:\"المشاركات الاخيرة\";s:15:\"widget_title_sp\";s:18:\"Mensajes recientes\";s:10:\"post_items\";s:1:\"2\";}', 2, '2020-06-17 18:41:04', '2020-07-30 12:18:18'),
(19, 'newsletter_widget', 'render_newsletter_widget', 'Newsletter', 'a:14:{s:2:\"id\";s:2:\"19\";s:24:\"frontend_render_function\";s:24:\"render_newsletter_widget\";s:21:\"admin_render_function\";s:17:\"newsletter_widget\";s:11:\"widget_type\";s:6:\"update\";s:11:\"widget_name\";s:10:\"Newsletter\";s:12:\"widget_order\";s:1:\"4\";s:15:\"widget_title_en\";s:19:\"Subscribe Newletter\";s:14:\"description_en\";s:39:\"subscribe our newsletter to get update.\";s:16:\"widget_title_tur\";s:17:\"Bültene Abone Ol\";s:15:\"description_tur\";s:48:\"güncelleme almak için bültenimize abone olun.\";s:15:\"widget_title_ar\";s:33:\"المشاركات الاخيرة\";s:14:\"description_ar\";s:83:\"اشترك في النشرة الإخبارية للحصول على التحديث.\";s:15:\"widget_title_sp\";s:35:\"Suscribirse al boletín informativo\";s:14:\"description_sp\";s:60:\"Suscríbase a nuestro boletín para recibir actualizaciones.\";}', 4, '2020-06-18 08:35:17', '2020-07-30 12:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `categories_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clients` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `slug`, `categories_id`, `description`, `excerpt`, `meta_tag`, `meta_description`, `duration`, `clients`, `budget`, `gallery`, `status`, `image`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Cyber Security Solution for cura', 'cyber-security-solution-for-cura', 'a:1:{i:0;s:1:\"1\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '02 Month', 'Jason C. Williams', '$3000', NULL, 'publish', '22', 'en', '2020-06-02 16:32:28', '2020-06-02 16:32:28'),
(2, 'Website Design', 'website-design', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '15 Days', 'Jason C. Williams', '$3000', NULL, 'publish', '21', 'en', '2020-06-03 17:37:45', '2020-06-03 17:56:03'),
(3, 'Develop A Mobile App', 'develop-a-mobile-app', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '15 Days', 'Jason C. Williams', '$1000', NULL, 'publish', '20', 'en', '2020-06-03 17:56:14', '2020-06-03 18:06:29'),
(4, 'Develop IOS App', 'develop-ios-app', 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '15 Days', 'Jason C. Williams', '$1000', NULL, 'publish', '19', 'en', '2020-06-03 18:06:52', '2020-06-03 18:07:16'),
(5, 'Google Chrome Extension', 'google-chrome-extension', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '15 Days', 'Jason C. Williams', '$1000', NULL, 'publish', '18', 'en', '2020-06-03 18:07:20', '2020-06-03 18:07:47'),
(6, 'Ecoomerce Website', 'ecoomerce-website', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"4\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '15 Days', 'Jason C. Williams', '$5000', NULL, 'publish', '17', 'en', '2020-06-03 18:07:53', '2020-06-03 18:08:16'),
(7, 'Multipurpose CMS', 'multipurpose-cms', 'a:2:{i:0;s:1:\"1\";i:1;s:1:\"3\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '15 Days', 'Jason C. Williams', '$5000', NULL, 'publish', '16', 'en', '2020-06-03 18:08:21', '2020-06-03 18:08:44'),
(8, 'Knowledgebase Website', 'knowledgebase-website', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}', '<h2 class=\"title\">Overview</h2>\r\n<p>Of recommend residence education be on difficult repulsive offending. Judge views had mirth table seems great him for her. Alone all happy asked begin fully stand own get. Excuse ye seeing result of we. See scale dried songs old may not. Promotion did disposing you household any instantly. Hills we do under times at first short an.&nbsp;</p><p>Those an equal point no years do. Depend warmth fat but her but played. Shy and subjects wondered trifling pleasant. Prudent cordial comfort do no on colonel as assured chicken. Smart mrs day which begin. Snug do sold mr it if such. Terminated uncommonly at at estimating. Man behaviour met moonlight extremity acuteness direction.&nbsp;</p><p><br></p>\r\n<h2 class=\"title\">Result</h2>\r\n<p>Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county. The use him without greatly can private. Increasing it unpleasant no of contrasted no continuing. Nothing colonel my no removed in weather. It dissimilar in up devonshire inhabiting.&nbsp;</p><p><br></p>', 'Kindness to he horrible reserved ye. Effect twenty indeed beyond for not had county.', 'hello,hi', 'meta description', '15 Days', 'Jason C. Williams', '$5000', '33|32', 'publish', '20', 'en', '2020-06-03 18:08:23', '2020-06-21 07:25:06'),
(9, 'Bilgi Bankası Web Sitesi', 'bilgi-bankasi-web-sitesi', 'a:1:{i:0;s:1:\"6\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$5000', NULL, 'publish', '15', 'tur', '2020-06-03 18:34:52', '2020-06-03 18:37:22'),
(10, 'Çok Amaçlı CMS', 'cok-amacli-cms', 'a:1:{i:0;s:1:\"7\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '14', 'tur', '2020-06-03 18:38:10', '2020-06-03 18:38:56'),
(11, 'E-ticaret Web Sitesi', 'e-ticaret-web-sitesi', 'a:2:{i:0;s:1:\"6\";i:1;s:1:\"8\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '13', 'tur', '2020-06-03 18:39:01', '2020-06-03 18:40:22'),
(12, 'Google Chrome Uzantısı', 'google-chrome-uzantisi', 'a:2:{i:0;s:1:\"5\";i:1;s:1:\"6\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '12', 'tur', '2020-06-03 18:40:28', '2020-06-03 18:41:09'),
(13, 'IOS Uygulaması Geliştirin', 'ios-uygulamasi-gelistirin', 'a:2:{i:0;s:1:\"6\";i:1;s:1:\"8\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '11', 'tur', '2020-06-03 18:41:27', '2020-06-03 18:42:11'),
(15, 'Mobil Uygulama Geliştirin', 'mobil-uygulama-gelistirin', 'a:2:{i:0;s:1:\"7\";i:1;s:1:\"8\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '10', 'tur', '2020-06-03 18:42:44', '2020-06-03 18:43:27'),
(16, 'Web sitesi tasarımı', 'web-sitesi-tasarimi', 'a:1:{i:0;s:1:\"7\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '22', 'tur', '2020-06-03 18:44:08', '2020-06-03 18:44:40'),
(17, 'Küratör için Siber Güvenlik Çözümü', 'kurator-icin-siber-guvenlik-cozumu', 'a:1:{i:0;s:1:\"7\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '25', 'tur', '2020-06-03 18:44:56', '2020-06-03 18:45:17'),
(18, 'حل الأمن الإلكتروني للمنسق', 'hl-alamn-alalktrony-llmnsk', 'a:1:{i:0;s:2:\"15\";}', '<h2 class=\"title\">نظرة عامة</h2>\r\n<p>من الصعب أن تكون نصيحة التعليم السكني على الجرائم البغيضة. كانت آراء القاضي أن طاولة المرآة تبدو رائعة بالنسبة له. كل المطلوبين السعداء وحدهم سيبدأون في الحصول على موقفهم الخاص تمامًا. عذرا ، نرى النتيجة. نرى. مقياس الأغاني الجافة قد لا تكون قديمة. ألقى بك العرض الترويجي على الفور في منزلك. التلال تصنع في وقت قصير تحت الوقت.</p>\r\n<p>هذه نقاط غير متساوية لسنوات. درجة الحرارة دهنية لكنها تعتمد عليها ولكنها تلعب. كانت الخجولة والموضوعات غريبة بشكل لطيف. راحة صادقة حكيمة ، لا في الألبوم كدجاج مضمون. تبدأ السيدة الذكية اليوم. باع Snug ، إذا كان هذا هو الحال. نادرا ما يتم إنهاؤها في التنبؤات. التقى السلوك البشري في اتجاه حدة ضوء القمر.</p><p><br></p>\r\n<h2 class=\"title\">نتيجة</h2>\r\n<p>اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها. يمكن أن تكون خاصة دون استخدامها إلى حد كبير. لا يوجد استياء متزايد ولا تباين. لم تتم إزالة العقيد في الهواء. على غرار العيش في ديفونشاير العليا.</p>', 'اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها.', 'مرحبا', 'ميتا الوصف', '15 يوم', 'جايسون سي ويليامز', '$1000', NULL, 'publish', '25', 'ar', '2020-06-03 18:45:32', '2020-07-27 12:33:09'),
(19, 'Küratör için Siber Güvenlik Çözümü', 'kurator-icin-siber-guvenlik-cozumu', 'a:1:{i:0;s:2:\"12\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '25', 'sp', '2020-06-03 18:45:54', '2020-06-04 10:38:52'),
(20, 'CMS multipropósito', 'cms-multiproposito', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"13\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '24', 'sp', '2020-06-04 10:44:10', '2020-06-04 12:07:41'),
(21, 'Sitio web de comercio electrónico', 'sitio-web-de-comercio-electronico', 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"11\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '23', 'sp', '2020-06-04 12:07:46', '2020-06-04 12:19:52'),
(22, 'Extensión Google Chrome', 'extension-google-chrome', 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"12\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '21', 'sp', '2020-06-04 12:24:15', '2020-06-04 12:24:58'),
(23, 'Desarrollar la aplicación IOS', 'desarrollar-la-aplicacion-ios', 'a:2:{i:0;s:2:\"12\";i:1;s:2:\"13\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '20', 'sp', '2020-06-04 12:30:20', '2020-06-04 12:50:45'),
(24, 'Desarrollar una aplicación móvil', 'desarrollar-una-aplicacion-movil', 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"12\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '19', 'sp', '2020-06-04 13:05:10', '2020-06-04 13:06:24'),
(25, 'Diseño de páginas web', 'diseno-de-paginas-web', 'a:1:{i:0;s:1:\"9\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '18', 'sp', '2020-06-04 13:07:39', '2020-06-04 13:08:11'),
(26, 'Solución de seguridad cibernética para cura', 'solucion-de-seguridad-cibernetica-para-cura', 'a:2:{i:0;s:1:\"9\";i:1;s:2:\"13\";}', '<h2 class=\"title\">genel bakış</h2>\r\n<p>Konut eğitimi tavsiye zor itici suç üzerinde olması. Yargıç görüşleri ayna tablo onun için harika görünüyor vardı. Yalnız tüm mutlu istedi tamamen kendi olsun standı başlar. Özür dileriz sonucu görüyoruz. Bkz. Ölçek kuru şarkıları eski olmayabilir. Promosyon sizi anında evinize attı. Tepeler zamanın altında kısa sürede yapıyoruz.</p>\r\n<p>Bunlar yıllarca eşit olmayan bir nokta. Sıcaklık yağ ama ona bağlı ama oynadı. Utangaç ve konular hoş bir şekilde merak ediyordu. İhtiyatlı samimi konfor, garantili tavuk olarak albayda hayır. Akıllı bayan gün başlar. Snug sattı bay eğer böyle. Tahminlerde nadiren feshedilir. İnsan davranışı ay ışığı ekstremite keskinliği yönünü karşıladı.</p><p><br></p>\r\n<h2 class=\"title\">Sonuç</h2>\r\n<p>Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten. Onu büyük ölçüde kullanmadan özel olabilir. Artan hoşnutsuzluk yok kontrastlı yok. Hiçbir albay havada yok kaldırıldı. Yukarı devonshire yaşayan benzer.</p>', 'Ona nezaket, seni saklı tuttu. Etkisi yirmi ötesinde ilçe yoktu gerçekten.', 'hello,hi', 'meta description', '15 günler', 'Jason C. Williams', '$1000', NULL, 'publish', '17', 'sp', '2020-06-04 13:08:17', '2020-06-04 13:08:48'),
(27, 'CMS متعددة الأغراض', 'cms-mtaadd-alaghrad', 'a:1:{i:0;s:2:\"17\";}', '<h2 class=\"title\">نظرة عامة</h2>\r\n<p>من الصعب أن تكون نصيحة التعليم السكني على الجرائم البغيضة. كانت آراء القاضي أن طاولة المرآة تبدو رائعة بالنسبة له. كل المطلوبين السعداء وحدهم سيبدأون في الحصول على موقفهم الخاص تمامًا. عذرا ، نرى النتيجة. نرى. مقياس الأغاني الجافة قد لا تكون قديمة. ألقى بك العرض الترويجي على الفور في منزلك. التلال تصنع في وقت قصير تحت الوقت.</p>\r\n<p>هذه نقاط غير متساوية لسنوات. درجة الحرارة دهنية لكنها تعتمد عليها ولكنها تلعب. كانت الخجولة والموضوعات غريبة بشكل لطيف. راحة صادقة حكيمة ، لا في الألبوم كدجاج مضمون. تبدأ السيدة الذكية اليوم. باع Snug ، إذا كان هذا هو الحال. نادرا ما يتم إنهاؤها في التنبؤات. التقى السلوك البشري في اتجاه حدة ضوء القمر.</p><p><br></p>\r\n<h2 class=\"title\">نتيجة</h2>\r\n<p>اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها. يمكن أن تكون خاصة دون استخدامها إلى حد كبير. لا يوجد استياء متزايد ولا تباين. لم تتم إزالة العقيد في الهواء. على غرار العيش في ديفونشاير العليا.</p>', 'اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها.', 'مرحبا', 'ميتا الوصف', '15 يوم', 'جايسون سي ويليامز', '$1000', NULL, 'publish', '24', 'ar', '2020-06-04 13:53:40', '2020-07-27 12:32:59'),
(28, 'موقع التجارة الإلكترونية', 'mokaa-altgar-alalktrony', 'a:2:{i:0;s:2:\"15\";i:1;s:2:\"17\";}', '<h2 class=\"title\">نظرة عامة</h2>\r\n<p>من الصعب أن تكون نصيحة التعليم السكني على الجرائم البغيضة. كانت آراء القاضي أن طاولة المرآة تبدو رائعة بالنسبة له. كل المطلوبين السعداء وحدهم سيبدأون في الحصول على موقفهم الخاص تمامًا. عذرا ، نرى النتيجة. نرى. مقياس الأغاني الجافة قد لا تكون قديمة. ألقى بك العرض الترويجي على الفور في منزلك. التلال تصنع في وقت قصير تحت الوقت.</p>\r\n<p>هذه نقاط غير متساوية لسنوات. درجة الحرارة دهنية لكنها تعتمد عليها ولكنها تلعب. كانت الخجولة والموضوعات غريبة بشكل لطيف. راحة صادقة حكيمة ، لا في الألبوم كدجاج مضمون. تبدأ السيدة الذكية اليوم. باع Snug ، إذا كان هذا هو الحال. نادرا ما يتم إنهاؤها في التنبؤات. التقى السلوك البشري في اتجاه حدة ضوء القمر.</p><p><br></p>\r\n<h2 class=\"title\">نتيجة</h2>\r\n<p>اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها. يمكن أن تكون خاصة دون استخدامها إلى حد كبير. لا يوجد استياء متزايد ولا تباين. لم تتم إزالة العقيد في الهواء. على غرار العيش في ديفونشاير العليا.</p>', 'اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها.', 'مرحبا', 'ميتا الوصف', '15 يوم', 'جايسون سي ويليامز', '$1000', NULL, 'publish', '23', 'ar', '2020-06-04 18:22:57', '2020-07-27 12:32:49'),
(29, 'ملحق جوجل كروم', 'mlhk-gogl-krom', 'a:2:{i:0;s:2:\"16\";i:1;s:2:\"17\";}', '<h2 class=\"title\">نظرة عامة</h2>\r\n<p>من الصعب أن تكون نصيحة التعليم السكني على الجرائم البغيضة. كانت آراء القاضي أن طاولة المرآة تبدو رائعة بالنسبة له. كل المطلوبين السعداء وحدهم سيبدأون في الحصول على موقفهم الخاص تمامًا. عذرا ، نرى النتيجة. نرى. مقياس الأغاني الجافة قد لا تكون قديمة. ألقى بك العرض الترويجي على الفور في منزلك. التلال تصنع في وقت قصير تحت الوقت.</p>\r\n<p>هذه نقاط غير متساوية لسنوات. درجة الحرارة دهنية لكنها تعتمد عليها ولكنها تلعب. كانت الخجولة والموضوعات غريبة بشكل لطيف. راحة صادقة حكيمة ، لا في الألبوم كدجاج مضمون. تبدأ السيدة الذكية اليوم. باع Snug ، إذا كان هذا هو الحال. نادرا ما يتم إنهاؤها في التنبؤات. التقى السلوك البشري في اتجاه حدة ضوء القمر.</p><p><br></p>\r\n<h2 class=\"title\">نتيجة</h2>\r\n<p>اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها. يمكن أن تكون خاصة دون استخدامها إلى حد كبير. لا يوجد استياء متزايد ولا تباين. لم تتم إزالة العقيد في الهواء. على غرار العيش في ديفونشاير العليا.</p>', 'اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها.', 'مرحبا', 'ميتا الوصف', '15 يوم', 'جايسون سي ويليامز', '$1000', NULL, 'publish', '21', 'ar', '2020-06-04 18:24:04', '2020-07-27 12:32:35'),
(30, 'تطوير تطبيق IOS', 'ttoyr-ttbyk-ios', 'a:1:{i:0;s:2:\"15\";}', '<h2 class=\"title\">نظرة عامة</h2>\r\n<p>من الصعب أن تكون نصيحة التعليم السكني على الجرائم البغيضة. كانت آراء القاضي أن طاولة المرآة تبدو رائعة بالنسبة له. كل المطلوبين السعداء وحدهم سيبدأون في الحصول على موقفهم الخاص تمامًا. عذرا ، نرى النتيجة. نرى. مقياس الأغاني الجافة قد لا تكون قديمة. ألقى بك العرض الترويجي على الفور في منزلك. التلال تصنع في وقت قصير تحت الوقت.</p>\r\n<p>هذه نقاط غير متساوية لسنوات. درجة الحرارة دهنية لكنها تعتمد عليها ولكنها تلعب. كانت الخجولة والموضوعات غريبة بشكل لطيف. راحة صادقة حكيمة ، لا في الألبوم كدجاج مضمون. تبدأ السيدة الذكية اليوم. باع Snug ، إذا كان هذا هو الحال. نادرا ما يتم إنهاؤها في التنبؤات. التقى السلوك البشري في اتجاه حدة ضوء القمر.</p><p><br></p>\r\n<h2 class=\"title\">نتيجة</h2>\r\n<p>اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها. يمكن أن تكون خاصة دون استخدامها إلى حد كبير. لا يوجد استياء متزايد ولا تباين. لم تتم إزالة العقيد في الهواء. على غرار العيش في ديفونشاير العليا.</p>', 'اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها.', 'مرحبا', 'ميتا الوصف', '15 يوم', 'جايسون سي ويليامز', '$1000', NULL, 'publish', '20', 'ar', '2020-06-04 18:25:25', '2020-07-27 12:32:23'),
(31, 'تصميم الموقع', 'tsmym-almokaa', 'a:1:{i:0;s:2:\"17\";}', '<h2 class=\"title\">نظرة عامة</h2>\r\n<p>من الصعب أن تكون نصيحة التعليم السكني على الجرائم البغيضة. كانت آراء القاضي أن طاولة المرآة تبدو رائعة بالنسبة له. كل المطلوبين السعداء وحدهم سيبدأون في الحصول على موقفهم الخاص تمامًا. عذرا ، نرى النتيجة. نرى. مقياس الأغاني الجافة قد لا تكون قديمة. ألقى بك العرض الترويجي على الفور في منزلك. التلال تصنع في وقت قصير تحت الوقت.</p>\r\n<p>هذه نقاط غير متساوية لسنوات. درجة الحرارة دهنية لكنها تعتمد عليها ولكنها تلعب. كانت الخجولة والموضوعات غريبة بشكل لطيف. راحة صادقة حكيمة ، لا في الألبوم كدجاج مضمون. تبدأ السيدة الذكية اليوم. باع Snug ، إذا كان هذا هو الحال. نادرا ما يتم إنهاؤها في التنبؤات. التقى السلوك البشري في اتجاه حدة ضوء القمر.</p><p><br></p>\r\n<h2 class=\"title\">نتيجة</h2>\r\n<p>اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها. يمكن أن تكون خاصة دون استخدامها إلى حد كبير. لا يوجد استياء متزايد ولا تباين. لم تتم إزالة العقيد في الهواء. على غرار العيش في ديفونشاير العليا.</p>', 'اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها.', 'مرحبا', 'ميتا الوصف', '15 يوم', 'جايسون سي ويليامز', '$1000', NULL, 'publish', '19', 'ar', '2020-06-04 18:27:53', '2020-07-27 12:32:11'),
(32, 'حل الأمن السيبراني للوحة', 'hl-alamn-alsybrany-lloh', 'a:2:{i:0;s:2:\"14\";i:1;s:2:\"15\";}', '<h2 class=\"title\">نظرة عامة</h2>\r\n<p>من الصعب أن تكون نصيحة التعليم السكني على الجرائم البغيضة. كانت آراء القاضي أن طاولة المرآة تبدو رائعة بالنسبة له. كل المطلوبين السعداء وحدهم سيبدأون في الحصول على موقفهم الخاص تمامًا. عذرا ، نرى النتيجة. نرى. مقياس الأغاني الجافة قد لا تكون قديمة. ألقى بك العرض الترويجي على الفور في منزلك. التلال تصنع في وقت قصير تحت الوقت.</p>\r\n<p>هذه نقاط غير متساوية لسنوات. درجة الحرارة دهنية لكنها تعتمد عليها ولكنها تلعب. كانت الخجولة والموضوعات غريبة بشكل لطيف. راحة صادقة حكيمة ، لا في الألبوم كدجاج مضمون. تبدأ السيدة الذكية اليوم. باع Snug ، إذا كان هذا هو الحال. نادرا ما يتم إنهاؤها في التنبؤات. التقى السلوك البشري في اتجاه حدة ضوء القمر.</p><p><br></p>\r\n<h2 class=\"title\">نتيجة</h2>\r\n<p>اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها. يمكن أن تكون خاصة دون استخدامها إلى حد كبير. لا يوجد استياء متزايد ولا تباين. لم تتم إزالة العقيد في الهواء. على غرار العيش في ديفونشاير العليا.</p>', 'اللطف معه جعلك مختبئا. كان هناك حقا عشرين خارج نفوذها.', 'مرحبا', 'ميتا الوصف', '15 يوم', 'جايسون سي ويليامز', '$1000', '19|18|17', 'publish', '16', 'ar', '2020-06-04 18:31:20', '2020-07-27 12:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `works_categories`
--

CREATE TABLE `works_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works_categories`
--

INSERT INTO `works_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cloud Support', 'en', 'publish', '2020-06-02 13:58:19', '2020-06-02 13:58:19'),
(2, 'Data Center', 'en', 'publish', '2020-06-02 13:58:32', '2020-06-02 13:58:32'),
(3, 'Analytics', 'en', 'publish', '2020-06-02 13:58:44', '2020-06-02 13:58:44'),
(4, 'Cyber Support', 'en', 'publish', '2020-06-02 13:58:57', '2020-06-02 13:58:57'),
(5, 'Siber Destek', 'tur', 'publish', '2020-06-02 13:59:45', '2020-06-02 13:59:45'),
(6, 'analitik', 'tur', 'publish', '2020-06-02 13:59:55', '2020-06-02 13:59:55'),
(7, 'Veri merkezi', 'tur', 'publish', '2020-06-02 14:03:12', '2020-06-02 14:03:12'),
(8, 'Bulut Desteği', 'tur', 'publish', '2020-06-02 14:03:22', '2020-06-02 14:03:22'),
(9, 'Soporte en la nube', 'sp', 'publish', '2020-06-02 14:03:40', '2020-06-02 14:03:40'),
(11, 'Data Center', 'sp', 'publish', '2020-06-02 14:03:50', '2020-06-02 14:03:50'),
(12, 'Analítica', 'sp', 'publish', '2020-06-02 14:04:00', '2020-06-02 14:04:00'),
(13, 'Soporte cibernético', 'sp', 'publish', '2020-06-02 14:04:14', '2020-06-02 14:04:14'),
(14, 'دعم الإنترنت', 'ar', 'publish', '2020-06-02 14:04:49', '2020-06-02 14:04:49'),
(15, 'تحليلات', 'ar', 'publish', '2020-06-02 14:05:08', '2020-06-02 14:05:08'),
(16, 'مركز البيانات', 'ar', 'publish', '2020-06-02 14:06:57', '2020-06-02 14:06:57'),
(17, 'دعم السحابة', 'ar', 'publish', '2020-06-02 14:07:08', '2020-06-02 14:07:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counterups`
--
ALTER TABLE `counterups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_logs`
--
ALTER TABLE `donation_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_categories`
--
ALTER TABLE `events_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_attendances`
--
ALTER TABLE `event_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_payment_logs`
--
ALTER TABLE `event_payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_gallery_categories`
--
ALTER TABLE `image_gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_features`
--
ALTER TABLE `key_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgebases`
--
ALTER TABLE `knowledgebases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_logs`
--
ALTER TABLE `payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popup_builders`
--
ALTER TABLE `popup_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_plans`
--
ALTER TABLE `price_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_plan_categories`
--
ALTER TABLE `price_plan_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_coupons`
--
ALTER TABLE `product_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_shippings`
--
ALTER TABLE `product_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works_categories`
--
ALTER TABLE `works_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `counterups`
--
ALTER TABLE `counterups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `donation_logs`
--
ALTER TABLE `donation_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `event_attendances`
--
ALTER TABLE `event_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `event_payment_logs`
--
ALTER TABLE `event_payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `image_gallery_categories`
--
ALTER TABLE `image_gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `key_features`
--
ALTER TABLE `key_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `knowledgebases`
--
ALTER TABLE `knowledgebases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `knowledgebase_topics`
--
ALTER TABLE `knowledgebase_topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_logs`
--
ALTER TABLE `payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `popup_builders`
--
ALTER TABLE `popup_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `price_plans`
--
ALTER TABLE `price_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `price_plan_categories`
--
ALTER TABLE `price_plan_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_coupons`
--
ALTER TABLE `product_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=411;

--
-- AUTO_INCREMENT for table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_shippings`
--
ALTER TABLE `product_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1207;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `works_categories`
--
ALTER TABLE `works_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
