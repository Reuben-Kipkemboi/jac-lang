"""Simple Shopping List Game (CRUD style)"""

walker ShoppingList {
    has item_name: string = "";

    can start with ShoppingListNode entry;
    can add_item with ShoppingListNode entry;
    can remove_item with ShoppingListNode entry;
    can view_list with ShoppingListNode entry;
}

node ShoppingListNode {
    has items: list = [];
}

# With Entry __main__
with entry:__main__ {
    shopping_node = ShoppingListNode();
    root ++> shopping_node;
    
    # Start the shopping list
    ShoppingList() spawn shopping_node;

    # (C) Add some items
    ShoppingList(item_name="Laptop") spawn shopping_node;
    ShoppingList(item_name="Mac") spawn shopping_node;
    ShoppingList(item_name="Google Pixel") spawn shopping_node;

    # (R) View the list
    ShoppingList() spawn shopping_node;

    # (D) Remove/Delete an item
    ShoppingList(item_name="Mac") spawn shopping_node;

    # We fetch to see what remains after remove
    ShoppingList() spawn shopping_node;
}