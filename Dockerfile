# 使用官方的 Deno 镜像作为基础镜像
FROM denoland/deno:latest

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器中
COPY . .

# 安装依赖项（如果有的话）
RUN deno cache main.ts

# 暴露端口（与 main.ts 中监听的端口一致）
EXPOSE 7860

# 启动应用
# CMD ["deno", "run", "--allow-net", "--allow-env", "--allow-read=.env,.env.defaults", "main.ts"]
CMD ["deno", "run", "--allow-all", "main.ts"]
