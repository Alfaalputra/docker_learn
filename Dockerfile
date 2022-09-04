FROM python:3.8-slim-buster
# FROM fastapi
# RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
RUN apt update && apt install -y git
RUN git clone https://github.com/Alfaalputra/docker_learn; \
cd docker_learn; \
pip install -r requirements.txt

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]