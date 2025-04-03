FROM python:3.10

WORKDIR /app

# Install dependencies
RUN apt-get update && apt-get install -y libgl1-mesa-glx

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "app.py"]
