from AI import check as vd
import glob
import os.path
from PIL import Image
from AI import tesseractocr as ts

def check(url):
    file = url
    
    title, ext = os.path.splitext(file)
    name = title.split('//')[-1]
    img = Image.open(file)
    img_resize = img.resize((256, 256))
    img_resize.save(f".//AI//forTest//{name}.png")

    # print(f'input is {name}')
    answer = vd.validation(f'.//AI//forTest//{name}.png')
    print('예측결과', answer)
    li = dict()
    ts.getData(url, answer)
    print('')
    print('')
    print('')


    return(li)
if __name__ == '__main__': #테스팅용
    check('.//data//하이하이.png')