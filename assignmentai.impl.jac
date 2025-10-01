

# Start - intro
impl ShoppingList.start {
    print("=== Dev Shopping List ===");
}

# (C - Create/Add)
impl ShoppingList.add_item {
    if self.item_name {
        here.items.append(self.item_name);
        msg = fun_add_message(self.item_name);
        print(msg);
    } else {
        print("You haven't provided any item name.");
    }
}

# (D - Delete)
impl ShoppingList.remove_item {
    if self.item_name in here.items {
        here.items.remove(self.item_name);
        msg = fun_remove_message(self.item_name);
        print(msg);
    } else {
        print(f"Sorry! Item '{self.item_name}' not found in your Dev list.");
    }
}

# (R - Read/View)
impl ShoppingList.view_list {
    if len(here.items) == 0 {
        print("Your DeV shopping list is empty… maybe grab some Coffee to Code?");
    } else {
        msg = fun_view_message(here.items);
        print(msg);
    }
}

