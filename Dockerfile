FROM node:slim 

RUN mkdir -p localrepo
WORKDIR localrepo
COPY . .

RUN find . -type f \( -name "*.ts" -name "*.js.map" \) -exec rm -r "{}" \;
# Exposing the port
EXPOSE 3000
# The docker entry point command
CMD ["node", "index.js"]




