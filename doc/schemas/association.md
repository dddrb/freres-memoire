# Association

## 製品

```
[product:R] ->+<- [material:R]
              |
          [assembly:R]
```

## 販売

```
[customer:R] ->+<- [product:R]
               |
           [sales_order:E]-|-|-[shipment:E]
```

## 仕入

```
[material:R] ->+<- [supplier:R]
               |
           [purchase_order:E]-|-|-[arrival:E]
```

## 保管

```
[shipment:R] ->+<- [location:R]
               |
           [delivery:E]-|-<-[retrieval:E]
```

```
[arrival:E] ->+<- [location:R]
              |
          [stock:E]-|-<-[storage:E]
```

```
[retrieval:E]->-|-[storage:E]
```
