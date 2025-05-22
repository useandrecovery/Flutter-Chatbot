@echo off
echo Creating virtual environment...
python -m venv venv
call venv\Scripts\activate

echo Upgrading pip...
call venv\Scripts\python.exe -m pip install --upgrade pip

echo Installing Python packages...
pip install torch transformers flask datasets accelerate

echo Setup complete. Run your Flask API with: python app.py
pause
