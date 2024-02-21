<h1>Setting up and deploying My First Blockchain Smart Contract (Testnet)</h1>
<br/>
This is the repo for my first smart contract setup and deployment. It's only a test contract so no real crypto was used. However it shows the basics of setting up a smart contract and seeing it deployed on a test net blockchain.

this another change test. Im just add some new content here.

<h2>Setting Up our Workspace and IDE </h2>
We will be using Remix Ethereum IDE for this project.

First lets delete the files in the workspace and start from scratch.
![img-1]

Let's create a file a call it SimpleStorage.sol
Create > New File > SimpleStorage.sol
![img-2]

This file ends in .sol which indicates to the compiler that it is a solidity file.

Let's have a look at the side menu icons.

The magnifying glass searchs for anything you search for and outputs where it is located and in which contract it is located.

![img-3]

Below that is a solidity compiler icon.
There is a lot of information here that I am not too sure about.

![img-4]

The last icon is a Deploy and Run transactions icons.
It also has a whole lot of information, I have no idea.

![img-5]

After having a quick look, we want to start writing some code.

First we have to write the solidity version.
This will start with the following:

'''
pragma solidity [version number]
'''

In our case, the latest version is 0.8.24. We also need to add a license identifier at the very top.

![img-6]

We can also manually choose our compiler, however whenever you press the "Compile SimpleStorage.sol" button it will automatically go to the compiler written in your code.

Okay so the next step is to write the keyword:
"contract".

This word "contract" is very much like a class in Javascript, Python or any other OOP language.

Let's call this contract SimpleStorage.

![img-7]

<h2>Understanding Basic Solidity Types </h2>

There are many Types in solidity but let's focus on the basic types for now.

--> Booleans
--> Integers:
------> int (positive or negative whole numbers)
------> uint (positive whole number aka unsigned integer)
--> Address
--> Bytes

Let's write some boolean examples below:

'''
bool hasFavoriteNumber = true;
bool hasFavoriteNumber = false;
'''

Here are some variables in uint format:

'''
uint favoriteNumber = 88;
'''

uint is quite flexible as we can state how many bytes we want assigned.

For example:

'''
uint256 favoriteNumber = 256;
'''

This states that this favoritNumber variable has 256 bits.
The maximum size is a uint256. If you dont specify a
value for a uint it defaults to 256 bits. So uint is = uint256.

So, whats the difference between uint and int? Int can be
positive or negative.

'''
bool hasFavoritNumber = true;
int256 favoriteNumber = -88;
'''


