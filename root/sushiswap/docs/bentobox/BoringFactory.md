# BoringFactory









## Methods

### deploy

```solidity
function deploy(address masterContract, bytes data, bool useCreate2) external payable returns (address cloneAddress)
```

Deploys a given master Contract as a clone. Any ETH transferred with this call is forwarded to the new clone. Emits `LogDeploy`.



#### Parameters

| Name | Type | Description |
|---|---|---|
| masterContract | address | The address of the contract to clone. |
| data | bytes | Additional abi encoded calldata that is passed to the new clone via `IMasterContract.init`. |
| useCreate2 | bool | Creates the clone by using the CREATE2 opcode, in this case `data` will be used as salt. |

#### Returns

| Name | Type | Description |
|---|---|---|
| cloneAddress | address | Address of the created clone contract. |

### masterContractOf

```solidity
function masterContractOf(address) external view returns (address)
```

Mapping from clone contracts to their masterContract.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | address | undefined |



## Events

### LogDeploy

```solidity
event LogDeploy(address indexed masterContract, bytes data, address indexed cloneAddress)
```





#### Parameters

| Name | Type | Description |
|---|---|---|
| masterContract `indexed` | address | undefined |
| data  | bytes | undefined |
| cloneAddress `indexed` | address | undefined |



