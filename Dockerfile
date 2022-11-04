FROM nikolaik/python-nodejs:python3.10-nodejs14

WORKDIR /app
RUN apt update -y 
COPY . . 
RUN npm install
RUN pip3 install streamlit pandas numpy plotly
EXPOSE 3000 8501
RUN ["chmod", "+x", "runner.sh"]
ENTRYPOINT ["./runner.sh"]
