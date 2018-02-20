```bash
# app/views/shared/foobar/_navmenu.erbを作成する
rails g navmenu:init NAMESPACE

# app/views/shared/foobar/_nav_item_foo.erb
# app/views/shared/foobar/_nav_item_bar.erb を追加
rails g navmenu:add MODEL

# app/views/shared/foobar/_nav_item_foo.erbを削除
rails g navmenu:remove Foo

# app/views/shared/foobar/を削除
# NOTE
rails destroy navmenu foobar
```
