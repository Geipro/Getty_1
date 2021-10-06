import glob
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import tensorflow as tf

class_names = ['건강보험료납부확인서', '근로소득원천징수', '자동차등록증',
               '자동차등록원부', '자격득실확인서', '자동차매매계약서', '소득금액증명서']

def validation(url):
    data = np.array([plt.imread(url, 0)])
    prediction = model.predict_step(data)
    score = tf.nn.softmax(prediction[0])
    print('The Answer is ', class_names[np.argmax(score)])

if __name__ == '__main__':
    paths = glob.glob('.//datas/*/*.png')
    paths = np.random.permutation(paths)

    독립 = np.array([plt.imread(paths[i], 0) for i in range(len(paths))])
    종속 = np.array([paths[i].split('/')[-2] for i in range(len(paths))])

    종속 = pd.get_dummies(종속)


    # 모델을 완성합니다.
    X = tf.keras.layers.Input(shape=[256, 256, 3])

    H = tf.keras.layers.Conv2D(6, kernel_size=5, padding='same', activation='swish')(X)
    H = tf.keras.layers.MaxPool2D()(H)

    H = tf.keras.layers.Conv2D(16, kernel_size=5, activation='swish')(H)
    H = tf.keras.layers.MaxPool2D()(H)

    H = tf.keras.layers.Flatten()(H)
    H = tf.keras.layers.Dense(120, activation='swish')(H)
    H = tf.keras.layers.Dense(84, activation='swish')(H)
    Y = tf.keras.layers.Dense(7, activation='softmax')(H)

    model = tf.keras.models.Model(X, Y)
    model.compile(loss='categorical_crossentropy', metrics='accuracy')
    model.fit(독립, 종속, epochs=3)
