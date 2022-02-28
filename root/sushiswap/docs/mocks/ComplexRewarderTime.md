# ComplexRewarderTime

*@0xKeno*







## Methods

### add

```solidity
function add(uint256 allocPoint, uint256 _pid) external nonpayable
```

Add a new LP to the pool. Can only be called by the owner. DO NOT add the same LP token more than once. Rewards will be messed up if you do.



#### Parameters

| Name | Type | Description |
|---|---|---|
| allocPoint | uint256 | AP of the new pool. |
| _pid | uint256 | Pid on MCV2 |

### claimOwnership

```solidity
function claimOwnership() external nonpayable
```






### massUpdatePools

```solidity
function massUpdatePools(uint256[] pids) external nonpayable
```

Update reward variables for all pools. Be careful of gas spending!



#### Parameters

| Name | Type | Description |
|---|---|---|
| pids | uint256[] | Pool IDs of all to be updated. Make sure to update all active pools. |

### onSushiReward

```solidity
function onSushiReward(uint256 pid, address _user, address to, uint256, uint256 lpToken) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| pid | uint256 | undefined |
| _user | address | undefined |
| to | address | undefined |
| _3 | uint256 | undefined |
| lpToken | uint256 | undefined |

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

### pendingToken

```solidity
function pendingToken(uint256 _pid, address _user) external view returns (uint256 pending)
```

View function to see pending Token



#### Parameters

| Name | Type | Description |
|---|---|---|
| _pid | uint256 | The index of the pool. See `poolInfo`. |
| _user | address | Address of user. |

#### Returns

| Name | Type | Description |
|---|---|---|
| pending | uint256 | SUSHI reward for a given user. |

### pendingTokens

```solidity
function pendingTokens(uint256 pid, address user, uint256) external view returns (contract IERC20[] rewardTokens, uint256[] rewardAmounts)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| pid | uint256 | undefined |
| user | address | undefined |
| _2 | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| rewardTokens | contract IERC20[] | undefined |
| rewardAmounts | uint256[] | undefined |

### poolIds

```solidity
function poolIds(uint256) external view returns (uint256)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### poolInfo

```solidity
function poolInfo(uint256) external view returns (uint128 accSushiPerShare, uint64 lastRewardTime, uint64 allocPoint)
```

Info of each pool.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| accSushiPerShare | uint128 | undefined |
| lastRewardTime | uint64 | undefined |
| allocPoint | uint64 | undefined |

### poolLength

```solidity
function poolLength() external view returns (uint256 pools)
```

Returns the number of MCV2 pools.




#### Returns

| Name | Type | Description |
|---|---|---|
| pools | uint256 | undefined |

### rewardPerSecond

```solidity
function rewardPerSecond() external view returns (uint256)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

### set

```solidity
function set(uint256 _pid, uint256 _allocPoint) external nonpayable
```

Update the given pool&#39;s SUSHI allocation point and `IRewarder` contract. Can only be called by the owner.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _pid | uint256 | The index of the pool. See `poolInfo`. |
| _allocPoint | uint256 | New AP of the pool. |

### setRewardPerSecond

```solidity
function setRewardPerSecond(uint256 _rewardPerSecond) external nonpayable
```

Sets the sushi per second to be distributed. Can only be called by the owner.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _rewardPerSecond | uint256 | The amount of Sushi to be distributed per second. |

### transferOwnership

```solidity
function transferOwnership(address newOwner, bool direct, bool renounce) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| newOwner | address | undefined |
| direct | bool | undefined |
| renounce | bool | undefined |

### updatePool

```solidity
function updatePool(uint256 pid) external nonpayable returns (struct ComplexRewarderTime.PoolInfo pool)
```

Update reward variables of the given pool.



#### Parameters

| Name | Type | Description |
|---|---|---|
| pid | uint256 | The index of the pool. See `poolInfo`. |

#### Returns

| Name | Type | Description |
|---|---|---|
| pool | ComplexRewarderTime.PoolInfo | Returns the pool that was updated. |

### userInfo

```solidity
function userInfo(uint256, address) external view returns (uint256 amount, uint256 rewardDebt)
```

Info of each user that stakes LP tokens.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |
| _1 | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| amount | uint256 | undefined |
| rewardDebt | uint256 | undefined |



## Events

### LogInit

```solidity
event LogInit()
```






### LogOnReward

```solidity
event LogOnReward(address indexed user, uint256 indexed pid, uint256 amount, address indexed to)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| user `indexed` | address | undefined |
| pid `indexed` | uint256 | undefined |
| amount  | uint256 | undefined |
| to `indexed` | address | undefined |

### LogPoolAddition

```solidity
event LogPoolAddition(uint256 indexed pid, uint256 allocPoint)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| pid `indexed` | uint256 | undefined |
| allocPoint  | uint256 | undefined |

### LogRewardPerSecond

```solidity
event LogRewardPerSecond(uint256 rewardPerSecond)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| rewardPerSecond  | uint256 | undefined |

### LogSetPool

```solidity
event LogSetPool(uint256 indexed pid, uint256 allocPoint)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| pid `indexed` | uint256 | undefined |
| allocPoint  | uint256 | undefined |

### LogUpdatePool

```solidity
event LogUpdatePool(uint256 indexed pid, uint64 lastRewardTime, uint256 lpSupply, uint256 accSushiPerShare)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| pid `indexed` | uint256 | undefined |
| lastRewardTime  | uint64 | undefined |
| lpSupply  | uint256 | undefined |
| accSushiPerShare  | uint256 | undefined |

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |



