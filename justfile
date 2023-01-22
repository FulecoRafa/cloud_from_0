default: run_rust

# Start the rust server on local
run_rust:
  @just webservers/rust/default

# Generate a .env file on the root with important variables
[macos]
env:
  echo "PASSWORD_HASH=$(tr)" > .env

dev script:
  @just devtools/ {{script}}
