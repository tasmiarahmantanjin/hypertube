#  Dockerfile for Matcha Backend

FROM node:12

WORKDIR /server

# copy json files inside container
COPY package*.json ./

# Install Dependencies
RUN npm install

# Copy server source code
COPY . .

# ENV PORT
ENV PORT 8000

# Expose port
EXPOSE 8000

# Run server

CMD ["npm", "run", "start"]


# How to Build
# docker build -t hypertube/server:1.0 .

# How to run
# docker run -p 8001:8000 --name hypertube_backend hypertube/server:1.0