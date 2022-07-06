//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

interface IAccounts{
    function CreateAccount(string memory, address) external ;
    function ClientProfile(address) external view returns(address, uint, string memory, uint, bool, bool );
    function UpdateProfile(address _accountAddress, string memory _accountTitle) external;

    function Deposit() external payable;      
    function FundsWithdraw( uint256 ) external payable;
    function DepositToken(uint) external;
    function TokensWithdraw(uint256 , address) external payable;

    function TransferBWAccounts(address ,uint ) external ;
    function ViewAccountBalance(address ) external view returns(uint);
    
        ///////////////////////Transaction Records///////////////////////

    //function ShowTransactions(uint tID) public view returns(Transaction memory);
    function TotalTransactions() external view returns(uint);
    //function ShowTransactionRecord()public view returns (Transaction[] memory)

        ///////////////////////Bank Rewards////////////////////////////
    function RewardWinner() external;
    function RewardTransferToWinner() external;
    function ShowWinner() external view returns(string memory);

        ///////////////////////Black List /////////////////////////////
        ///////////////////////De-List ////////////////////////////////
        ///////////////////////Lock The Deposit ///////////////////////

    function BlacklistHandler(address, bool) external;
    function DelistClient(address) external payable;
    function DelistedAccounts(address) external view returns(bool);
    function BlacklistedAccounts(address) external view returns(bool);
    
    function LockDepositOfClient(address) external;
    function UnLockDepositOfClient(address) external;

}

