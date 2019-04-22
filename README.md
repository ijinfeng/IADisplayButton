# IADisplayButton
### 像使用系统按钮控件一样使用即可。
```
    IADisplayButton *button = [IADisplayButton button];
    [button setTitle:@"请点击按钮标题" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    [button setBackgroundColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    [button setImage:[UIImage imageNamed:@"icon_more_recast"] forState:UIControlStateNormal];
    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 1;
    button.contentEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 20);
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:button];
    ...
   ```
 
   
