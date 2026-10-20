# LuaTableExtensions

Type: System  
Namespace: `table`  
Environment: All

## Functions

### table.contains

```lua
table.contains(table: table, value: any?) -> containsValue: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if any value in the table compares equal to the specified value.

### table.count

```lua
table.count(table: table) -> count: number
```

Secret: SecretWhenLuaTableHasSecretKeys, SecretArguments=AllowedWhenUntainted  

Returns the number of entries in the table.

### table.create

```lua
table.create(arraySizeHint: number, nodeSizeHint: number = 0) -> table: table
```

Secret: SecretArguments=AllowedWhenUntainted  

Creates an empty table with storage preallocated for the specified number of array and non-array entries.

### table.indexof

```lua
table.indexof(table: table, value: any?) -> index: number?
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns the first integer index whose value compares equal to the specified value, searching consecutively from index 1 until the first nil value.

### table.freeze

```lua
table.freeze(table: table) -> frozen: table
```

Secret: SecretArguments=AllowedWhenUntainted  

Marks a supplied table as frozen, preventing any modifications to its contents, or replacement of its metatable. If the table has a pre-existing metatable with a '__newindex' table or function, assignments will pass through without raising errors. For tainted code, only tables created by the same addon making this function call are permitted to be frozen.

### table.keys

```lua
table.keys(table: table) -> keys: any
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns an array containing the keys of the specified table.

### table.getcountinfo

```lua
table.getcountinfo(table: table) -> numEntries: number, numPositiveIntegerKeys: number, maxPositiveIntegerKey: number
```

Secret: SecretWhenLuaTableHasSecretKeys, SecretArguments=AllowedWhenUntainted  

Returns detailed information about the number and distribution of entries in the table.

### table.values

```lua
table.values(table: table) -> values: any
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns an array containing the values of the specified table.

### table.isempty

```lua
table.isempty(table: table) -> empty: bool
```

Secret: SecretWhenLuaTableHasSecretKeys, SecretArguments=AllowedWhenUntainted  

Returns true if the table contains no entries.

### table.isfrozen

```lua
table.isfrozen(table: table) -> frozen: bool
```

Secret: SecretArguments=AllowedWhenUntainted  

Returns true if a table has been marked as frozen.

### table.removeunordered

```lua
table.removeunordered(table: table, index: number?) -> value: any?
```

Secret: SecretArguments=AllowedWhenUntainted  

Removes the value at the specified integer index by replacing it with the last value in the array and shortening the array by one element. The order of values in the array is not preserved.

### table.removevalue

```lua
table.removevalue(table: table, value: any?) -> removedCount: number
```

Secret: SecretArguments=AllowedWhenUntainted  

Removes all values equal to the specified value from the array portion of a table.
