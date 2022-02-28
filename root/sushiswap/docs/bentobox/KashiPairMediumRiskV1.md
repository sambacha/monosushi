# KashiPairMediumRiskV1



> KashiPair



*This contract allows contract calls to any contract (except BentoBox) from arbitrary callers thus, don&#39;t trust calls from this contract in any circumstances.*

## Methods

### DOMAIN_SEPARATOR

```solidity
function DOMAIN_SEPARATOR() external view returns (bytes32)
```



*Return the DOMAIN_SEPARATOR*


#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bytes32 | undefined |

### accrue

```solidity
function accrue() external nonpayable
```

Accrues the interest on the borrowed tokens and handles the accumulation of fees.




### accrueInfo

```solidity
function accrueInfo() external view returns (uint64 interestPerSecond, uint64 lastAccrued, uint128 feesEarnedFraction)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| interestPerSecond | uint64 | undefined |
| lastAccrued | uint64 | undefined |
| feesEarnedFraction | uint128 | undefined |

### addAsset

```solidity
function addAsset(address to, bool skim, uint256 share) external nonpayable returns (uint256 fraction)
```

Adds assets to the lending pair.



#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | The address of the user to receive the assets. |
| skim | bool | True if the amount should be skimmed from the deposit balance of msg.sender. False if tokens from msg.sender in `bentoBox` should be transferred. |
| share | uint256 | The amount of shares to add. |

#### Returns

| Name | Type | Description |
|---|---|---|
| fraction | uint256 | Total fractions added. |

### addCollateral

```solidity
function addCollateral(address to, bool skim, uint256 share) external nonpayable
```

Adds `collateral` from msg.sender to the account `to`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | The receiver of the tokens. |
| skim | bool | True if the amount should be skimmed from the deposit balance of msg.sender. False if tokens from msg.sender in `bentoBox` should be transferred. |
| share | uint256 | The amount of shares to add for `to`. |

### allowance

```solidity
function allowance(address, address) external view returns (uint256)
```

owner &gt; spender &gt; allowance mapping.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |
| _1 | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### approve

```solidity
function approve(address spender, uint256 amount) external nonpayable returns (bool)
```

Approves `amount` from sender to be spend by `spender`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| spender | address | Address of the party that can draw from msg.sender&#39;s account. |
| amount | uint256 | The maximum collective amount that `spender` can draw. |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | (bool) Returns True if approved. |

### asset

```solidity
function asset() external view returns (contract IERC20)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IERC20 | undefined |

### balanceOf

```solidity
function balanceOf(address) external view returns (uint256)
```

owner &gt; balance mapping.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### bentoBox

```solidity
function bentoBox() external view returns (contract IBentoBoxV1)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IBentoBoxV1 | undefined |

### borrow

```solidity
function borrow(address to, uint256 amount) external nonpayable returns (uint256 part, uint256 share)
```

Sender borrows `amount` and transfers it to `to`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | undefined |
| amount | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| part | uint256 | Total part of the debt held by borrowers. |
| share | uint256 | Total amount in shares borrowed. |

### claimOwnership

```solidity
function claimOwnership() external nonpayable
```

Needs to be called by `pendingOwner` to claim ownership.




### collateral

```solidity
function collateral() external view returns (contract IERC20)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IERC20 | undefined |

### cook

```solidity
function cook(uint8[] actions, uint256[] values, bytes[] datas) external payable returns (uint256 value1, uint256 value2)
```

Executes a set of actions and allows composability (contract calls) to other contracts.



#### Parameters

| Name | Type | Description |
|---|---|---|
| actions | uint8[] | An array with a sequence of actions to execute (see ACTION_ declarations). |
| values | uint256[] | A one-to-one mapped array to `actions`. ETH amounts to send along with the actions. Only applicable to `ACTION_CALL`, `ACTION_BENTO_DEPOSIT`. |
| datas | bytes[] | A one-to-one mapped array to `actions`. Contains abi encoded data of function arguments. |

#### Returns

| Name | Type | Description |
|---|---|---|
| value1 | uint256 | May contain the first positioned return value of the last executed action (if applicable). |
| value2 | uint256 | May contain the second positioned return value of the last executed action which returns 2 values (if applicable). |

### decimals

```solidity
function decimals() external view returns (uint8)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint8 | undefined |

### exchangeRate

```solidity
function exchangeRate() external view returns (uint256)
```

Exchange and interest rate tracking. This is &#39;cached&#39; here because calls to Oracles can be very expensive.




#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### feeTo

```solidity
function feeTo() external view returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### init

```solidity
function init(bytes data) external payable
```

Serves as the constructor for clones, as clones can&#39;t have a regular constructor

*`data` is abi encoded in the format: (IERC20 collateral, IERC20 asset, IOracle oracle, bytes oracleData)*

#### Parameters

| Name | Type | Description |
|---|---|---|
| data | bytes | undefined |

### liquidate

```solidity
function liquidate(address[] users, uint256[] maxBorrowParts, address to, contract ISwapper swapper, bool open) external nonpayable
```

Handles the liquidation of users&#39; balances, once the users&#39; amount of collateral is too low.



#### Parameters

| Name | Type | Description |
|---|---|---|
| users | address[] | An array of user addresses. |
| maxBorrowParts | uint256[] | A one-to-one mapping to `users`, contains maximum (partial) borrow amounts (to liquidate) of the respective user. |
| to | address | Address of the receiver in open liquidations if `swapper` is zero. |
| swapper | contract ISwapper | Contract address of the `ISwapper` implementation. Swappers are restricted for closed liquidations. See `setSwapper`. |
| open | bool | True to perform a open liquidation else False. |

### masterContract

```solidity
function masterContract() external view returns (contract KashiPairMediumRiskV1)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract KashiPairMediumRiskV1 | undefined |

### name

```solidity
function name() external view returns (string)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### nonces

```solidity
function nonces(address) external view returns (uint256)
```

owner &gt; nonce mapping. Used in `permit`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### oracle

```solidity
function oracle() external view returns (contract IOracle)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IOracle | undefined |

### oracleData

```solidity
function oracleData() external view returns (bytes)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bytes | undefined |

### owner

```solidity
function owner() external view returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### pendingOwner

```solidity
function pendingOwner() external view returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### permit

```solidity
function permit(address owner_, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external nonpayable
```

Approves `value` from `owner_` to be spend by `spender`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| owner_ | address | Address of the owner. |
| spender | address | The address of the spender that gets approved to draw from `owner_`. |
| value | uint256 | The maximum collective amount that `spender` can draw. |
| deadline | uint256 | This permit must be redeemed before this deadline (UTC timestamp in seconds). |
| v | uint8 | undefined |
| r | bytes32 | undefined |
| s | bytes32 | undefined |

### removeAsset

```solidity
function removeAsset(address to, uint256 fraction) external nonpayable returns (uint256 share)
```

Removes an asset from msg.sender and transfers it to `to`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | The user that receives the removed assets. |
| fraction | uint256 | The amount/fraction of assets held to remove. |

#### Returns

| Name | Type | Description |
|---|---|---|
| share | uint256 | The amount of shares transferred to `to`. |

### removeCollateral

```solidity
function removeCollateral(address to, uint256 share) external nonpayable
```

Removes `share` amount of collateral and transfers it to `to`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | The receiver of the shares. |
| share | uint256 | Amount of shares to remove. |

### repay

```solidity
function repay(address to, bool skim, uint256 part) external nonpayable returns (uint256 amount)
```

Repays a loan.



#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | Address of the user this payment should go. |
| skim | bool | True if the amount should be skimmed from the deposit balance of msg.sender. False if tokens from msg.sender in `bentoBox` should be transferred. |
| part | uint256 | The amount to repay. See `userBorrowPart`. |

#### Returns

| Name | Type | Description |
|---|---|---|
| amount | uint256 | The total amount repayed. |

### setFeeTo

```solidity
function setFeeTo(address newFeeTo) external nonpayable
```

Sets the beneficiary of fees accrued in liquidations. MasterContract Only Admin function.



#### Parameters

| Name | Type | Description |
|---|---|---|
| newFeeTo | address | The address of the receiver. |

### setSwapper

```solidity
function setSwapper(contract ISwapper swapper, bool enable) external nonpayable
```

Used to register and enable or disable swapper contracts used in closed liquidations. MasterContract Only Admin function.



#### Parameters

| Name | Type | Description |
|---|---|---|
| swapper | contract ISwapper | The address of the swapper contract that conforms to `ISwapper`. |
| enable | bool | True to enable the swapper. To disable use False. |

### swappers

```solidity
function swappers(contract ISwapper) external view returns (bool)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | contract ISwapper | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | undefined |

### symbol

```solidity
function symbol() external view returns (string)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | undefined |

### totalAsset

```solidity
function totalAsset() external view returns (uint128 elastic, uint128 base)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| elastic | uint128 | undefined |
| base | uint128 | undefined |

### totalBorrow

```solidity
function totalBorrow() external view returns (uint128 elastic, uint128 base)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| elastic | uint128 | undefined |
| base | uint128 | undefined |

### totalCollateralShare

```solidity
function totalCollateralShare() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### totalSupply

```solidity
function totalSupply() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### transfer

```solidity
function transfer(address to, uint256 amount) external nonpayable returns (bool)
```

Transfers `amount` tokens from `msg.sender` to `to`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| to | address | The address to move the tokens. |
| amount | uint256 | of the tokens to move. |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | (bool) Returns True if succeeded. |

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 amount) external nonpayable returns (bool)
```

Transfers `amount` tokens from `from` to `to`. Caller needs approval for `from`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| from | address | Address to draw tokens from. |
| to | address | The address to move the tokens. |
| amount | uint256 | The token amount to move. |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | (bool) Returns True if succeeded. |

### transferOwnership

```solidity
function transferOwnership(address newOwner, bool direct, bool renounce) external nonpayable
```

Transfers ownership to `newOwner`. Either directly or claimable by the new pending owner. Can only be invoked by the current `owner`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| newOwner | address | Address of the new owner. |
| direct | bool | True if `newOwner` should be set immediately. False if `newOwner` needs to use `claimOwnership`. |
| renounce | bool | Allows the `newOwner` to be `address(0)` if `direct` and `renounce` is True. Has no effect otherwise. |

### updateExchangeRate

```solidity
function updateExchangeRate() external nonpayable returns (bool updated, uint256 rate)
```

Gets the exchange rate. I.e how much collateral to buy 1e18 asset. This function is supposed to be invoked if needed because Oracle queries can be expensive.




#### Returns

| Name | Type | Description |
|---|---|---|
| updated | bool | True if `exchangeRate` was updated. |
| rate | uint256 | The new exchange rate. |

### userBorrowPart

```solidity
function userBorrowPart(address) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### userCollateralShare

```solidity
function userCollateralShare(address) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### withdrawFees

```solidity
function withdrawFees() external nonpayable
```

Withdraws the fees accumulated.






## Events

### Approval

```solidity
event Approval(address indexed _owner, address indexed _spender, uint256 _value)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _owner `indexed` | address | undefined |
| _spender `indexed` | address | undefined |
| _value  | uint256 | undefined |

### LogAccrue

```solidity
event LogAccrue(uint256 accruedAmount, uint256 feeFraction, uint64 rate, uint256 utilization)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| accruedAmount  | uint256 | undefined |
| feeFraction  | uint256 | undefined |
| rate  | uint64 | undefined |
| utilization  | uint256 | undefined |

### LogAddAsset

```solidity
event LogAddAsset(address indexed from, address indexed to, uint256 share, uint256 fraction)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| share  | uint256 | undefined |
| fraction  | uint256 | undefined |

### LogAddCollateral

```solidity
event LogAddCollateral(address indexed from, address indexed to, uint256 share)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| share  | uint256 | undefined |

### LogBorrow

```solidity
event LogBorrow(address indexed from, address indexed to, uint256 amount, uint256 feeAmount, uint256 part)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| amount  | uint256 | undefined |
| feeAmount  | uint256 | undefined |
| part  | uint256 | undefined |

### LogExchangeRate

```solidity
event LogExchangeRate(uint256 rate)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| rate  | uint256 | undefined |

### LogFeeTo

```solidity
event LogFeeTo(address indexed newFeeTo)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| newFeeTo `indexed` | address | undefined |

### LogRemoveAsset

```solidity
event LogRemoveAsset(address indexed from, address indexed to, uint256 share, uint256 fraction)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| share  | uint256 | undefined |
| fraction  | uint256 | undefined |

### LogRemoveCollateral

```solidity
event LogRemoveCollateral(address indexed from, address indexed to, uint256 share)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| share  | uint256 | undefined |

### LogRepay

```solidity
event LogRepay(address indexed from, address indexed to, uint256 amount, uint256 part)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| from `indexed` | address | undefined |
| to `indexed` | address | undefined |
| amount  | uint256 | undefined |
| part  | uint256 | undefined |

### LogWithdrawFees

```solidity
event LogWithdrawFees(address indexed feeTo, uint256 feesEarnedFraction)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| feeTo `indexed` | address | undefined |
| feesEarnedFraction  | uint256 | undefined |

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |

### Transfer

```solidity
event Transfer(address indexed _from, address indexed _to, uint256 _value)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _from `indexed` | address | undefined |
| _to `indexed` | address | undefined |
| _value  | uint256 | undefined |



