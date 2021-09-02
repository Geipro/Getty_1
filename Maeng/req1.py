import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt



# 데이터 불러오기
train_data = np.load(".//datasets//linear_train.npy")
test_x = np.load(".//datasets//linear_test_x.npy")

class LinearModel(tf.keras.Model):
	def __init__(self, num_units):
		super(LinearModel, self).__init__()
		self.units = num_units
		self.model = tf.keras.layers.Dense(units=self.units) 

	def call(self,x):
		y = self.model(x)
		return y
x_data = np.expand_dims(train_data[:,0], axis=1)
y_data = train_data[:,1]

# model = LinearModel(num_units=1)


# model.compile(optimizer=tf.keras.optimizers.SGD(learning_rate=0.001),
# 			  loss=tf.keras.losses.MSE,
# 			  metrics=[tf.keras.metrics.MeanSquaredError()])

plt.scatter(x_data,y_data,s=5,label="train data")
plt.legend()
plt.show()

# model.summary()