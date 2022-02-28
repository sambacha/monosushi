# PeggedOracleV1

*BoringCrypto*

> PeggedOracle

Oracle used for pegged prices that don&#39;t change



## Methods

### get

```solidity
function get(bytes data) external nonpayable returns (bool, uint256)
```

Get the latest exchange rate.



#### Parameters

| Name | Type | Description |
|---|---|---|
| data | bytes | Usually abi encoded, implementation specific data that contains information and arguments to &amp; about the oracle. For example: (string memory collateralSymbol, string memory assetSymbol, uint256 division) = abi.decode(data, (string, string, uint256)); |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | success if no valid (recent) rate is available, return false else true. |
| _1 | uint256 | rate The rate of the requested asset / pair / pool. |

### getDataParameter

```solidity
function getDataParameter(uint256 rate) external pure returns (bytes)
```

@dev



#### Parameters

| Name | Type | Description |
|---|---|---|
| rate | uint256 | (uint256) The fixed exchange rate |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bytes | (bytes) |

### name

```solidity
function name(bytes) external view returns (string)
```

Returns a human readable name about this oracle.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | bytes | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | (string) A human readable name about this oracle. |

### peek

```solidity
function peek(bytes data) external view returns (bool, uint256)
```

Check the last exchange rate without any state changes.



#### Parameters

| Name | Type | Description |
|---|---|---|
| data | bytes | Usually abi encoded, implementation specific data that contains information and arguments to &amp; about the oracle. For example: (string memory collateralSymbol, string memory assetSymbol, uint256 division) = abi.decode(data, (string, string, uint256)); |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | bool | success if no valid (recent) rate is available, return false else true. |
| _1 | uint256 | rate The rate of the requested asset / pair / pool. |

### peekSpot

```solidity
function peekSpot(bytes data) external view returns (uint256 rate)
```

Check the current spot exchange rate without any state changes. For oracles like TWAP this will be different from peek().



#### Parameters

| Name | Type | Description |
|---|---|---|
| data | bytes | Usually abi encoded, implementation specific data that contains information and arguments to &amp; about the oracle. For example: (string memory collateralSymbol, string memory assetSymbol, uint256 division) = abi.decode(data, (string, string, uint256)); |

#### Returns

| Name | Type | Description |
|---|---|---|
| rate | uint256 | The rate of the requested asset / pair / pool. |

### symbol

```solidity
function symbol(bytes) external view returns (string)
```

Returns a human readable (short) name about this oracle.



#### Parameters

| Name | Type | Description |
|---|---|---|
| _0 | bytes | undefined |

#### Returns

| Name | Type | Description |
|---|---|---|
| _0 | string | (string) A human readable symbol name about this oracle. |




