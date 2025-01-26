# Fungible Token on Sui Blockchain  

This project demonstrates the creation and minting of a fungible token on the **Sui blockchain** using the **Move programming language**. The token, named **PEPE (symbol: PE)**, is implemented with 9 decimal places and includes metadata such as a custom icon hosted on IPFS.  

## Features  

- **Token Creation**:  
  - Implements a fungible token struct (`FUNGIBLE`) on the Sui network.  
  - Utilizes the `coin::create_currency` function to initialize the token with metadata and a treasury cap.  
  - Sets up metadata with an IPFS-hosted token icon.  

- **Token Minting**:  
  - Implements a `mint` function to mint new tokens to specified recipients.  
  - Supports dynamic minting based on the input treasury cap and amount.  

## Project Structure  

- **Module**:  
  The core logic resides in the `fungible` Move module:  
  - `init`: Initializes the fungible token and transfers the treasury cap to the creator.  
  - `mint`: Mints new tokens and transfers them to the specified address.  

## Prerequisites
To interact with this project, you'll need:

A working Sui environment. Sui CLI Installation Guide.
A wallet with access to a Sui devnet/testnet faucet for transactions.

## How to Deploy
1. Clone the Repository:

```
git clone git@github.com:georgegoldman/ideal_broccoli.git
cd ideal_broccoli
```

2. Compile the Module:

```
sui move build
```
3. Deploy the Module:

```
sui client publish --gas-budget 100000000
```
4. Retrieve the Package ID:

After deployment, you'll see output similar to this:
```
Published Objects:                                                                                                             
┌──                                                                                                                           
│ PackageID: 0x0000000000000000000000000000000000000000000000000000000000000000                                                
│ Version: 1                                                                                                                  
│ Digest: 9VyCMmsaSHWQYN6k7Jc4HBbPycO6VrmgVSFFFFhmgGkB                                                                         
│ Modules: fungible                                                                                                            
└──                                                                                                                           
```

Copy the PackageID, which is the identifier for your published module (e.g., 0x0000000000000000000000000000000000000000000000000000000000000000).

5. Explore Your Smart Contract:

    1. Navigate to [SuiScan Devnet](https://suiscan.xyz/devnet).
    2. Paste the PackageID into the search bar.
    3. Go to the Contracts tab to interact with your smart contract.

6. Initialize the Token:

Use the init function to create the token and set up its metadata.

7. Mint Tokens:

Invoke the mint function to create new tokens and transfer them to a recipient address.

8. Retrieve the Treasury Object:

you need this for your treasury parameter when testing the smart contract on suisan.
In the deployment output, navigate to the Object Changes section. Look for an entry with the ObjectType:
```
ObjectType: 0x2::coin::TreasuryCap<0x0000000000000000000000000000000000000000000000000000000000000000::fungible::FUNGIBLE>
```
so you are using ```<ObjectID>``` not the address of the ```<ObjectType>```

## Learning Experience
This project provided valuable insights into:

- Writing and structuring smart contracts using Move.
- Leveraging the Sui blockchain for asset creation and management.
- Handling metadata with IPFS for decentralized token representations.

## Contributions
Contributions are highly welcome! If you’d like to improve the project, here’s how you can get involved:

1. Fork the Repository:
Click the "Fork" button at the top of this page to create a copy of this repository in your GitHub account.

2. Create a Branch:
Create a new branch for your feature or bug fix:

```
git checkout -b feature-name
```

3. Make Changes:
Add your contributions to the codebase.

4. Commit Changes:
Write clear and concise commit messages:

```
git commit -m "Add description of your changes"
```

6. Submit a Pull Request:
Open a pull request in this repository, detailing the changes you made and why they should be merged.

## License
This project is licensed under the MIT License.

This `.md` file is ready to be used as a `README.md` for your GitHub repository. Let me know if you need further modifications!
