# CloneRewarderTimeDual

*@0xKeno*







## Methods

### MASTERCHEF_V2

```solidity
function MASTERCHEF_V2() external view returns (address)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

### claimOwnership

```solidity
function claimOwnership() external nonpayable
```






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

### masterLpToken

```solidity
function masterLpToken() external view returns (contract IERC20)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IERC20 | undefined |

### onSushiReward

```solidity
function onSushiReward(uint256 pid, address _user, address to, uint256, uint256 lpTokenAmount) external nonpayable
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| pid | uint256 | undefined |
| _user | address | undefined |
| to | address | undefined |
| _3 | uint256 | undefined |
| lpTokenAmount | uint256 | undefined |

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
function pendingToken(uint256 _pid, address _user) external view returns (uint256 reward1, uint256 reward2)
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
| reward1 | uint256 | undefined |
| reward2 | uint256 | undefined |

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

### poolInfo

```solidity
function poolInfo(uint256) external view returns (uint128 accToken1PerShare, uint128 accToken2PerShare, uint64 lastRewardTime)
```

Info of each pool.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | uint256 | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| accToken1PerShare | uint128 | undefined |
| accToken2PerShare | uint128 | undefined |
| lastRewardTime | uint64 | undefined |

### rewardPerSecond1

```solidity
function rewardPerSecond1() external view returns (uint128)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint128 | undefined |

### rewardPerSecond2

```solidity
function rewardPerSecond2() external view returns (uint128)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint128 | undefined |

### rewardRates

```solidity
function rewardRates() external view returns (uint256[])
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | uint256[] | undefined |

### rewardToken1

```solidity
function rewardToken1() external view returns (contract IERC20)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IERC20 | undefined |

### rewardToken2

```solidity
function rewardToken2() external view returns (contract IERC20)
```






#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | contract IERC20 | undefined |

### setRewardPerSecond

```solidity
function setRewardPerSecond(uint128 _rewardPerSecond1, uint128 _rewardPerSecond2) external nonpayable
```

Sets the sushi per second to be distributed. Can only be called by the owner.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _rewardPerSecond1 | uint128 | The amount of reward token 1 to be distributed per second. |
| _rewardPerSecond2 | uint128 | The amount of reward token 2 to be distributed per second. |

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
function updatePool(uint256 pid) external nonpayable returns (struct CloneRewarderTimeDual.PoolInfo pool)
```

Update reward variables of the given pool.



#### Parameters

| Name | Type | Description |
|---|---|---|
| pid | uint256 | The index of the pool. See `poolInfo`. |

#### Returns

| Name | Type | Description |
|---|---|---|
| pool | CloneRewarderTimeDual.PoolInfo | Returns the pool that was updated. |

### userInfo

```solidity
function userInfo(uint256, address) external view returns (uint256 amount, uint256 rewardDebt1, uint256 rewardDebt2)
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
| rewardDebt1 | uint256 | undefined |
| rewardDebt2 | uint256 | undefined |



## Events

### LogInit

```solidity
event LogInit(contract IERC20 rewardToken1, contract IERC20 rewardToken2, address owner, uint256 rewardPerSecond1, uint256 rewardPerSecond2, contract IERC20 indexed masterLpToken)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| rewardToken1  | contract IERC20 | undefined |
| rewardToken2  | contract IERC20 | undefined |
| owner  | address | undefined |
| rewardPerSecond1  | uint256 | undefined |
| rewardPerSecond2  | uint256 | undefined |
| masterLpToken `indexed` | contract IERC20 | undefined |

### LogOnReward

```solidity
event LogOnReward(address indexed user, uint256 indexed pid, uint256 amount1, uint256 amount2, address indexed to)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| user `indexed` | address | undefined |
| pid `indexed` | uint256 | undefined |
| amount1  | uint256 | undefined |
| amount2  | uint256 | undefined |
| to `indexed` | address | undefined |

### LogRewardPerSecond

```solidity
event LogRewardPerSecond(uint256 rewardPerSecond1, uint256 rewardPerSecond2)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| rewardPerSecond1  | uint256 | undefined |
| rewardPerSecond2  | uint256 | undefined |

### LogUpdatePool

```solidity
event LogUpdatePool(uint256 indexed pid, uint64 lastRewardTime, uint256 lpSupply, uint256 accToken1PerShare, uint256 accToken2PerShare)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| pid `indexed` | uint256 | undefined |
| lastRewardTime  | uint64 | undefined |
| lpSupply  | uint256 | undefined |
| accToken1PerShare  | uint256 | undefined |
| accToken2PerShare  | uint256 | undefined |

### OwnershipTransferred

```solidity
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| previousOwner `indexed` | address | undefined |
| newOwner `indexed` | address | undefined |



