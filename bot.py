
#
# может быть буду обновлять этот shit
# xD
#


from aiogram import Bot, Dispatcher, types, F
from aiogram.types import Message
from aiogram.filters.command import CommandStart
from aiogram.client.default import DefaultBotProperties
from aiogram.enums.parse_mode import ParseMode
import asyncio, aiomysql
import logging # <- логгирование абсолютно всей инфы что происходит в боте. если этого не хотите просто сотрите эту строку и следующую тоже
logging.basicConfig(level=logging.INFO) # <- по желанию

TOKEN = 'вставьте сюда токен из BotFather'

DB_CONFIG = {
    'host': 'localhost',
    'user': 'имя пользователя (обычно это root)',
    'password': 'пароль от профиля (обычно это root)',
    'db': 'название загруженного вами бд в MySQL (пользуюсь Open Server Panel)',
    'minsize': 5, # int 
    'maxsize': 48, # int
    'echo': True, # bool
    'autocommit': True # bool
}

pool = None

bot = Bot(token=TOKEN, default=DefaultBotProperties(parse_mode=ParseMode.HTML))

dp = Dispatcher()

@dp.chosen_inline_result()
async def jalkod(result: types.ChosenInlineResult):
    async with pool.acquire() as conn:
        async with conn.cursor() as cursor:
            await cursor.execute(
                "UPDATE stickers SET s4et = s4et + 1 WHERE id = %s",
                (result.result_id,)
            )
            await conn.commit()                 

@dp.inline_query()
async def inline_result(query: types.InlineQuery):
    search_query = query.query
    results = []
    if search_query.strip() != "":
        async with pool.acquire() as con:
            async with con.cursor() as cursor:
                await cursor.execute(f'SELECT * FROM `stickers` WHERE tags like "%{search_query.strip()}%"')
                result = await cursor.fetchall()
        if result:
            for element in result:
                results.append(types.InlineQueryResultCachedVideo(
                    id=f'{element[0]}',
                    video_file_id=f'{element[1]}',
                    title=f'{element[2]}',
                    description=f'{element[3]}'  
                ))
        else:
            results.append(types.InlineQueryResultArticle(
                id='error',
                title="Ничего не найдено =(",
                input_message_content=types.InputTextMessageContent(message_text="Бля и нахуя ты это отправил сообщение без мема 🤔"),
                description="Возможно когда нибудь мы добавим этот мем...")
            )
    else:
        async with pool.acquire() as con:
            async with con.cursor() as cursor:
                await cursor.execute(f'SELECT * FROM `stickers` order by s4et desc limit 10')
                result = await cursor.fetchall()
        for element in result:
            results.append(types.InlineQueryResultCachedVideo(
                id=f'{element[0]}',
                video_file_id=f'{element[1]}',
                title=f'🔥 {element[2]}',
                description=f'{element[3]}'  
            ))
    await query.answer(results=results, cache_time=1)

@dp.message(CommandStart())
async def start_message(message: Message):
    id = message.chat.id
    bot_info = await bot.get_me()
    async with pool.acquire() as con:
        async with con.cursor() as cursor:
            await cursor.execute(f'select * from users where id_user = {id}')
            result = await cursor.fetchone()
            if not result:
                await cursor.execute(f"INSERT INTO `users` (`kod`, `id_user`) VALUES (NULL, '{id}')")
                await con.commit()
    await message.answer(f"👋 Привет, <b>{message.from_user.first_name}</b>!\nПросто отправь в любой чат @{bot_info.username} и свой запрос для отправки мема!\n<blockquote>Если хочешь добавить свой мем то просто отправь видео с мемом и оно отправится на модерацию!\n</blockquote>")

@dp.message(F.video)
async def video_capture(message: Message):
    file_id = message.video.file_id
    thumb = await bot.get_file(message.video.thumbnail.file_id)
    thumb_url = thumb.file_path
    await message.answer(f"=) Вышли админу это значение: \n<code>{file_id}</code>")





async def main():
    global pool
    pool = await aiomysql.create_pool(
        **DB_CONFIG
    )
    await dp.start_polling(bot)

asyncio.run(main())