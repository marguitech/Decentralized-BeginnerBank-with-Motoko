# DfyBank

Welcome to your new DfyBank project and to the internet computer development community. 


To learn more before you start working with DfyBank, see the following documentation available online:

- [Quick Start](https://sdk.dfinity.org/docs/quickstart/quickstart-intro.html)
- [SDK Developer Tools](https://sdk.dfinity.org/docs/developers-guide/sdk-guide.html)
- [Motoko Programming Language Guide](https://sdk.dfinity.org/docs/language-guide/motoko.html)
- [Motoko Language Quick Reference](https://sdk.dfinity.org/docs/language-guide/language-manual.html)
- [JavaScript API Reference](https://erxue-5aaaa-aaaab-qaagq-cai.raw.ic0.app)


## Running the project locally

<p> If you want to test your project locally, you can use the following commands:</p>

Starts the replica in a new terminal, running in the background

 - dfx start --background

<p> In a new terminal, Deploy your canisters to the replica and generates your interface with this command:</p>

 - dfx deploy

Once the job completes, your application will be available at `http://localhost:8000`.

To run the front end you need to write this command: 

 - npm start


Which will start a server at `http://localhost:8080` , proxying API requests to the replica at port 8000.

## About the Project

This is a small tutorial project to start learning the Internet Computer and its language "Motoko" where you the main functionalities are: 

- An Active Balance
- A input to deposit an amount
- An input to withdraw an amount
- A compounding function that will be charged to your balance automatically,  everytime you withdraw or deposit.

It will add the compound interest that corresponds to your balance since the last update. 

For easier grasp of the compounding function it will give you an interest for every second gone by after the last update. 


# Thank You! 
