```bash
# app/views/shared/foobar/_navmenu.erbを作成する
rails g navmenu:init foobar

# app/views/shared/_navmenu.erbを生成
rails g navmenu:init
```

```bash
# app/views/shared/foobar/_nav_item_bar.erb を追加
rails g navmenu:add bar -n foobar

# app/views/shared/_nav_item_bar.erb を追加
rails g navmenu:add bar
```

```bash
# app/views/shared/foobar/_nav_item_foo.erbを削除
rails g navmenu:remove Foo

# app/views/shared/foobar/を削除
# NOTE
rails destroy navmenu foobar
```
