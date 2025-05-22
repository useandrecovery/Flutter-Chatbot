# 🤖 Flutter Chatbot with Flask LLM Backend

This project is a full-stack AI chatbot app that integrates a locally hosted **Pretrained Large Language Model (LLM)** using **Flask** with a **Flutter mobile app** frontend.

---

## 📁 Project Structure

.
├── flask_api/ # Flask backend with Hugging Face Transformers
│ ├── app.py
│ ├── setup_backend.sh
│ └── setup_backend.bat
└── flutter_chatbot/ # Flutter frontend (mobile app)
├── lib/
│ └── main.dart
└── pubspec.yaml

yaml
Copy
Edit

---

## 🚀 Features

- Locally hosted LLM inference (e.g., Mistral, LLaMA, etc.)
- REST API built with Flask
- Chatbot-style Flutter app with user-friendly UI
- Offline inference (no OpenAI or external calls)
- Custom fine-tuning capability with medical dataset

---

## 🧠 Backend Setup (Flask API)

### 📌 Prerequisites:
- Python 3.9+
- `pip`
- Optionally: GPU with CUDA for faster inference

### 📦 Installation

```bash
cd flask_api

# Create and activate virtual environment
python -m venv venv
# Windows
venv\Scripts\activate
# macOS/Linux
source venv/bin/activate

# Upgrade pip and install dependencies
python -m pip install --upgrade pip
pip install torch transformers flask datasets accelerate
▶️ Run the Flask Server
bash
Copy
Edit
python app.py
The server will run at: http://0.0.0.0:5000/generate

📱 Frontend Setup (Flutter)
📌 Prerequisites:
Flutter SDK: Install Flutter

Android Studio or VS Code with Flutter/Dart support

🧰 Steps
bash
Copy
Edit
cd flutter_chatbot
flutter pub get
✏️ Modify API URL
Open lib/main.dart and update this line with your PC’s local IP:

dart
Copy
Edit
Uri.parse("http://<YOUR_LOCAL_IP>:5000/generate")
Example:

dart
Copy
Edit
Uri.parse("http://192.168.0.102:5000/generate")
▶️ Run the App
bash
Copy
Edit
flutter run
Make sure both your PC and mobile device are on the same Wi-Fi network.
