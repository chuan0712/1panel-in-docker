# 使用 debian:13 作为基础镜像
FROM debian:13

# 设置时区为亚洲/上海
ENV TZ=Asia/Shanghai

# 设置工作目录为/app
WORKDIR /app

# 复制必要的文件
COPY ./entrypoint.sh .

# 设置文件权限
RUN chmod +x ./entrypoint.sh

# 设置工作目录为根目录
WORKDIR /

# 创建 Docker 套接字的卷
VOLUME /var/run/docker.sock

# 启动
ENTRYPOINT ["/app/entrypoint.sh"]
