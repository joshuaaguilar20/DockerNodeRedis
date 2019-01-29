# use an existing Image as base Alpine means stripped down version
    FROM node:alpine
# download and install dep copies other files 
    WORKDIR /usr/app
#puts file in named dir to keep it from installing in root
    COPY ./package.json ./
#allows so we do not rebuild JSON for SRC code changes* 
     RUN npm install
     COPY ./ ./
   
    
#the the image what to do

CMD ["npm", "start"]