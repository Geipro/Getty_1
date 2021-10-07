import pytesseract
import cv2
import os
from PIL import Image
from validate import check
from check import validation as vd
import glob
import os.path
from PIL import Image
from tesseractocr import getData

result = check('.//data//근로소득원천징수영수증1.png')