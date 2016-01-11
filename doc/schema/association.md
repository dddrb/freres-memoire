# Association

```
[product:R] ->+<- [material:R]
              |
          [assembly:R]
```

```
[customer:R] ->+<- [product:R]
               |
           [sales_order:E]-|-|-[shipment:E]
```

```
[shipment:R] ->+<- [location:R]
               |
           [delivery:E]-|-<-[retrieval:E]
```

```
[material:R] ->+<- [supplier:R]
               |
           [purchase_order:E]-|-|-[arrival:E]
```

```
[arrival:E] ->+<- [location:R]
              |
          [stock:E]-|-<-[storage:E]
```

```
[retrieval:E]->-|-[storage:E]
```
