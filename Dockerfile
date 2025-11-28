# -------- Stage 1: Build the frontend --------
FROM node:20-alpine AS build

# Create app directory inside the image
WORKDIR /frontend

# Copy only package files first (better cache)
COPY Frontend/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the source code
COPY Frontend ./

# Build the production bundle (assumes "build" script exists)
RUN npm run build

