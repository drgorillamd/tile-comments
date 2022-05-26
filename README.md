# Tiles On Chain

Inspiration from [Neoplastics](https://neolastics.com/) and (TilesDAO)[https://tiles.art/#/] with the later straight up. All worship Peri.  Reversed engineered the minified code from [tiles-api](https://github.com/TileDAO/tiles-api), the follow repository moves the entire Tile to be generated on-chain. Abstracts some bits in preparation for the Juicebox + NFT orgy-poolooza. 

## Build, Run Coverage

```bash
yarn
npx hardhat compile
yarn run coverage
```

Proof:

![Works on my machine](/docs/works-on-my-machine.png)

### Deploy to Rinkeby

If the `config.ts` settings are set, then the following script uses the `address.ts` to mint in batches and transfer to the addresses provided.

```bash
npx hardhat run scripts/deploy_mint_transfer.ts --network rinkeby
```

### Verify Contract on Etherscan

After the above deployment, a helper command is presented to verify the contract on Etherscan.

For example:

```bash
npx hardhat verify --network rinkeby 0xADDRESS "TilesDAO (on-chain)" "TilesDAO"
```
