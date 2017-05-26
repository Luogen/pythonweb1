import orm
import asyncio
import logging
from models import User, Blog, Comment


async def test():
    await orm.create_pool(loop, user='root', password='qweasd', db='webapp')

    u = User(name='test3', email='test3@example.com', password='1234567890', image='about:blank')

    await u.save()


loop = asyncio.get_event_loop()
loop.run_until_complete(test())
loop.close()










