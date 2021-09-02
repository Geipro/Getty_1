import argparse

# Req. 2-1	Config.py 파일 생성

# 캡션 데이터가 있는 파일 경로 (예시)
parser = argparse.ArgumentParser()
# parser.add_argument('--caption_file_path', type=str, default='.//datasets//captions.csv')
parser.add_argument('--caption_file_path', type=str, default='.\\datasets\\captions.csv')

args = parser.parse_args()

# args.train_data = 'path/to/utils/utils.py'