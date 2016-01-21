# Schemas


## 製品（花束）

product    | Resource
-----------|---------
product_id | name

```
rails generate model product name -f
```

## 材料（花）

material    | Resource
------------|---------
material_id | name
            | expiration_days
            | order_lead_time
            | order_quantity

```
rails generate model material name expiration_days:integer \
order_lead_time:integer order_quantity:integer -f
```

## 製品の組立

assembly    | Resource
------------|---------
assembly_id | name
product_id  |
material_id |

```
rails generate model assembly name \
product:references material:references -f
```

## 得意先

customer    | Resource
------------|---------
customer_id | name
            | email

```
rails generate model customer name email -f
```

## 受注

sales_order    | Event
---------------|---------
sales_order_id | state
product_id     | date
customer_id    | quantity
               | shipment_date

```
rails generate model sales_order state date:date quantity:integer shipment_date:date \
product:references customer:references -f
```

## 出荷

shipment       | Event
---------------|---------
shipment_id    | state
sales_order_id | date
               | quantity

```
rails generate model shipment state date:date quantity:integer \
sales_order:references -f
```

## 出庫

delivery    | Event
------------|------------
delivery_id | state
shipment_id | date
location_id | quantity

```
rails generate model delivery state date:date quantity:integer \
shipment:references location:references -f
```

## 仕入先

supplier    | Resource
------------|------------
supplier_id | name
            | email

```
rails generate model supplier name email -f
```

## 発注

purchase_order    | Event
------------------|------
purchase_order_id | state
material_id       | date
supplier_id       | quantity
                  | arrival_date

```
rails generate model purchase_order state date:date quantity:integer \
material:references supplier:references -f
```

## 入荷

arrival           | Event
------------------|------
arrival_id        | state
purchase_order_id | date
                  | quantity

```
rails generate model arrival state date:date quantity:integer \
purchase_order:references -f
```

## 入庫

stock       | Event
------------|------------
stock_id    | state
arrival_id  | date
location_id | quantity

```
rails generate model stock state date:date quantity:integer \
arrival:references location:references -f
```

## 場所

location    | Resource
------------|------------
location_id | name
            | capacity

```
rails generate model location name capacity:integer -f
```

## 保管

storage    | Event
-----------|-----------
storage_id | state
stock_id   | date
           | quantity

```
rails generate model storage state date:date quantity:integer \
stock:references -f
```

## 取出

retrieval    | Event
-------------|-----------
retrieval_id | state
storage_id   | date
delivery_id  | quantity

```
rails generate model retrieval state date:date quantity:integer \
storage:references delivery:references -f
```
