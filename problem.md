### nvim 使用 cpp 的时候，总是找不到头文件，显示iostream not found

    解决方法:https://github.com/clangd/clangd/issues/537#issuecomment-1479544442

### 同样的使用pyright时候提示 import could not be resolved

    解决方法:https://github.com/microsoft/pyright/issues/3378#issuecomment-1236128328

    添加~/pyrightconfig.json文件,内容是:

```json
{
    "include": [
         "core/**/*",
         "api/**/*"
    ],
     "pythonPath": "/opt/homebrew/bin/python3",
     "reportMissingImports": false,
     "reportUndefinedVariable": true,
     "useLibraryCodeForTypes": true,
     "strict": false,
     "typeCheckingMode": "basic",
}
```
 实际上这应该不是 mini solution 但是不管了 

安装 brew install silicon:https://github.com/Aloxaf/silicon实现代码转图片

 
