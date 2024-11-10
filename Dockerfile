FROM python:3.9-slim

WORKDIR /src

COPY . .

# Install the required packages
RUN python -m pip install fastapi pydantic pillow joblib requests geocoder google-generativeai uvicorn datasets scikit-learn

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
