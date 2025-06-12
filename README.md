# WORKERS


# 创建数据库
```shell
npx wrangler@latest d1 create prod-d1-tutorial

```

# 本地开发
```shell
npx wrangler d1 execute prod-d1-tutorial --local --file=./migrations/schema.sql

npx wrangler d1 execute prod-d1-tutorial --local --command="SELECT * FROM Customers"
```


# 同步到线上
```shell
npx wrangler d1 execute prod-d1-tutorial --remote --file=./migrations/schema.sql

npx wrangler d1 execute prod-d1-tutorial --remote --command="SELECT * FROM Customers"
```

# 删除数据库

```shell
npx wrangler d1 delete prod-d1-tutorial
```