SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `memestickers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--

CREATE TABLE `admins` (
  `code` int NOT NULL,
  `koduser` int NOT NULL,
  `privelleges` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `stickers`
--

CREATE TABLE `stickers` (
  `id` int NOT NULL,
  `file_id` varchar(500) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `tags` text NOT NULL,
  `s4et` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `stickers`
--

INSERT INTO `stickers` (`id`, `file_id`, `title`, `description`, `tags`, `s4et`) VALUES
(1, 'BAACAgIAAxkBAAMnZ6SilRzD0BRKrqDbHlzR13IWn38AAgt3AAJM4ilJB9EZuHrFmeg2BA', 'Я щас сяду за руль', 'Наталья Морская пехота', 'наталья морская пехота нмп ящас сяду за руль натальяморскаяпехота сяду ноталья марская пихота', 4),
(2, 'BAACAgIAAxkBAAMrZ6SjZ-uCPa0ZwGVQkmS_avuev7AAAhd3AAJM4ilJessZzDWIGBk2BA', 'Простите, у вас не будет одного рубля на дорогу?', 'Наталья Морская пехота', 'наталья морская пехота нмп простите извините у вас не будет рубля на дорогу натальяморскаяпехота ноталья марская пихота', 11),
(3, 'BAACAgIAAxkBAAMRZ6J6OKowcqIrb55kXv8NpEDnB3UAAktyAAIDUhBJlWK0TumIp482BA', 'Шо значит 60 гривень? ИДИ НАХУЙ', 'Optimus Gang', 'ба дай 60 гривень шестьдесят шисят шесят гривень иди нахуй пошел нахуй дай денег катись нахуй пидорас пидор чмо хуесос уебок тварь оптимус генг optimus gang', 12),
(4, 'BAACAgIAAxkBAAM_Z6SoENQjVWjZulLe_2lZs4vj5HAAAmV3AAJM4ilJCFzJMvzn7RU2BA', 'Я сказала стартуем!', 'Наталья Морская пехота', 'вдох выдох упал отжался блятья щас начну стрелять наталья морская пехота натальяморскаяпехота натальяморская пехота натальяпехота упалотжался блятьщасначну стрелять блятьящасначнустрелять вдохвыдох выдохвдох нмп НМП', 6),
(5, 'BAACAgIAAxkBAANFZ6SpKsc68CQiyownQjgcasP112sAAox3AAJM4ilJUzpEkmmNfIY2BA', 'Да ты чё БЛЯЯЯЯЯ', 'Агрессивная шкила с майнкрафта', 'да ты чё БЛЯЯЯЯ че БЛЯЯЯЯЯЯЯЯЯ датыче бЛЯЯЯЯ ДАТЫЧЕ ой мама пршила пришла оймамапришла ', 5),
(6, 'BAACAgIAAxkBAANJZ6Sty1H2e2RmbR0MUGWbSOybggMAAgl4AAJM4ilJ9ZFSBOmhu6I2BA', 'А пахне як, вкусно', 'Пожарiв окорочок', 'а пахне як пожарив окорочок пожаривокорочк апахнеяк а пахнет как вкусно аппетитно', 9),
(7, 'BAACAgIAAxkBAANNZ6SwaSPLXsv2L5uWqt_9UsV9Uq0AAkJ4AAJM4ilJDbp67R161282BA', 'Я ломал стекло', '6a6ka_B_HaUkoBckoU_KoBTe', 'я ломал стекло не хуйня хуета говно бездарь говноебаное', 7),
(8, 'BAACAgIAAxkBAANTZ6SxdZe1ttLWXxD_sYcSVQABXhFxAAJheAACTOIpSR2KipTDxnTINgQ', 'Не ори блять', '6a6ka_B_HaUkoBckoU_KoBTe', 'не ори блять не шуми заткнись заткни ебало ебалоофф офф оффнись я ломал стекло', 13),
(9, 'BAACAgIAAxkBAANVZ6SyRRq1zKyz2zsCr-obmu836fwAAm54AAJM4ilJRvWHJ47nMDM2BA', 'Ой блять', '6a6ka_B_HaUkoBckoU_KoBTe', 'ой бля ойблять ой упс бляхамуха бляха-муха бл пиздец ойёй ёй ух вау ей да ну нахуй я ломал стекло', 11),
(10, 'BAACAgIAAxkBAANdZ6SzgurezDiaaQLi4qx5Ij-oXA0AAoF4AAJM4ilJwzzHCcAuBiA2BA', 'Давай по новой Миша', 'Миша ведущий', 'хуета давай по новой поновому говно поуебански уебище уебански как так то давай по новой миша все всё хуйня', 2),
(11, 'BAACAgIAAxkBAANfZ6S0r_ZT-eZMSuAg8kS_sTGiQNEAAr9nAAJsXiBJZShxLunYeBE2BA', 'Минут пять десять утра', 'Женщина-часы', 'время сейчасвремя скольковремя сколько время время? который час? который час час минута секунда милисекунда ч м с мс', 3),
(12, 'BAACAgIAAxkBAANoZ6URUC_kDm6jbArm_QQj2X90LqwAApVoAAJsXihJYEUKqN3oDHk2BA', 'Титры', 'Хз чё за мультфильм/фильм', 'конец опа емае ёмаё вотисказкеконец бляхамуха пиздец end theend the end', 1),
(13, 'BAACAgIAAxkBAANrZ6URYLN_f8VNz2tqfTKVFjHqSM8AApZoAAJsXihJK11Ycj-lJrI2BA', 'Несколько мгновений спустя', 'Спанч-Боб', 'спустявремя спустя время a few moments later спанчбоб спанч-боб спанч', 1),
(14, 'BAACAgIAAxkBAANuZ6URbZ4KdRPKwI1kSm3S6Xy9rzUAApdoAAJsXihJxNCk07ICpLU2BA', 'Вот это поворот', 'Робоцып', 'вот это поворот нихуя ничего себе вау ебать данунахуй да ну нахуй вот это поворот', 1),
(15, 'BAACAgIAAxkBAANwZ6URdLgn52nc126LdnWsAcvs_7QAAploAAJsXihJPuul4q0Zyzs2BA', 'ААААААААААААААААААААААААААААА', 'Бобр курва', 'АААААААААААА крик scream кричу кричим', 3),
(16, 'BAACAgIAAxkBAANzZ6URg1hlM7hGt7b1SZ02PKvyNi0AAppoAAJsXihJC54EtlkUhTo2BA', 'Ну нахер!', 'Очень страшное кино', 'в пизду да ну нахуй нунахуй впизду дапохуй опизденение вау ничегосебе ничего себе', 0),
(17, 'BAACAgIAAxkBAAN1Z6URk2MyJmAm2EBBLMtpjz4Q_JsAAptoAAJsXihJnbZUyKFV07I2BA', 'Чего блять?', 'Девка со смешного видео!!! :DDDD', 'чего бля? бля чево бля че нахуй каво всм всмысле в смысле ', 1),
(18, 'BAACAgIAAxkBAAN3Z6URnDG89Kh5iHcQIy-K15PjjD0AAp1oAAJsXihJhRYyinSymBA2BA', 'СТРАШНО ОЧЕНЬ СТРАШНО', 'Бабуля боится', 'страшно очень страшно мы не знаем что это такое страшно вырубай страшновыбрубай страх боюсь боимся блястрашно', 2),
(19, 'BAACAgIAAxkBAAN5Z6URphh7-C0Xy71IByL5BtYLdxUAAp5oAAJsXihJOR0D8MHsEdc2BA', 'Нихуя не понял но очень интересно', 'Мужик с ковром', 'непон янепончик непонял понял понял принял обработал янепончик япончик пончик', 0),
(20, 'BAACAgIAAxkBAAN7Z6URtUWCCJulBX9TrB-QzPIORGUAAqBoAAJsXihJMdP6hnQsyTw2BA', 'ЧЕТКО МОГЕТЕ ПАЦАНЫ ВАЩЕ КРАСАВЦЫ', 'Гопник-могёт', 'красава могёшь можешь красава ЧЕТКО МОГЕТЕ ПАЦАНЫ ВАЩЕ КРАСАВЦЫ вау нихуя пиздец', 2),
(21, 'BAACAgIAAxkBAAN9Z6URwAIamBfg_0Mtw884x-0youwAAqFoAAJsXihJM4f7Wrxgm7A2BA', 'Я просто похлопаю', 'А.А.А.А.А.А', 'смешно я просто похлопаю хахахха АХАХХАХАХА хахахаххаах ХАХАХАХАХХА ахахахахаххаха смех смеюсь не могу ржу ржем ржём', 2),
(22, 'BAACAgIAAxkBAAOAZ6URyRmEBEZ7tR-MzFtuRLHOshwAAqJoAAJsXihJ6unBPqE0Ilg2BA', 'СКОЛЬКА? ДА ТЫ ШО АХУЕЛ БЛЯ', 'Зажала 40 грiвень', 'дорого очень дорого мало денег недостаточно средств денег нет но вы держитесь недам денег не дам денег не при бабле', 1),
(23, 'BAACAgIAAxkBAAOGZ6Uadxe3Z9RIuSLg1Sr_fzs7nzEAAsqAAAJM4ilJDLZD8eCv3nM2BA', 'Нэ росстраийвуса', 'Свинья', 'не печалься грущу не грусти всё норм не переживай нэ расстраивайся\r\n', 3),
(24, 'BAACAgIAAxkBAAODZ6UR00_pw54kK_DvhIB9wcuKIPkAAqNoAAJsXihJcVZQiHjRYSc2BA', 'Ты втираешь мне какую то дичь', 'Два мужика', 'не понял каво че чё чего ты втираешь мне какую то дичь бля похуй пиздец', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `kod` int NOT NULL,
  `id_user` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD KEY `koduser` (`koduser`);

--
-- Индексы таблицы `stickers`
--
ALTER TABLE `stickers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`kod`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `stickers`
--
ALTER TABLE `stickers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `kod` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`koduser`) REFERENCES `users` (`kod`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
