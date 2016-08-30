# Objective-C知识点学习笔记

知识点学习笔记记录

## Objective-C自定义类添加Subscript支持（中括号存取值）

在OC中中括号取值常用的就是NSDictionary和NSArray了

### 类似NSDictionary的key-value读写

- 效果

```ObjectiveC
    Person *person = [[Person alloc] init];
    person[@"name"] = @"Mike";
    person[@"address"] = @"Wuhan";
    person[@"sex"] = @YES;
    person[@"age"] = @10;
    NSLog(@"%@ %@", person[@"name"], person[@"age"]);
```

- 实现

实现只需要实现两个存取的方法即可

```ObjectiveC
- (id)objectForKeyedSubscript:(id)key;
- (void)setObject:(id)obj forKeyedSubscript:(NSString *)key;
```

### 类似NSArray下标读写

- 效果

```ObjectiveC
    MyArray *myarr = [[MyArray alloc] initWithStrings:@"Hello", @"How", @"are", @"you", nil];
    NSLog(@"%@", myarr);
    
    myarr[0] = @"Hi!";
    myarr[1] = @"World";
    NSLog(@"%@ %@", myarr[0], myarr[1]);
```

- 实现

实现只需要实现两个存取的方法即可

```ObjectiveC
- (id)objectAtIndexedSubscript:(NSUInteger)idx;
- (void)setObject:(id)obj atIndexedSubscript:(NSUInteger)idx;
```

- 补充

其中的init方法，原型是这样的

```ObjectiveC
- (instancetype)initWithStrings:(NSString *)string, ... NS_REQUIRES_NIL_TERMINATION;
```

是一个动态参数方法，类似与NSArray的的 initWithObjects 方法，动态参数可以看[这里](https://ioser.me/blog/2016/08/26/C-Variable-Parameter/)

NS_REQUIRES_NIL_TERMINATION宏可以检查最后一个参数是不是nil
