import numpy as np
import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
import joblib

# Cargar datos
data = pd.read_csv("dataset.csv")
X = data.drop(columns=["label"])
y = data["label"]

# Dividir datos
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Entrenar modelo
model = RandomForestClassifier(n_estimators=100, random_state=42)
model.fit(X_train, y_train)

# Guardar modelo
joblib.dump(model, "ransomware_model.pkl")
print("✅ Modelo de detección de ransomware entrenado y guardado.")
