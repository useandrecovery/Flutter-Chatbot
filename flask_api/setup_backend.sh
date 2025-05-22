echo "Creating virtual environment..."
python3 -m venv venv
source venv/bin/activate

echo "Installing Python packages..."
pip install --upgrade pip
pip install torch transformers flask datasets accelerate

echo "Setup complete. Run your Flask API with: python app.py"
