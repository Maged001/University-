# Library-System

This is a Library System implemented in Java using object-oriented programming principles. The system allows you to maintain information about books and library members. It consists of four classes: `Book`, `LibMember`, `LibrarySystem`, and `LibraryMain`.

## Book

The `Book` class represents a book in the library. It has the following data members:

- `title` (String): The title of the book.
- `author1` (String): The primary author of the book.
- `author2` (String): The secondary author of the book.
- `publisher` (String): The publisher of the book.
- `yearPublication` (int): The year of publication.
- `ISBN` (String): The ISBN (International Standard Book Number) of the book.
- `accessionNum` (long): The unique accession number assigned to the book in the library.
- `issuedTo` (LibMember): The library member to whom the book is issued (if any).

The `Book` class provides the following public methods:

- `Book()`: Default constructor without any parameters.
- Set and get methods for all attributes.
- `equals()`: Method to check if two `Book` objects are equal.
- `toString()`: Method to get a string representation of the `Book` object.

## LibMember

The `LibMember` class represents a library member. It has the following data members:

- `firstName` (String): The first name of the member.
- `lastName` (String): The last name of the member.
- `gender` (char): The gender of the member.
- `cprNum` (long): The CPR (Civil Personal Registration) number of the member.
- `teleNum` (String): The telephone number of the member.
- `booksIssued` (array of type `Book`, size = 10): An array to store the books issued to the member.
- `numBooksIssued` (int): The number of books currently issued to the member.

The `LibMember` class provides the following public methods:

- `LibMember()`: Default constructor without any parameters.
- `LibMember(firstName, lastName, gender, cprNum, teleNum)`: Constructor with 5 parameters (except for `booksIssued` and `numBooksIssued`, which are initialized to 0).
- Set and get methods for all attributes.
- `equals()`: Method to check if two `LibMember` objects are equal.
- `toString()`: Method to get a string representation of the `LibMember` object.

## LibrarySystem

The `LibrarySystem` class represents the library system. It has the following data members:

- `booksList`: A linked list of books (each element is of type `Book`).
- `membersList`: A linked list of members (each element is of type `LibMember`).
- `booksListSize`: The actual number of books in the `booksList`.
- `membersListSize`: The actual number of members in the `membersList`.

The `LibrarySystem` class provides the following methods:

- `LibrarySystem()`: Constructor without any parameters. Initializes `booksList` and `membersList` as empty linked lists, and sets `booksListSize` and `membersListSize` to 0.
- `addBook(book)`: Inserts a new `Book` object at the end of the `booksList`. Returns `true` if the book is added successfully, or `false` if the book already exists in the list.
- `deleteBook(accessionNum)`: Deletes a `Book` object from the `booksList` based on its accession number. Returns `true` if the book is deleted successfully, or `false` if the book is issued to a member or not found in the list.
- `addMember(member)`: Inserts a new `LibMember` object at the end of the `membersList`. Returns `true` if the member is added successfully, or `false` if the member already exists in the list.
- `deleteMember(cprNum)`: Deletes a `LibMember` object from the `membersList` based on their CPR number. Returns `true` if the member is deleted successfully, or `false` if any book is issued to the member or the member is not found in the list.
- `searchBook(accessionNum)`: Searches the `booksList` for a book based on its accession number. Returns the location of the book in the list if found, or -1 if not found.
- `searchMember(cprNum)`: Searches the `membersList` for a member based on their CPR number. Returns the location of the member in the list if found, or -1 if not found.
- `isEmptyBooksList()`: Returns `true` if the `booksListis empty, or `false` otherwise.
- `isEmptyMembersList()`: Returns `true` if the `membersList` is empty, or `false` otherwise.
- `displayBooks()`: Displays the details of all books in the `booksList`.
- `displayMembers()`: Displays the details of all members in the `membersList`.

## LibraryMain

The `LibraryMain` class contains the main method and implements a menu-driven program for the library system. It provides a user interface for interacting with the library system, allowing users to add books, add members, issue books to members, return books, display books and members, and exit the program.

To run the program, compile and execute the `LibraryMain.java` file.

## License

This project is licensed under the [MIT License](LICENSE).
