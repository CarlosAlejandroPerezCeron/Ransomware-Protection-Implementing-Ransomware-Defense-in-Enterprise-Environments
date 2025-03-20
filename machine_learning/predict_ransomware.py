import joblib
import numpy as np

# Cargar modelo entrenado
model = joblib.load("ransomware_model.pkl")

def predict(file_features):
    prediction = model.predict([file_features])
    return "⚠️ Ransomware detectado!" if prediction[0] == 1 else "✅ Archivo seguro."

# Prueba con datos simulados
test_features = np.random.rand(10)
print(predict(test_features))
