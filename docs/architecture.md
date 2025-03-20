# 🏗️ Arquitectura del Sistema de Protección contra Ransomware

## 📌 Visión General
Este sistema protege los archivos críticos contra ataques de ransomware utilizando un enfoque basado en:
1. **Monitoreo en tiempo real** para detectar cambios sospechosos en archivos.
2. **Modelo de Machine Learning (AI/ML)** para identificar patrones de ransomware.
3. **Mecanismo de backup automático** para mantener copias seguras.
4. **Integración con SIEM (Splunk/Elastic)** para generar alertas y responder rápidamente.

## 🔹 Componentes Principales
### 🛠 **1. Módulo de Monitoreo en Tiempo Real**
- Analiza la actividad en el sistema de archivos.
- Detecta extensiones y nombres de archivos sospechosos (ejemplo: `.locked`, `.encrypted`).
- Genera alertas cuando se detecta actividad inusual.

### 🧠 **2. Modelo de Machine Learning**
- Se entrena con datos de comportamiento de ransomware.
- Clasifica archivos sospechosos en **seguros o peligrosos**.
- Se actualiza periódicamente con nuevos datos.

### 💾 **3. Backup y Recuperación Automática**
- Realiza backups en intervalos regulares.
- Restaura archivos en caso de ataque.
- Los backups se almacenan en un directorio seguro (`/backup`).

### 📡 **4. Integración con SIEM**
- Envia alertas en tiempo real a Splunk/Elastic.
- Permite correlacionar eventos con reglas de seguridad.
- Facilita respuestas automáticas como aislamiento de equipos.

## 🔄 **Flujo de Trabajo**
1. Se detecta un cambio sospechoso en archivos.
2. El modelo AI/ML evalúa si se trata de un ataque.
3. Si se confirma, se genera una alerta en el SIEM.
4. Se inicia automáticamente la recuperación desde el backup.

## 🏗 **Diagrama de Arquitectura**
```mermaid
graph TD;
    A[Monitoreo de Archivos] -->|Detección de actividad sospechosa| B(Modelo AI/ML);
    B -->|Clasificación: Ransomware o Seguro| C[SIEM - Alertas];
    C -->|Si es Ransomware| D[Backup Automático];
    D -->|Restauración Automática| E[Archivos Recuperados];
