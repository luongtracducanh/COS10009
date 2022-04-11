from keras.models import load_model
from PIL import Image, ImageOps
import numpy as np
import cv2
import os 
import playsound
import wikipedia
from gtts import gTTS
from webdriver_manager.chrome import ChromeDriverManager

wikipedia.set_lang('vi')
language = 'vi'
path = ChromeDriverManager().install()

def speak(text):
	tts = gTTS(text = text, lang = language, slow = False)
	tts.save("sound.mp3")
	playsound.playsound("sound.mp3", True)
	os.remove("sound.mp3")

cam = cv2.VideoCapture(0)

def capture_image():
	ret, frame = cam.read()
	cv2.imwrite('output.jpg', frame)

def face_detection(): 
	# Load the model
	model = load_model('keras_model.h5')
	# Create the array of the right shape to feed into the keras model
	# The 'length' or number of images you can put into the array is
	# determined by the first position in the shape tuple, in this case 1.
	data = np.ndarray(shape=(1, 224, 224, 3), dtype=np.float32)
	image = Image.open('output.jpg')
	# resize the image to a 224x224 with the same strategy as in TM2:
	# resizing the image to be at least 224x224 and then cropping from the center
	size = (224, 224)
	image = ImageOps.fit(image, size, Image.ANTIALIAS)
	# turn the image into a numpy array
	image_array = np.asarray(image)
	# display the resized image
	image.show()
	# Normalize the image
	normalized_image_array = (image_array.astype(np.float32) / 127.0) - 1
	# Load the image into the array
	data[0] = normalized_image_array
	# run the inference
	prediction = model.predict(data)
	print(prediction)

	# print the results
	name = ["Duc Anh", "Ca Chua"]
	index = -1
	max_value = -1

	for i in range(0, len(prediction[0])):
		if max_value < prediction[0][i]:
			max_value = prediction[0][i]
			index = i
	print("The person is: " + name[index])
	print("The probability is: " + str(max_value))
	speak("Xin chao " + name[index])

while True:
	capture_image()
	face_detection()