from datetime import datetime
import os
import matplotlib.pyplot as plt
import numpy as np
import tensorflow as tf


# Req. 2-2	세팅 값 저장
def save_config(args):
	f = open('save_data.txt', 'wr')
	f.write(f'epoch = {args.epoch} | batch_size = {args.batch_size} | lr = {args.lr}')
	pass


# Req. 4-1	이미지와 캡션 시각화
def visualize_img_caption():
	pass