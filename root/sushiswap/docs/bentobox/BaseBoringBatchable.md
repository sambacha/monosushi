# BaseBoringBatchable









## Methods

### batch

```solidity
function batch(bytes[] calls, bool revertOnFail) external payable returns (bool[] successes, bytes[] results)
```

Allows batched call to self (this contract).



#### Parameters

| Name | Type | Description |
|---|---|---|
| calls | bytes[] | An array of inputs for each call. |
| revertOnFail | bool | If True then reverts after a failed call and stops doing further calls. |

#### Returns

| Name | Type | Description |
|---|---|---|
| successes | bool[] | An array indicating the success of a call, mapped one-to-one to `calls`. |
| results | bytes[] | An array with the returned data of each function call, mapped one-to-one to `calls`. |




