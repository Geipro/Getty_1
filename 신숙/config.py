import argparse

# Req. 2-1	Config.py 파일 생성

parser = argparse.ArgumentParser(description='Image Captioning.')

# 캡션 데이터가 있는 파일 경로 (예시)
parser.add_argument('--caption_file_path', type=str, default='.\\datasets\\captions.csv')

parser.add_argument('--learning_rate', type=float, default=0.001, help='Learning rate for SGD')
parser.add_argument('--momentum', type=float, default=0.9, help='Momentum for SGD')

args = parser.parse_args()
print(args.accumulate(args.integers))