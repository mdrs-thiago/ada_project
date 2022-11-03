FROM node:14
RUN apt update && apt-get install python3 python3-pip -y
WORKDIR /app
COPY . .
RUN yarn install --production
RUN pip3 install streamlit pandas numpy 
EXPOSE 3000 8501
RUN ["chmod", "+x", "/scripts/runner.sh"]
ENTRYPOINT ["runner.sh"]
