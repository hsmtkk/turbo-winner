FROM python:3.11
WORKDIR /opt
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY main.py .
CMD streamlit run main.py --server.address 0.0.0.0 --server.port 80
EXPOSE 80
