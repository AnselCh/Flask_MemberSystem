# 使用官方 Python 3.8.10 映像作為基礎映像
FROM python:3.8.10

# 將工作目錄設置為應用程序代碼目錄
WORKDIR /app

# 將 requirements.txt 文件複製到容器中的 /app 目錄中
COPY requirements.txt /app

# 使用 pip 安裝 requirements.txt 中指定的依賴庫
RUN pip install --no-cache-dir -r requirements.txt

# copy the content of the local src directory to the working directory
COPY . .

# set the environment variable
ENV FLASK_APP=app.py

# 將 Flask 應用程序運行在容器內部的 5000 端口上
EXPOSE 5000

# 在容器啟動時運行應用程序
CMD ["flask", "run", "--host=0.0.0.0"]

# 添加作者等其他訊息
LABEL maintainer="Ansel Chen <anannannan0102@gmail.com>"
LABEL version="1.0"
LABEL description="MemberSys Use Flask"
