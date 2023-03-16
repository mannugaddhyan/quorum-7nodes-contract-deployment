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

Step 6: 
