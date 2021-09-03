import os
import csv
import pandas as pd
import numpy as np


# Req. 3-1	이미지 경로 및 캡션 불러오기
def get_path_caption():
    csvFile = pd.read_csv('../datasets/captions.csv', sep='|', encoding='cp949')

    print(type(csvFile.image_name))
    return csvFile.image_name, csvFile.comment_number, csvFile.comment


# Req. 3-2	전체 데이터셋을 분리해 저장하기
def dataset_split_save():
    pass


# Req. 3-3	저장된 데이터셋 불러오기
def get_data_file():
    csvFile = pd.read_csv('../datasets/captions.csv', sep='|', encoding='cp949')

    print(type(csvFile.image_name))
    return csvFile.image_name, csvFile.comment_number, csvFile.comment


# Req. 3-4	데이터 샘플링
def sampling_data():
    pass

if __name__ == '__main__':
    print('hihi')
    get_path_caption()