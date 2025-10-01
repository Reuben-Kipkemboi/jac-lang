


# DEV Shopping List - Jac Implementation

A simple CRUD (Create, Read, Update, Delete) shopping list application built using Jaclang.

## Table of Contents
- [Overview](#overview)
- [Features](#features)
- [Project Structure](#project-structure)
- [Results](#results)

## Overview

This project implements a shopping list manager using Jaclang's graph-based programming paradigm. It demonstrates how walkers traverse nodes to perform CRUD operations on a shopping list stored in a graph structure.

## Features

- **Create**: Add items to your shopping list
- **Read**: View all items in your shopping list
- **Update**: (Implicitly handled through add/remove)
- **Delete**: Remove items from your shopping list
- **Data-Spatial Programming**: Uses Jac's walker-node architecture

## Project Structure

```
shopping-list/
├── assignment.jac          
├── assignment_impl.jac      
└── README.md 
└── Images              
```

### Main File (`assignment.jac`)
Contains:
- Walker declaration (`ShoppingList`)
- Node definition (`ShoppingListNode`)
- Entry point with test cases

### Implementation File (`assignment_impl.jac`)
Contains:
- `start`: Welcome message
- `add_item`: Add items to the list
- `remove_item`: Remove items from the list
- `view_list`: Display all items


### Expected Output

The program will:
1. Display a welcome message
2. Add three items (Laptop, Mac, Google Pixel)
3. Show the complete list
4. Remove "Mac" from the list
5. Display the updated list


## Results

### Program Execution

### Without Implementing impl 

![Without Impl](./images/output1.png)

### After Implementing impl

![Welcome Message](./images/impl.png)



