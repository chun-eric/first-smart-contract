<h1>Setting up and deploying My First Blockchain Smart Contract (Testnet)</h1>

This is the repo for my first smart contract setup and deployment. It's only a test contract so no real crypto was used. However it shows the basics of setting up a smart contract and seeing it deployed on a test net blockchain.

<br/>
<h2>Setting Up Our Workspace and IDE </h2>
We will be using Remix Ethereum IDE for this project.

First lets delete the files in the workspace and start from scratch.

<a href="https://ibb.co/Gdq2Gg0"><img src="https://i.ibb.co/Zf08vyV/img1.png" alt="img1" border="0"></a>

Let's create a file a call it SimpleStorage.sol.
<br/>

```
Create > New File > SimpleStorage.sol
```

<a href="https://ibb.co/4JNGmZ9"><img src="https://i.ibb.co/g6gpjMH/img2.png" alt="img2" border="0"></a>

This file ends in .sol which indicates to the compiler that it is a solidity file.

Let's have a look at the side menu icons.

The magnifying glass searchs for anything you search for and outputs where it is located and in which contract it is located.

<a href="https://ibb.co/7G0cn9W"><img src="https://i.ibb.co/MRJTcXV/img3.png" alt="img3" border="0"></a>

Below that is a solidity compiler icon.
There is a lot of information here that I am not too sure about.

<a href="https://ibb.co/gZ9TXSq"><img src="https://i.ibb.co/3mdN8p6/img4.png" alt="img4" border="0"></a>

The last icon is a Deploy and Run transactions icons.
It also has a whole lot of information, I have no idea.

<a href="https://ibb.co/XxwyzBK"><img src="https://i.ibb.co/TMCKHX7/img5.png" alt="img5" border="0"></a>

After having a quick look, we want to start writing some code.

First we have to write the solidity version.
This will start with the following:

```
pragma solidity [version number]
```

In our case, the latest version is 0.8.24. We also need to add a license identifier at the very top.

<a href="https://ibb.co/FxYvnsj"><img src="https://i.ibb.co/vwd5DsK/img6.png" alt="img6" border="0"></a>

We can also manually choose our compiler, however whenever you press the "Compile SimpleStorage.sol" button it will automatically go to the compiler written in your code.

Okay so the next step is to write the keyword:
"contract".

This word "contract" is very much like a class in Javascript, Python or any other OOP language.

Let's call this contract SimpleStorage.

<a href="https://ibb.co/2KDtpCv"><img src="https://i.ibb.co/Qm2NxTP/img7.png" alt="img7" border="0"></a>

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

<a href="https://ibb.co/wrysVW1"><img src="https://i.ibb.co/pr2yczp/img8.png" alt="img8" border="0"></a>

We use the function keyword, then the name of the function, in this case it is store. We also pass in a paramter. In this case it is an uint256 \_favoriteNumber.

We also have to make this function public.

We can run this program. So hit the compile button.

<a href="https://ibb.co/7NRnLbJ"><img src="https://i.ibb.co/Dg89TLD/img9.png" alt="img9" border="0"></a>

Then, go to the Deploy and run transactions tab.

We want to choose the right test environment. For us it is Remix VM (Shanghai)

<a href="https://ibb.co/Sy6Sbjw"><img src="https://i.ibb.co/H4KZ6ST/img10.png" alt="img10" border="0"></a>

```
Click > Deploy
```

Under Deployed Contracts, we can see the contract is deployed.

<a href="https://ibb.co/8K5j8pL"><img src="https://i.ibb.co/YRktjMF/img11.png" alt="img11" border="0"></a>

You can also the SimpleStorage contract also has a unique address.

<a href="https://ibb.co/CHn7vtM"><img src="https://i.ibb.co/RDC0PSB/img12.png" alt="img12" border="0"></a>

If you look at the bottom of the terminal, we can see that the creation of SimpleStorage is pending.

The green check mark shows that we sent a transaction to deploy this contract.

<a href="https://ibb.co/7nYKN7H"><img src="https://i.ibb.co/Cb1Qsxq/img13.png" alt="img13" border="0"></a>

This is just a simulated transaction.

We can see a lot of information about this transaction.

<a href="https://ibb.co/BBp9y1r"><img src="https://i.ibb.co/dDTRPhL/img14.png" alt="img14" border="0"></a>

Modifying anything in the code is actually modifying the smart contract. That's why we send a transaction to the blockchain. This costs gas.

Deploying a smart contract is modifying the blockchain through a transaction that is why it always costs gas.

<br/>
<br/>

Let's call the function that we created earlier.
Input any number and click the store button.

<a href="https://ibb.co/b105GFP"><img src="https://i.ibb.co/PxLGVMN/img15.png" alt="img15" border="0"></a>

If we have a look at the terminal, you can see that the transaction left our test account to the SimpleStorage smart contract account.

<!-- <a href="https://ibb.co/S3f7w6v"><img src="https://i.ibb.co/G5H3QdP/img16.png" alt="img16" border="0"></a> -->

<a href="https://ibb.co/kyybB0n"><img src="https://i.ibb.co/thhjKcf/img17.png" alt="img17" border="0"></a>

In our Account, the transaction has reduced our balance.

<a href="https://ibb.co/pr4Wdx7"><img src="https://i.ibb.co/XkFytbQ/img18.png" alt="img18" border="0"></a>

Play around and input some more numbers.
We can see all the transactions in the terminal.

<a href="https://ibb.co/PFRJTch"><img src="https://i.ibb.co/173Bsrq/img19.png" alt="img19" border="0"></a>

Okay, we can see that transactions are going through but we can't see our favorite number showing up anywhere.

Our global state variable uint256 favoriteNumber by default set to internal. So we need to change it to public.

<a href="https://ibb.co/x5CXSLT"><img src="https://i.ibb.co/3hr4ydZ/img20.png" alt="img20" border="0"></a>

Let's compile the SimpleStorage.sol one more time.
Now delete the current contract in the Deployed Contracts section and click Deploy again.

<bold>** NB **</bold>
<em>In real life, you cannot delete a smart contract. Once it is deployed on the blockchain it is immutable and cannot be changed! Please be very aware of this!</em>

<a href="https://ibb.co/hZPZk76"><img src="https://i.ibb.co/D8x8NVJ/img21.png" alt="img21" border="0"></a>

After redeploying, we can now see a blue button called favoriteNumber.

<a href="https://ibb.co/WtH9B1F"><img src="https://i.ibb.co/Dp1Xwnk/img22.png" alt="img22" border="0"></a>

Click the favoriteNumber button. You can see it returns 0 which is correct because we didn't input anything.

<a href="https://ibb.co/yVygNvX"><img src="https://i.ibb.co/0QMYn4c/img23.png" alt="img23" border="0"></a>

If we input 123 in our store function, it will execute the store function, as shown in the terminal but if you click on the favoriteNumber button it will return 123.

<a href="https://ibb.co/yhNS3Ft"><img src="https://i.ibb.co/rbQsW2Y/img24.png" alt="img24" border="0"></a>

So, what does the public keywork in the function mean?
<br/>

In Solidity, there are four visibility specifiers.

`public` : visible externally & internally.
<br/>
`private` : only visibile in current contract.
<br/>
`external` : only visible externally (only for functions)
<br/>
`internal` : only visible internally.

All data on the EVM chain is actually public data.
By default functions are set to internal.

For more information go to this specific url.
[https://docs.soliditylang.org/en/latest/cheatsheet.html#function-visibility-specifiers]

Everytime we update the state of the smart contract it is going to cost gas.
<br/>
So, if we start adding new functions or new additional calculations it must perform, it's going to cost us more gas.

Our gas is as below.

<a href="https://ibb.co/K0YTzzV"><img src="https://i.ibb.co/JBNDFFr/img25.png" alt="img25" border="0"></a>

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

<a href="https://ibb.co/R7zDSTC"><img src="https://i.ibb.co/9GsrvHq/img26.png" alt="img26" border="0"></a>

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

<a href="https://ibb.co/6N5tD8w"><img src="https://i.ibb.co/9Gj4yhg/img27.png" alt="img27" border="0"></a>

But the question is why is the retrieve function blue and the store function orange??

<a href="https://ibb.co/rp1jXWb"><img src="https://i.ibb.co/09d7zwB/img28.png" alt="img28" border="0"></a>

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

<a href="https://ibb.co/KsvdX7X"><img src="https://i.ibb.co/JpJVK2K/img29.png" alt="img29" border="0"></a>

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

<a href="https://ibb.co/5ksB7bD"><img src="https://i.ibb.co/YXfprH9/img30.png" alt="img30" border="0"></a>

If we type in 2 in the listOfPeople it shows there is someone there called CK with a favorite number of 55.

Okay, we have basic understanding of how to add to a dynamic array.

<br/>
<h2>Errors and Warnings</h2>

Red Errors means code isn't compiling.
Warnings are marked in orange but you can technically still compile.

But for best practices, it is always a good idea to fix the warning errors.

<br/>
<h2>Memory, Storage, Calldata</h2>

There are 6 places you can store data in an Ethereum Virtual Machine.

<table>
<tr>Stack</tr>
<tr>Memory</tr>
</table>

-Stack
-Memory
-Storage
-Calldata
-Code
-Logs

For now let's focus on the `memory`, `storage` and `calldata`.

`memory` only exists in memory. It only exists in a very short period of time. It can be modified. Data stored in memory is erased at the end of the function exeuction and does not persist on the blockchain. It is more expensive than `calldata` because accessing `memory` incurs higher gast cost. `memory` is great for temporary storageand manipulation of data within functions.

`calldata` is an immutable, temporary location used to store function arguments. It is only read only and is used for external function calls. It is only available for the duration of the function call. Ideal for passing large arrays or structs that don't need to be modified by the function.

`storage` is permanent and persists across transactions and even after the execution of functions. Because of its persistant nature, it is more expensive. `storage` is used for state variables of the contract.

Strings are a special type of variable and is usually typed as `memory`

You won't get an error if \_personalName is changed to Boban as shown below. `memory` can be modified.

```
function addPerson(string memory _personName, uint256 _personFavoriteNumber ) public {
      _personalName = "Boban"
      listOfPeople.push(Person(_personFavoriteNumber,_personName));
  }
```

However, you will get an error in the below code. This is because `calldata` cannot be modified.

```
function addPerson(string calldata _personName, uint256 _personFavoriteNumber ) public {
      _personalName = "Boban"
      listOfPeople.push(Person(_personFavoriteNumber,_personName));
  }
```

In our code base, our `storage` variable is the myFavoriteNumber as it is stored as a state variable.
It exists or persists outside of function calls.

```
 uint256 public favoriteNumber;
```

So, why cant uint256 be typed as `memory`?
This is because uint256 is known as a primitive type or value types. Meaning uint256 is always passed by value not by reference.

Passed by value means a copy of the original data is created and passed to the function. Any modifications made to this data within the function does not affect the original data.

Passed by reference means, the function receives a reference or points to the original data, not a copy. Any modifications made to this data within the function does affect the original data.

<br/>
<h2>Basic Mappings</h2>

Mapping is like a dictionary. It returns a key with a value returned. So, if you have a lot of data in eithr a list or an array and you want to grab a certain key with its associated value, then the data structure you would use is mapping.

This is a much quicker way to access data.
Let's create our first mapping.

```
mapping(string => uint256) public nameToFavoriteNumber;
```

The above code sets a string key to uint256 value. So for instance "John" is the key with a uint256 value of 190.

We also need to add mapping capabilities whenever we add a Person in the addPerson function.

```
  function addPerson(string memory _personName, uint256 _personFavoriteNumber ) public {
      // add to listOfPeople array
      listOfPeople.push(Person(_personFavoriteNumber,_personName));

      // add mapping structure so we can easily search for it. eg "John" -> 193;
      nameToFavoriteNumber[_personName] = _personFavoriteNumber;
  }

```

Let's see this in action. We will add the following data into the addPerson Function.

```
"Chris", 300
"Elle", 500
"Francis", 4000
```

![img-31]

![img-32]

We can say the mapping works and we can see the correct value associated with each name.



