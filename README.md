
code explain : __https://anselch.github.io/2023/04/07/membersys/__
```
# 建立img
docker build -t membersys_flask .
# 啟動
docker run -p 5000:5000 --name membersys membersys_flask
```