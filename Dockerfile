FROM python:3.13.4-alpine3.22

#Define diretório de trabalho dentro do container
WORKDIR /app

#Copia o arquivo de requisitos e instala depedências
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#Expõe porta da aplicação 
EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]

#Palavras-chave : marvel