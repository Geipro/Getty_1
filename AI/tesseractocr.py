# -*- coding: utf-8 -*-
"""TesseractOCR.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1Dzc6bS57Q1EEtSmrgwOTZEruOEWM1nXe
"""

# !sudo apt install tesseract-ocr
# !sudo apt install tesseract-ocr-script-hang tesseract-ocr-script-hang-vert
# !pip install pytesseract

import pytesseract
import cv2
import os
from PIL import Image
from google.colab.patches import cv2_imshow

cnt = 0
for i in os.listdir('url'):

    path = './test/' + i
    print(path)
    image = cv2.imread(path)

    x, y = 250, 345
    w, h = 325, 60
    iii = image[y:y+h, x:x+w]

    res = pytesseract.image_to_string(iii, lang = 'Hangul')
    print(res)
    cv2_imshow(iii)

    # test
    # if cnt == 2:
    #     break
    # else:
    #     cnt += 1

cnt = 0
for i in os.listdir('./test/'):

    path = './test/' + i
    print(path)
    image = cv2.imread(path)
    # cv2_imshow(image)

    # Convert type
    pil_img = Image.fromarray(image)

    # GrayScale Conversion
    # img_gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
    # img_gray = cv2.cvtColor(pil_img, cv2.COLOR_BGR2GRAY)

    x, y = 250, 345
    w, h = 325, 60
    iii = image[y:y+h, x:x+w]
    cv2_imshow(iii)
    # iii = img_gray[y:y+h, x:x+w]

    # os read file
    filename = "{}.png".format(os.getpid())
    cv2.imwrite(filename, iii)
    # ttt = cv2.cvtColor(Image.open(filename), cv2.COLOR_BGR2RGB)
    # cv2_imshow(ttt)

    print(filename)

    # pytesseract : image to string
    text = pytesseract.image_to_string(Image.open(filename), lang = 'Hangul')
    os.remove(filename)

    # result
    print(text)
    # cv2_imshow(img_gray)
    cv2_imshow(iii)

    # test
    if cnt == 2:
        break
    else:
        cnt += 1