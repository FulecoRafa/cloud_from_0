FROM golang

WORKDIR /app

# Copy all go files
COPY . .

# Install dependencies
RUN go get -d -v ./...

# Build the binary
RUN go build -o dummy_data

# Run the binary
CMD ["./dummy_data"]
