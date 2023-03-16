# What does this contract do?

Contract Name: MyBank 

-- Allow users to deposit ethers to the smart contract address. 

-- Users can withdraw their ethers anytime they wish. The contract also rewards the users with ether( it is based on a simple interest formula, rate of interest is 18% per annum ).

-- We need to recharge the contract account before any user calls the withdraw function. ( it is beacuse there is no other way the contract account is earning. Haven't used the concept of lending users ether to earn interest yet ).

-- Any user can check their depoisted money. 

-- Can check the total money with the contract also. 


# How to run the 7nodes network ? 

Step 1: git clone the quorum-examples folder from the github.  

Step 2: Install docker in your system. After This install docker-compose.

Step 3: cd to the path where you have cloned the quorum-examples folder. 

Step 4: I have changed the CONSENSUSto raft using the command "QUORUM_CONSENSUS=raft". This will make the work easy if you want to reduce the number of nodes from 7 to any number like 4 or 5. 

Step 5:(OPTIONAL) Reduce the number of nodes. In the file examples/7nodes/permissioned-nodes.json delete the nodes encodes address. Do it for the any number of nodes you want. Save the file. 

Step 6: run the docker-compose up -d command to setup the 7nodes network locally. 

Step 7: After step 6, the nodes will be up and running. use command docker ps to check the health of the nodes. Wait until all your nodes and tx managers are healthy. May take time upto 7 mins. 

Step 8: copy the name of the node from which you wish to depoly the contract which you had generated the abi and byte code earlier. use the docker ps command to find the name of your container node. 
E.g. Name = "quorum-examples_node1_1"

Step 9: Run the command: $ docker exec -it quorum-examples_node1_1 geth attach /qdata/dd/geth.ipc
to open geth Javascript console to a desired node . 

Step 10: It will open the javascript console. Here you will load the private-contract.js file. This file has yoour contract abi and bytecode. It will deploy the contract as well you can change the entry in the privateFor field to choose the node with which you want to make the transcations private.
Other nodes won't be able to view the state of the contract. 

Step 11: Run the command: loadScript('/examples/private-contract.js') 

Step 12: 




