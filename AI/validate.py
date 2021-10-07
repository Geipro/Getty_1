from check import validation as vd
import glob
import os.path
from PIL import Image

def check(url):
    file = url
    
    title, ext = os.path.splitext(file)
    name = title.split('//')[-1]
    img = Image.open(file)
    img_resize = img.resize((256, 256))
    img_resize.save(f"./forTest/{name}.png")

    print(f'input is {name}')
    answer = vd(f'.//forTest//{name}.png')

check('.//datas//1//건강보험료납부확인서12.png')