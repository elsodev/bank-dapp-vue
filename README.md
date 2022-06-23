# Bank2u
### A simple demonstration of a Bank with withdrawals and deposits as a dApp with Smart Contract.
Author: [Elson Tan](https://twitter.com/elz0xn)

## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```


-----


## HardHat Environment

### Compiling your Smart Contract 
This will generate artifacts abi needed for your web app
```
npx hardhat compile
```

### Deploying to your Local Hardhat Blockchain
1. Start a Hardhat Node
    ```
    npx hardhat node
    ```

2. Open a new terminal and deploy smart contract in the `localhost` network
    ```
    npx hardhat run --network localhost scripts/deploy.js
    ```

3. Step (2) will output your contract address to be placed in `App.vue` `mounted` when initiaing the contract.
    ```
    const contract = new ethers.Contract(
            '0x5FbDB2315678afecb367f032d93F642f64180aa3', // change this when deploy new contract
            ContractAbi.abi,
            signer
        )
    ```

4. When you started a Hardhat Node you will have 10 Accounts created each with 1000 ETH, you can import to your MetaMask by adding the private keys (ensure you have added the localhost to your MetaMask network first) 
    ```
    RPC URL: http://localhost:8545 
    ChainId 31337
    ```

