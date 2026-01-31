#!/bin/sh
# ElixirLS setup script to use Homebrew elixir instead of asdf
# This ensures elixir-ls uses the system elixir installation

# Add homebrew to PATH if not already there
if [ -d "/opt/homebrew/bin" ]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

# Explicitly set the stdlib path for Homebrew elixir
export ELX_STDLIB_PATH="/opt/homebrew/Cellar/elixir/1.19.5"

echo "Using Homebrew elixir from /opt/homebrew/bin"
