```
# 建立img
docker build -t membersys_flask .
# 啟動
docker run -p 5000:5000 --name membersys membersys_flask
```