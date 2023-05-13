FROM python:3.9.7-buster
ENV PYTHONUNBUFFERED 1

# Weasyprint requires fonts to work properly. Copy required fonts to this directory.
RUN mkdir /root/.fonts

# Copy Django project code to this directory
RUN mkdir /app

WORKDIR /app

# Pre-install packages
COPY default-requirements.txt /app/
RUN pip install --no-cache-dir -r default-requirements.txt
