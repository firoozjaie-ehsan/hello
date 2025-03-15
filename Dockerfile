# Pull base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set work directory
WORKDIR /code

# Install dependencies
# کپی کردن فایل‌های پروژه به دایرکتوری کاری # COPY  /code/
COPY requirements.txt /code/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY . .
#or  COPY . /code/

EXPOSE 8000

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]