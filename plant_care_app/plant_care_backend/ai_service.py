import tensorflow as tf
from flask import Flask, request, jsonify
from PIL import Image
import numpy as np

app = Flask(__name__)

model = tf.keras.models.load_model('path_to_your_model.h5')

def preprocess_image(image):
    image = image.resize((224, 224))
    image = np.array(image) / 255.0
    image = np.expand_dims(image, axis=0)
    return image

@app.route('/predict', methods=['POST'])
def predict():
    file = request.files['file']
    image = Image.open(file.stream)
    processed_image = preprocess_image(image)
    prediction = model.predict(processed_image)
    return jsonify({'prediction': prediction.tolist()})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)