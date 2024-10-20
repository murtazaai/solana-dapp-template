# Running this command will create a new keypair in the anchor/target/deploy directory and save the address to the Anchor config file and update the declare_id! macro in the ./src/lib.rs file of the program.
# You will manually need to update the constant in anchor/lib/counter-exports.ts to match the new program id.
yarn anchor keys sync

# Build the program:
yarn anchor-build

# Run solana-test-validator
./solana-test-validator-start.sh

# Run the tests
yarn anchor-test

# Start the the program deployed:
yarn anchor-localnet

# Deploy to Devnet
yarn anchor deploy --provider.cluster devnet

# web
# This is a React app that uses the Anchor generated client to interact with the Solana program.
#
# Commands

yarn install

# Build
yarn build

# Start the web app
yarn dev


