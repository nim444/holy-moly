# TooltipComparison

Type: System  
Namespace: `C_TooltipComparison`  
Environment: All

## Functions

### C_TooltipComparison.CompareItem

```lua
C_TooltipComparison.CompareItem(comparisonItem: TooltipComparisonItem, tooltip: Tooltip, anchorFrame: SimpleFrame?)
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: IsProtectedFunction  

### C_TooltipComparison.GetItemComparisonDelta

```lua
C_TooltipComparison.GetItemComparisonDelta(comparisonItem: TooltipComparisonItem, equippedItem: TooltipComparisonItem, pairedItem: TooltipComparisonItem?, addPairedStats: bool?) -> lines: table<string>
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

### C_TooltipComparison.GetItemComparisonInfo

```lua
C_TooltipComparison.GetItemComparisonInfo(comparisonItem: TooltipComparisonItem) -> info: TooltipItemComparisonInfo
```

Secret: SecretArguments=AllowedWhenUntainted  

Flags: MayReturnNothing  

## Events

### TOOLTIP_SHOW_ITEM_COMPARISON

Payload: `comparisonItem: TooltipComparisonItem, tooltip: Tooltip, anchorFrame: SimpleFrame?`  
Flags: CallbackEvent  

## Tables

### TooltipComparisonMethod (Enumeration)

| Name | Value |
|---|---|
| Single | 0 |
| WithBothHands | 1 |
| WithBagMainHandItem | 2 |
| WithBagOffHandItem | 3 |

### TooltipItemComparisonInfo (Structure)

- `method: TooltipComparisonMethod = Single`
- `item: TooltipComparisonItem`
- `additionalItems: table<TooltipComparisonItem>`
