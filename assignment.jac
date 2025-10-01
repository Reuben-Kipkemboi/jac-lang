"""Simple Shopping List Game (CRUD style)"""

walker ShoppingList {
    has item_name: string = "";
    has action: string = "";

    can execute with ShoppingListNode entry {
        if self.action == "start" {
        } elif self.action == "add" and self.item_name {
            here.items.append(self.item_name);
            print(f"Added '{self.item_name}' to your shopping list.");
        } elif self.action == "remove" {
            if self.item_name in here.items {
                here.items.remove(self.item_name);
                print(f"Removed '{self.item_name}' from your shopping list.");
            } else {
                print(f"Sorry! Item '{self.item_name}' not found in your list.");
            }
        } elif self.action == "view" {
            if len(here.items) == 0 {
                print("Your shopping list is empty.");
            } else {
                print("Your shopping list contains:");
                for item in here.items {
                    print(f"- {item}");
                }
            }
        }
    }
}

node ShoppingListNode {
    has items: list = [];
}

# With Entry ..__main__
with entry:__main__ {
    shopping_node = ShoppingListNode();
    root ++> shopping_node;
    
    # start the shooping list
    ShoppingList(action="start") spawn shopping_node;

    # (C) Add some items
    ShoppingList(item_name="Laptop", action="add") spawn shopping_node;
    ShoppingList(item_name="Mac", action="add") spawn shopping_node;
    ShoppingList(item_name="Google Pixel", action="add") spawn shopping_node;

    # (R) View the list
    ShoppingList(action="view") spawn shopping_node;

    # (D) Remove/Delete  an item
    ShoppingList(item_name="Mac", action="remove") spawn shopping_node;

    # we fetch to see what remains after remove
    ShoppingList(action="view") spawn shopping_node;
}