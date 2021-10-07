from check import validation as vd
import glob
import os.path
from PIL import Image
from tesseractocr import getData

def check(url):
    file = url
    
    title, ext = os.path.splitext(file)
    name = title.split('//')[-1]
    img = Image.open(file)
    img_resize = img.resize((256, 256))
    img_resize.save(f"./forTest/{name}.png")

    # print(f'input is {name}')
    answer = vd(f'.//forTest//{name}.png')
    # print('예측결과', answer)
    li = getData(url, answer)
    print('')
    print('')
    print('')


    return(li)
check('.//data//하이하이.png')