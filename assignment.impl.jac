# Start
impl ShoppingList.start {
    print("=== Shopping List Manager ===");
    print("Use walker methods to add, remove, or view items.");
}

# (C - Create/Add)
impl ShoppingList.add_item {
    if self.item_name {
        here.items.append(self.item_name);
        print(f"Added '{self.item_name}' to your monthly shopping list.");
    }
}

# (D - Delete)
impl ShoppingList.remove_item {
    if self.item_name in here.items {
        here.items.remove(self.item_name);
        print(f"Removed '{self.item_name}' from your monthly shopping list.");
    } else {
        print(f"Sorry! Item '{self.item_name}' not found in your monthly list.");
    }
}

# (R - Read/View)
impl ShoppingList.view_list {
    if len(here.items) == 0 {
        print("Your shopping list is empty.");
    } else {
        print("Your shopping list contains:");
        for item in here.items {
            print(f"- {item}");
        }
    }
}