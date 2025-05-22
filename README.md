# 🤖 Flutter Chatbot with Flask LLM Backend

This project is a full-stack AI chatbot app that integrates a locally hosted **Pretrained Large Language Model (LLM)** using **Flask** with a **Flutter mobile app** frontend.

---

## 📁 Project Structure

```
.
├── flask_api/                  # Flask backend with Hugging Face Transformers
│   ├── app.py                  # Flask server with LLM inference
│   ├── setup_backend.sh        # Shell setup script for Linux/macOS
│   └── setup_backend.bat       # Batch setup script for Windows
│
└── flutter_chatbot/            # Flutter mobile app
    ├── lib/
    │   └── main.dart           # Chatbot UI and API integration
    └── pubspec.yaml            # Flutter dependencies
```

---

## 🚀 Features

- 🧠 Locally hosted LLM inference (e.g., Mistral, LLaMA)
- ⚙️ REST API built with Flask
- 💬 Chatbot interface in Flutter
- 🔌 Offline usage — no OpenAI/3rd-party APIs
- 🧬 Custom fine-tuning support (e.g., medical datasets)

---

## 🧠 Backend Setup (Flask API)

### 📌 Prerequisites

- Python 3.9+
- `pip`

### 📦 Installation

```bash
cd flask_api

# Create and activate virtual environment
python -m venv venv

# Windows
venv\Scripts\activate

# macOS/Linux
source venv/bin/activate

# Upgrade pip and install packages
python -m pip install --upgrade pip
pip install torch transformers flask datasets accelerate
```

### ▶️ Run the Flask Server

```bash
python app.py
```

> The server will start at: `http://0.0.0.0:5000/generate`

---

## 📱 Frontend Setup (Flutter)

### 📌 Prerequisites

- Flutter SDK: [Install Flutter](https://docs.flutter.dev/get-started/install)
- Android Studio or VS Code with Flutter and Dart support

### 🧰 Setup Steps

```bash
cd flutter_chatbot
flutter pub get
```

### ✏️ Modify API URL

Open `lib/main.dart` and find this line:

```dart
Uri.parse("http://<YOUR_LOCAL_IP>:5000/generate")
```

Replace `<YOUR_LOCAL_IP>` with your actual PC IP (e.g., `192.168.0.102`):

```dart
Uri.parse("http://192.168.0.102:5000/generate")
```

---

### ▶️ Run the Flutter App

```bash
flutter run
```

> ✅ Make sure your PC and Android device are on the **same Wi-Fi network**.

---

## 🔐 Permissions

Ensure you add internet permission in `AndroidManifest.xml` for Android:

```xml
<uses-permission android:name="android.permission.INTERNET"/>
```

Path:
```
flutter_chatbot/android/app/src/main/AndroidManifest.xml
```
