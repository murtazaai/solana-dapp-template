#https://github.com/anza-xyz/agave/releases
#https://solana.com/docs/intro/installation

PROJECT_DIRECTORY=~/Workspace/solana/solana-dapp-template/

#Install the Solana CLI
sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"

#Close and reopen your terminal to apply the PATH changes or run the following in your existing shell:
export PATH="/Users/test/.local/share/solana/install/active_release/bin:$PATH"

solana --version

# Agave is the validator client from Anza, formerly known as Solana Labs validator client.
agave-install update

#Install Anchor CLI
cargo install --git https://github.com/coral-xyz/anchor avm --force

avm --version

avm install latest
avm use latest

anchor --version

# shellcheck disable=SC2164
cd $PROJECT_DIRECTORY/anchor

cargo build-sbf --force-tools-install

rm -rf ~/.cache/solana/*

#Solana CLI Basics
solana config get

#You can update the Solana CLI cluster using the following commands:
#solana config set --url mainnet-beta
#solana config set --url devnet
#solana config set --url localhost
#solana config set --url testnet
#or
#solana config set -um    # For mainnet-beta
solana config set -ud    # For devnet
#solana config set -ul    # For localhost
#solana config set -ut    # For testnet

#Create Wallet
solana-keygen new

solana address > SOLANA_WALLET_PUBKEY

# shellcheck disable=SC2121
set SOLANA_WALLET_PUBKEY=SOLANA_WALLET_PUBKEY

#solana config set -ud

solana airdrop 9999

solana confirm $TRANSACTION_ID

solana balance

#Run Local Validator

#solana config set -ul

cd ~/Workspace/
mkdir validator
cd validator
solana-test-validator

solana-test-validator

