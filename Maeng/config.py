import argparse

# Req. 2-1	Config.py 파일 생성

# 캡션 데이터가 있는 파일 경로 (예시)
parser = argparse.ArgumentParser(description='save Satting')
parser.add_argument('--epoch',          type=int,   default=150)
parser.add_argument('--batch_size',     type=int,   default=128)
parser.add_argument('--lr',     type=float, default=0.1)

args = parser.parse_args()
print(args.epoch, args.batch_size, args.lr)