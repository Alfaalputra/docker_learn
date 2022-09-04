FROM python:3.8-slim-buster
# FROM fastapi
RUN git clone https://github.com/Alfaalputra/docker_learn; \
cd docker_learn; \
pip install -r requirements.txt; \
uvicorn main:app --host