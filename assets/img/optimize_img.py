import json
from  optimize_images import __main__ as oi
import os

basedir = os.path.dirname(__file__)
os.chdir(basedir)
update = False
with open(os.path.join(basedir, 'optimized.json'), 'r') as optimized:
    data = json.loads(optimized.read())

for picture in os.listdir():
    print(picture)
    conditions = [
        picture[-4:] in ['.jpg', '.png', 'jpeg', '.gif'],
        picture not in data
    ]
    if all(conditions):
        update = True
        data.append(picture)
        oi.main(os.path.join(basedir, picture), max_w=1920, quality=90)
if update:
    with open(os.path.join(basedir, 'optimized.json'), 'w') as file:
        file.write(json.dumps(data))