<h1>Setting up and deploying My First Blockchain Smart Contract (Testnet)</h1>

This is the repo for my first smart contract setup and deployment. It's only a test contract so no real crypto was used. However it shows the basics of setting up a smart contract and seeing it deployed on a test net blockchain.

<br/>
<br/>
<h2>Setting Up Our Workspace and IDE </h2>
We will be using Remix Ethereum IDE for this project.

First lets delete the files in the workspace and start from scratch.

![img-1]

Let's create a file a call it SimpleStorage.sol.
<br/>

```
Create > New File > SimpleStorage.sol
```

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

```
pragma solidity [version number]
```

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

```
Booleans
Integers:
--> int (positive or negative whole numbers)
--> uint (positive whole number aka unsigned integer)
Address
Bytes
```

<br/>

Let's write some boolean examples below:

```
bool hasFavoriteNumber = true;
bool hasFavoriteNumber = false;
```

Here are some variables in uint format:

```
uint favoriteNumber = 88;
```

uint is quite flexible as we can state how many bytes we want assigned.

For example:

```
uint256 favoriteNumber = 256;
```

This states that this favoritNumber variable has 256 bits.
The maximum size is a uint256. If you dont specify a
value for a uint it defaults to 256 bits. So uint is = uint256.

So, whats the difference between uint and int? Int can be
positive or negative.

```
bool hasFavoritNumber = true;
int256 favoriteNumber = -88;
string myFavoriteStringNumbe = "eighty-two";
int256 = -32;
address myAddress = mzy45FmreqZAVpVfJpyRtU8Xk7oMHaXKbS;
bytes32 favoriteBytes32 = "cat";
```

<br/>
<br/>
<h2>A Look at Solidity functions (basic overview) </h2>

In programming, functions or methods are pieces of code that will execute a particular action or function when it is called.

We use the keyword:

```
function
```

Let's write a basic function block.

![img-8]

We use the function keyword, then the name of the function, in this case it is store. We also pass in a paramter. In this case it is an uint256 \_favoriteNumber.

We also have to make this function public.

We can run this program. So hit the compile button.

![img-9]

Then, go to the Deploy and run transactions tab.

We want to choose the right test environment. For us it is Remix VM (Shanghai)

![img-10]

```
Click > Deploy
```

Under Deployed Contracts, we can see the contract is deployed.

![img-11]

You can also the SimpleStorage contract also has a unique address.

![img-12]

If you look at the bottom of the terminal, we can see that the creation of SimpleStorage is pending.

The green check mark shows that we sent a transaction to deploy this contract.

![img-13]

This is just a simulated transaction.

We can see a lot of information about this transaction.

![img-14]

Modifying anything in the code is actually modifying the smart contract. That's why we send a transaction to the blockchain. This costs gas.

Deploying a smart contract is modifying the blockchain through a transaction that is why it always costs gas.

<br/>
<br/>

Let's call the function that we created earlier.
Input any number and click the store button.

![img-15]

If we have a look at the terminal, you can see that the transaction left our test account to the SimpleStorage smart contract account.

![img-17]

In our Account, the transaction has reduced our balance.

![img-18]

Play around and input some more numbers.
We can see all the transactions in the terminal.

![img-19]

Okay, we can see that transactions are going through but we can't see our favorite number showing up anywhere.

Our global state variable uint256 favoriteNumber by default set to internal. So we need to change it to public.

![img-20]

Let's compile the SimpleStorage.sol one more time.
Now delete the current contract in the Deployed Contracts section and click Deploy again.

<bold>** NB **</bold>
<em>In real life, you cannot delete a smart contract. Once it is deployed on the blockchain it is immutable and cannot be changed! Please be very aware of this!</em>

![img-21]

After redeploying, we can now see a blue button called favoriteNumber.

![img-22]

Click the favoriteNumber button. You can see it returns 0 which is correct because we didn't input anything.

![img-23]

If we input 123 in our store function, it will execute the store function, as shown in the terminal but if you click on the favoriteNumber button it will return 123.

![img-24]

So, what does the public keywork in the function mean?
<br/>

In Solidity, there are four visibility specifiers.

`public` : visible externally & internally
`private` : only visibile in current contract</
`external` : only visible externally (only for functions)
`internal` : only visible internally

All data on the EVM chain is actually public data.
By default functions are set to internal.

For more information go to this specific url.
[https://docs.soliditylang.org/en/latest/cheatsheet.html#function-visibility-specifiers]

Everytime we update the state of the smart contract it is going to cost gas.
<br/>
So, if we start adding new functions or new additional calculations it must perform, it's going to cost us more gas.

Our gas is as below.

![img-25]

Let's add some extra calculation in our store function.

```
function store(uint256 _favoriteNumber) public  {
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber + 1;
    }

```

Delete the contract and redeploy.
Input 123 into the store function.
You can see our gas has increased.

![img-26]

We can delete add line to our function.

Now is a good time to quick touch on scope.
Variables within functions cannot be accessed.
Global state variables can be accessed by all functions.

So our global state variable uint256 public favoriteNumber can be accessed by any function within the SimpleStorage contract.

Okay, moving on.

Adding the `public` keyword means it is a getter function. This could be for variables or function values.

<br/
Let's write a new function called retrive.

```
  function retrieve() public view returns(uint256){
    return favoriteNumber;
  }
```

As you can see we input a number 5.
If we click on both favoriteNumber and retrieve button it returns 5.

![img-27]

But the question is why is the retrieve function blue and the store function orange??

![img-28]

The reason is the `view` keyword states it is a read only operation. It will not modify the state of the contract or modify any state variables. It does not make any changes to the contract's data, that is why the retrieve function is blue colored.

There is another keyword called `pure` as well that disallows reading state variables and making changes it to it as well.

So the `view` keyword doesn't cost us any gas. It will usually show as a call function in our terminal. Any changes to the contract data will be a transaction and will be marked with a green check mark in the terminal.

<strong>However there is a big caveat here.</strong>

<strong>If a function that uses gas requires another function that uses view, then the function that uses view will need to pay execution costs! </strong>

So for example if the retreive function is located inside the store function then the retrieve function will have to pay execution costs! This is shown below.

```
function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
    retrieve();
  }
```

So, please be aware of this.

<br/>
<h2>Solidity Arrays & Structs</h2>

A struct is a way to define a custom type that allows you to group together variables of different types. It's like a container where you can store various pieces of data that belong together.

Each piece of data within a struct is called a member of a field and each can be a different data type.

Structs are very useful when you want to show complex data structures within your smart contracts.

Have a look at the below struct.

```
contract videoStore {
  struct Video {
    string title;
    string releaseDate;
    uint movieID;
  }
}
```

Once a struct is defined we can make instances of it. Structs can be stored in state variables, local variables and can be passed to and returned from functions in our smart contract.

Structs keep data organized and make smart contracts easier to work with.

Arrays in Solidity are like normal arrays like any other programming language.

We can write an array like this in Solidiy:

```
uint256[] listOfMovieID; // this is an array of numbers
```

All arrays start with a zero index.

Okay, let's create a struct in our code.

```
struct Person {
    uint256 personFavoriteNumber;
    string personName;
  }
```

We can also create an instance of the struct Person and store it in a variable like this:

```
Person public person1 = Person({personFavoriteNumber: 8, personName: "Steve"});
```

Let's redeploy this contract.
Click on the person1 button.
You can see person1 parameters being displayed.
The index will also be displayed. In this case, the index 0 and 1.

![img-29]

This person1 is great for one person but what if there are over 100 people. We can't just duplicate 100 or more lines of code. How would we do this to allow for more people?

What we can do is use the array syntax for the Person struct. Sound a little confusing?
Dont worry less go through this together.

We need to create a dynamic Person array that is empty and make it public. This means we can add to it and delete it. The size of the array will dynamically change.

```
Person[] public listOfPeople;
```

If you try to redeploy the contract, you have to input the index number to see the value. However, as it's an empty array, it will return nothing.

On the other hand if you added a number inside the square brackets, it would become a static array.

```
Person[5] public listOfPeople;
```

The above would mean, we could only put a maximum size of 5.

We will mainly focus on the dynamic array, as we want to input a random number of people in this array.

Best way to do this is to create a function that will add people into this Person array.

```
  function addPerson(uint256 _personFavoriteNumber, string memory _personName) public {
        listOfPeople.push(Person(_personFavoriteNumber, _personName));
    }
```

Let's redeploy and see what it looks like.

![img-30]

If we type in 2 in the listOfPeople it shows there is someone there called CK with a favorite number of 55.

Okay, we have basic understanding of how to add to a dynamic array.

<br/>
<h2>Errors and Warnings</h2>
