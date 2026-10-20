# GMTicketInfo

Type: System  
Namespace: `C_GMTicketInfo`  
Environment: All

## Events

### GM_PLAYER_INFO

Payload: `name: cstring, info: cstring`  
Flags: SynchronousEvent  

### ITEM_RESTORATION_BUTTON_STATUS

Payload: `none`  
Flags: SynchronousEvent  

### PETITION_CLOSED

Payload: `none`  
Flags: SynchronousEvent  

### PETITION_SHOW

Payload: `none`  
Flags: SynchronousEvent  

### PLAYER_REPORT_SUBMITTED

Payload: `invitedByGUID: WOWGUID`  
Flags: SynchronousEvent  

### QUICK_TICKET_SYSTEM_STATUS

Payload: `none`  
Flags: SynchronousEvent  

### QUICK_TICKET_THROTTLE_CHANGED

Payload: `none`  
Flags: SynchronousEvent  

### UPDATE_WEB_TICKET

Payload: `hasTicket: bool, numTickets: number?, ticketStatus: number?, caseIndex: number?, waitTimeMinutes: number?, waitMessage: cstring?, caseTitle: cstring?, caseDescription: cstring?`  
Flags: SynchronousEvent
