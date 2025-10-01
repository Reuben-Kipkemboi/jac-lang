"""Implementation file for Shopping List"""

# Start - intro
impl ShoppingList.start {
    print("=== Dev Shopping list ===");
}

# (C - Create/Add)
impl ShoppingList.add_item {
    if self.item_name {
        here.items.append(self.item_name);
        print(f"Added '{self.item_name}' to your shopping list.");
    } else {
        print("You haven't provided any item name.");
    }
}

# (D - Delete)
impl ShoppingList.remove_item {
    if self.item_name in here.items {
        here.items.remove(self.item_name);
        print(f"Removed '{self.item_name}' from your shopping list.");
    } else {
        print(f"Sorry! Item '{self.item_name}' not found in your list.");
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


