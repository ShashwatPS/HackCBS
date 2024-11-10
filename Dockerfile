FROM python:3.7-slim

WORKDIR /src

COPY . .

# Install the required packages
RUN python -m pip install fastapi pydantic pillow joblib requests geocoder google-generativeai uvicorn datasets scikit-learn

EXPOSE 3000

CMD ["uvicorn", "main:app", "--reload"]
